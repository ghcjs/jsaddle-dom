{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGRectElement
       (getX, getXUnsafe, getXUnchecked, getY, getYUnsafe, getYUnchecked,
        getWidth, getWidthUnsafe, getWidthUnchecked, getHeight,
        getHeightUnsafe, getHeightUnchecked, getRx, getRxUnsafe,
        getRxUnchecked, getRy, getRyUnsafe, getRyUnchecked,
        SVGRectElement(..), gTypeSVGRectElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getX ::
     (MonadDOM m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getXUnsafe ::
           (MonadDOM m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getXUnsafe self
  = liftDOM
      (((self ^. js "x") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getXUnchecked ::
              (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getXUnchecked self
  = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getY ::
     (MonadDOM m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getYUnsafe ::
           (MonadDOM m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getYUnsafe self
  = liftDOM
      (((self ^. js "y") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getYUnchecked ::
              (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getYUnchecked self
  = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidthUnsafe ::
               (MonadDOM m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getWidthUnsafe self
  = liftDOM
      (((self ^. js "width") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidthUnchecked ::
                  (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeightUnsafe ::
                (MonadDOM m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getHeightUnsafe self
  = liftDOM
      (((self ^. js "height") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeightUnchecked ::
                   (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRx ::
      (MonadDOM m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getRx self = liftDOM ((self ^. js "rx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRxUnsafe ::
            (MonadDOM m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getRxUnsafe self
  = liftDOM
      (((self ^. js "rx") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRxUnchecked ::
               (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getRxUnchecked self
  = liftDOM ((self ^. js "rx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRy ::
      (MonadDOM m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getRy self = liftDOM ((self ^. js "ry") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRyUnsafe ::
            (MonadDOM m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getRyUnsafe self
  = liftDOM
      (((self ^. js "ry") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRyUnchecked ::
               (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getRyUnchecked self
  = liftDOM ((self ^. js "ry") >>= fromJSValUnchecked)
