{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEConvolveMatrixElement
       (pattern SVG_EDGEMODE_UNKNOWN, pattern SVG_EDGEMODE_DUPLICATE,
        pattern SVG_EDGEMODE_WRAP, pattern SVG_EDGEMODE_NONE, getIn1,
        getIn1Unsafe, getIn1Unchecked, getOrderX, getOrderXUnsafe,
        getOrderXUnchecked, getOrderY, getOrderYUnsafe, getOrderYUnchecked,
        getKernelMatrix, getKernelMatrixUnsafe, getKernelMatrixUnchecked,
        getDivisor, getDivisorUnsafe, getDivisorUnchecked, getBias,
        getBiasUnsafe, getBiasUnchecked, getTargetX, getTargetXUnsafe,
        getTargetXUnchecked, getTargetY, getTargetYUnsafe,
        getTargetYUnchecked, getEdgeMode, getEdgeModeUnsafe,
        getEdgeModeUnchecked, getKernelUnitLengthX,
        getKernelUnitLengthXUnsafe, getKernelUnitLengthXUnchecked,
        getKernelUnitLengthY, getKernelUnitLengthYUnsafe,
        getKernelUnitLengthYUnchecked, getPreserveAlpha,
        getPreserveAlphaUnsafe, getPreserveAlphaUnchecked,
        SVGFEConvolveMatrixElement(..), gTypeSVGFEConvolveMatrixElement)
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
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1Unsafe ::
             (MonadDOM m, HasCallStack) =>
               SVGFEConvolveMatrixElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftDOM
      (((self ^. js "in1") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1Unchecked ::
                (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderX ::
          (MonadDOM m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderX self = liftDOM ((self ^. js "orderX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderXUnsafe ::
                (MonadDOM m, HasCallStack) =>
                  SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderXUnsafe self
  = liftDOM
      (((self ^. js "orderX") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderXUnchecked ::
                   (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderXUnchecked self
  = liftDOM ((self ^. js "orderX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderY ::
          (MonadDOM m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderY self = liftDOM ((self ^. js "orderY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderYUnsafe ::
                (MonadDOM m, HasCallStack) =>
                  SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderYUnsafe self
  = liftDOM
      (((self ^. js "orderY") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderYUnchecked ::
                   (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderYUnchecked self
  = liftDOM ((self ^. js "orderY") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrix ::
                (MonadDOM m) =>
                  SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumberList)
getKernelMatrix self
  = liftDOM ((self ^. js "kernelMatrix") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrixUnsafe ::
                      (MonadDOM m, HasCallStack) =>
                        SVGFEConvolveMatrixElement -> m SVGAnimatedNumberList
getKernelMatrixUnsafe self
  = liftDOM
      (((self ^. js "kernelMatrix") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrixUnchecked ::
                         (MonadDOM m) =>
                           SVGFEConvolveMatrixElement -> m SVGAnimatedNumberList
getKernelMatrixUnchecked self
  = liftDOM ((self ^. js "kernelMatrix") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisor ::
           (MonadDOM m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getDivisor self = liftDOM ((self ^. js "divisor") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisorUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getDivisorUnsafe self
  = liftDOM
      (((self ^. js "divisor") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisorUnchecked ::
                    (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getDivisorUnchecked self
  = liftDOM ((self ^. js "divisor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBias ::
        (MonadDOM m) =>
          SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getBias self = liftDOM ((self ^. js "bias") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBiasUnsafe ::
              (MonadDOM m, HasCallStack) =>
                SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getBiasUnsafe self
  = liftDOM
      (((self ^. js "bias") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBiasUnchecked ::
                 (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getBiasUnchecked self
  = liftDOM ((self ^. js "bias") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetX ::
           (MonadDOM m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetX self = liftDOM ((self ^. js "targetX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetXUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetXUnsafe self
  = liftDOM
      (((self ^. js "targetX") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetXUnchecked ::
                    (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetXUnchecked self
  = liftDOM ((self ^. js "targetX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetY ::
           (MonadDOM m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetY self = liftDOM ((self ^. js "targetY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetYUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetYUnsafe self
  = liftDOM
      (((self ^. js "targetY") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetYUnchecked ::
                    (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetYUnchecked self
  = liftDOM ((self ^. js "targetY") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeMode ::
            (MonadDOM m) =>
              SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getEdgeMode self = liftDOM ((self ^. js "edgeMode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeModeUnsafe ::
                  (MonadDOM m, HasCallStack) =>
                    SVGFEConvolveMatrixElement -> m SVGAnimatedEnumeration
getEdgeModeUnsafe self
  = liftDOM
      (((self ^. js "edgeMode") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeModeUnchecked ::
                     (MonadDOM m) =>
                       SVGFEConvolveMatrixElement -> m SVGAnimatedEnumeration
getEdgeModeUnchecked self
  = liftDOM ((self ^. js "edgeMode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadDOM m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftDOM ((self ^. js "kernelUnitLengthX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthXUnsafe ::
                           (MonadDOM m, HasCallStack) =>
                             SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnsafe self
  = liftDOM
      (((self ^. js "kernelUnitLengthX") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthXUnchecked ::
                              (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnchecked self
  = liftDOM ((self ^. js "kernelUnitLengthX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadDOM m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftDOM ((self ^. js "kernelUnitLengthY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnsafe ::
                           (MonadDOM m, HasCallStack) =>
                             SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnsafe self
  = liftDOM
      (((self ^. js "kernelUnitLengthY") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnchecked ::
                              (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnchecked self
  = liftDOM ((self ^. js "kernelUnitLengthY") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlpha ::
                 (MonadDOM m) =>
                   SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedBoolean)
getPreserveAlpha self
  = liftDOM ((self ^. js "preserveAlpha") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlphaUnsafe ::
                       (MonadDOM m, HasCallStack) =>
                         SVGFEConvolveMatrixElement -> m SVGAnimatedBoolean
getPreserveAlphaUnsafe self
  = liftDOM
      (((self ^. js "preserveAlpha") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlphaUnchecked ::
                          (MonadDOM m) => SVGFEConvolveMatrixElement -> m SVGAnimatedBoolean
getPreserveAlphaUnchecked self
  = liftDOM ((self ^. js "preserveAlpha") >>= fromJSValUnchecked)
