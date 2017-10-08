{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebSocket
       (newWebSocket, newWebSocket', send, sendView, sendBlob, sendString,
        close, pattern CONNECTING, pattern OPEN, pattern CLOSING,
        pattern CLOSED, getUrl, getReadyState, getBufferedAmount, open,
        message, error, closeEvent, getProtocol, getProtocolUnsafe,
        getProtocolUnchecked, getExtensions, getExtensionsUnsafe,
        getExtensionsUnchecked, setBinaryType, getBinaryType,
        WebSocket(..), gTypeWebSocket)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation> 
newWebSocket ::
             (MonadDOM m, ToJSString url, ToJSString protocols) =>
               url -> [protocols] -> m WebSocket
newWebSocket url protocols
  = liftDOM
      (WebSocket <$>
         new (jsg "WebSocket") [toJSVal url, toJSVal (array protocols)])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation> 
newWebSocket' ::
              (MonadDOM m, ToJSString url, ToJSString protocol) =>
                url -> protocol -> m WebSocket
newWebSocket' url protocol
  = liftDOM
      (WebSocket <$>
         new (jsg "WebSocket") [toJSVal url, toJSVal protocol])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
send ::
     (MonadDOM m, IsArrayBuffer data') => WebSocket -> data' -> m ()
send self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
sendView ::
         (MonadDOM m, IsArrayBufferView data') => WebSocket -> data' -> m ()
sendView self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
sendBlob ::
         (MonadDOM m, IsBlob data') => WebSocket -> data' -> m ()
sendBlob self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
sendString ::
           (MonadDOM m, ToJSString data') => WebSocket -> data' -> m ()
sendString self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.close Mozilla WebSocket.close documentation> 
close ::
      (MonadDOM m, ToJSString reason) =>
        WebSocket -> Maybe Word -> Maybe reason -> m ()
close self code reason
  = liftDOM
      (void (self ^. jsf "close" [toJSVal code, toJSVal reason]))
pattern CONNECTING = 0
pattern OPEN = 1
pattern CLOSING = 2
pattern CLOSED = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.url Mozilla WebSocket.url documentation> 
getUrl ::
       (MonadDOM m, FromJSString result) => WebSocket -> m result
getUrl self = liftDOM ((self ^. js "url") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.readyState Mozilla WebSocket.readyState documentation> 
getReadyState :: (MonadDOM m) => WebSocket -> m Word
getReadyState self
  = liftDOM (round <$> ((self ^. js "readyState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.bufferedAmount Mozilla WebSocket.bufferedAmount documentation> 
getBufferedAmount :: (MonadDOM m) => WebSocket -> m Word
getBufferedAmount self
  = liftDOM
      (round <$> ((self ^. js "bufferedAmount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onopen Mozilla WebSocket.onopen documentation> 
open :: EventName WebSocket Event
open = unsafeEventNameAsync (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onmessage Mozilla WebSocket.onmessage documentation> 
message :: EventName WebSocket MessageEvent
message = unsafeEventNameAsync (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onerror Mozilla WebSocket.onerror documentation> 
error :: EventName WebSocket UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onclose Mozilla WebSocket.onclose documentation> 
closeEvent :: EventName WebSocket CloseEvent
closeEvent = unsafeEventNameAsync (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
getProtocol ::
            (MonadDOM m, FromJSString result) => WebSocket -> m (Maybe result)
getProtocol self = liftDOM ((self ^. js "protocol") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
getProtocolUnsafe ::
                  (MonadDOM m, HasCallStack, FromJSString result) =>
                    WebSocket -> m result
getProtocolUnsafe self
  = liftDOM
      (((self ^. js "protocol") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
getProtocolUnchecked ::
                     (MonadDOM m, FromJSString result) => WebSocket -> m result
getProtocolUnchecked self
  = liftDOM ((self ^. js "protocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
getExtensions ::
              (MonadDOM m, FromJSString result) => WebSocket -> m (Maybe result)
getExtensions self
  = liftDOM ((self ^. js "extensions") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
getExtensionsUnsafe ::
                    (MonadDOM m, HasCallStack, FromJSString result) =>
                      WebSocket -> m result
getExtensionsUnsafe self
  = liftDOM
      (((self ^. js "extensions") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
getExtensionsUnchecked ::
                       (MonadDOM m, FromJSString result) => WebSocket -> m result
getExtensionsUnchecked self
  = liftDOM ((self ^. js "extensions") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
setBinaryType ::
              (MonadDOM m, ToJSString val) => WebSocket -> val -> m ()
setBinaryType self val
  = liftDOM (self ^. jss "binaryType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
getBinaryType ::
              (MonadDOM m, FromJSString result) => WebSocket -> m result
getBinaryType self
  = liftDOM ((self ^. js "binaryType") >>= fromJSValUnchecked)
