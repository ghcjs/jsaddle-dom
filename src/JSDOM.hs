{-# LANGUAGE OverloadedStrings, PatternSynonyms, RecursiveDo #-}
module JSDOM (
  currentWindow
, currentWindowUnchecked
, currentDocument
, currentDocumentUnchecked
, syncPoint
, syncAfter
, waitForAnimationFrame
, nextAnimationFrame
, AnimationFrameHandle
, inAnimationFrame
, inAnimationFrame'
, catch
, bracket
) where

import Control.Monad (void, forM_, when)
import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (putMVar, takeMVar)
import GHCJS.Concurrent (OnBlocked(..))
import Language.Javascript.JSaddle
       (syncPoint, syncAfter, waitForAnimationFrame,
        nextAnimationFrame, catch, bracket)
import Language.Javascript.JSaddle.Types (JSContextRef(..))
import Language.Javascript.JSaddle.Object (freeFunction, jsg)
import Language.Javascript.JSaddle.Monad (askJSM)
import JSDOM.Types
       (Callback(..), RequestAnimationFrameCallback(..), FromJSVal(..),
        MonadDOM, liftDOM, Document(..), Window(..), JSM, JSContextRef(..))
import JSDOM.Generated.RequestAnimationFrameCallback
       (newRequestAnimationFrameCallbackSync)
import JSDOM.Generated.Window (requestAnimationFrame)

currentWindow :: MonadDOM m => m (Maybe Window)
currentWindow = liftDOM $ jsg ("window" :: String) >>= fromJSVal

currentWindowUnchecked :: MonadDOM m => m Window
currentWindowUnchecked = liftDOM $ jsg ("window" :: String) >>= fromJSValUnchecked

currentDocument :: MonadDOM m => m (Maybe Document)
currentDocument = liftDOM $ jsg ("document" :: String) >>= fromJSVal

currentDocumentUnchecked :: MonadDOM m => m Document
currentDocumentUnchecked = liftDOM $ jsg ("document" :: String) >>= fromJSValUnchecked

data AnimationFrameHandle = AnimationFrameHandle

{- |
     Run the action in an animationframe callback. The action runs in a
     synchronous thread, and is passed the high-performance clock time
     stamp for that frame.
 -}
inAnimationFrame :: OnBlocked       -- ^ what to do when encountering a blocking call
                 -> (Double -> JSM ())  -- ^ the action to run
                 -> JSM AnimationFrameHandle
inAnimationFrame _ f = do
    handlersMVar <- animationFrameHandlers <$> askJSM
    handlers <- liftIO $ takeMVar handlersMVar
    when (null handlers) $ do
        win <- currentWindowUnchecked
        rec cb@(RequestAnimationFrameCallback (Callback f)) <- newRequestAnimationFrameCallbackSync $ \t -> do
              freeFunction f
              handlersToRun <- liftIO $ takeMVar handlersMVar
              liftIO $ putMVar handlersMVar []
              forM_ (reverse handlersToRun) (\handler -> handler t)
        void $ requestAnimationFrame win cb
    liftIO $ putMVar handlersMVar (f : handlers)
    return AnimationFrameHandle

{- |
     Run the action in an animationframe callback. The action runs in a
     synchronous thread, and is passed the high-performance clock time
     stamp for that frame.  On GHCJS this version will continue
     asynchronously if it is not possible to complete the callback
     synchronously.
 -}
inAnimationFrame' :: (Double -> JSM ())  -- ^ the action to run
                 -> JSM AnimationFrameHandle
inAnimationFrame' = inAnimationFrame ContinueAsync
