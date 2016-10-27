{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEColorMatrixElement
       (pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN,
        pattern SVG_FECOLORMATRIX_TYPE_MATRIX,
        pattern SVG_FECOLORMATRIX_TYPE_SATURATE,
        pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE,
        pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA, getIn1,
        getIn1Unsafe, getIn1Unchecked, getType, getTypeUnsafe,
        getTypeUnchecked, getValues, getValuesUnsafe, getValuesUnchecked,
        SVGFEColorMatrixElement(..), gTypeSVGFEColorMatrixElement)
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
pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0
pattern SVG_FECOLORMATRIX_TYPE_MATRIX = 1
pattern SVG_FECOLORMATRIX_TYPE_SATURATE = 2
pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3
pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEColorMatrixElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1Unsafe ::
             (MonadDOM m, HasCallStack) =>
               SVGFEColorMatrixElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftDOM
      (((self ^. js "in1") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1Unchecked ::
                (MonadDOM m) => SVGFEColorMatrixElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getType ::
        (MonadDOM m) =>
          SVGFEColorMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getType self = liftDOM ((self ^. js "type") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getTypeUnsafe ::
              (MonadDOM m, HasCallStack) =>
                SVGFEColorMatrixElement -> m SVGAnimatedEnumeration
getTypeUnsafe self
  = liftDOM
      (((self ^. js "type") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getTypeUnchecked ::
                 (MonadDOM m) => SVGFEColorMatrixElement -> m SVGAnimatedEnumeration
getTypeUnchecked self
  = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValues ::
          (MonadDOM m) =>
            SVGFEColorMatrixElement -> m (Maybe SVGAnimatedNumberList)
getValues self = liftDOM ((self ^. js "values") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValuesUnsafe ::
                (MonadDOM m, HasCallStack) =>
                  SVGFEColorMatrixElement -> m SVGAnimatedNumberList
getValuesUnsafe self
  = liftDOM
      (((self ^. js "values") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValuesUnchecked ::
                   (MonadDOM m) => SVGFEColorMatrixElement -> m SVGAnimatedNumberList
getValuesUnchecked self
  = liftDOM ((self ^. js "values") >>= fromJSValUnchecked)
