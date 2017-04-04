{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DeviceMotionEvent
       (initDeviceMotionEvent, getAcceleration, getAccelerationUnsafe,
        getAccelerationUnchecked, getAccelerationIncludingGravity,
        getAccelerationIncludingGravityUnsafe,
        getAccelerationIncludingGravityUnchecked, getRotationRate,
        getRotationRateUnsafe, getRotationRateUnchecked, getInterval,
        getIntervalUnsafe, getIntervalUnchecked, DeviceMotionEvent(..),
        gTypeDeviceMotionEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.initDeviceMotionEvent Mozilla DeviceMotionEvent.initDeviceMotionEvent documentation> 
initDeviceMotionEvent ::
                      (MonadDOM m, ToJSString type') =>
                        DeviceMotionEvent ->
                          Maybe type' ->
                            Bool ->
                              Bool ->
                                Maybe Acceleration ->
                                  Maybe Acceleration -> Maybe RotationRate -> Maybe Double -> m ()
initDeviceMotionEvent self type' bubbles cancelable acceleration
  accelerationIncludingGravity rotationRate interval
  = liftDOM
      (void
         (self ^. jsf "initDeviceMotionEvent"
            [toJSVal type', toJSVal bubbles, toJSVal cancelable,
             toJSVal acceleration, toJSVal accelerationIncludingGravity,
             toJSVal rotationRate, toJSVal interval]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAcceleration ::
                (MonadDOM m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAcceleration self
  = liftDOM ((self ^. js "acceleration") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAccelerationUnsafe ::
                      (MonadDOM m, HasCallStack) => DeviceMotionEvent -> m Acceleration
getAccelerationUnsafe self
  = liftDOM
      (((self ^. js "acceleration") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAccelerationUnchecked ::
                         (MonadDOM m) => DeviceMotionEvent -> m Acceleration
getAccelerationUnchecked self
  = liftDOM ((self ^. js "acceleration") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravity ::
                                (MonadDOM m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAccelerationIncludingGravity self
  = liftDOM
      ((self ^. js "accelerationIncludingGravity") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravityUnsafe ::
                                      (MonadDOM m, HasCallStack) =>
                                        DeviceMotionEvent -> m Acceleration
getAccelerationIncludingGravityUnsafe self
  = liftDOM
      (((self ^. js "accelerationIncludingGravity") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravityUnchecked ::
                                         (MonadDOM m) => DeviceMotionEvent -> m Acceleration
getAccelerationIncludingGravityUnchecked self
  = liftDOM
      ((self ^. js "accelerationIncludingGravity") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRate ::
                (MonadDOM m) => DeviceMotionEvent -> m (Maybe RotationRate)
getRotationRate self
  = liftDOM ((self ^. js "rotationRate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRateUnsafe ::
                      (MonadDOM m, HasCallStack) => DeviceMotionEvent -> m RotationRate
getRotationRateUnsafe self
  = liftDOM
      (((self ^. js "rotationRate") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRateUnchecked ::
                         (MonadDOM m) => DeviceMotionEvent -> m RotationRate
getRotationRateUnchecked self
  = liftDOM ((self ^. js "rotationRate") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getInterval ::
            (MonadDOM m) => DeviceMotionEvent -> m (Maybe Double)
getInterval self = liftDOM ((self ^. js "interval") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getIntervalUnsafe ::
                  (MonadDOM m, HasCallStack) => DeviceMotionEvent -> m Double
getIntervalUnsafe self
  = liftDOM
      (((self ^. js "interval") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getIntervalUnchecked ::
                     (MonadDOM m) => DeviceMotionEvent -> m Double
getIntervalUnchecked self
  = liftDOM ((self ^. js "interval") >>= fromJSValUnchecked)
