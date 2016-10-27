{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFESpecularLightingElement
       (getIn1, getIn1Unsafe, getIn1Unchecked, getSurfaceScale,
        getSurfaceScaleUnsafe, getSurfaceScaleUnchecked,
        getSpecularConstant, getSpecularConstantUnsafe,
        getSpecularConstantUnchecked, getSpecularExponent,
        getSpecularExponentUnsafe, getSpecularExponentUnchecked,
        SVGFESpecularLightingElement(..),
        gTypeSVGFESpecularLightingElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFESpecularLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1Unsafe ::
             (MonadDOM m, HasCallStack) =>
               SVGFESpecularLightingElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftDOM
      (((self ^. js "in1") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1Unchecked ::
                (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadDOM m) =>
                  SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftDOM ((self ^. js "surfaceScale") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScaleUnsafe ::
                      (MonadDOM m, HasCallStack) =>
                        SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnsafe self
  = liftDOM
      (((self ^. js "surfaceScale") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScaleUnchecked ::
                         (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnchecked self
  = liftDOM ((self ^. js "surfaceScale") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstant ::
                    (MonadDOM m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularConstant self
  = liftDOM ((self ^. js "specularConstant") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstantUnsafe ::
                          (MonadDOM m, HasCallStack) =>
                            SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularConstantUnsafe self
  = liftDOM
      (((self ^. js "specularConstant") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstantUnchecked ::
                             (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularConstantUnchecked self
  = liftDOM ((self ^. js "specularConstant") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadDOM m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftDOM ((self ^. js "specularExponent") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponentUnsafe ::
                          (MonadDOM m, HasCallStack) =>
                            SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularExponentUnsafe self
  = liftDOM
      (((self ^. js "specularExponent") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponentUnchecked ::
                             (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularExponentUnchecked self
  = liftDOM ((self ^. js "specularExponent") >>= fromJSValUnchecked)
