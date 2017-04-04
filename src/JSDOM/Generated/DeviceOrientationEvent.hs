{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DeviceOrientationEvent
       (initDeviceOrientationEvent, getAlpha, getAlphaUnsafe,
        getAlphaUnchecked, getBeta, getBetaUnsafe, getBetaUnchecked,
        getGamma, getGammaUnsafe, getGammaUnchecked, getAbsolute,
        getAbsoluteUnsafe, getAbsoluteUnchecked,
        DeviceOrientationEvent(..), gTypeDeviceOrientationEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.initDeviceOrientationEvent Mozilla DeviceOrientationEvent.initDeviceOrientationEvent documentation> 
initDeviceOrientationEvent ::
                           (MonadDOM m, ToJSString type') =>
                             DeviceOrientationEvent ->
                               Maybe type' ->
                                 Bool ->
                                   Bool ->
                                     Maybe Double ->
                                       Maybe Double -> Maybe Double -> Maybe Bool -> m ()
initDeviceOrientationEvent self type' bubbles cancelable alpha beta
  gamma absolute
  = liftDOM
      (void
         (self ^. jsf "initDeviceOrientationEvent"
            [toJSVal type', toJSVal bubbles, toJSVal cancelable, toJSVal alpha,
             toJSVal beta, toJSVal gamma, toJSVal absolute]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlpha ::
         (MonadDOM m) => DeviceOrientationEvent -> m (Maybe Double)
getAlpha self = liftDOM ((self ^. js "alpha") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlphaUnsafe ::
               (MonadDOM m, HasCallStack) => DeviceOrientationEvent -> m Double
getAlphaUnsafe self
  = liftDOM
      (((self ^. js "alpha") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlphaUnchecked ::
                  (MonadDOM m) => DeviceOrientationEvent -> m Double
getAlphaUnchecked self
  = liftDOM ((self ^. js "alpha") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBeta ::
        (MonadDOM m) => DeviceOrientationEvent -> m (Maybe Double)
getBeta self = liftDOM ((self ^. js "beta") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBetaUnsafe ::
              (MonadDOM m, HasCallStack) => DeviceOrientationEvent -> m Double
getBetaUnsafe self
  = liftDOM
      (((self ^. js "beta") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBetaUnchecked ::
                 (MonadDOM m) => DeviceOrientationEvent -> m Double
getBetaUnchecked self
  = liftDOM ((self ^. js "beta") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGamma ::
         (MonadDOM m) => DeviceOrientationEvent -> m (Maybe Double)
getGamma self = liftDOM ((self ^. js "gamma") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGammaUnsafe ::
               (MonadDOM m, HasCallStack) => DeviceOrientationEvent -> m Double
getGammaUnsafe self
  = liftDOM
      (((self ^. js "gamma") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGammaUnchecked ::
                  (MonadDOM m) => DeviceOrientationEvent -> m Double
getGammaUnchecked self
  = liftDOM ((self ^. js "gamma") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsolute ::
            (MonadDOM m) => DeviceOrientationEvent -> m (Maybe Bool)
getAbsolute self = liftDOM ((self ^. js "absolute") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsoluteUnsafe ::
                  (MonadDOM m, HasCallStack) => DeviceOrientationEvent -> m Bool
getAbsoluteUnsafe self
  = liftDOM
      (((self ^. js "absolute") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsoluteUnchecked ::
                     (MonadDOM m) => DeviceOrientationEvent -> m Bool
getAbsoluteUnchecked self
  = liftDOM ((self ^. js "absolute") >>= fromJSValUnchecked)
