{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPolygonElement
       (getPoints, getPointsUnchecked, getAnimatedPoints,
        getAnimatedPointsUnchecked, SVGPolygonElement(..),
        gTypeSVGPolygonElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.points Mozilla SVGPolygonElement.points documentation> 
getPoints ::
          (MonadDOM m) => SVGPolygonElement -> m (Maybe SVGPointList)
getPoints self = liftDOM ((self ^. js "points") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.points Mozilla SVGPolygonElement.points documentation> 
getPointsUnchecked ::
                   (MonadDOM m) => SVGPolygonElement -> m SVGPointList
getPointsUnchecked self
  = liftDOM ((self ^. js "points") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.animatedPoints Mozilla SVGPolygonElement.animatedPoints documentation> 
getAnimatedPoints ::
                  (MonadDOM m) => SVGPolygonElement -> m (Maybe SVGPointList)
getAnimatedPoints self
  = liftDOM ((self ^. js "animatedPoints") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.animatedPoints Mozilla SVGPolygonElement.animatedPoints documentation> 
getAnimatedPointsUnchecked ::
                           (MonadDOM m) => SVGPolygonElement -> m SVGPointList
getAnimatedPointsUnchecked self
  = liftDOM ((self ^. js "animatedPoints") >>= fromJSValUnchecked)
