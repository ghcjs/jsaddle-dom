{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBCursor
       (update, update_, advance, continue, continuePrimaryKey, delete,
        delete_, getSource, getDirection, getKey, getPrimaryKey,
        IDBCursor(..), gTypeIDBCursor, IsIDBCursor, toIDBCursor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update ::
       (MonadDOM m, IsIDBCursor self, ToJSVal value) =>
         self -> value -> m IDBRequest
update self value
  = liftDOM
      (((toIDBCursor self) ^. jsf "update" [toJSVal value]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update_ ::
        (MonadDOM m, IsIDBCursor self, ToJSVal value) =>
          self -> value -> m ()
update_ self value
  = liftDOM
      (void ((toIDBCursor self) ^. jsf "update" [toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.advance Mozilla IDBCursor.advance documentation> 
advance :: (MonadDOM m, IsIDBCursor self) => self -> Word -> m ()
advance self count
  = liftDOM
      (void ((toIDBCursor self) ^. jsf "advance" [toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continue Mozilla IDBCursor.continue documentation> 
continue ::
         (MonadDOM m, IsIDBCursor self, ToJSVal key) =>
           self -> Maybe key -> m ()
continue self key
  = liftDOM
      (void ((toIDBCursor self) ^. jsf "continue" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continuePrimaryKey Mozilla IDBCursor.continuePrimaryKey documentation> 
continuePrimaryKey ::
                   (MonadDOM m, IsIDBCursor self, ToJSVal key, ToJSVal primaryKey) =>
                     self -> key -> primaryKey -> m ()
continuePrimaryKey self key primaryKey
  = liftDOM
      (void
         ((toIDBCursor self) ^. jsf "continuePrimaryKey"
            [toJSVal key, toJSVal primaryKey]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete :: (MonadDOM m, IsIDBCursor self) => self -> m IDBRequest
delete self
  = liftDOM
      (((toIDBCursor self) ^. jsf "delete" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete_ :: (MonadDOM m, IsIDBCursor self) => self -> m ()
delete_ self
  = liftDOM (void ((toIDBCursor self) ^. jsf "delete" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSource ::
          (MonadDOM m, IsIDBCursor self) => self -> m IDBCursorSource
getSource self
  = liftDOM
      (((toIDBCursor self) ^. js "source") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.direction Mozilla IDBCursor.direction documentation> 
getDirection ::
             (MonadDOM m, IsIDBCursor self) => self -> m IDBCursorDirection
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
