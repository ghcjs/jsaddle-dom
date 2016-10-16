{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGForeignObjectElement
       (getX, getXUnsafe, getXUnchecked, getY, getYUnsafe, getYUnchecked,
        getWidth, getWidthUnsafe, getWidthUnchecked, getHeight,
        getHeightUnsafe, getHeightUnchecked, SVGForeignObjectElement(..),
        gTypeSVGForeignObjectElement)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
getX ::
     (MonadDOM m) =>
       SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
getXUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGForeignObjectElement -> m SVGAnimatedLength
getXUnsafe self
  = liftDOM
      (((self ^. js "x") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
getXUnchecked ::
              (MonadDOM m) => SVGForeignObjectElement -> m SVGAnimatedLength
getXUnchecked self
  = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
getY ::
     (MonadDOM m) =>
       SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
getYUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGForeignObjectElement -> m SVGAnimatedLength
getYUnsafe self
  = liftDOM
      (((self ^. js "y") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
getYUnchecked ::
              (MonadDOM m) => SVGForeignObjectElement -> m SVGAnimatedLength
getYUnchecked self
  = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
getWidth ::
         (MonadDOM m) =>
           SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
getWidthUnsafe ::
               (MonadDOM m, HasCallStack) =>
                 SVGForeignObjectElement -> m SVGAnimatedLength
getWidthUnsafe self
  = liftDOM
      (((self ^. js "width") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
getWidthUnchecked ::
                  (MonadDOM m) => SVGForeignObjectElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
getHeight ::
          (MonadDOM m) =>
            SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
getHeightUnsafe ::
                (MonadDOM m, HasCallStack) =>
                  SVGForeignObjectElement -> m SVGAnimatedLength
getHeightUnsafe self
  = liftDOM
      (((self ^. js "height") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
getHeightUnchecked ::
                   (MonadDOM m) => SVGForeignObjectElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)
