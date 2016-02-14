{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.IDBCursor
       (update, advance, continue, delete, getSource, getDirection,
        getKey, getPrimaryKey, IDBCursor, castToIDBCursor, gTypeIDBCursor,
        IsIDBCursor, toIDBCursor)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update ::
       (MonadDOM m, IsIDBCursor self) =>
         self -> JSVal -> m (Maybe IDBRequest)
update self value
  = liftDOM
      (((toIDBCursor self) ^. jsf "update" [toJSVal value]) >>=
         fromJSVal)

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
  = liftDOM (((toIDBCursor self) ^. js "delete") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSource ::
          (MonadDOM m, IsIDBCursor self) => self -> m (Maybe IDBAny)
getSource self
  = liftDOM (((toIDBCursor self) ^. js "source") >>= fromJSVal)

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