{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TransitionEvent
       (getPropertyName, getElapsedTime, getPseudoElement,
        TransitionEvent, castToTransitionEvent, gTypeTransitionEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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
