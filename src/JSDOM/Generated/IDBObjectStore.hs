{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBObjectStore
       (put, put_, add, add_, deleteRange, deleteRange_, delete, delete_,
        getRange, getRange_, get, get_, getKeyRange, getKeyRange_, getKey,
        getKey_, clear, clear_, openCursorRange, openCursorRange_,
        openCursor, openCursor_, openKeyCursorRange, openKeyCursorRange_,
        openKeyCursor, openKeyCursor_, getAllRange, getAllRange_, getAll,
        getAll_, getAllKeysRange, getAllKeysRange_, getAllKeys,
        getAllKeys_, createIndex, createIndex_, index, index_, deleteIndex,
        countRange, countRange_, count, count_, setName, getName,
        getKeyPath, getKeyPathUnsafe, getKeyPathUnchecked, getIndexNames,
        getTransaction, getAutoIncrement, IDBObjectStore(..),
        gTypeIDBObjectStore)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put ::
    (MonadDOM m, ToJSVal value, ToJSVal key) =>
      IDBObjectStore -> value -> Maybe key -> m IDBRequest
put self value key
  = liftDOM
      ((self ^. jsf "put" [toJSVal value, toJSVal key]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put_ ::
     (MonadDOM m, ToJSVal value, ToJSVal key) =>
       IDBObjectStore -> value -> Maybe key -> m ()
put_ self value key
  = liftDOM (void (self ^. jsf "put" [toJSVal value, toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add ::
    (MonadDOM m, ToJSVal value, ToJSVal key) =>
      IDBObjectStore -> value -> Maybe key -> m IDBRequest
add self value key
  = liftDOM
      ((self ^. jsf "add" [toJSVal value, toJSVal key]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add_ ::
     (MonadDOM m, ToJSVal value, ToJSVal key) =>
       IDBObjectStore -> value -> Maybe key -> m ()
add_ self value key
  = liftDOM (void (self ^. jsf "add" [toJSVal value, toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange ::
            (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
deleteRange self keyRange
  = liftDOM
      ((self ^. jsf "delete" [toJSVal keyRange]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange_ ::
             (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
deleteRange_ self keyRange
  = liftDOM (void (self ^. jsf "delete" [toJSVal keyRange]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete ::
       (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
delete self key
  = liftDOM
      ((self ^. jsf "delete" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete_ ::
        (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m ()
delete_ self key
  = liftDOM (void (self ^. jsf "delete" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange ::
         (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
getRange self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange_ ::
          (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get ::
    (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
get self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get_ :: (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m ()
get_ self key = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKeyRange ::
            (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
getKeyRange self key
  = liftDOM
      ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKeyRange_ ::
             (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
getKeyRange_ self key
  = liftDOM (void (self ^. jsf "getKey" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKey ::
       (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
getKey self key
  = liftDOM
      ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKey_ ::
        (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m ()
getKey_ self key
  = liftDOM (void (self ^. jsf "getKey" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear :: (MonadDOM m) => IDBObjectStore -> m IDBRequest
clear self
  = liftDOM ((self ^. jsf "clear" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear_ :: (MonadDOM m) => IDBObjectStore -> m ()
clear_ self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange ::
                (MonadDOM m) =>
                  IDBObjectStore ->
                    Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange_ ::
                 (MonadDOM m) =>
                   IDBObjectStore ->
                     Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openCursorRange_ self range direction
  = liftDOM
      (void
         (self ^. jsf "openCursor" [toJSVal range, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor ::
           (MonadDOM m, ToJSVal key) =>
             IDBObjectStore -> key -> Maybe IDBCursorDirection -> m IDBRequest
openCursor self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor_ ::
            (MonadDOM m, ToJSVal key) =>
              IDBObjectStore -> key -> Maybe IDBCursorDirection -> m ()
openCursor_ self key direction
  = liftDOM
      (void (self ^. jsf "openCursor" [toJSVal key, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadDOM m) =>
                     IDBObjectStore ->
                       Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursorRange_ ::
                    (MonadDOM m) =>
                      IDBObjectStore ->
                        Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openKeyCursorRange_ self range direction
  = liftDOM
      (void
         (self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursor ::
              (MonadDOM m, ToJSVal key) =>
                IDBObjectStore -> key -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursor self key direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursor_ ::
               (MonadDOM m, ToJSVal key) =>
                 IDBObjectStore -> key -> Maybe IDBCursorDirection -> m ()
openKeyCursor_ self key direction
  = liftDOM
      (void
         (self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAllRange ::
            (MonadDOM m) =>
              IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllRange self range count
  = liftDOM
      ((self ^. jsf "getAll" [toJSVal range, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAllRange_ ::
             (MonadDOM m) =>
               IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllRange_ self range count
  = liftDOM
      (void (self ^. jsf "getAll" [toJSVal range, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAll ::
       (MonadDOM m, ToJSVal key) =>
         IDBObjectStore -> key -> Maybe Word -> m IDBRequest
getAll self key count
  = liftDOM
      ((self ^. jsf "getAll" [toJSVal key, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAll_ ::
        (MonadDOM m, ToJSVal key) =>
          IDBObjectStore -> key -> Maybe Word -> m ()
getAll_ self key count
  = liftDOM
      (void (self ^. jsf "getAll" [toJSVal key, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeysRange ::
                (MonadDOM m) =>
                  IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllKeysRange self range count
  = liftDOM
      ((self ^. jsf "getAllKeys" [toJSVal range, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeysRange_ ::
                 (MonadDOM m) =>
                   IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllKeysRange_ self range count
  = liftDOM
      (void (self ^. jsf "getAllKeys" [toJSVal range, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeys ::
           (MonadDOM m, ToJSVal key) =>
             IDBObjectStore -> key -> Maybe Word -> m IDBRequest
getAllKeys self key count
  = liftDOM
      ((self ^. jsf "getAllKeys" [toJSVal key, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeys_ ::
            (MonadDOM m, ToJSVal key) =>
              IDBObjectStore -> key -> Maybe Word -> m ()
getAllKeys_ self key count
  = liftDOM
      (void (self ^. jsf "getAllKeys" [toJSVal key, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex ::
            (MonadDOM m, ToJSString name, IsStringOrStrings keyPath) =>
              IDBObjectStore ->
                name -> keyPath -> Maybe IDBIndexParameters -> m IDBIndex
createIndex self name keyPath options
  = liftDOM
      ((self ^. jsf "createIndex"
          [toJSVal name, toJSVal keyPath, toJSVal options])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex_ ::
             (MonadDOM m, ToJSString name, IsStringOrStrings keyPath) =>
               IDBObjectStore ->
                 name -> keyPath -> Maybe IDBIndexParameters -> m ()
createIndex_ self name keyPath options
  = liftDOM
      (void
         (self ^. jsf "createIndex"
            [toJSVal name, toJSVal keyPath, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index ::
      (MonadDOM m, ToJSString name) =>
        IDBObjectStore -> name -> m IDBIndex
index self name
  = liftDOM
      ((self ^. jsf "index" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index_ ::
       (MonadDOM m, ToJSString name) => IDBObjectStore -> name -> m ()
index_ self name
  = liftDOM (void (self ^. jsf "index" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteIndex Mozilla IDBObjectStore.deleteIndex documentation> 
deleteIndex ::
            (MonadDOM m, ToJSString name) => IDBObjectStore -> name -> m ()
deleteIndex self name
  = liftDOM (void (self ^. jsf "deleteIndex" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange ::
           (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
countRange self range
  = liftDOM
      ((self ^. jsf "count" [toJSVal range]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange_ ::
            (MonadDOM m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftDOM (void (self ^. jsf "count" [toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count ::
      (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
count self key
  = liftDOM
      ((self ^. jsf "count" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count_ ::
       (MonadDOM m, ToJSVal key) => IDBObjectStore -> key -> m ()
count_ self key
  = liftDOM (void (self ^. jsf "count" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => IDBObjectStore -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => IDBObjectStore -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPath ::
           (MonadDOM m) => IDBObjectStore -> m (Maybe IDBKeyPath)
getKeyPath self = liftDOM ((self ^. js "keyPath") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPathUnsafe ::
                 (MonadDOM m, HasCallStack) => IDBObjectStore -> m IDBKeyPath
getKeyPathUnsafe self
  = liftDOM
      (((self ^. js "keyPath") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPathUnchecked ::
                    (MonadDOM m) => IDBObjectStore -> m IDBKeyPath
getKeyPathUnchecked self
  = liftDOM ((self ^. js "keyPath") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNames :: (MonadDOM m) => IDBObjectStore -> m DOMStringList
getIndexNames self
  = liftDOM ((self ^. js "indexNames") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransaction ::
               (MonadDOM m) => IDBObjectStore -> m IDBTransaction
getTransaction self
  = liftDOM ((self ^. js "transaction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
getAutoIncrement :: (MonadDOM m) => IDBObjectStore -> m Bool
getAutoIncrement self
  = liftDOM ((self ^. js "autoIncrement") >>= valToBool)
