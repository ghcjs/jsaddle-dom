{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGMarkerElement
       (setOrientToAuto, setOrientToAngle,
        pattern SVG_MARKERUNITS_UNKNOWN,
        pattern SVG_MARKERUNITS_USERSPACEONUSE,
        pattern SVG_MARKERUNITS_STROKEWIDTH,
        pattern SVG_MARKER_ORIENT_UNKNOWN, pattern SVG_MARKER_ORIENT_AUTO,
        pattern SVG_MARKER_ORIENT_ANGLE, getRefX, getRefXUnchecked,
        getRefY, getRefYUnchecked, getMarkerUnits, getMarkerUnitsUnchecked,
        getMarkerWidth, getMarkerWidthUnchecked, getMarkerHeight,
        getMarkerHeightUnchecked, getOrientType, getOrientTypeUnchecked,
        getOrientAngle, getOrientAngleUnchecked, SVGMarkerElement,
        castToSVGMarkerElement, gTypeSVGMarkerElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.setOrientToAuto Mozilla SVGMarkerElement.setOrientToAuto documentation> 
setOrientToAuto :: (MonadDOM m) => SVGMarkerElement -> m ()
setOrientToAuto self
  = liftDOM (void (self ^. jsf "setOrientToAuto" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.setOrientToAngle Mozilla SVGMarkerElement.setOrientToAngle documentation> 
setOrientToAngle ::
                 (MonadDOM m) => SVGMarkerElement -> Maybe SVGAngle -> m ()
setOrientToAngle self angle
  = liftDOM (void (self ^. jsf "setOrientToAngle" [toJSVal angle]))
pattern SVG_MARKERUNITS_UNKNOWN = 0
pattern SVG_MARKERUNITS_USERSPACEONUSE = 1
pattern SVG_MARKERUNITS_STROKEWIDTH = 2
pattern SVG_MARKER_ORIENT_UNKNOWN = 0
pattern SVG_MARKER_ORIENT_AUTO = 1
pattern SVG_MARKER_ORIENT_ANGLE = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refX Mozilla SVGMarkerElement.refX documentation> 
getRefX ::
        (MonadDOM m) => SVGMarkerElement -> m (Maybe SVGAnimatedLength)
getRefX self = liftDOM ((self ^. js "refX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refX Mozilla SVGMarkerElement.refX documentation> 
getRefXUnchecked ::
                 (MonadDOM m) => SVGMarkerElement -> m SVGAnimatedLength
getRefXUnchecked self
  = liftDOM ((self ^. js "refX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refY Mozilla SVGMarkerElement.refY documentation> 
getRefY ::
        (MonadDOM m) => SVGMarkerElement -> m (Maybe SVGAnimatedLength)
getRefY self = liftDOM ((self ^. js "refY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refY Mozilla SVGMarkerElement.refY documentation> 
getRefYUnchecked ::
                 (MonadDOM m) => SVGMarkerElement -> m SVGAnimatedLength
getRefYUnchecked self
  = liftDOM ((self ^. js "refY") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerUnits Mozilla SVGMarkerElement.markerUnits documentation> 
getMarkerUnits ::
               (MonadDOM m) =>
                 SVGMarkerElement -> m (Maybe SVGAnimatedEnumeration)
getMarkerUnits self
  = liftDOM ((self ^. js "markerUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerUnits Mozilla SVGMarkerElement.markerUnits documentation> 
getMarkerUnitsUnchecked ::
                        (MonadDOM m) => SVGMarkerElement -> m SVGAnimatedEnumeration
getMarkerUnitsUnchecked self
  = liftDOM ((self ^. js "markerUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerWidth Mozilla SVGMarkerElement.markerWidth documentation> 
getMarkerWidth ::
               (MonadDOM m) => SVGMarkerElement -> m (Maybe SVGAnimatedLength)
getMarkerWidth self
  = liftDOM ((self ^. js "markerWidth") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerWidth Mozilla SVGMarkerElement.markerWidth documentation> 
getMarkerWidthUnchecked ::
                        (MonadDOM m) => SVGMarkerElement -> m SVGAnimatedLength
getMarkerWidthUnchecked self
  = liftDOM ((self ^. js "markerWidth") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerHeight Mozilla SVGMarkerElement.markerHeight documentation> 
getMarkerHeight ::
                (MonadDOM m) => SVGMarkerElement -> m (Maybe SVGAnimatedLength)
getMarkerHeight self
  = liftDOM ((self ^. js "markerHeight") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerHeight Mozilla SVGMarkerElement.markerHeight documentation> 
getMarkerHeightUnchecked ::
                         (MonadDOM m) => SVGMarkerElement -> m SVGAnimatedLength
getMarkerHeightUnchecked self
  = liftDOM ((self ^. js "markerHeight") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientType Mozilla SVGMarkerElement.orientType documentation> 
getOrientType ::
              (MonadDOM m) =>
                SVGMarkerElement -> m (Maybe SVGAnimatedEnumeration)
getOrientType self
  = liftDOM ((self ^. js "orientType") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientType Mozilla SVGMarkerElement.orientType documentation> 
getOrientTypeUnchecked ::
                       (MonadDOM m) => SVGMarkerElement -> m SVGAnimatedEnumeration
getOrientTypeUnchecked self
  = liftDOM ((self ^. js "orientType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientAngle Mozilla SVGMarkerElement.orientAngle documentation> 
getOrientAngle ::
               (MonadDOM m) => SVGMarkerElement -> m (Maybe SVGAnimatedAngle)
getOrientAngle self
  = liftDOM ((self ^. js "orientAngle") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientAngle Mozilla SVGMarkerElement.orientAngle documentation> 
getOrientAngleUnchecked ::
                        (MonadDOM m) => SVGMarkerElement -> m SVGAnimatedAngle
getOrientAngleUnchecked self
  = liftDOM ((self ^. js "orientAngle") >>= fromJSValUnchecked)
