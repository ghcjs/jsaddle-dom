{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPatternElement
       (getPatternUnits, getPatternUnitsUnchecked, getPatternContentUnits,
        getPatternContentUnitsUnchecked, getPatternTransform,
        getPatternTransformUnchecked, getX, getXUnchecked, getY,
        getYUnchecked, getWidth, getWidthUnchecked, getHeight,
        getHeightUnchecked, SVGPatternElement, castToSVGPatternElement,
        gTypeSVGPatternElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
getPatternUnits ::
                (MonadDOM m) =>
                  SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternUnits self
  = liftDOM ((self ^. js "patternUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
getPatternUnitsUnchecked ::
                         (MonadDOM m) => SVGPatternElement -> m SVGAnimatedEnumeration
getPatternUnitsUnchecked self
  = liftDOM ((self ^. js "patternUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
getPatternContentUnits ::
                       (MonadDOM m) =>
                         SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternContentUnits self
  = liftDOM ((self ^. js "patternContentUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
getPatternContentUnitsUnchecked ::
                                (MonadDOM m) => SVGPatternElement -> m SVGAnimatedEnumeration
getPatternContentUnitsUnchecked self
  = liftDOM
      ((self ^. js "patternContentUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
getPatternTransform ::
                    (MonadDOM m) =>
                      SVGPatternElement -> m (Maybe SVGAnimatedTransformList)
getPatternTransform self
  = liftDOM ((self ^. js "patternTransform") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
getPatternTransformUnchecked ::
                             (MonadDOM m) => SVGPatternElement -> m SVGAnimatedTransformList
getPatternTransformUnchecked self
  = liftDOM ((self ^. js "patternTransform") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
getX ::
     (MonadDOM m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
getXUnchecked ::
              (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getXUnchecked self
  = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
getY ::
     (MonadDOM m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
getYUnchecked ::
              (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getYUnchecked self
  = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
getWidthUnchecked ::
                  (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
getHeightUnchecked ::
                   (MonadDOM m) => SVGPatternElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)
