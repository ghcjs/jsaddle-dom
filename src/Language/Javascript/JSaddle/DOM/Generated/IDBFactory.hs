{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.IDBFactory
       (open, deleteDatabase, cmp, IDBFactory, castToIDBFactory,
        gTypeIDBFactory)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open ::
     (MonadDOM m, ToJSString name) =>
       IDBFactory -> name -> Word64 -> m (Maybe IDBOpenDBRequest)
open self name version
  = liftDOM
      ((self ^. jsf "open" [toJSVal name, toJSVal version]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase ::
               (MonadDOM m, ToJSString name) =>
                 IDBFactory -> name -> m (Maybe IDBOpenDBRequest)
deleteDatabase self name
  = liftDOM
      ((self ^. jsf "deleteDatabase" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp :: (MonadDOM m) => IDBFactory -> JSVal -> JSVal -> m Int
cmp self first second
  = liftDOM
      (round <$>
         ((self ^. jsf "cmp" [toJSVal first, toJSVal second]) >>=
            valToNumber))