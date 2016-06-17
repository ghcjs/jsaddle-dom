{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.SVGFEMorphologyElement
       (setRadius, pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN,
        pattern SVG_MORPHOLOGY_OPERATOR_ERODE,
        pattern SVG_MORPHOLOGY_OPERATOR_DILATE, getIn1, getOperator,
        getRadiusX, getRadiusY, SVGFEMorphologyElement,
        castToSVGFEMorphologyElement, gTypeSVGFEMorphologyElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.setRadius Mozilla SVGFEMorphologyElement.setRadius documentation> 
setRadius ::
          (MonadDOM m) => SVGFEMorphologyElement -> Float -> Float -> m ()
setRadius self radiusX radiusY
  = liftDOM
      (void (self ^. jsf "setRadius" [toJSVal radiusX, toJSVal radiusY]))
pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0
pattern SVG_MORPHOLOGY_OPERATOR_ERODE = 1
pattern SVG_MORPHOLOGY_OPERATOR_DILATE = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.in1 Mozilla SVGFEMorphologyElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEMorphologyElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.operator Mozilla SVGFEMorphologyElement.operator documentation> 
getOperator ::
            (MonadDOM m) =>
              SVGFEMorphologyElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self = liftDOM ((self ^. js "operator") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusX Mozilla SVGFEMorphologyElement.radiusX documentation> 
getRadiusX ::
           (MonadDOM m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusX self = liftDOM ((self ^. js "radiusX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusY Mozilla SVGFEMorphologyElement.radiusY documentation> 
getRadiusY ::
           (MonadDOM m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusY self = liftDOM ((self ^. js "radiusY") >>= fromJSVal)
