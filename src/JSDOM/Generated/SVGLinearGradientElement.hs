{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGLinearGradientElement
       (getX1, getX1Unchecked, getY1, getY1Unchecked, getX2,
        getX2Unchecked, getY2, getY2Unchecked,
        SVGLinearGradientElement(..), gTypeSVGLinearGradientElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x1 Mozilla SVGLinearGradientElement.x1 documentation> 
getX1 ::
      (MonadDOM m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getX1 self = liftDOM ((self ^. js "x1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x1 Mozilla SVGLinearGradientElement.x1 documentation> 
getX1Unchecked ::
               (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getX1Unchecked self
  = liftDOM ((self ^. js "x1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y1 Mozilla SVGLinearGradientElement.y1 documentation> 
getY1 ::
      (MonadDOM m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getY1 self = liftDOM ((self ^. js "y1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y1 Mozilla SVGLinearGradientElement.y1 documentation> 
getY1Unchecked ::
               (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getY1Unchecked self
  = liftDOM ((self ^. js "y1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x2 Mozilla SVGLinearGradientElement.x2 documentation> 
getX2 ::
      (MonadDOM m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getX2 self = liftDOM ((self ^. js "x2") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x2 Mozilla SVGLinearGradientElement.x2 documentation> 
getX2Unchecked ::
               (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getX2Unchecked self
  = liftDOM ((self ^. js "x2") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y2 Mozilla SVGLinearGradientElement.y2 documentation> 
getY2 ::
      (MonadDOM m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getY2 self = liftDOM ((self ^. js "y2") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y2 Mozilla SVGLinearGradientElement.y2 documentation> 
getY2Unchecked ::
               (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getY2Unchecked self
  = liftDOM ((self ^. js "y2") >>= fromJSValUnchecked)
