{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMPointReadOnly
       (newDOMPointReadOnly, newDOMPointReadOnly', fromPoint, fromPoint_,
        getX, getY, getZ, getW, DOMPointReadOnly(..),
        gTypeDOMPointReadOnly, IsDOMPointReadOnly, toDOMPointReadOnly)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly Mozilla DOMPointReadOnly documentation> 
newDOMPointReadOnly ::
                    (MonadDOM m) => DOMPointInit -> m DOMPointReadOnly
newDOMPointReadOnly point
  = liftDOM
      (DOMPointReadOnly <$> new (jsg "DOMPointReadOnly") [toJSVal point])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly Mozilla DOMPointReadOnly documentation> 
newDOMPointReadOnly' ::
                     (MonadDOM m) =>
                       Maybe Double ->
                         Maybe Double -> Maybe Double -> Maybe Double -> m DOMPointReadOnly
newDOMPointReadOnly' x y z w
  = liftDOM
      (DOMPointReadOnly <$>
         new (jsg "DOMPointReadOnly")
           [toJSVal x, toJSVal y, toJSVal z, toJSVal w])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.fromPoint Mozilla DOMPointReadOnly.fromPoint documentation> 
fromPoint ::
          (MonadDOM m, IsDOMPointReadOnly self) =>
            self -> Maybe DOMPointInit -> m DOMPointReadOnly
fromPoint self other
  = liftDOM
      (((toDOMPointReadOnly self) ^. jsf "fromPoint" [toJSVal other]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.fromPoint Mozilla DOMPointReadOnly.fromPoint documentation> 
fromPoint_ ::
           (MonadDOM m, IsDOMPointReadOnly self) =>
             self -> Maybe DOMPointInit -> m ()
fromPoint_ self other
  = liftDOM
      (void
         ((toDOMPointReadOnly self) ^. jsf "fromPoint" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.x Mozilla DOMPointReadOnly.x documentation> 
getX :: (MonadDOM m, IsDOMPointReadOnly self) => self -> m Double
getX self
  = liftDOM (((toDOMPointReadOnly self) ^. js "x") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.y Mozilla DOMPointReadOnly.y documentation> 
getY :: (MonadDOM m, IsDOMPointReadOnly self) => self -> m Double
getY self
  = liftDOM (((toDOMPointReadOnly self) ^. js "y") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.z Mozilla DOMPointReadOnly.z documentation> 
getZ :: (MonadDOM m, IsDOMPointReadOnly self) => self -> m Double
getZ self
  = liftDOM (((toDOMPointReadOnly self) ^. js "z") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.w Mozilla DOMPointReadOnly.w documentation> 
getW :: (MonadDOM m, IsDOMPointReadOnly self) => self -> m Double
getW self
  = liftDOM (((toDOMPointReadOnly self) ^. js "w") >>= valToNumber)
