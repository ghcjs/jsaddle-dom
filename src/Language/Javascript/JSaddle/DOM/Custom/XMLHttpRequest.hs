{-# LANGUAGE DeriveDataTypeable #-}
module Language.Javascript.JSaddle.DOM.Custom.XMLHttpRequest (
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
import Control.Monad.IO.Class (MonadIO(..))
import Control.Exception (Exception(..), throwIO)
import Control.Lens.Operators ((^.))

import Language.Javascript.JSaddle
       (valToText, valToStr, JSM, js0, js1, postGUIAsyncJS, bracket,
        ToJSString, ToJSVal(..), JSVal)
import Language.Javascript.JSaddle.DOM.Types
       (MonadDOM(..), FormData(..), IsDocument, IsBlob, IsArrayBufferView)
import Language.Javascript.JSaddle.DOM.EventM (on)

import Language.Javascript.JSaddle.DOM.Generated.XMLHttpRequest as Generated hiding (send)
import Control.Monad (void)
import qualified Data.Text as T (unpack)

data XHRError = XHRError
              | XHRAborted
              deriving (Show, Eq, Typeable)

instance Exception XHRError

throwXHRError :: MonadDOM m => Maybe XHRError -> m ()
throwXHRError = maybe (return ()) (liftIO . throwIO)

withEvent :: JSM (JSM ()) -> JSM a -> JSM a
withEvent aquire = bracket aquire id . const

send' :: (MonadDOM m) => XMLHttpRequest -> Maybe JSVal -> m (Maybe XHRError)
send' self mbVal = do
    result <- liftIO newEmptyMVar
    liftDOM $
        withEvent (on self Generated.error . liftIO $ putMVar result (Just XHRError)) $
            withEvent (on self abortEvent . liftIO $ putMVar result (Just XHRAborted)) $
                withEvent (on self load . liftIO $ putMVar result Nothing) $ do
                    postGUIAsyncJS . void $
                        case mbVal of
                            Nothing  -> self ^. js0 "send"
                            Just val -> self ^. js1 "send" val
                    liftIO $ takeMVar result

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
send :: (MonadDOM m) => XMLHttpRequest -> m ()
send self = send' self Nothing >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendString :: (MonadDOM m, ToJSString str) => XMLHttpRequest -> str -> m ()
sendString self str = liftDOM $ toJSVal str >>= send' self . Just >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendArrayBuffer :: (MonadDOM m, IsArrayBufferView view) => XMLHttpRequest -> view -> m ()
sendArrayBuffer self view = liftDOM $ toJSVal view >>= send' self . Just >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendBlob :: (MonadDOM m, IsBlob blob) => XMLHttpRequest -> blob -> m ()
sendBlob self blob = liftDOM $ toJSVal blob >>= send' self . Just >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendDocument :: (MonadDOM m, IsDocument doc) => XMLHttpRequest -> doc -> m ()
sendDocument self doc = liftDOM $ toJSVal doc >>= send' self . Just >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendFormData :: (MonadDOM m) => XMLHttpRequest -> FormData -> m ()
sendFormData self formData = liftDOM $ toJSVal formData >>= send' self . Just >>= throwXHRError
