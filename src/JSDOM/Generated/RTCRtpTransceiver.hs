{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCRtpTransceiver
       (setDirection, stop, getMid, getMidUnsafe, getMidUnchecked,
        getSender, getReceiver, getStopped, getDirection,
        RTCRtpTransceiver(..), gTypeRTCRtpTransceiver)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.setDirection Mozilla RTCRtpTransceiver.setDirection documentation> 
setDirection ::
             (MonadDOM m) =>
               RTCRtpTransceiver -> RTCRtpTransceiverDirection -> m ()
setDirection self direction
  = liftDOM (void (self ^. jsf "setDirection" [toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.stop Mozilla RTCRtpTransceiver.stop documentation> 
stop :: (MonadDOM m) => RTCRtpTransceiver -> m ()
stop self = liftDOM (void (self ^. jsf "stop" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.mid Mozilla RTCRtpTransceiver.mid documentation> 
getMid ::
       (MonadDOM m, FromJSString result) =>
         RTCRtpTransceiver -> m (Maybe result)
getMid self = liftDOM ((self ^. js "mid") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.mid Mozilla RTCRtpTransceiver.mid documentation> 
getMidUnsafe ::
             (MonadDOM m, HasCallStack, FromJSString result) =>
               RTCRtpTransceiver -> m result
getMidUnsafe self
  = liftDOM
      (((self ^. js "mid") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.mid Mozilla RTCRtpTransceiver.mid documentation> 
getMidUnchecked ::
                (MonadDOM m, FromJSString result) => RTCRtpTransceiver -> m result
getMidUnchecked self
  = liftDOM ((self ^. js "mid") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.sender Mozilla RTCRtpTransceiver.sender documentation> 
getSender :: (MonadDOM m) => RTCRtpTransceiver -> m RTCRtpSender
getSender self
  = liftDOM ((self ^. js "sender") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.receiver Mozilla RTCRtpTransceiver.receiver documentation> 
getReceiver ::
            (MonadDOM m) => RTCRtpTransceiver -> m RTCRtpReceiver
getReceiver self
  = liftDOM ((self ^. js "receiver") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.stopped Mozilla RTCRtpTransceiver.stopped documentation> 
getStopped :: (MonadDOM m) => RTCRtpTransceiver -> m Bool
getStopped self = liftDOM ((self ^. js "stopped") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.direction Mozilla RTCRtpTransceiver.direction documentation> 
getDirection ::
             (MonadDOM m) => RTCRtpTransceiver -> m RTCRtpTransceiverDirection
getDirection self
  = liftDOM ((self ^. js "direction") >>= fromJSValUnchecked)
