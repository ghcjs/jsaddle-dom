{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.DeviceOrientationEvent
       (initDeviceOrientationEvent, getAlpha, getBeta, getGamma,
        getAbsolute, DeviceOrientationEvent, castToDeviceOrientationEvent,
        gTypeDeviceOrientationEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.initDeviceOrientationEvent Mozilla DeviceOrientationEvent.initDeviceOrientationEvent documentation> 
initDeviceOrientationEvent ::
                           (MonadDOM m, ToJSString type') =>
                             DeviceOrientationEvent ->
                               type' -> Bool -> Bool -> Double -> Double -> Double -> Bool -> m ()
initDeviceOrientationEvent self type' bubbles cancelable alpha beta
  gamma absolute
  = liftDOM
      (void
         (self ^. jsf "initDeviceOrientationEvent"
            [toJSVal type', toJSVal bubbles, toJSVal cancelable, toJSVal alpha,
             toJSVal beta, toJSVal gamma, toJSVal absolute]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlpha :: (MonadDOM m) => DeviceOrientationEvent -> m Double
getAlpha self = liftDOM ((self ^. js "alpha") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBeta :: (MonadDOM m) => DeviceOrientationEvent -> m Double
getBeta self = liftDOM ((self ^. js "beta") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGamma :: (MonadDOM m) => DeviceOrientationEvent -> m Double
getGamma self = liftDOM ((self ^. js "gamma") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsolute :: (MonadDOM m) => DeviceOrientationEvent -> m Bool
getAbsolute self = liftDOM ((self ^. js "absolute") >>= valToBool)