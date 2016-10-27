{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFESpotLightElement
       (getX, getXUnsafe, getXUnchecked, getY, getYUnsafe, getYUnchecked,
        getZ, getZUnsafe, getZUnchecked, getPointsAtX, getPointsAtXUnsafe,
        getPointsAtXUnchecked, getPointsAtY, getPointsAtYUnsafe,
        getPointsAtYUnchecked, getPointsAtZ, getPointsAtZUnsafe,
        getPointsAtZUnchecked, getSpecularExponent,
        getSpecularExponentUnsafe, getSpecularExponentUnchecked,
        getLimitingConeAngle, getLimitingConeAngleUnsafe,
        getLimitingConeAngleUnchecked, SVGFESpotLightElement(..),
        gTypeSVGFESpotLightElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getX ::
     (MonadDOM m) =>
       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getXUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGFESpotLightElement -> m SVGAnimatedNumber
getXUnsafe self
  = liftDOM
      (((self ^. js "x") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getXUnchecked ::
              (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getXUnchecked self
  = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getY ::
     (MonadDOM m) =>
       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getYUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGFESpotLightElement -> m SVGAnimatedNumber
getYUnsafe self
  = liftDOM
      (((self ^. js "y") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getYUnchecked ::
              (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getYUnchecked self
  = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZ ::
     (MonadDOM m) =>
       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getZ self = liftDOM ((self ^. js "z") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGFESpotLightElement -> m SVGAnimatedNumber
getZUnsafe self
  = liftDOM
      (((self ^. js "z") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZUnchecked ::
              (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getZUnchecked self
  = liftDOM ((self ^. js "z") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtX ::
             (MonadDOM m) =>
               SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtX self
  = liftDOM ((self ^. js "pointsAtX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtXUnsafe ::
                   (MonadDOM m, HasCallStack) =>
                     SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtXUnsafe self
  = liftDOM
      (((self ^. js "pointsAtX") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtXUnchecked ::
                      (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtXUnchecked self
  = liftDOM ((self ^. js "pointsAtX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtY ::
             (MonadDOM m) =>
               SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtY self
  = liftDOM ((self ^. js "pointsAtY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtYUnsafe ::
                   (MonadDOM m, HasCallStack) =>
                     SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtYUnsafe self
  = liftDOM
      (((self ^. js "pointsAtY") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtYUnchecked ::
                      (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtYUnchecked self
  = liftDOM ((self ^. js "pointsAtY") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZ ::
             (MonadDOM m) =>
               SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtZ self
  = liftDOM ((self ^. js "pointsAtZ") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZUnsafe ::
                   (MonadDOM m, HasCallStack) =>
                     SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtZUnsafe self
  = liftDOM
      (((self ^. js "pointsAtZ") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZUnchecked ::
                      (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtZUnchecked self
  = liftDOM ((self ^. js "pointsAtZ") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadDOM m) =>
                      SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftDOM ((self ^. js "specularExponent") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponentUnsafe ::
                          (MonadDOM m, HasCallStack) =>
                            SVGFESpotLightElement -> m SVGAnimatedNumber
getSpecularExponentUnsafe self
  = liftDOM
      (((self ^. js "specularExponent") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponentUnchecked ::
                             (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getSpecularExponentUnchecked self
  = liftDOM ((self ^. js "specularExponent") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngle ::
                     (MonadDOM m) =>
                       SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getLimitingConeAngle self
  = liftDOM ((self ^. js "limitingConeAngle") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngleUnsafe ::
                           (MonadDOM m, HasCallStack) =>
                             SVGFESpotLightElement -> m SVGAnimatedNumber
getLimitingConeAngleUnsafe self
  = liftDOM
      (((self ^. js "limitingConeAngle") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngleUnchecked ::
                              (MonadDOM m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getLimitingConeAngleUnchecked self
  = liftDOM ((self ^. js "limitingConeAngle") >>= fromJSValUnchecked)
