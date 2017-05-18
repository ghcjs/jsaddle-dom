{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBDatabase
       (createObjectStore, createObjectStore_, deleteObjectStore,
        transaction, transaction_, close, getName, getVersion,
        getObjectStoreNames, abort, closeEvent, error, versionChange,
        IDBDatabase(..), gTypeIDBDatabase)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore ::
                  (MonadDOM m, ToJSString name) =>
                    IDBDatabase ->
                      name -> Maybe IDBObjectStoreParameters -> m IDBObjectStore
createObjectStore self name parameters
  = liftDOM
      ((self ^. jsf "createObjectStore"
          [toJSVal name, toJSVal parameters])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore_ ::
                   (MonadDOM m, ToJSString name) =>
                     IDBDatabase -> name -> Maybe IDBObjectStoreParameters -> m ()
createObjectStore_ self name parameters
  = liftDOM
      (void
         (self ^. jsf "createObjectStore"
            [toJSVal name, toJSVal parameters]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.deleteObjectStore Mozilla IDBDatabase.deleteObjectStore documentation> 
deleteObjectStore ::
                  (MonadDOM m, ToJSString name) => IDBDatabase -> name -> m ()
deleteObjectStore self name
  = liftDOM (void (self ^. jsf "deleteObjectStore" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction ::
            (MonadDOM m, IsStringOrStrings storeNames) =>
              IDBDatabase ->
                storeNames -> Maybe IDBTransactionMode -> m IDBTransaction
transaction self storeNames mode
  = liftDOM
      ((self ^. jsf "transaction" [toJSVal storeNames, toJSVal mode]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction_ ::
             (MonadDOM m, IsStringOrStrings storeNames) =>
               IDBDatabase -> storeNames -> Maybe IDBTransactionMode -> m ()
transaction_ self storeNames mode
  = liftDOM
      (void
         (self ^. jsf "transaction" [toJSVal storeNames, toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.close Mozilla IDBDatabase.close documentation> 
close :: (MonadDOM m) => IDBDatabase -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.name Mozilla IDBDatabase.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => IDBDatabase -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.version Mozilla IDBDatabase.version documentation> 
getVersion :: (MonadDOM m) => IDBDatabase -> m Word64
getVersion self
  = liftDOM (round <$> ((self ^. js "version") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.objectStoreNames Mozilla IDBDatabase.objectStoreNames documentation> 
getObjectStoreNames ::
                    (MonadDOM m) => IDBDatabase -> m DOMStringList
getObjectStoreNames self
  = liftDOM ((self ^. js "objectStoreNames") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onabort Mozilla IDBDatabase.onabort documentation> 
abort :: EventName IDBDatabase Event
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onclose Mozilla IDBDatabase.onclose documentation> 
closeEvent :: EventName IDBDatabase CloseEvent
closeEvent = unsafeEventName (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onerror Mozilla IDBDatabase.onerror documentation> 
error :: EventName IDBDatabase Event
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onversionchange Mozilla IDBDatabase.onversionchange documentation> 
versionChange :: EventName IDBDatabase IDBVersionChangeEvent
versionChange = unsafeEventName (toJSString "versionchange")
