{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGFESpotLightElement
       (getX, getY, getZ, getPointsAtX, getPointsAtY, getPointsAtZ,
        getSpecularExponent, getLimitingConeAngle, SVGFESpotLightElement,
        castToSVGFESpotLightElement, gTypeSVGFESpotLightElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getX ::
     (MonadDOM m) =>
       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getY ::
     (MonadDOM m) =>
       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZ ::
     (MonadDOM m) =>
       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getZ self = liftDOM ((self ^. js "z") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtX ::
             (MonadDOM m) =>
               SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtX self
  = liftDOM ((self ^. js "pointsAtX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtY ::
             (MonadDOM m) =>
               SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtY self
  = liftDOM ((self ^. js "pointsAtY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZ ::
             (MonadDOM m) =>
               SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtZ self
  = liftDOM ((self ^. js "pointsAtZ") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadDOM m) =>
                      SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftDOM ((self ^. js "specularExponent") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngle ::
                     (MonadDOM m) =>
                       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getLimitingConeAngle self
  = liftDOM ((self ^. js "limitingConeAngle") >>= fromJSVal)