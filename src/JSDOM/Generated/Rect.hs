{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Rect
       (getTop, getTopUnchecked, getRight, getRightUnchecked, getBottom,
        getBottomUnchecked, getLeft, getLeftUnchecked, Rect(..), gTypeRect)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
getTop :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getTop self = liftDOM ((self ^. js "top") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
getTopUnchecked :: (MonadDOM m) => Rect -> m CSSPrimitiveValue
getTopUnchecked self
  = liftDOM ((self ^. js "top") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
getRight :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getRight self = liftDOM ((self ^. js "right") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
getRightUnchecked :: (MonadDOM m) => Rect -> m CSSPrimitiveValue
getRightUnchecked self
  = liftDOM ((self ^. js "right") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
getBottom :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getBottom self = liftDOM ((self ^. js "bottom") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
getBottomUnchecked :: (MonadDOM m) => Rect -> m CSSPrimitiveValue
getBottomUnchecked self
  = liftDOM ((self ^. js "bottom") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
getLeft :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getLeft self = liftDOM ((self ^. js "left") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
getLeftUnchecked :: (MonadDOM m) => Rect -> m CSSPrimitiveValue
getLeftUnchecked self
  = liftDOM ((self ^. js "left") >>= fromJSValUnchecked)
