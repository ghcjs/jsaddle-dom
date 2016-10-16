{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFECompositeElement
       (pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN,
        pattern SVG_FECOMPOSITE_OPERATOR_OVER,
        pattern SVG_FECOMPOSITE_OPERATOR_IN,
        pattern SVG_FECOMPOSITE_OPERATOR_OUT,
        pattern SVG_FECOMPOSITE_OPERATOR_ATOP,
        pattern SVG_FECOMPOSITE_OPERATOR_XOR,
        pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC, getIn1,
        getIn1Unchecked, getIn2, getIn2Unchecked, getOperator,
        getOperatorUnchecked, getK1, getK1Unchecked, getK2, getK2Unchecked,
        getK3, getK3Unchecked, getK4, getK4Unchecked,
        SVGFECompositeElement(..), gTypeSVGFECompositeElement)
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
pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0
pattern SVG_FECOMPOSITE_OPERATOR_OVER = 1
pattern SVG_FECOMPOSITE_OPERATOR_IN = 2
pattern SVG_FECOMPOSITE_OPERATOR_OUT = 3
pattern SVG_FECOMPOSITE_OPERATOR_ATOP = 4
pattern SVG_FECOMPOSITE_OPERATOR_XOR = 5
pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1Unchecked ::
                (MonadDOM m) => SVGFECompositeElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2 ::
       (MonadDOM m) =>
         SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn2 self = liftDOM ((self ^. js "in2") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2Unchecked ::
                (MonadDOM m) => SVGFECompositeElement -> m SVGAnimatedString
getIn2Unchecked self
  = liftDOM ((self ^. js "in2") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperator ::
            (MonadDOM m) =>
              SVGFECompositeElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self = liftDOM ((self ^. js "operator") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperatorUnchecked ::
                     (MonadDOM m) => SVGFECompositeElement -> m SVGAnimatedEnumeration
getOperatorUnchecked self
  = liftDOM ((self ^. js "operator") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1 ::
      (MonadDOM m) =>
        SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK1 self = liftDOM ((self ^. js "k1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1Unchecked ::
               (MonadDOM m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK1Unchecked self
  = liftDOM ((self ^. js "k1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2 ::
      (MonadDOM m) =>
        SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK2 self = liftDOM ((self ^. js "k2") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2Unchecked ::
               (MonadDOM m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK2Unchecked self
  = liftDOM ((self ^. js "k2") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3 ::
      (MonadDOM m) =>
        SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK3 self = liftDOM ((self ^. js "k3") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3Unchecked ::
               (MonadDOM m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK3Unchecked self
  = liftDOM ((self ^. js "k3") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4 ::
      (MonadDOM m) =>
        SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK4 self = liftDOM ((self ^. js "k4") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4Unchecked ::
               (MonadDOM m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK4Unchecked self
  = liftDOM ((self ^. js "k4") >>= fromJSValUnchecked)
