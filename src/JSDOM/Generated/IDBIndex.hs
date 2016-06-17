{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.IDBIndex
       (openCursorRange, openCursor, openKeyCursorRange, openKeyCursor,
        getRange, get, getKeyRange, getKey, countRange, count, getName,
        getObjectStore, getKeyPath, getMultiEntry, getUnique, IDBIndex,
        castToIDBIndex, gTypeIDBIndex)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange ::
                (MonadDOM m, ToJSString direction) =>
                  IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor ::
           (MonadDOM m, ToJSString direction) =>
             IDBIndex -> JSVal -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadDOM m, ToJSString direction) =>
                     IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openKeyCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor ::
              (MonadDOM m, ToJSString direction) =>
                IDBIndex -> JSVal -> direction -> m (Maybe IDBRequest)
openKeyCursor self key direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange ::
         (MonadDOM m) =>
           IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get :: (MonadDOM m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
get self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange ::
            (MonadDOM m) =>
              IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getKeyRange self key
  = liftDOM ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey :: (MonadDOM m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
getKey self key
  = liftDOM ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange ::
           (MonadDOM m) =>
             IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
countRange self range
  = liftDOM ((self ^. jsf "count" [toJSVal range]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count :: (MonadDOM m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
count self key
  = liftDOM ((self ^. jsf "count" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => IDBIndex -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStore ::
               (MonadDOM m) => IDBIndex -> m (Maybe IDBObjectStore)
getObjectStore self
  = liftDOM ((self ^. js "objectStore") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPath :: (MonadDOM m) => IDBIndex -> m (Maybe IDBAny)
getKeyPath self = liftDOM ((self ^. js "keyPath") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.multiEntry Mozilla IDBIndex.multiEntry documentation> 
getMultiEntry :: (MonadDOM m) => IDBIndex -> m Bool
getMultiEntry self
  = liftDOM ((self ^. js "multiEntry") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.unique Mozilla IDBIndex.unique documentation> 
getUnique :: (MonadDOM m) => IDBIndex -> m Bool
getUnique self = liftDOM ((self ^. js "unique") >>= valToBool)
