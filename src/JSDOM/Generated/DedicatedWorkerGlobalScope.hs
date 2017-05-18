{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DedicatedWorkerGlobalScope
       (postMessage, message, DedicatedWorkerGlobalScope(..),
        gTypeDedicatedWorkerGlobalScope)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.postMessage Mozilla DedicatedWorkerGlobalScope.postMessage documentation> 
postMessage ::
            (MonadDOM m, ToJSVal message, IsGObject transfer) =>
              DedicatedWorkerGlobalScope -> message -> [transfer] -> m ()
postMessage self message transfer
  = liftDOM
      (void
         (self ^. jsf "postMessage"
            [toJSVal message, toJSVal (array transfer)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.onmessage Mozilla DedicatedWorkerGlobalScope.onmessage documentation> 
message :: EventName DedicatedWorkerGlobalScope MessageEvent
message = unsafeEventName (toJSString "message")
