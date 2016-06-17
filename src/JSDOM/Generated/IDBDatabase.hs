{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.IDBDatabase
       (createObjectStore, deleteObjectStore, transaction, transaction',
        close, getName, getVersion, getObjectStoreNames, abort, error,
        versionChange, IDBDatabase, castToIDBDatabase, gTypeIDBDatabase)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore ::
                  (MonadDOM m, ToJSString name, IsDictionary options) =>
                    IDBDatabase -> name -> Maybe options -> m (Maybe IDBObjectStore)
createObjectStore self name options
  = liftDOM
      ((self ^. jsf "createObjectStore" [toJSVal name, toJSVal options])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.deleteObjectStore Mozilla IDBDatabase.deleteObjectStore documentation> 
deleteObjectStore ::
                  (MonadDOM m, ToJSString name) => IDBDatabase -> name -> m ()
deleteObjectStore self name
  = liftDOM (void (self ^. jsf "deleteObjectStore" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction ::
            (MonadDOM m, ToJSString storeName, ToJSString mode) =>
              IDBDatabase -> storeName -> mode -> m (Maybe IDBTransaction)
transaction self storeName mode
  = liftDOM
      ((self ^. jsf "transaction" [toJSVal storeName, toJSVal mode]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction' ::
             (MonadDOM m, ToJSString storeNames, ToJSString mode) =>
               IDBDatabase -> [storeNames] -> mode -> m (Maybe IDBTransaction)
transaction' self storeNames mode
  = liftDOM
      ((self ^. jsf "transaction"
          [toJSVal (array storeNames), toJSVal mode])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.close Mozilla IDBDatabase.close documentation> 
close :: (MonadDOM m) => IDBDatabase -> m ()
close self = liftDOM (void (self ^. js "close"))

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
                    (MonadDOM m) => IDBDatabase -> m (Maybe DOMStringList)
getObjectStoreNames self
  = liftDOM ((self ^. js "objectStoreNames") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onabort Mozilla IDBDatabase.onabort documentation> 
abort :: EventName IDBDatabase Event
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onerror Mozilla IDBDatabase.onerror documentation> 
error :: EventName IDBDatabase Event
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onversionchange Mozilla IDBDatabase.onversionchange documentation> 
versionChange :: EventName IDBDatabase IDBVersionChangeEvent
versionChange = unsafeEventName (toJSString "versionchange")
