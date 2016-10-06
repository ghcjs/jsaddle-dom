{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBObjectStore
       (put, add, deleteRange, delete, getRange, get, clear,
        openCursorRange, openCursor, createIndex', createIndex, index,
        deleteIndex, countRange, count, getName, getKeyPath, getIndexNames,
        getTransaction, getAutoIncrement, IDBObjectStore,
        castToIDBObjectStore, gTypeIDBObjectStore)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put ::
    (MonadDOM m) =>
      IDBObjectStore -> JSVal -> JSVal -> m (Maybe IDBRequest)
put self value key
  = liftDOM
      ((self ^. jsf "put" [toJSVal value, toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add ::
    (MonadDOM m) =>
      IDBObjectStore -> JSVal -> JSVal -> m (Maybe IDBRequest)
add self value key
  = liftDOM
      ((self ^. jsf "add" [toJSVal value, toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange ::
            (MonadDOM m) =>
              IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
deleteRange self keyRange
  = liftDOM ((self ^. jsf "delete" [toJSVal keyRange]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete ::
       (MonadDOM m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
delete self key
  = liftDOM ((self ^. jsf "delete" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange ::
         (MonadDOM m) =>
           IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get ::
    (MonadDOM m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
get self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear :: (MonadDOM m) => IDBObjectStore -> m (Maybe IDBRequest)
clear self = liftDOM ((self ^. jsf "clear" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange ::
                (MonadDOM m, ToJSString direction) =>
                  IDBObjectStore ->
                    Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor ::
           (MonadDOM m, ToJSString direction) =>
             IDBObjectStore -> JSVal -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex' ::
             (MonadDOM m, ToJSString name, ToJSString keyPath,
              IsDictionary options) =>
               IDBObjectStore ->
                 name -> [keyPath] -> Maybe options -> m (Maybe IDBIndex)
createIndex' self name keyPath options
  = liftDOM
      ((self ^. jsf "createIndex"
          [toJSVal name, toJSVal (array keyPath), toJSVal options])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex ::
            (MonadDOM m, ToJSString name, ToJSString keyPath,
             IsDictionary options) =>
              IDBObjectStore ->
                name -> keyPath -> Maybe options -> m (Maybe IDBIndex)
createIndex self name keyPath options
  = liftDOM
      ((self ^. jsf "createIndex"
          [toJSVal name, toJSVal keyPath, toJSVal options])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index ::
      (MonadDOM m, ToJSString name) =>
        IDBObjectStore -> name -> m (Maybe IDBIndex)
index self name
  = liftDOM ((self ^. jsf "index" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteIndex Mozilla IDBObjectStore.deleteIndex documentation> 
deleteIndex ::
            (MonadDOM m, ToJSString name) => IDBObjectStore -> name -> m ()
deleteIndex self name
  = liftDOM (void (self ^. jsf "deleteIndex" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange ::
           (MonadDOM m) =>
             IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
countRange self range
  = liftDOM ((self ^. jsf "count" [toJSVal range]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count ::
      (MonadDOM m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
count self key
  = liftDOM ((self ^. jsf "count" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) =>
          IDBObjectStore -> m (Maybe result)
getName self = liftDOM ((self ^. js "name") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPath :: (MonadDOM m) => IDBObjectStore -> m (Maybe IDBAny)
getKeyPath self = liftDOM ((self ^. js "keyPath") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNames ::
              (MonadDOM m) => IDBObjectStore -> m (Maybe DOMStringList)
getIndexNames self
  = liftDOM ((self ^. js "indexNames") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransaction ::
               (MonadDOM m) => IDBObjectStore -> m (Maybe IDBTransaction)
getTransaction self
  = liftDOM ((self ^. js "transaction") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
getAutoIncrement :: (MonadDOM m) => IDBObjectStore -> m Bool
getAutoIncrement self
  = liftDOM ((self ^. js "autoIncrement") >>= valToBool)
