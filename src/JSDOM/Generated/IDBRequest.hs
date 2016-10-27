{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBRequest
       (getResult, getResultUnsafe, getResultUnchecked, getError,
        getErrorUnsafe, getErrorUnchecked, getSource, getSourceUnsafe,
        getSourceUnchecked, getTransaction, getTransactionUnsafe,
        getTransactionUnchecked, getReadyState, success, error,
        IDBRequest(..), gTypeIDBRequest, IsIDBRequest, toIDBRequest)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResult ::
          (MonadDOM m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getResult self
  = liftDOM (((toIDBRequest self) ^. js "result") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResultUnsafe ::
                (MonadDOM m, IsIDBRequest self, HasCallStack) => self -> m IDBAny
getResultUnsafe self
  = liftDOM
      ((((toIDBRequest self) ^. js "result") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResultUnchecked ::
                   (MonadDOM m, IsIDBRequest self) => self -> m IDBAny
getResultUnchecked self
  = liftDOM
      (((toIDBRequest self) ^. js "result") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getError ::
         (MonadDOM m, IsIDBRequest self) => self -> m (Maybe DOMError)
getError self
  = liftDOM (((toIDBRequest self) ^. js "error") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getErrorUnsafe ::
               (MonadDOM m, IsIDBRequest self, HasCallStack) => self -> m DOMError
getErrorUnsafe self
  = liftDOM
      ((((toIDBRequest self) ^. js "error") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getErrorUnchecked ::
                  (MonadDOM m, IsIDBRequest self) => self -> m DOMError
getErrorUnchecked self
  = liftDOM
      (((toIDBRequest self) ^. js "error") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSource ::
          (MonadDOM m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getSource self
  = liftDOM (((toIDBRequest self) ^. js "source") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSourceUnsafe ::
                (MonadDOM m, IsIDBRequest self, HasCallStack) => self -> m IDBAny
getSourceUnsafe self
  = liftDOM
      ((((toIDBRequest self) ^. js "source") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSourceUnchecked ::
                   (MonadDOM m, IsIDBRequest self) => self -> m IDBAny
getSourceUnchecked self
  = liftDOM
      (((toIDBRequest self) ^. js "source") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransaction ::
               (MonadDOM m, IsIDBRequest self) => self -> m (Maybe IDBTransaction)
getTransaction self
  = liftDOM (((toIDBRequest self) ^. js "transaction") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransactionUnsafe ::
                     (MonadDOM m, IsIDBRequest self, HasCallStack) =>
                       self -> m IDBTransaction
getTransactionUnsafe self
  = liftDOM
      ((((toIDBRequest self) ^. js "transaction") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransactionUnchecked ::
                        (MonadDOM m, IsIDBRequest self) => self -> m IDBTransaction
getTransactionUnchecked self
  = liftDOM
      (((toIDBRequest self) ^. js "transaction") >>= fromJSValUnchecked)

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
