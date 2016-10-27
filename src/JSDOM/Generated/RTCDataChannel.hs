{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCDataChannel
       (send, sendView, sendBlob, sendString, close, getLabel, getOrdered,
        getMaxRetransmitTime, getMaxRetransmits, getProtocol,
        getNegotiated, getId, getReadyState, getBufferedAmount,
        setBinaryType, getBinaryType, open, error, closeEvent, message,
        RTCDataChannel(..), gTypeRTCDataChannel)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
send ::
     (MonadDOM m, IsArrayBuffer data') =>
       RTCDataChannel -> Maybe data' -> m ()
send self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendView ::
         (MonadDOM m, IsArrayBufferView data') =>
           RTCDataChannel -> Maybe data' -> m ()
sendView self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendBlob ::
         (MonadDOM m, IsBlob data') => RTCDataChannel -> Maybe data' -> m ()
sendBlob self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendString ::
           (MonadDOM m, ToJSString data') => RTCDataChannel -> data' -> m ()
sendString self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.close Mozilla RTCDataChannel.close documentation> 
close :: (MonadDOM m) => RTCDataChannel -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.label Mozilla RTCDataChannel.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => RTCDataChannel -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.ordered Mozilla RTCDataChannel.ordered documentation> 
getOrdered :: (MonadDOM m) => RTCDataChannel -> m Bool
getOrdered self = liftDOM ((self ^. js "ordered") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmitTime Mozilla RTCDataChannel.maxRetransmitTime documentation> 
getMaxRetransmitTime :: (MonadDOM m) => RTCDataChannel -> m Word
getMaxRetransmitTime self
  = liftDOM
      (round <$> ((self ^. js "maxRetransmitTime") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmits :: (MonadDOM m) => RTCDataChannel -> m Word
getMaxRetransmits self
  = liftDOM
      (round <$> ((self ^. js "maxRetransmits") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.protocol Mozilla RTCDataChannel.protocol documentation> 
getProtocol ::
            (MonadDOM m, FromJSString result) => RTCDataChannel -> m result
getProtocol self
  = liftDOM ((self ^. js "protocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.negotiated Mozilla RTCDataChannel.negotiated documentation> 
getNegotiated :: (MonadDOM m) => RTCDataChannel -> m Bool
getNegotiated self
  = liftDOM ((self ^. js "negotiated") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
getId :: (MonadDOM m) => RTCDataChannel -> m Word
getId self
  = liftDOM (round <$> ((self ^. js "id") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.readyState Mozilla RTCDataChannel.readyState documentation> 
getReadyState ::
              (MonadDOM m, FromJSString result) => RTCDataChannel -> m result
getReadyState self
  = liftDOM ((self ^. js "readyState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmount Mozilla RTCDataChannel.bufferedAmount documentation> 
getBufferedAmount :: (MonadDOM m) => RTCDataChannel -> m Word
getBufferedAmount self
  = liftDOM
      (round <$> ((self ^. js "bufferedAmount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
setBinaryType ::
              (MonadDOM m, ToJSString val) => RTCDataChannel -> val -> m ()
setBinaryType self val
  = liftDOM (self ^. jss "binaryType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
getBinaryType ::
              (MonadDOM m, FromJSString result) => RTCDataChannel -> m result
getBinaryType self
  = liftDOM ((self ^. js "binaryType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onopen Mozilla RTCDataChannel.onopen documentation> 
open :: EventName RTCDataChannel Event
open = unsafeEventName (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onerror Mozilla RTCDataChannel.onerror documentation> 
error :: EventName RTCDataChannel UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onclose Mozilla RTCDataChannel.onclose documentation> 
closeEvent :: EventName RTCDataChannel CloseEvent
closeEvent = unsafeEventName (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onmessage Mozilla RTCDataChannel.onmessage documentation> 
message :: EventName RTCDataChannel MessageEvent
message = unsafeEventName (toJSString "message")
