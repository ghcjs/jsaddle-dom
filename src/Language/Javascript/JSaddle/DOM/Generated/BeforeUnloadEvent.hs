{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.BeforeUnloadEvent
       (setReturnValue, getReturnValue, BeforeUnloadEvent,
        castToBeforeUnloadEvent, gTypeBeforeUnloadEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
setReturnValue ::
               (MonadDOM m, ToJSString val) => BeforeUnloadEvent -> val -> m ()
setReturnValue self val
  = liftDOM (self ^. jss "returnValue" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
getReturnValue ::
               (MonadDOM m, FromJSString result) => BeforeUnloadEvent -> m result
getReturnValue self
  = liftDOM ((self ^. js "returnValue") >>= fromJSValUnchecked)