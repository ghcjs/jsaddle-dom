{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEDiffuseLightingElement
       (getIn1, getIn1Unsafe, getIn1Unchecked, getSurfaceScale,
        getSurfaceScaleUnsafe, getSurfaceScaleUnchecked,
        getDiffuseConstant, getDiffuseConstantUnsafe,
        getDiffuseConstantUnchecked, getKernelUnitLengthX,
        getKernelUnitLengthXUnsafe, getKernelUnitLengthXUnchecked,
        getKernelUnitLengthY, getKernelUnitLengthYUnsafe,
        getKernelUnitLengthYUnchecked, SVGFEDiffuseLightingElement(..),
        gTypeSVGFEDiffuseLightingElement)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1Unsafe ::
             (MonadDOM m, HasCallStack) =>
               SVGFEDiffuseLightingElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftDOM
      (((self ^. js "in1") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
getSurfaceScaleUnsafe ::
                      (MonadDOM m, HasCallStack) =>
                        SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnsafe self
  = liftDOM
      (((self ^. js "surfaceScale") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
getDiffuseConstantUnsafe ::
                         (MonadDOM m, HasCallStack) =>
                           SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getDiffuseConstantUnsafe self
  = liftDOM
      (((self ^. js "diffuseConstant") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
getKernelUnitLengthXUnsafe ::
                           (MonadDOM m, HasCallStack) =>
                             SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnsafe self
  = liftDOM
      (((self ^. js "kernelUnitLengthX") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
getKernelUnitLengthYUnsafe ::
                           (MonadDOM m, HasCallStack) =>
                             SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnsafe self
  = liftDOM
      (((self ^. js "kernelUnitLengthY") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnchecked ::
                              (MonadDOM m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnchecked self
  = liftDOM ((self ^. js "kernelUnitLengthY") >>= fromJSValUnchecked)
