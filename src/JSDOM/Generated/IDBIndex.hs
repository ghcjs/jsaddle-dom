{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBIndex
       (openCursorRange, openCursorRange_, openCursor, openCursor_,
        openKeyCursorRange, openKeyCursorRange_, openKeyCursor,
        openKeyCursor_, getRange, getRange_, get, get_, getKeyRange,
        getKeyRange_, getKey, getKey_, getAllRange, getAllRange_, getAll,
        getAll_, getAllKeysRange, getAllKeysRange_, getAllKeys,
        getAllKeys_, countRange, countRange_, count, count_, setName,
        getName, getObjectStore, getKeyPath, getKeyPathUnsafe,
        getKeyPathUnchecked, getMultiEntry, getUnique, IDBIndex(..),
        gTypeIDBIndex)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange ::
                (MonadDOM m) =>
                  IDBIndex ->
                    Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange_ ::
                 (MonadDOM m) =>
                   IDBIndex -> Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openCursorRange_ self range direction
  = liftDOM
      (void
         (self ^. jsf "openCursor" [toJSVal range, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor ::
           (MonadDOM m, ToJSVal key) =>
             IDBIndex -> key -> Maybe IDBCursorDirection -> m IDBRequest
openCursor self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor_ ::
            (MonadDOM m, ToJSVal key) =>
              IDBIndex -> key -> Maybe IDBCursorDirection -> m ()
openCursor_ self key direction
  = liftDOM
      (void (self ^. jsf "openCursor" [toJSVal key, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadDOM m) =>
                     IDBIndex ->
                       Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange_ ::
                    (MonadDOM m) =>
                      IDBIndex -> Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openKeyCursorRange_ self range direction
  = liftDOM
      (void
         (self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor ::
              (MonadDOM m, ToJSVal key) =>
                IDBIndex -> key -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursor self key direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor_ ::
               (MonadDOM m, ToJSVal key) =>
                 IDBIndex -> key -> Maybe IDBCursorDirection -> m ()
openKeyCursor_ self key direction
  = liftDOM
      (void
         (self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange ::
         (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getRange self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange_ :: (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get :: (MonadDOM m, ToJSVal key) => IDBIndex -> key -> m IDBRequest
get self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get_ :: (MonadDOM m, ToJSVal key) => IDBIndex -> key -> m ()
get_ self key = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange ::
            (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getKeyRange self key
  = liftDOM
      ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange_ ::
             (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getKeyRange_ self key
  = liftDOM (void (self ^. jsf "getKey" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey ::
       (MonadDOM m, ToJSVal key) => IDBIndex -> key -> m IDBRequest
getKey self key
  = liftDOM
      ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey_ :: (MonadDOM m, ToJSVal key) => IDBIndex -> key -> m ()
getKey_ self key
  = liftDOM (void (self ^. jsf "getKey" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAllRange ::
            (MonadDOM m) =>
              IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllRange self range count
  = liftDOM
      ((self ^. jsf "getAll" [toJSVal range, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAllRange_ ::
             (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllRange_ self range count
  = liftDOM
      (void (self ^. jsf "getAll" [toJSVal range, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAll ::
       (MonadDOM m, ToJSVal key) =>
         IDBIndex -> key -> Maybe Word -> m IDBRequest
getAll self key count
  = liftDOM
      ((self ^. jsf "getAll" [toJSVal key, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAll_ ::
        (MonadDOM m, ToJSVal key) => IDBIndex -> key -> Maybe Word -> m ()
getAll_ self key count
  = liftDOM
      (void (self ^. jsf "getAll" [toJSVal key, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeysRange ::
                (MonadDOM m) =>
                  IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllKeysRange self range count
  = liftDOM
      ((self ^. jsf "getAllKeys" [toJSVal range, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeysRange_ ::
                 (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllKeysRange_ self range count
  = liftDOM
      (void (self ^. jsf "getAllKeys" [toJSVal range, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeys ::
           (MonadDOM m, ToJSVal key) =>
             IDBIndex -> key -> Maybe Word -> m IDBRequest
getAllKeys self key count
  = liftDOM
      ((self ^. jsf "getAllKeys" [toJSVal key, toJSVal count]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeys_ ::
            (MonadDOM m, ToJSVal key) => IDBIndex -> key -> Maybe Word -> m ()
getAllKeys_ self key count
  = liftDOM
      (void (self ^. jsf "getAllKeys" [toJSVal key, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange ::
           (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
countRange self range
  = liftDOM
      ((self ^. jsf "count" [toJSVal range]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange_ ::
            (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftDOM (void (self ^. jsf "count" [toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count ::
      (MonadDOM m, ToJSVal key) => IDBIndex -> key -> m IDBRequest
count self key
  = liftDOM
      ((self ^. jsf "count" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count_ :: (MonadDOM m, ToJSVal key) => IDBIndex -> key -> m ()
count_ self key
  = liftDOM (void (self ^. jsf "count" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
setName :: (MonadDOM m, ToJSString val) => IDBIndex -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => IDBIndex -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStore :: (MonadDOM m) => IDBIndex -> m IDBObjectStore
getObjectStore self
  = liftDOM ((self ^. js "objectStore") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPath :: (MonadDOM m) => IDBIndex -> m (Maybe IDBKeyPath)
getKeyPath self = liftDOM ((self ^. js "keyPath") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPathUnsafe ::
                 (MonadDOM m, HasCallStack) => IDBIndex -> m IDBKeyPath
getKeyPathUnsafe self
  = liftDOM
      (((self ^. js "keyPath") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPathUnchecked :: (MonadDOM m) => IDBIndex -> m IDBKeyPath
getKeyPathUnchecked self
  = liftDOM ((self ^. js "keyPath") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.multiEntry Mozilla IDBIndex.multiEntry documentation> 
getMultiEntry :: (MonadDOM m) => IDBIndex -> m Bool
getMultiEntry self
  = liftDOM ((self ^. js "multiEntry") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.unique Mozilla IDBIndex.unique documentation> 
getUnique :: (MonadDOM m) => IDBIndex -> m Bool
getUnique self = liftDOM ((self ^. js "unique") >>= valToBool)
