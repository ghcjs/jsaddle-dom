{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMPoint
       (newDOMPoint, newDOMPoint', fromPoint, fromPoint_, setX, getX,
        setY, getY, setZ, getZ, setW, getW, DOMPoint(..), gTypeDOMPoint)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint Mozilla DOMPoint documentation> 
newDOMPoint :: (MonadDOM m) => DOMPointInit -> m DOMPoint
newDOMPoint point
  = liftDOM (DOMPoint <$> new (jsg "DOMPoint") [toJSVal point])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint Mozilla DOMPoint documentation> 
newDOMPoint' ::
             (MonadDOM m) =>
               Maybe Double ->
                 Maybe Double -> Maybe Double -> Maybe Double -> m DOMPoint
newDOMPoint' x y z w
  = liftDOM
      (DOMPoint <$>
         new (jsg "DOMPoint") [toJSVal x, toJSVal y, toJSVal z, toJSVal w])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.fromPoint Mozilla DOMPoint.fromPoint documentation> 
fromPoint ::
          (MonadDOM m) => DOMPoint -> Maybe DOMPointInit -> m DOMPoint
fromPoint self other
  = liftDOM
      ((self ^. jsf "fromPoint" [toJSVal other]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.fromPoint Mozilla DOMPoint.fromPoint documentation> 
fromPoint_ ::
           (MonadDOM m) => DOMPoint -> Maybe DOMPointInit -> m ()
fromPoint_ self other
  = liftDOM (void (self ^. jsf "fromPoint" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.x Mozilla DOMPoint.x documentation> 
setX :: (MonadDOM m) => DOMPoint -> Double -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.x Mozilla DOMPoint.x documentation> 
getX :: (MonadDOM m) => DOMPoint -> m Double
getX self = liftDOM ((self ^. js "x") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.y Mozilla DOMPoint.y documentation> 
setY :: (MonadDOM m) => DOMPoint -> Double -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.y Mozilla DOMPoint.y documentation> 
getY :: (MonadDOM m) => DOMPoint -> m Double
getY self = liftDOM ((self ^. js "y") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.z Mozilla DOMPoint.z documentation> 
setZ :: (MonadDOM m) => DOMPoint -> Double -> m ()
setZ self val = liftDOM (self ^. jss "z" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.z Mozilla DOMPoint.z documentation> 
getZ :: (MonadDOM m) => DOMPoint -> m Double
getZ self = liftDOM ((self ^. js "z") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.w Mozilla DOMPoint.w documentation> 
setW :: (MonadDOM m) => DOMPoint -> Double -> m ()
setW self val = liftDOM (self ^. jss "w" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.w Mozilla DOMPoint.w documentation> 
getW :: (MonadDOM m) => DOMPoint -> m Double
getW self = liftDOM ((self ^. js "w") >>= valToNumber)
