{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGUseElement
       (getX, getXUnsafe, getXUnchecked, getY, getYUnsafe, getYUnchecked,
        getWidth, getWidthUnsafe, getWidthUnchecked, getHeight,
        getHeightUnsafe, getHeightUnchecked, SVGUseElement(..),
        gTypeSVGUseElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.x Mozilla SVGUseElement.x documentation> 
getX ::
     (MonadDOM m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.x Mozilla SVGUseElement.x documentation> 
getXUnsafe ::
           (MonadDOM m, HasCallStack) => SVGUseElement -> m SVGAnimatedLength
getXUnsafe self
  = liftDOM
      (((self ^. js "x") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.x Mozilla SVGUseElement.x documentation> 
getXUnchecked ::
              (MonadDOM m) => SVGUseElement -> m SVGAnimatedLength
getXUnchecked self
  = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.y Mozilla SVGUseElement.y documentation> 
getY ::
     (MonadDOM m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.y Mozilla SVGUseElement.y documentation> 
getYUnsafe ::
           (MonadDOM m, HasCallStack) => SVGUseElement -> m SVGAnimatedLength
getYUnsafe self
  = liftDOM
      (((self ^. js "y") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.y Mozilla SVGUseElement.y documentation> 
getYUnchecked ::
              (MonadDOM m) => SVGUseElement -> m SVGAnimatedLength
getYUnchecked self
  = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.width Mozilla SVGUseElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.width Mozilla SVGUseElement.width documentation> 
getWidthUnsafe ::
               (MonadDOM m, HasCallStack) => SVGUseElement -> m SVGAnimatedLength
getWidthUnsafe self
  = liftDOM
      (((self ^. js "width") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.width Mozilla SVGUseElement.width documentation> 
getWidthUnchecked ::
                  (MonadDOM m) => SVGUseElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.height Mozilla SVGUseElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.height Mozilla SVGUseElement.height documentation> 
getHeightUnsafe ::
                (MonadDOM m, HasCallStack) => SVGUseElement -> m SVGAnimatedLength
getHeightUnsafe self
  = liftDOM
      (((self ^. js "height") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.height Mozilla SVGUseElement.height documentation> 
getHeightUnchecked ::
                   (MonadDOM m) => SVGUseElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)
