{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBIndex
       (openCursorRange, openCursorRange_, openCursorRangeUnsafe,
        openCursorRangeUnchecked, openCursor, openCursor_,
        openCursorUnsafe, openCursorUnchecked, openKeyCursorRange,
        openKeyCursorRange_, openKeyCursorRangeUnsafe,
        openKeyCursorRangeUnchecked, openKeyCursor, openKeyCursor_,
        openKeyCursorUnsafe, openKeyCursorUnchecked, getRange, getRange_,
        getRangeUnsafe, getRangeUnchecked, get, get_, getUnsafe,
        getUnchecked, getKeyRange, getKeyRange_, getKeyRangeUnsafe,
        getKeyRangeUnchecked, getKey, getKey_, getKeyUnsafe,
        getKeyUnchecked, countRange, countRange_, countRangeUnsafe,
        countRangeUnchecked, count, count_, countUnsafe, countUnchecked,
        getName, getObjectStore, getObjectStoreUnchecked, getKeyPath,
        getKeyPathUnchecked, getMultiEntry, getUnique, IDBIndex(..),
        gTypeIDBIndex)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange ::
                (MonadDOM m, ToJSString direction) =>
                  IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange_ ::
                 (MonadDOM m, ToJSString direction) =>
                   IDBIndex -> Maybe IDBKeyRange -> direction -> m ()
openCursorRange_ self range direction
  = liftDOM
      (void
         (self ^. jsf "openCursor" [toJSVal range, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRangeUnsafe ::
                      (MonadDOM m, ToJSString direction, HasCallStack) =>
                        IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openCursorRangeUnsafe self range direction
  = liftDOM
      (((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRangeUnchecked ::
                         (MonadDOM m, ToJSString direction) =>
                           IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openCursorRangeUnchecked self range direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal range, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor ::
           (MonadDOM m, ToJSString direction) =>
             IDBIndex -> JSVal -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor_ ::
            (MonadDOM m, ToJSString direction) =>
              IDBIndex -> JSVal -> direction -> m ()
openCursor_ self key direction
  = liftDOM
      (void (self ^. jsf "openCursor" [toJSVal key, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorUnsafe ::
                 (MonadDOM m, ToJSString direction, HasCallStack) =>
                   IDBIndex -> JSVal -> direction -> m IDBRequest
openCursorUnsafe self key direction
  = liftDOM
      (((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorUnchecked ::
                    (MonadDOM m, ToJSString direction) =>
                      IDBIndex -> JSVal -> direction -> m IDBRequest
openCursorUnchecked self key direction
  = liftDOM
      ((self ^. jsf "openCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadDOM m, ToJSString direction) =>
                     IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openKeyCursorRange self range direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange_ ::
                    (MonadDOM m, ToJSString direction) =>
                      IDBIndex -> Maybe IDBKeyRange -> direction -> m ()
openKeyCursorRange_ self range direction
  = liftDOM
      (void
         (self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRangeUnsafe ::
                         (MonadDOM m, ToJSString direction, HasCallStack) =>
                           IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openKeyCursorRangeUnsafe self range direction
  = liftDOM
      (((self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRangeUnchecked ::
                            (MonadDOM m, ToJSString direction) =>
                              IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openKeyCursorRangeUnchecked self range direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal range, toJSVal direction])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor ::
              (MonadDOM m, ToJSString direction) =>
                IDBIndex -> JSVal -> direction -> m (Maybe IDBRequest)
openKeyCursor self key direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor_ ::
               (MonadDOM m, ToJSString direction) =>
                 IDBIndex -> JSVal -> direction -> m ()
openKeyCursor_ self key direction
  = liftDOM
      (void
         (self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorUnsafe ::
                    (MonadDOM m, ToJSString direction, HasCallStack) =>
                      IDBIndex -> JSVal -> direction -> m IDBRequest
openKeyCursorUnsafe self key direction
  = liftDOM
      (((self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorUnchecked ::
                       (MonadDOM m, ToJSString direction) =>
                         IDBIndex -> JSVal -> direction -> m IDBRequest
openKeyCursorUnchecked self key direction
  = liftDOM
      ((self ^. jsf "openKeyCursor" [toJSVal key, toJSVal direction]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange ::
         (MonadDOM m) =>
           IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange_ :: (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRangeUnsafe ::
               (MonadDOM m, HasCallStack) =>
                 IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getRangeUnsafe self key
  = liftDOM
      (((self ^. jsf "get" [toJSVal key]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRangeUnchecked ::
                  (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getRangeUnchecked self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get :: (MonadDOM m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
get self key
  = liftDOM ((self ^. jsf "get" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get_ :: (MonadDOM m) => IDBIndex -> JSVal -> m ()
get_ self key = liftDOM (void (self ^. jsf "get" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getUnsafe ::
          (MonadDOM m, HasCallStack) => IDBIndex -> JSVal -> m IDBRequest
getUnsafe self key
  = liftDOM
      (((self ^. jsf "get" [toJSVal key]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getUnchecked :: (MonadDOM m) => IDBIndex -> JSVal -> m IDBRequest
getUnchecked self key
  = liftDOM
      ((self ^. jsf "get" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange ::
            (MonadDOM m) =>
              IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getKeyRange self key
  = liftDOM ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange_ ::
             (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getKeyRange_ self key
  = liftDOM (void (self ^. jsf "getKey" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRangeUnsafe ::
                  (MonadDOM m, HasCallStack) =>
                    IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getKeyRangeUnsafe self key
  = liftDOM
      (((self ^. jsf "getKey" [toJSVal key]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRangeUnchecked ::
                     (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getKeyRangeUnchecked self key
  = liftDOM
      ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey :: (MonadDOM m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
getKey self key
  = liftDOM ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey_ :: (MonadDOM m) => IDBIndex -> JSVal -> m ()
getKey_ self key
  = liftDOM (void (self ^. jsf "getKey" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyUnsafe ::
             (MonadDOM m, HasCallStack) => IDBIndex -> JSVal -> m IDBRequest
getKeyUnsafe self key
  = liftDOM
      (((self ^. jsf "getKey" [toJSVal key]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyUnchecked ::
                (MonadDOM m) => IDBIndex -> JSVal -> m IDBRequest
getKeyUnchecked self key
  = liftDOM
      ((self ^. jsf "getKey" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange ::
           (MonadDOM m) =>
             IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
countRange self range
  = liftDOM ((self ^. jsf "count" [toJSVal range]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange_ ::
            (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftDOM (void (self ^. jsf "count" [toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRangeUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
countRangeUnsafe self range
  = liftDOM
      (((self ^. jsf "count" [toJSVal range]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRangeUnchecked ::
                    (MonadDOM m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
countRangeUnchecked self range
  = liftDOM
      ((self ^. jsf "count" [toJSVal range]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count :: (MonadDOM m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
count self key
  = liftDOM ((self ^. jsf "count" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count_ :: (MonadDOM m) => IDBIndex -> JSVal -> m ()
count_ self key
  = liftDOM (void (self ^. jsf "count" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countUnsafe ::
            (MonadDOM m, HasCallStack) => IDBIndex -> JSVal -> m IDBRequest
countUnsafe self key
  = liftDOM
      (((self ^. jsf "count" [toJSVal key]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countUnchecked :: (MonadDOM m) => IDBIndex -> JSVal -> m IDBRequest
countUnchecked self key
  = liftDOM
      ((self ^. jsf "count" [toJSVal key]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => IDBIndex -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStore ::
               (MonadDOM m) => IDBIndex -> m (Maybe IDBObjectStore)
getObjectStore self
  = liftDOM ((self ^. js "objectStore") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStoreUnchecked ::
                        (MonadDOM m) => IDBIndex -> m IDBObjectStore
getObjectStoreUnchecked self
  = liftDOM ((self ^. js "objectStore") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPath :: (MonadDOM m) => IDBIndex -> m (Maybe IDBAny)
getKeyPath self = liftDOM ((self ^. js "keyPath") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPathUnchecked :: (MonadDOM m) => IDBIndex -> m IDBAny
getKeyPathUnchecked self
  = liftDOM ((self ^. js "keyPath") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.multiEntry Mozilla IDBIndex.multiEntry documentation> 
getMultiEntry :: (MonadDOM m) => IDBIndex -> m Bool
getMultiEntry self
  = liftDOM ((self ^. js "multiEntry") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.unique Mozilla IDBIndex.unique documentation> 
getUnique :: (MonadDOM m) => IDBIndex -> m Bool
getUnique self = liftDOM ((self ^. js "unique") >>= valToBool)
