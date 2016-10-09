{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGImageElement
       (getX, getXUnchecked, getY, getYUnchecked, getWidth,
        getWidthUnchecked, getHeight, getHeightUnchecked,
        getPreserveAspectRatio, getPreserveAspectRatioUnchecked,
        SVGImageElement, castToSVGImageElement, gTypeSVGImageElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.x Mozilla SVGImageElement.x documentation> 
getX ::
     (MonadDOM m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.x Mozilla SVGImageElement.x documentation> 
getXUnchecked ::
              (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getXUnchecked self
  = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.y Mozilla SVGImageElement.y documentation> 
getY ::
     (MonadDOM m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.y Mozilla SVGImageElement.y documentation> 
getYUnchecked ::
              (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getYUnchecked self
  = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.width Mozilla SVGImageElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.width Mozilla SVGImageElement.width documentation> 
getWidthUnchecked ::
                  (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.height Mozilla SVGImageElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.height Mozilla SVGImageElement.height documentation> 
getHeightUnchecked ::
                   (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.preserveAspectRatio Mozilla SVGImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadDOM m) =>
                         SVGImageElement -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftDOM ((self ^. js "preserveAspectRatio") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.preserveAspectRatio Mozilla SVGImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatioUnchecked ::
                                (MonadDOM m) => SVGImageElement -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnchecked self
  = liftDOM
      ((self ^. js "preserveAspectRatio") >>= fromJSValUnchecked)
