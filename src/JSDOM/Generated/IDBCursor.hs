{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBCursor
       (update, update_, updateUnsafe, updateUnchecked, advance, continue,
        delete, delete_, deleteUnsafe, deleteUnchecked, getSource,
        getSourceUnsafe, getSourceUnchecked, getDirection, getKey,
        getPrimaryKey, IDBCursor(..), gTypeIDBCursor, IsIDBCursor,
        toIDBCursor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update ::
       (MonadDOM m, IsIDBCursor self) =>
         self -> JSVal -> m (Maybe IDBRequest)
update self value
  = liftDOM
      (((toIDBCursor self) ^. jsf "update" [toJSVal value]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update_ :: (MonadDOM m, IsIDBCursor self) => self -> JSVal -> m ()
update_ self value
  = liftDOM
      (void ((toIDBCursor self) ^. jsf "update" [toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
updateUnsafe ::
             (MonadDOM m, IsIDBCursor self, HasCallStack) =>
               self -> JSVal -> m IDBRequest
updateUnsafe self value
  = liftDOM
      ((((toIDBCursor self) ^. jsf "update" [toJSVal value]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
updateUnchecked ::
                (MonadDOM m, IsIDBCursor self) => self -> JSVal -> m IDBRequest
updateUnchecked self value
  = liftDOM
      (((toIDBCursor self) ^. jsf "update" [toJSVal value]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.advance Mozilla IDBCursor.advance documentation> 
advance :: (MonadDOM m, IsIDBCursor self) => self -> Word -> m ()
advance self count
  = liftDOM
      (void ((toIDBCursor self) ^. jsf "advance" [toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continue Mozilla IDBCursor.continue documentation> 
continue :: (MonadDOM m, IsIDBCursor self) => self -> JSVal -> m ()
continue self key
  = liftDOM
      (void ((toIDBCursor self) ^. jsf "continue" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete ::
       (MonadDOM m, IsIDBCursor self) => self -> m (Maybe IDBRequest)
delete self
  = liftDOM (((toIDBCursor self) ^. jsf "delete" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete_ :: (MonadDOM m, IsIDBCursor self) => self -> m ()
delete_ self
  = liftDOM (void ((toIDBCursor self) ^. jsf "delete" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
deleteUnsafe ::
             (MonadDOM m, IsIDBCursor self, HasCallStack) =>
               self -> m IDBRequest
deleteUnsafe self
  = liftDOM
      ((((toIDBCursor self) ^. jsf "delete" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
deleteUnchecked ::
                (MonadDOM m, IsIDBCursor self) => self -> m IDBRequest
deleteUnchecked self
  = liftDOM
      (((toIDBCursor self) ^. jsf "delete" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSource ::
          (MonadDOM m, IsIDBCursor self) => self -> m (Maybe IDBAny)
getSource self
  = liftDOM (((toIDBCursor self) ^. js "source") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSourceUnsafe ::
                (MonadDOM m, IsIDBCursor self, HasCallStack) => self -> m IDBAny
getSourceUnsafe self
  = liftDOM
      ((((toIDBCursor self) ^. js "source") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSourceUnchecked ::
                   (MonadDOM m, IsIDBCursor self) => self -> m IDBAny
getSourceUnchecked self
  = liftDOM
      (((toIDBCursor self) ^. js "source") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.direction Mozilla IDBCursor.direction documentation> 
getDirection ::
             (MonadDOM m, IsIDBCursor self, FromJSString result) =>
               self -> m result
getDirection self
  = liftDOM
      (((toIDBCursor self) ^. js "direction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.key Mozilla IDBCursor.key documentation> 
getKey :: (MonadDOM m, IsIDBCursor self) => self -> m JSVal
getKey self
  = liftDOM (((toIDBCursor self) ^. js "key") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.primaryKey Mozilla IDBCursor.primaryKey documentation> 
getPrimaryKey :: (MonadDOM m, IsIDBCursor self) => self -> m JSVal
getPrimaryKey self
  = liftDOM (((toIDBCursor self) ^. js "primaryKey") >>= toJSVal)
