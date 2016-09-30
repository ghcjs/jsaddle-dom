{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DeviceMotionEvent
       (initDeviceMotionEvent, getAcceleration,
        getAccelerationIncludingGravity, getRotationRate, getInterval,
        DeviceMotionEvent, castToDeviceMotionEvent, gTypeDeviceMotionEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.initDeviceMotionEvent Mozilla DeviceMotionEvent.initDeviceMotionEvent documentation> 
initDeviceMotionEvent ::
                      (MonadDOM m, ToJSString type', IsAcceleration acceleration,
                       IsAcceleration accelerationIncludingGravity,
                       IsRotationRate rotationRate) =>
                        DeviceMotionEvent ->
                          type' ->
                            Bool ->
                              Bool ->
                                Maybe acceleration ->
                                  Maybe accelerationIncludingGravity ->
                                    Maybe rotationRate -> Double -> m ()
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravity ::
                                (MonadDOM m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAccelerationIncludingGravity self
  = liftDOM
      ((self ^. js "accelerationIncludingGravity") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRate ::
                (MonadDOM m) => DeviceMotionEvent -> m (Maybe RotationRate)
getRotationRate self
  = liftDOM ((self ^. js "rotationRate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getInterval :: (MonadDOM m) => DeviceMotionEvent -> m Double
getInterval self
  = liftDOM ((self ^. js "interval") >>= valToNumber)
