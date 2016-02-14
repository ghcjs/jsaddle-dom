{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGComponentTransferFunctionElement
       (pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA, getType,
        getTableValues, getSlope, getIntercept, getAmplitude, getExponent,
        getOffset, SVGComponentTransferFunctionElement,
        castToSVGComponentTransferFunctionElement,
        gTypeSVGComponentTransferFunctionElement,
        IsSVGComponentTransferFunctionElement,
        toSVGComponentTransferFunctionElement)
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
pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0
pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1
pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2
pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3
pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4
pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.type Mozilla SVGComponentTransferFunctionElement.type documentation> 
getType ::
        (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
          self -> m (Maybe SVGAnimatedEnumeration)
getType self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "type") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.tableValues Mozilla SVGComponentTransferFunctionElement.tableValues documentation> 
getTableValues ::
               (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
                 self -> m (Maybe SVGAnimatedNumberList)
getTableValues self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "tableValues")
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.slope Mozilla SVGComponentTransferFunctionElement.slope documentation> 
getSlope ::
         (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
           self -> m (Maybe SVGAnimatedNumber)
getSlope self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "slope") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.intercept Mozilla SVGComponentTransferFunctionElement.intercept documentation> 
getIntercept ::
             (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
               self -> m (Maybe SVGAnimatedNumber)
getIntercept self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "intercept")
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.amplitude Mozilla SVGComponentTransferFunctionElement.amplitude documentation> 
getAmplitude ::
             (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
               self -> m (Maybe SVGAnimatedNumber)
getAmplitude self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "amplitude")
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.exponent Mozilla SVGComponentTransferFunctionElement.exponent documentation> 
getExponent ::
            (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
              self -> m (Maybe SVGAnimatedNumber)
getExponent self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "exponent")
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.offset Mozilla SVGComponentTransferFunctionElement.offset documentation> 
getOffset ::
          (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
            self -> m (Maybe SVGAnimatedNumber)
getOffset self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "offset") >>=
         fromJSVal)