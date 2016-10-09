{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBObjectStore
       (put, put_, putUnchecked, add, add_, addUnchecked, deleteRange,
        deleteRange_, deleteRangeUnchecked, delete, delete_,
        deleteUnchecked, getRange, getRange_, getRangeUnchecked, get, get_,
        getUnchecked, clear, clear_, clearUnchecked, openCursorRange,
        openCursorRange_, openCursorRangeUnchecked, openCursor,
        openCursor_, openCursorUnchecked, createIndex', createIndex'_,
        createIndex'Unchecked, createIndex, createIndex_,
        createIndexUnchecked, index, index_, indexUnchecked, deleteIndex,
        countRange, countRange_, countRangeUnchecked, count, count_,
        countUnchecked, getName, getNameUnchecked, getKeyPath,
        getKeyPathUnchecked, getIndexNames, getIndexNamesUnchecked,
        getTransaction, getTransactionUnchecked, getAutoIncrement,
        IDBObjectStore, castToIDBObjectStore, gTypeIDBObjectStore)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put_ :: (MonadDOM m) => IDBObjectStore -> JSVal -> JSVal -> m ()
put_ self value key
  = liftDOM (void (self ^. jsf "put" [toJSVal value, toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
putUnchecked ::
             (MonadDOM m) => IDBObjectStore -> JSVal -> JSVal -> m IDBRequest
putUnchecked self value key
  = liftDOM
      ((self ^. jsf "put" [toJSVal value, toJSVal key]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add ::
    (MonadDOM m) =>
      IDBObjectStore -> JSVal -> JSVal -> m (Maybe IDBRequest)
add self value key
  = liftDOM
      ((self ^. jsf "add" [toJSVal value, toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add_ :: (MonadDOM m) => IDBObjectStore -> JSVal -> JSVal -> m ()
add_ self value key
  = liftDOM (void (self ^. jsf "add" [toJSVal value, toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
addUnchecked ::
             (MonadDOM m) => IDBObjectStore -> JSVal -> JSVal -> m IDBRequest
addUnchecked self value key
  = liftDOM
      ((self ^. jsf "add" [toJSVal value, toJSVal key]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange ::
            (MonadDOM m) =>
              IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
deleteRange self keyRange
  = liftDOM ((self ^. jsf "delete" [toJSVal keyRange]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange_ ::
             (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
deleteRange_ self keyRange
  = liftDOM (void (self ^. jsf "delete" [toJSVal keyRange]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRangeUnchecked ::
                     (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
deleteRangeUnchecked self keyRange
  = liftDOM
      ((self ^. jsf "delete" [toJSVal keyRange]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete ::
       (MonadDOM m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
delete self key
  = liftDOM ((self ^. jsf "delete" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete_ :: (MonadDOM m) => IDBObjectStore -> JSVal -> m ()
delete_ self key
  = liftDOM (void (self ^. jsf "delete" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteUnchecked ::
                (MonadDOM m) => IDBObjectStore -> JSVal -> m IDBRequest
deleteUnchecked self key
  = liftDOM
      ((self ^. jsf "delete" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange ::
         (MonadDOM m) =>
           IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange_ ::
          (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRangeUnchecked ::
                  (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
getRangeUnchecked self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get ::
    (MonadDOM m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
get self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get_ :: (MonadDOM m) => IDBObjectStore -> JSVal -> m ()
get_ self key = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getUnchecked ::
             (MonadDOM m) => IDBObjectStore -> JSVal -> m IDBRequest
getUnchecked self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear :: (MonadDOM m) => IDBObjectStore -> m (Maybe IDBRequest)
clear self = liftDOM ((self ^. jsf "clear" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear_ :: (MonadDOM m) => IDBObjectStore -> m ()
clear_ self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clearUnchecked :: (MonadDOM m) => IDBObjectStore -> m IDBRequest
clearUnchecked self
  = liftDOM ((self ^. jsf "clear" ()) >>= fromJSValUnchecked)

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
openCursorRange_ ::
                 (MonadDOM m, ToJSString direction) =>
                   IDBObjectStore -> Maybe IDBKeyRange -> direction -> m ()
openCursorRange_ self range direction
  = liftDOM
      (void
         (self ^. jsf "openCursor" [toJSVal range, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRangeUnchecked ::
                         (MonadDOM m, ToJSString direction) =>
                           IDBObjectStore -> Maybe IDBKeyRange -> direction -> m IDBRequest
openCursorRangeUnchecked self range direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor ::
           (MonadDOM m, ToJSString direction) =>
             IDBObjectStore -> JSVal -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor_ ::
            (MonadDOM m, ToJSString direction) =>
              IDBObjectStore -> JSVal -> direction -> m ()
openCursor_ self key direction
  = liftDOM
      (void (self ^. jsf "openCursor" [toJSVal key, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorUnchecked ::
                    (MonadDOM m, ToJSString direction) =>
                      IDBObjectStore -> JSVal -> direction -> m IDBRequest
openCursorUnchecked self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSValUnchecked)

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
createIndex'_ ::
              (MonadDOM m, ToJSString name, ToJSString keyPath,
               IsDictionary options) =>
                IDBObjectStore -> name -> [keyPath] -> Maybe options -> m ()
createIndex'_ self name keyPath options
  = liftDOM
      (void
         (self ^. jsf "createIndex"
            [toJSVal name, toJSVal (array keyPath), toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex'Unchecked ::
                      (MonadDOM m, ToJSString name, ToJSString keyPath,
                       IsDictionary options) =>
                        IDBObjectStore -> name -> [keyPath] -> Maybe options -> m IDBIndex
createIndex'Unchecked self name keyPath options
  = liftDOM
      ((self ^. jsf "createIndex"
          [toJSVal name, toJSVal (array keyPath), toJSVal options])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex_ ::
             (MonadDOM m, ToJSString name, ToJSString keyPath,
              IsDictionary options) =>
               IDBObjectStore -> name -> keyPath -> Maybe options -> m ()
createIndex_ self name keyPath options
  = liftDOM
      (void
         (self ^. jsf "createIndex"
            [toJSVal name, toJSVal keyPath, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndexUnchecked ::
                     (MonadDOM m, ToJSString name, ToJSString keyPath,
                      IsDictionary options) =>
                       IDBObjectStore -> name -> keyPath -> Maybe options -> m IDBIndex
createIndexUnchecked self name keyPath options
  = liftDOM
      ((self ^. jsf "createIndex"
          [toJSVal name, toJSVal keyPath, toJSVal options])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index ::
      (MonadDOM m, ToJSString name) =>
        IDBObjectStore -> name -> m (Maybe IDBIndex)
index self name
  = liftDOM ((self ^. jsf "index" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index_ ::
       (MonadDOM m, ToJSString name) => IDBObjectStore -> name -> m ()
index_ self name
  = liftDOM (void (self ^. jsf "index" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
indexUnchecked ::
               (MonadDOM m, ToJSString name) =>
                 IDBObjectStore -> name -> m IDBIndex
indexUnchecked self name
  = liftDOM
      ((self ^. jsf "index" [toJSVal name]) >>= fromJSValUnchecked)

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
countRange_ ::
            (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftDOM (void (self ^. jsf "count" [toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRangeUnchecked ::
                    (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
countRangeUnchecked self range
  = liftDOM
      ((self ^. jsf "count" [toJSVal range]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count ::
      (MonadDOM m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
count self key
  = liftDOM ((self ^. jsf "count" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count_ :: (MonadDOM m) => IDBObjectStore -> JSVal -> m ()
count_ self key
  = liftDOM (void (self ^. jsf "count" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countUnchecked ::
               (MonadDOM m) => IDBObjectStore -> JSVal -> m IDBRequest
countUnchecked self key
  = liftDOM
      ((self ^. jsf "count" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) =>
          IDBObjectStore -> m (Maybe result)
getName self = liftDOM ((self ^. js "name") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getNameUnchecked ::
                 (MonadDOM m, FromJSString result) => IDBObjectStore -> m result
getNameUnchecked self
  = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPath :: (MonadDOM m) => IDBObjectStore -> m (Maybe IDBAny)
getKeyPath self = liftDOM ((self ^. js "keyPath") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPathUnchecked :: (MonadDOM m) => IDBObjectStore -> m IDBAny
getKeyPathUnchecked self
  = liftDOM ((self ^. js "keyPath") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNames ::
              (MonadDOM m) => IDBObjectStore -> m (Maybe DOMStringList)
getIndexNames self
  = liftDOM ((self ^. js "indexNames") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNamesUnchecked ::
                       (MonadDOM m) => IDBObjectStore -> m DOMStringList
getIndexNamesUnchecked self
  = liftDOM ((self ^. js "indexNames") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransaction ::
               (MonadDOM m) => IDBObjectStore -> m (Maybe IDBTransaction)
getTransaction self
  = liftDOM ((self ^. js "transaction") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransactionUnchecked ::
                        (MonadDOM m) => IDBObjectStore -> m IDBTransaction
getTransactionUnchecked self
  = liftDOM ((self ^. js "transaction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
getAutoIncrement :: (MonadDOM m) => IDBObjectStore -> m Bool
getAutoIncrement self
  = liftDOM ((self ^. js "autoIncrement") >>= valToBool)
