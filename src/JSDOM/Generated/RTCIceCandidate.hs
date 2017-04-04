{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCIceCandidate
       (newRTCIceCandidate, getCandidate, getSdpMid, getSdpMidUnsafe,
        getSdpMidUnchecked, getSdpMLineIndex, getSdpMLineIndexUnsafe,
        getSdpMLineIndexUnchecked, RTCIceCandidate(..),
        gTypeRTCIceCandidate)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation> 
newRTCIceCandidate ::
                   (MonadDOM m) => RTCIceCandidateInit -> m RTCIceCandidate
newRTCIceCandidate candidateInitDict
  = liftDOM
      (RTCIceCandidate <$>
         new (jsg "RTCIceCandidate") [toJSVal candidateInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.candidate Mozilla RTCIceCandidate.candidate documentation> 
getCandidate ::
             (MonadDOM m, FromJSString result) => RTCIceCandidate -> m result
getCandidate self
  = liftDOM ((self ^. js "candidate") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMid ::
          (MonadDOM m, FromJSString result) =>
            RTCIceCandidate -> m (Maybe result)
getSdpMid self = liftDOM ((self ^. js "sdpMid") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMidUnsafe ::
                (MonadDOM m, HasCallStack, FromJSString result) =>
                  RTCIceCandidate -> m result
getSdpMidUnsafe self
  = liftDOM
      (((self ^. js "sdpMid") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMidUnchecked ::
                   (MonadDOM m, FromJSString result) => RTCIceCandidate -> m result
getSdpMidUnchecked self
  = liftDOM ((self ^. js "sdpMid") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndex ::
                 (MonadDOM m) => RTCIceCandidate -> m (Maybe Word)
getSdpMLineIndex self
  = liftDOM ((self ^. js "sdpMLineIndex") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndexUnsafe ::
                       (MonadDOM m, HasCallStack) => RTCIceCandidate -> m Word
getSdpMLineIndexUnsafe self
  = liftDOM
      (((self ^. js "sdpMLineIndex") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndexUnchecked ::
                          (MonadDOM m) => RTCIceCandidate -> m Word
getSdpMLineIndexUnchecked self
  = liftDOM ((self ^. js "sdpMLineIndex") >>= fromJSValUnchecked)
