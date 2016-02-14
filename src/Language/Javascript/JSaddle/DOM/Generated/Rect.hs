{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.Rect
       (getTop, getRight, getBottom, getLeft, Rect, castToRect, gTypeRect)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
getTop :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getTop self = liftDOM ((self ^. js "top") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
getRight :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getRight self = liftDOM ((self ^. js "right") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
getBottom :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getBottom self = liftDOM ((self ^. js "bottom") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
getLeft :: (MonadDOM m) => Rect -> m (Maybe CSSPrimitiveValue)
getLeft self = liftDOM ((self ^. js "left") >>= fromJSVal)