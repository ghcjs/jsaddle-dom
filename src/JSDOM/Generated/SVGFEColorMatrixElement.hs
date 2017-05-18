{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEColorMatrixElement
       (pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN,
        pattern SVG_FECOLORMATRIX_TYPE_MATRIX,
        pattern SVG_FECOLORMATRIX_TYPE_SATURATE,
        pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE,
        pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA, getIn1, getType,
        getValues, SVGFEColorMatrixElement(..),
        gTypeSVGFEColorMatrixElement)
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
pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0
pattern SVG_FECOLORMATRIX_TYPE_MATRIX = 1
pattern SVG_FECOLORMATRIX_TYPE_SATURATE = 2
pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3
pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) => SVGFEColorMatrixElement -> m SVGAnimatedString
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getType ::
        (MonadDOM m) => SVGFEColorMatrixElement -> m SVGAnimatedEnumeration
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValues ::
          (MonadDOM m) => SVGFEColorMatrixElement -> m SVGAnimatedNumberList
getValues self
  = liftDOM ((self ^. js "values") >>= fromJSValUnchecked)
