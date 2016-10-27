{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBFactory
       (open, open_, openUnsafe, openUnchecked, deleteDatabase,
        deleteDatabase_, deleteDatabaseUnsafe, deleteDatabaseUnchecked,
        cmp, cmp_, IDBFactory(..), gTypeIDBFactory)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open ::
     (MonadDOM m, ToJSString name) =>
       IDBFactory -> name -> Word64 -> m (Maybe IDBOpenDBRequest)
open self name version
  = liftDOM
      ((self ^. jsf "open" [toJSVal name, toJSVal version]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open_ ::
      (MonadDOM m, ToJSString name) =>
        IDBFactory -> name -> Word64 -> m ()
open_ self name version
  = liftDOM
      (void (self ^. jsf "open" [toJSVal name, toJSVal version]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
openUnsafe ::
           (MonadDOM m, ToJSString name, HasCallStack) =>
             IDBFactory -> name -> Word64 -> m IDBOpenDBRequest
openUnsafe self name version
  = liftDOM
      (((self ^. jsf "open" [toJSVal name, toJSVal version]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
openUnchecked ::
              (MonadDOM m, ToJSString name) =>
                IDBFactory -> name -> Word64 -> m IDBOpenDBRequest
openUnchecked self name version
  = liftDOM
      ((self ^. jsf "open" [toJSVal name, toJSVal version]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase ::
               (MonadDOM m, ToJSString name) =>
                 IDBFactory -> name -> m (Maybe IDBOpenDBRequest)
deleteDatabase self name
  = liftDOM
      ((self ^. jsf "deleteDatabase" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase_ ::
                (MonadDOM m, ToJSString name) => IDBFactory -> name -> m ()
deleteDatabase_ self name
  = liftDOM (void (self ^. jsf "deleteDatabase" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabaseUnsafe ::
                     (MonadDOM m, ToJSString name, HasCallStack) =>
                       IDBFactory -> name -> m IDBOpenDBRequest
deleteDatabaseUnsafe self name
  = liftDOM
      (((self ^. jsf "deleteDatabase" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabaseUnchecked ::
                        (MonadDOM m, ToJSString name) =>
                          IDBFactory -> name -> m IDBOpenDBRequest
deleteDatabaseUnchecked self name
  = liftDOM
      ((self ^. jsf "deleteDatabase" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp :: (MonadDOM m) => IDBFactory -> JSVal -> JSVal -> m Int
cmp self first second
  = liftDOM
      (round <$>
         ((self ^. jsf "cmp" [toJSVal first, toJSVal second]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp_ :: (MonadDOM m) => IDBFactory -> JSVal -> JSVal -> m ()
cmp_ self first second
  = liftDOM
      (void (self ^. jsf "cmp" [toJSVal first, toJSVal second]))
