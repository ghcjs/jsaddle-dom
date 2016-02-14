{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.IDBRequest
       (getResult, getError, getSource, getTransaction, getReadyState,
        success, error, IDBRequest, castToIDBRequest, gTypeIDBRequest,
        IsIDBRequest, toIDBRequest)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResult ::
          (MonadDOM m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getResult self
  = liftDOM (((toIDBRequest self) ^. js "result") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getError ::
         (MonadDOM m, IsIDBRequest self) => self -> m (Maybe DOMError)
getError self
  = liftDOM (((toIDBRequest self) ^. js "error") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSource ::
          (MonadDOM m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getSource self
  = liftDOM (((toIDBRequest self) ^. js "source") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransaction ::
               (MonadDOM m, IsIDBRequest self) => self -> m (Maybe IDBTransaction)
getTransaction self
  = liftDOM (((toIDBRequest self) ^. js "transaction") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.readyState Mozilla IDBRequest.readyState documentation> 
getReadyState ::
              (MonadDOM m, IsIDBRequest self, FromJSString result) =>
                self -> m result
getReadyState self
  = liftDOM
      (((toIDBRequest self) ^. js "readyState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.onsuccess Mozilla IDBRequest.onsuccess documentation> 
success ::
        (IsIDBRequest self, IsEventTarget self) => EventName self Event
success = unsafeEventName (toJSString "success")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.onerror Mozilla IDBRequest.onerror documentation> 
error ::
      (IsIDBRequest self, IsEventTarget self) => EventName self Event
error = unsafeEventName (toJSString "error")