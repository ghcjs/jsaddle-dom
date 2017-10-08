{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEGaussianBlurElement
       (setStdDeviation, pattern SVG_EDGEMODE_UNKNOWN,
        pattern SVG_EDGEMODE_DUPLICATE, pattern SVG_EDGEMODE_WRAP,
        pattern SVG_EDGEMODE_NONE, getIn1, getStdDeviationX,
        getStdDeviationY, getEdgeMode, SVGFEGaussianBlurElement(..),
        gTypeSVGFEGaussianBlurElement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.setStdDeviation Mozilla SVGFEGaussianBlurElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadDOM m) =>
                  SVGFEGaussianBlurElement -> Maybe Float -> Maybe Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftDOM
      (void
         (self ^. jsf "setStdDeviation"
            [toJSVal stdDeviationX, toJSVal stdDeviationY]))
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.in1 Mozilla SVGFEGaussianBlurElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) => SVGFEGaussianBlurElement -> m SVGAnimatedString
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationX Mozilla SVGFEGaussianBlurElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadDOM m) => SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationX self
  = liftDOM ((self ^. js "stdDeviationX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationY Mozilla SVGFEGaussianBlurElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadDOM m) => SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationY self
  = liftDOM ((self ^. js "stdDeviationY") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.edgeMode Mozilla SVGFEGaussianBlurElement.edgeMode documentation> 
getEdgeMode ::
            (MonadDOM m) =>
              SVGFEGaussianBlurElement -> m SVGAnimatedEnumeration
getEdgeMode self
  = liftDOM ((self ^. js "edgeMode") >>= fromJSValUnchecked)
