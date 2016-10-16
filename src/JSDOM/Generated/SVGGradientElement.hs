{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGGradientElement
       (pattern SVG_SPREADMETHOD_UNKNOWN, pattern SVG_SPREADMETHOD_PAD,
        pattern SVG_SPREADMETHOD_REFLECT, pattern SVG_SPREADMETHOD_REPEAT,
        getGradientUnits, getGradientUnitsUnchecked, getGradientTransform,
        getGradientTransformUnchecked, getSpreadMethod,
        getSpreadMethodUnchecked, SVGGradientElement(..),
        gTypeSVGGradientElement, IsSVGGradientElement,
        toSVGGradientElement)
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
pattern SVG_SPREADMETHOD_UNKNOWN = 0
pattern SVG_SPREADMETHOD_PAD = 1
pattern SVG_SPREADMETHOD_REFLECT = 2
pattern SVG_SPREADMETHOD_REPEAT = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientUnits Mozilla SVGGradientElement.gradientUnits documentation> 
getGradientUnits ::
                 (MonadDOM m, IsSVGGradientElement self) =>
                   self -> m (Maybe SVGAnimatedEnumeration)
getGradientUnits self
  = liftDOM
      (((toSVGGradientElement self) ^. js "gradientUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientUnits Mozilla SVGGradientElement.gradientUnits documentation> 
getGradientUnitsUnchecked ::
                          (MonadDOM m, IsSVGGradientElement self) =>
                            self -> m SVGAnimatedEnumeration
getGradientUnitsUnchecked self
  = liftDOM
      (((toSVGGradientElement self) ^. js "gradientUnits") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientTransform Mozilla SVGGradientElement.gradientTransform documentation> 
getGradientTransform ::
                     (MonadDOM m, IsSVGGradientElement self) =>
                       self -> m (Maybe SVGAnimatedTransformList)
getGradientTransform self
  = liftDOM
      (((toSVGGradientElement self) ^. js "gradientTransform") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientTransform Mozilla SVGGradientElement.gradientTransform documentation> 
getGradientTransformUnchecked ::
                              (MonadDOM m, IsSVGGradientElement self) =>
                                self -> m SVGAnimatedTransformList
getGradientTransformUnchecked self
  = liftDOM
      (((toSVGGradientElement self) ^. js "gradientTransform") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.spreadMethod Mozilla SVGGradientElement.spreadMethod documentation> 
getSpreadMethod ::
                (MonadDOM m, IsSVGGradientElement self) =>
                  self -> m (Maybe SVGAnimatedEnumeration)
getSpreadMethod self
  = liftDOM
      (((toSVGGradientElement self) ^. js "spreadMethod") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.spreadMethod Mozilla SVGGradientElement.spreadMethod documentation> 
getSpreadMethodUnchecked ::
                         (MonadDOM m, IsSVGGradientElement self) =>
                           self -> m SVGAnimatedEnumeration
getSpreadMethodUnchecked self
  = liftDOM
      (((toSVGGradientElement self) ^. js "spreadMethod") >>=
         fromJSValUnchecked)
