{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCTrackEvent
       (newRTCTrackEvent, getReceiver, getTrack, getStreams,
        getTransceiver, RTCTrackEvent(..), gTypeRTCTrackEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent Mozilla RTCTrackEvent documentation> 
newRTCTrackEvent ::
                 (MonadDOM m, ToJSString type') =>
                   type' -> RTCTrackEventInit -> m RTCTrackEvent
newRTCTrackEvent type' eventInitDict
  = liftDOM
      (RTCTrackEvent <$>
         new (jsg "RTCTrackEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.receiver Mozilla RTCTrackEvent.receiver documentation> 
getReceiver :: (MonadDOM m) => RTCTrackEvent -> m RTCRtpReceiver
getReceiver self
  = liftDOM ((self ^. js "receiver") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.track Mozilla RTCTrackEvent.track documentation> 
getTrack :: (MonadDOM m) => RTCTrackEvent -> m MediaStreamTrack
getTrack self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.streams Mozilla RTCTrackEvent.streams documentation> 
getStreams :: (MonadDOM m) => RTCTrackEvent -> m [MediaStream]
getStreams self
  = liftDOM ((self ^. js "streams") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.transceiver Mozilla RTCTrackEvent.transceiver documentation> 
getTransceiver ::
               (MonadDOM m) => RTCTrackEvent -> m RTCRtpTransceiver
getTransceiver self
  = liftDOM ((self ^. js "transceiver") >>= fromJSValUnchecked)
