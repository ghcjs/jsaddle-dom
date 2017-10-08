{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBFactory
       (open, open_, deleteDatabase, deleteDatabase_, cmp, cmp_,
        IDBFactory(..), gTypeIDBFactory)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open ::
     (MonadDOM m, ToJSString name) =>
       IDBFactory -> name -> Maybe Word64 -> m IDBOpenDBRequest
open self name version
  = liftDOM
      ((self ^. jsf "open"
          [toJSVal name,
           maybe (return jsUndefined) integralToDoubleToJSVal version])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open_ ::
      (MonadDOM m, ToJSString name) =>
        IDBFactory -> name -> Maybe Word64 -> m ()
open_ self name version
  = liftDOM
      (void
         (self ^. jsf "open"
            [toJSVal name,
             maybe (return jsUndefined) integralToDoubleToJSVal version]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase ::
               (MonadDOM m, ToJSString name) =>
                 IDBFactory -> name -> m IDBOpenDBRequest
deleteDatabase self name
  = liftDOM
      ((self ^. jsf "deleteDatabase" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase_ ::
                (MonadDOM m, ToJSString name) => IDBFactory -> name -> m ()
deleteDatabase_ self name
  = liftDOM (void (self ^. jsf "deleteDatabase" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp ::
    (MonadDOM m, ToJSVal first, ToJSVal second) =>
      IDBFactory -> first -> second -> m Int
cmp self first second
  = liftDOM
      (round <$>
         ((self ^. jsf "cmp" [toJSVal first, toJSVal second]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp_ ::
     (MonadDOM m, ToJSVal first, ToJSVal second) =>
       IDBFactory -> first -> second -> m ()
cmp_ self first second
  = liftDOM
      (void (self ^. jsf "cmp" [toJSVal first, toJSVal second]))
