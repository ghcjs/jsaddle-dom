{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TransitionEvent
       (newTransitionEvent, getPropertyName, getElapsedTime,
        getPseudoElement, TransitionEvent(..), gTypeTransitionEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent Mozilla TransitionEvent documentation> 
newTransitionEvent ::
                   (MonadDOM m, ToJSString type') =>
                     type' -> Maybe TransitionEventInit -> m TransitionEvent
newTransitionEvent type' transitionEventInitDict
  = liftDOM
      (TransitionEvent <$>
         new (jsg "TransitionEvent")
           [toJSVal type', toJSVal transitionEventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.propertyName Mozilla TransitionEvent.propertyName documentation> 
getPropertyName ::
                (MonadDOM m, FromJSString result) => TransitionEvent -> m result
getPropertyName self
  = liftDOM ((self ^. js "propertyName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.elapsedTime Mozilla TransitionEvent.elapsedTime documentation> 
getElapsedTime :: (MonadDOM m) => TransitionEvent -> m Double
getElapsedTime self
  = liftDOM ((self ^. js "elapsedTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.pseudoElement Mozilla TransitionEvent.pseudoElement documentation> 
getPseudoElement ::
                 (MonadDOM m, FromJSString result) => TransitionEvent -> m result
getPseudoElement self
  = liftDOM ((self ^. js "pseudoElement") >>= fromJSValUnchecked)
