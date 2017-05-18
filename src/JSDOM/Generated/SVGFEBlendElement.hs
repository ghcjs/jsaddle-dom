{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEBlendElement
       (pattern SVG_FEBLEND_MODE_UNKNOWN, pattern SVG_FEBLEND_MODE_NORMAL,
        pattern SVG_FEBLEND_MODE_MULTIPLY, pattern SVG_FEBLEND_MODE_SCREEN,
        pattern SVG_FEBLEND_MODE_DARKEN, pattern SVG_FEBLEND_MODE_LIGHTEN,
        getIn1, getIn2, getMode, SVGFEBlendElement(..),
        gTypeSVGFEBlendElement)
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
pattern SVG_FEBLEND_MODE_UNKNOWN = 0
pattern SVG_FEBLEND_MODE_NORMAL = 1
pattern SVG_FEBLEND_MODE_MULTIPLY = 2
pattern SVG_FEBLEND_MODE_SCREEN = 3
pattern SVG_FEBLEND_MODE_DARKEN = 4
pattern SVG_FEBLEND_MODE_LIGHTEN = 5

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in1 Mozilla SVGFEBlendElement.in1 documentation> 
getIn1 :: (MonadDOM m) => SVGFEBlendElement -> m SVGAnimatedString
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in2 Mozilla SVGFEBlendElement.in2 documentation> 
getIn2 :: (MonadDOM m) => SVGFEBlendElement -> m SVGAnimatedString
getIn2 self = liftDOM ((self ^. js "in2") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.mode Mozilla SVGFEBlendElement.mode documentation> 
getMode ::
        (MonadDOM m) => SVGFEBlendElement -> m SVGAnimatedEnumeration
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)
