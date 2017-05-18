{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGComponentTransferFunctionElement
       (pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA, getType,
        getTableValues, getSlope, getIntercept, getAmplitude, getExponent,
        getOffset, SVGComponentTransferFunctionElement(..),
        gTypeSVGComponentTransferFunctionElement,
        IsSVGComponentTransferFunctionElement,
        toSVGComponentTransferFunctionElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums
pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0
pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1
pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2
pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3
pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4
pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.type Mozilla SVGComponentTransferFunctionElement.type documentation> 
getType ::
        (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
          self -> m SVGAnimatedEnumeration
getType self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "type") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.tableValues Mozilla SVGComponentTransferFunctionElement.tableValues documentation> 
getTableValues ::
               (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
                 self -> m SVGAnimatedNumberList
getTableValues self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "tableValues")
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.slope Mozilla SVGComponentTransferFunctionElement.slope documentation> 
getSlope ::
         (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
           self -> m SVGAnimatedNumber
getSlope self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "slope") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.intercept Mozilla SVGComponentTransferFunctionElement.intercept documentation> 
getIntercept ::
             (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
               self -> m SVGAnimatedNumber
getIntercept self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "intercept")
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.amplitude Mozilla SVGComponentTransferFunctionElement.amplitude documentation> 
getAmplitude ::
             (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
               self -> m SVGAnimatedNumber
getAmplitude self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "amplitude")
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.exponent Mozilla SVGComponentTransferFunctionElement.exponent documentation> 
getExponent ::
            (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
              self -> m SVGAnimatedNumber
getExponent self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "exponent")
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.offset Mozilla SVGComponentTransferFunctionElement.offset documentation> 
getOffset ::
          (MonadDOM m, IsSVGComponentTransferFunctionElement self) =>
            self -> m SVGAnimatedNumber
getOffset self
  = liftDOM
      (((toSVGComponentTransferFunctionElement self) ^. js "offset") >>=
         fromJSValUnchecked)
