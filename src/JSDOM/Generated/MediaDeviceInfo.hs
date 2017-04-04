{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaDeviceInfo
       (newMediaDeviceInfo, getDeviceId, getGroupId, getKind, getLabel,
        MediaDeviceInfo(..), gTypeMediaDeviceInfo)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo Mozilla MediaDeviceInfo documentation> 
newMediaDeviceInfo ::
                   (MonadDOM m, ToJSString deviceId, ToJSString label,
                    ToJSString groupId) =>
                     deviceId ->
                       label -> groupId -> MediaDeviceKind -> m MediaDeviceInfo
newMediaDeviceInfo deviceId label groupId kind
  = liftDOM
      (MediaDeviceInfo <$>
         new (jsg "MediaDeviceInfo")
           [toJSVal deviceId, toJSVal label, toJSVal groupId, toJSVal kind])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.deviceId Mozilla MediaDeviceInfo.deviceId documentation> 
getDeviceId ::
            (MonadDOM m, FromJSString result) => MediaDeviceInfo -> m result
getDeviceId self
  = liftDOM ((self ^. js "deviceId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.groupId Mozilla MediaDeviceInfo.groupId documentation> 
getGroupId ::
           (MonadDOM m, FromJSString result) => MediaDeviceInfo -> m result
getGroupId self
  = liftDOM ((self ^. js "groupId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.kind Mozilla MediaDeviceInfo.kind documentation> 
getKind :: (MonadDOM m) => MediaDeviceInfo -> m MediaDeviceKind
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.label Mozilla MediaDeviceInfo.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => MediaDeviceInfo -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)
