{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMRect
       (newDOMRect, fromRect, fromRect_, setX, getX, setY, getY, setWidth,
        getWidth, setHeight, getHeight, DOMRect(..), gTypeDOMRect)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect Mozilla DOMRect documentation> 
newDOMRect ::
           (MonadDOM m) =>
             Maybe Double ->
               Maybe Double -> Maybe Double -> Maybe Double -> m DOMRect
newDOMRect x y width height
  = liftDOM
      (DOMRect <$>
         new (jsg "DOMRect")
           [toJSVal x, toJSVal y, toJSVal width, toJSVal height])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.fromRect Mozilla DOMRect.fromRect documentation> 
fromRect ::
         (MonadDOM m) => DOMRect -> Maybe DOMRectInit -> m DOMRect
fromRect self other
  = liftDOM
      ((self ^. jsf "fromRect" [toJSVal other]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.fromRect Mozilla DOMRect.fromRect documentation> 
fromRect_ :: (MonadDOM m) => DOMRect -> Maybe DOMRectInit -> m ()
fromRect_ self other
  = liftDOM (void (self ^. jsf "fromRect" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.x Mozilla DOMRect.x documentation> 
setX :: (MonadDOM m) => DOMRect -> Double -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.x Mozilla DOMRect.x documentation> 
getX :: (MonadDOM m) => DOMRect -> m Double
getX self = liftDOM ((self ^. js "x") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.y Mozilla DOMRect.y documentation> 
setY :: (MonadDOM m) => DOMRect -> Double -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.y Mozilla DOMRect.y documentation> 
getY :: (MonadDOM m) => DOMRect -> m Double
getY self = liftDOM ((self ^. js "y") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.width Mozilla DOMRect.width documentation> 
setWidth :: (MonadDOM m) => DOMRect -> Double -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.width Mozilla DOMRect.width documentation> 
getWidth :: (MonadDOM m) => DOMRect -> m Double
getWidth self = liftDOM ((self ^. js "width") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.height Mozilla DOMRect.height documentation> 
setHeight :: (MonadDOM m) => DOMRect -> Double -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.height Mozilla DOMRect.height documentation> 
getHeight :: (MonadDOM m) => DOMRect -> m Double
getHeight self = liftDOM ((self ^. js "height") >>= valToNumber)
