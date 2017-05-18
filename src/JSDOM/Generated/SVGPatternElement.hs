{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPatternElement
       (getPatternUnits, getPatternContentUnits, getPatternTransform,
        getX, getY, getWidth, getHeight, SVGPatternElement(..),
        gTypeSVGPatternElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
getPatternUnits ::
                (MonadDOM m) => SVGPatternElement -> m SVGAnimatedEnumeration
getPatternUnits self
  = liftDOM ((self ^. js "patternUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
getPatternContentUnits ::
                       (MonadDOM m) => SVGPatternElement -> m SVGAnimatedEnumeration
getPatternContentUnits self
  = liftDOM
      ((self ^. js "patternContentUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
getPatternTransform ::
                    (MonadDOM m) => SVGPatternElement -> m SVGAnimatedTransformList
getPatternTransform self
  = liftDOM ((self ^. js "patternTransform") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
getX :: (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getX self = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
getY :: (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getY self = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)
