{-# LANGUAGE DeriveDataTypeable #-}
module JSDOM.Custom.XMLHttpRequest (
    module Generated
  , XHRError(..)
  , send
  , sendString
  , sendArrayBuffer
  , sendBlob
  , sendDocument
  , sendFormData
) where

import Prelude ()
import Prelude.Compat
import Data.Typeable (Typeable)
import Control.Concurrent.MVar (takeMVar, newEmptyMVar, putMVar)
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Control.Monad.Catch (onException, bracket, throwM)
import Control.Exception (Exception(..))
import Control.Lens.Operators ((^.))

import Language.Javascript.JSaddle
       (js0, js1, ToJSString, ToJSVal(..), JSVal)
import JSDOM.Types
       (DOM, MonadDOM, liftDOM, FormData(..), IsDocument, IsBlob, IsArrayBufferView)
import JSDOM.EventM (onAsync)

import JSDOM.Generated.XMLHttpRequest as Generated hiding (send)
import JSDOM.Generated.XMLHttpRequestEventTarget as Generated

data XHRError = XHRError
              | XHRAborted
              deriving (Show, Eq, Typeable)

instance Exception XHRError

throwXHRError :: MonadDOM m => Maybe XHRError -> m ()
throwXHRError = maybe (return ()) (liftDOM . throwM)

withEvent :: DOM (DOM ()) -> DOM a -> DOM a
withEvent aquire = bracket aquire id . const

send' :: (MonadDOM m) => XMLHttpRequest -> Maybe JSVal -> m ()
send' self mbVal = liftDOM $ (`onException` abort self) $ do
    result <- liftIO newEmptyMVar
    r <- withEvent (onAsync self Generated.error . liftIO $ putMVar result (Just XHRError)) $
            withEvent (onAsync self abortEvent . liftIO $ putMVar result (Just XHRAborted)) $
                withEvent (onAsync self load . liftIO $ putMVar result Nothing) $ do
                    void $
                        case mbVal of
                            Nothing  -> self ^. js0 "send"
                            Just val -> self ^. js1 "send" val
                    liftIO $ takeMVar result
    throwXHRError r

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
send :: (MonadDOM m) => XMLHttpRequest -> m ()
send self = send' self Nothing

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendString :: (MonadDOM m, ToJSString str) => XMLHttpRequest -> str -> m ()
sendString self str = liftDOM $ toJSVal str >>= send' self . Just

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendArrayBuffer :: (MonadDOM m, IsArrayBufferView view) => XMLHttpRequest -> view -> m ()
sendArrayBuffer self view = liftDOM $ toJSVal view >>= send' self . Just

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendBlob :: (MonadDOM m, IsBlob blob) => XMLHttpRequest -> blob -> m ()
sendBlob self blob = liftDOM $ toJSVal blob >>= send' self . Just

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendDocument :: (MonadDOM m, IsDocument doc) => XMLHttpRequest -> doc -> m ()
sendDocument self doc = liftDOM $ toJSVal doc >>= send' self . Just

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendFormData :: (MonadDOM m) => XMLHttpRequest -> FormData -> m ()
sendFormData self formData = liftDOM $ toJSVal formData >>= send' self . Just
