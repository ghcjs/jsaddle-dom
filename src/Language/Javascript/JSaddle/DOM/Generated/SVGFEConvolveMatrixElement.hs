{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGFEConvolveMatrixElement
       (pattern SVG_EDGEMODE_UNKNOWN, pattern SVG_EDGEMODE_DUPLICATE,
        pattern SVG_EDGEMODE_WRAP, pattern SVG_EDGEMODE_NONE, getIn1,
        getOrderX, getOrderY, getKernelMatrix, getDivisor, getBias,
        getTargetX, getTargetY, getEdgeMode, getKernelUnitLengthX,
        getKernelUnitLengthY, getPreserveAlpha, SVGFEConvolveMatrixElement,
        castToSVGFEConvolveMatrixElement, gTypeSVGFEConvolveMatrixElement)
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
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderX ::
          (MonadDOM m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderX self = liftDOM ((self ^. js "orderX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderY ::
          (MonadDOM m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderY self = liftDOM ((self ^. js "orderY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrix ::
                (MonadDOM m) =>
                  SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumberList)
getKernelMatrix self
  = liftDOM ((self ^. js "kernelMatrix") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisor ::
           (MonadDOM m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getDivisor self = liftDOM ((self ^. js "divisor") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBias ::
        (MonadDOM m) =>
          SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getBias self = liftDOM ((self ^. js "bias") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetX ::
           (MonadDOM m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetX self = liftDOM ((self ^. js "targetX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetY ::
           (MonadDOM m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetY self = liftDOM ((self ^. js "targetY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeMode ::
            (MonadDOM m) =>
              SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getEdgeMode self = liftDOM ((self ^. js "edgeMode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadDOM m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftDOM ((self ^. js "kernelUnitLengthX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadDOM m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftDOM ((self ^. js "kernelUnitLengthY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlpha ::
                 (MonadDOM m) =>
                   SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedBoolean)
getPreserveAlpha self
  = liftDOM ((self ^. js "preserveAlpha") >>= fromJSVal)