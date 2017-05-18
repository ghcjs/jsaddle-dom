{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCPeerConnectionIceEvent
       (getCandidate, getCandidateUnsafe, getCandidateUnchecked,
        RTCPeerConnectionIceEvent(..), gTypeRTCPeerConnectionIceEvent)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceEvent.candidate Mozilla RTCPeerConnectionIceEvent.candidate documentation> 
getCandidate ::
             (MonadDOM m) =>
               RTCPeerConnectionIceEvent -> m (Maybe RTCIceCandidate)
getCandidate self
  = liftDOM ((self ^. js "candidate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceEvent.candidate Mozilla RTCPeerConnectionIceEvent.candidate documentation> 
getCandidateUnsafe ::
                   (MonadDOM m, HasCallStack) =>
                     RTCPeerConnectionIceEvent -> m RTCIceCandidate
getCandidateUnsafe self
  = liftDOM
      (((self ^. js "candidate") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceEvent.candidate Mozilla RTCPeerConnectionIceEvent.candidate documentation> 
getCandidateUnchecked ::
                      (MonadDOM m) => RTCPeerConnectionIceEvent -> m RTCIceCandidate
getCandidateUnchecked self
  = liftDOM ((self ^. js "candidate") >>= fromJSValUnchecked)
