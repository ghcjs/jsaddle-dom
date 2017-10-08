{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCDataChannel
       (send, sendView, sendBlob, sendString, close, getLabel, getOrdered,
        getMaxPacketLifeTime, getMaxPacketLifeTimeUnsafe,
        getMaxPacketLifeTimeUnchecked, getMaxRetransmits,
        getMaxRetransmitsUnsafe, getMaxRetransmitsUnchecked, getProtocol,
        getNegotiated, getId, getIdUnsafe, getIdUnchecked, getReadyState,
        getBufferedAmount, setBufferedAmountLowThreshold,
        getBufferedAmountLowThreshold, setBinaryType, getBinaryType, open,
        error, closeEvent, message, bufferedamountlow, RTCDataChannel(..),
        gTypeRTCDataChannel)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
send ::
     (MonadDOM m, IsArrayBuffer data') =>
       RTCDataChannel -> data' -> m ()
send self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendView ::
         (MonadDOM m, IsArrayBufferView data') =>
           RTCDataChannel -> data' -> m ()
sendView self data'
  = liftDOM (void (self ^. jsf "send" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendBlob ::
         (MonadDOM m, IsBlob data') => RTCDataChannel -> data' -> m ()
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxPacketLifeTime Mozilla RTCDataChannel.maxPacketLifeTime documentation> 
getMaxPacketLifeTime ::
                     (MonadDOM m) => RTCDataChannel -> m (Maybe Word)
getMaxPacketLifeTime self
  = liftDOM ((self ^. js "maxPacketLifeTime") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxPacketLifeTime Mozilla RTCDataChannel.maxPacketLifeTime documentation> 
getMaxPacketLifeTimeUnsafe ::
                           (MonadDOM m, HasCallStack) => RTCDataChannel -> m Word
getMaxPacketLifeTimeUnsafe self
  = liftDOM
      (((self ^. js "maxPacketLifeTime") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxPacketLifeTime Mozilla RTCDataChannel.maxPacketLifeTime documentation> 
getMaxPacketLifeTimeUnchecked ::
                              (MonadDOM m) => RTCDataChannel -> m Word
getMaxPacketLifeTimeUnchecked self
  = liftDOM ((self ^. js "maxPacketLifeTime") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmits ::
                  (MonadDOM m) => RTCDataChannel -> m (Maybe Word)
getMaxRetransmits self
  = liftDOM ((self ^. js "maxRetransmits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmitsUnsafe ::
                        (MonadDOM m, HasCallStack) => RTCDataChannel -> m Word
getMaxRetransmitsUnsafe self
  = liftDOM
      (((self ^. js "maxRetransmits") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmitsUnchecked ::
                           (MonadDOM m) => RTCDataChannel -> m Word
getMaxRetransmitsUnchecked self
  = liftDOM ((self ^. js "maxRetransmits") >>= fromJSValUnchecked)

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
getId :: (MonadDOM m) => RTCDataChannel -> m (Maybe Word)
getId self = liftDOM ((self ^. js "id") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
getIdUnsafe ::
            (MonadDOM m, HasCallStack) => RTCDataChannel -> m Word
getIdUnsafe self
  = liftDOM
      (((self ^. js "id") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
getIdUnchecked :: (MonadDOM m) => RTCDataChannel -> m Word
getIdUnchecked self
  = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.readyState Mozilla RTCDataChannel.readyState documentation> 
getReadyState ::
              (MonadDOM m) => RTCDataChannel -> m RTCDataChannelState
getReadyState self
  = liftDOM ((self ^. js "readyState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmount Mozilla RTCDataChannel.bufferedAmount documentation> 
getBufferedAmount :: (MonadDOM m) => RTCDataChannel -> m Word
getBufferedAmount self
  = liftDOM
      (round <$> ((self ^. js "bufferedAmount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmountLowThreshold Mozilla RTCDataChannel.bufferedAmountLowThreshold documentation> 
setBufferedAmountLowThreshold ::
                              (MonadDOM m) => RTCDataChannel -> Word -> m ()
setBufferedAmountLowThreshold self val
  = liftDOM (self ^. jss "bufferedAmountLowThreshold" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmountLowThreshold Mozilla RTCDataChannel.bufferedAmountLowThreshold documentation> 
getBufferedAmountLowThreshold ::
                              (MonadDOM m) => RTCDataChannel -> m Word
getBufferedAmountLowThreshold self
  = liftDOM
      (round <$>
         ((self ^. js "bufferedAmountLowThreshold") >>= valToNumber))

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
open = unsafeEventNameAsync (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onerror Mozilla RTCDataChannel.onerror documentation> 
error :: EventName RTCDataChannel UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onclose Mozilla RTCDataChannel.onclose documentation> 
closeEvent :: EventName RTCDataChannel CloseEvent
closeEvent = unsafeEventNameAsync (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onmessage Mozilla RTCDataChannel.onmessage documentation> 
message :: EventName RTCDataChannel MessageEvent
message = unsafeEventNameAsync (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onbufferedamountlow Mozilla RTCDataChannel.onbufferedamountlow documentation> 
bufferedamountlow :: EventName RTCDataChannel onbufferedamountlow
bufferedamountlow
  = unsafeEventName (toJSString "bufferedamountlow")
