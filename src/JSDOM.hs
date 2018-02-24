{-# LANGUAGE CPP, OverloadedStrings, PatternSynonyms #-}
#ifndef ghcjs_HOST_OS
{-# LANGUAGE RecursiveDo #-}
#endif
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

#ifdef ghcjs_HOST_OS
import JSDOM.Types
       (FromJSVal(..), MonadDOM, liftDOM, Document(..), Window(..), JSM)
import Language.Javascript.JSaddle.Object (jsg)
import JavaScript.Web.AnimationFrame (AnimationFrameHandle, inAnimationFrame)
#else
import Control.Monad (void, forM_, when)
import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (putMVar, takeMVar)
import Language.Javascript.JSaddle.Types (JSContextRef(..))
import Language.Javascript.JSaddle.Object (freeFunction, jsg)
import Language.Javascript.JSaddle.Monad (askJSM)
import JSDOM.Types
       (Callback(..), RequestAnimationFrameCallback(..), FromJSVal(..),
        MonadDOM, liftDOM, Document(..), Window(..), JSM, JSContextRef(..))
import JSDOM.Generated.RequestAnimationFrameCallback
       (newRequestAnimationFrameCallbackSync)
import JSDOM.Generated.Window (requestAnimationFrame)
#endif
import GHCJS.Concurrent (OnBlocked(..))
import Language.Javascript.JSaddle
       (syncPoint, syncAfter, waitForAnimationFrame,
        nextAnimationFrame, catch, bracket)

currentWindow :: MonadDOM m => m (Maybe Window)
currentWindow = liftDOM $ jsg ("window" :: String) >>= fromJSVal

currentWindowUnchecked :: MonadDOM m => m Window
currentWindowUnchecked = liftDOM $ jsg ("window" :: String) >>= fromJSValUnchecked

currentDocument :: MonadDOM m => m (Maybe Document)
currentDocument = liftDOM $ jsg ("document" :: String) >>= fromJSVal

currentDocumentUnchecked :: MonadDOM m => m Document
currentDocumentUnchecked = liftDOM $ jsg ("document" :: String) >>= fromJSValUnchecked

#ifndef ghcjs_HOST_OS

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
    -- Take the list of pending animation fram handlers
    handlers <- liftIO $ takeMVar handlersMVar
    -- Add this handler to the list to be run by the callback
    liftIO $ putMVar handlersMVar (f : handlers)
    -- If this was the first handler added set up a callback
    -- to run the handlers in the next animation frame.
    when (null handlers) $ do
        win <- currentWindowUnchecked
        rec cb@(RequestAnimationFrameCallback (Callback fCb)) <- newRequestAnimationFrameCallbackSync $ \t -> do
              -- This is a one off handler so free it when it runs
              freeFunction fCb
              -- Take the list of handers and empty it
              handlersToRun <- liftIO $ takeMVar handlersMVar
              liftIO $ putMVar handlersMVar []
              -- Exectute handlers in the order 
              forM_ (reverse handlersToRun) (\handler -> handler t)
        -- Add the callback function
        void $ requestAnimationFrame win cb
    return AnimationFrameHandle

#endif

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
