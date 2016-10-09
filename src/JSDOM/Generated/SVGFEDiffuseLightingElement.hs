{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEDiffuseLightingElement
       (getIn1, getIn1Unchecked, getSurfaceScale,
        getSurfaceScaleUnchecked, getDiffuseConstant,
        getDiffuseConstantUnchecked, getKernelUnitLengthX,
        getKernelUnitLengthXUnchecked, getKernelUnitLengthY,
        getKernelUnitLengthYUnchecked, SVGFEDiffuseLightingElement,
        castToSVGFEDiffuseLightingElement,
        gTypeSVGFEDiffuseLightingElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1Unchecked ::
                (MonadDOM m) => SVGFEDiffuseLightingElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.surfaceScale Mozilla SVGFEDiffuseLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadDOM m) =>
                  SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftDOM ((self ^. js "surfaceScale") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.surfaceScale Mozilla SVGFEDiffuseLightingElement.surfaceScale documentation> 
getSurfaceScaleUnchecked ::
                         (MonadDOM m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnchecked self
  = liftDOM ((self ^. js "surfaceScale") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.diffuseConstant Mozilla SVGFEDiffuseLightingElement.diffuseConstant documentation> 
getDiffuseConstant ::
                   (MonadDOM m) =>
                     SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getDiffuseConstant self
  = liftDOM ((self ^. js "diffuseConstant") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.diffuseConstant Mozilla SVGFEDiffuseLightingElement.diffuseConstant documentation> 
getDiffuseConstantUnchecked ::
                            (MonadDOM m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getDiffuseConstantUnchecked self
  = liftDOM ((self ^. js "diffuseConstant") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthX Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadDOM m) =>
                       SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftDOM ((self ^. js "kernelUnitLengthX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthX Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthX documentation> 
getKernelUnitLengthXUnchecked ::
                              (MonadDOM m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnchecked self
  = liftDOM ((self ^. js "kernelUnitLengthX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadDOM m) =>
                       SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftDOM ((self ^. js "kernelUnitLengthY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnchecked ::
                              (MonadDOM m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnchecked self
  = liftDOM ((self ^. js "kernelUnitLengthY") >>= fromJSValUnchecked)
