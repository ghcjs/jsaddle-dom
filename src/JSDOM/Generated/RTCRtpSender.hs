{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCRtpSender
       (replaceTrack, getTrack, getTrackUnsafe, getTrackUnchecked,
        RTCRtpSender(..), gTypeRTCRtpSender)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.replaceTrack Mozilla RTCRtpSender.replaceTrack documentation> 
replaceTrack ::
             (MonadDOM m) => RTCRtpSender -> MediaStreamTrack -> m ()
replaceTrack self withTrack
  = liftDOM
      (void
         ((self ^. jsf "replaceTrack" [toJSVal withTrack]) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.track Mozilla RTCRtpSender.track documentation> 
getTrack ::
         (MonadDOM m) => RTCRtpSender -> m (Maybe MediaStreamTrack)
getTrack self = liftDOM ((self ^. js "track") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.track Mozilla RTCRtpSender.track documentation> 
getTrackUnsafe ::
               (MonadDOM m, HasCallStack) => RTCRtpSender -> m MediaStreamTrack
getTrackUnsafe self
  = liftDOM
      (((self ^. js "track") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.track Mozilla RTCRtpSender.track documentation> 
getTrackUnchecked ::
                  (MonadDOM m) => RTCRtpSender -> m MediaStreamTrack
getTrackUnchecked self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)
