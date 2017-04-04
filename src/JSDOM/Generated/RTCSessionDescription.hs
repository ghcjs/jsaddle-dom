{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCSessionDescription
       (newRTCSessionDescription, getType, getSdp,
        RTCSessionDescription(..), gTypeRTCSessionDescription)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation> 
newRTCSessionDescription ::
                         (MonadDOM m) =>
                           RTCSessionDescriptionInit -> m RTCSessionDescription
newRTCSessionDescription descriptionInitDict
  = liftDOM
      (RTCSessionDescription <$>
         new (jsg "RTCSessionDescription") [toJSVal descriptionInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.type Mozilla RTCSessionDescription.type documentation> 
getType :: (MonadDOM m) => RTCSessionDescription -> m RTCSdpType
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
getSdp ::
       (MonadDOM m, FromJSString result) =>
         RTCSessionDescription -> m result
getSdp self = liftDOM ((self ^. js "sdp") >>= fromJSValUnchecked)
