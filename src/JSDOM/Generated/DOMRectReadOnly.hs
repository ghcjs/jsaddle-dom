{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMRectReadOnly
       (newDOMRectReadOnly, fromRect, fromRect_, getX, getY, getWidth,
        getHeight, getTop, getRight, getBottom, getLeft,
        DOMRectReadOnly(..), gTypeDOMRectReadOnly, IsDOMRectReadOnly,
        toDOMRectReadOnly)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly Mozilla DOMRectReadOnly documentation> 
newDOMRectReadOnly ::
                   (MonadDOM m) =>
                     Maybe Double ->
                       Maybe Double -> Maybe Double -> Maybe Double -> m DOMRectReadOnly
newDOMRectReadOnly x y width height
  = liftDOM
      (DOMRectReadOnly <$>
         new (jsg "DOMRectReadOnly")
           [toJSVal x, toJSVal y, toJSVal width, toJSVal height])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.fromRect Mozilla DOMRectReadOnly.fromRect documentation> 
fromRect ::
         (MonadDOM m, IsDOMRectReadOnly self) =>
           self -> Maybe DOMRectInit -> m DOMRectReadOnly
fromRect self other
  = liftDOM
      (((toDOMRectReadOnly self) ^. jsf "fromRect" [toJSVal other]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.fromRect Mozilla DOMRectReadOnly.fromRect documentation> 
fromRect_ ::
          (MonadDOM m, IsDOMRectReadOnly self) =>
            self -> Maybe DOMRectInit -> m ()
fromRect_ self other
  = liftDOM
      (void ((toDOMRectReadOnly self) ^. jsf "fromRect" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.x Mozilla DOMRectReadOnly.x documentation> 
getX :: (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getX self
  = liftDOM (((toDOMRectReadOnly self) ^. js "x") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.y Mozilla DOMRectReadOnly.y documentation> 
getY :: (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getY self
  = liftDOM (((toDOMRectReadOnly self) ^. js "y") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.width Mozilla DOMRectReadOnly.width documentation> 
getWidth ::
         (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getWidth self
  = liftDOM
      (((toDOMRectReadOnly self) ^. js "width") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.height Mozilla DOMRectReadOnly.height documentation> 
getHeight ::
          (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getHeight self
  = liftDOM
      (((toDOMRectReadOnly self) ^. js "height") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.top Mozilla DOMRectReadOnly.top documentation> 
getTop :: (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getTop self
  = liftDOM (((toDOMRectReadOnly self) ^. js "top") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.right Mozilla DOMRectReadOnly.right documentation> 
getRight ::
         (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getRight self
  = liftDOM
      (((toDOMRectReadOnly self) ^. js "right") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.bottom Mozilla DOMRectReadOnly.bottom documentation> 
getBottom ::
          (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getBottom self
  = liftDOM
      (((toDOMRectReadOnly self) ^. js "bottom") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.left Mozilla DOMRectReadOnly.left documentation> 
getLeft :: (MonadDOM m, IsDOMRectReadOnly self) => self -> m Double
getLeft self
  = liftDOM (((toDOMRectReadOnly self) ^. js "left") >>= valToNumber)
