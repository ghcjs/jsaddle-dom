{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBTransaction
       (objectStore, objectStore_, objectStoreUnsafe,
        objectStoreUnchecked, abort, getMode, getDb, getDbUnchecked,
        getError, getErrorUnchecked, abortEvent, complete, error,
        IDBTransaction(..), gTypeIDBTransaction)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore ::
            (MonadDOM m, ToJSString name) =>
              IDBTransaction -> name -> m (Maybe IDBObjectStore)
objectStore self name
  = liftDOM
      ((self ^. jsf "objectStore" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore_ ::
             (MonadDOM m, ToJSString name) => IDBTransaction -> name -> m ()
objectStore_ self name
  = liftDOM (void (self ^. jsf "objectStore" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStoreUnsafe ::
                  (MonadDOM m, ToJSString name, HasCallStack) =>
                    IDBTransaction -> name -> m IDBObjectStore
objectStoreUnsafe self name
  = liftDOM
      (((self ^. jsf "objectStore" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStoreUnchecked ::
                     (MonadDOM m, ToJSString name) =>
                       IDBTransaction -> name -> m IDBObjectStore
objectStoreUnchecked self name
  = liftDOM
      ((self ^. jsf "objectStore" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abort Mozilla IDBTransaction.abort documentation> 
abort :: (MonadDOM m) => IDBTransaction -> m ()
abort self = liftDOM (void (self ^. jsf "abort" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.mode Mozilla IDBTransaction.mode documentation> 
getMode ::
        (MonadDOM m, FromJSString result) => IDBTransaction -> m result
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
getDb :: (MonadDOM m) => IDBTransaction -> m (Maybe IDBDatabase)
getDb self = liftDOM ((self ^. js "db") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
getDbUnchecked :: (MonadDOM m) => IDBTransaction -> m IDBDatabase
getDbUnchecked self
  = liftDOM ((self ^. js "db") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
getError :: (MonadDOM m) => IDBTransaction -> m (Maybe DOMError)
getError self = liftDOM ((self ^. js "error") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
getErrorUnchecked :: (MonadDOM m) => IDBTransaction -> m DOMError
getErrorUnchecked self
  = liftDOM ((self ^. js "error") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onabort Mozilla IDBTransaction.onabort documentation> 
abortEvent :: EventName IDBTransaction Event
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.oncomplete Mozilla IDBTransaction.oncomplete documentation> 
complete :: EventName IDBTransaction Event
complete = unsafeEventName (toJSString "complete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onerror Mozilla IDBTransaction.onerror documentation> 
error :: EventName IDBTransaction Event
error = unsafeEventName (toJSString "error")
