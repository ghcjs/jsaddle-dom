{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLTransaction
       (executeSql, SQLTransaction(..), gTypeSQLTransaction) where
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransaction.executeSql Mozilla SQLTransaction.executeSql documentation> 
executeSql ::
           (MonadDOM m, ToJSString sqlStatement, IsSQLValue arguments) =>
             SQLTransaction ->
               sqlStatement ->
                 [arguments] ->
                   Maybe SQLStatementCallback ->
                     Maybe SQLStatementErrorCallback -> m ()
executeSql self sqlStatement arguments callback errorCallback
  = liftDOM
      (void
         (self ^. jsf "executeSql"
            [toJSVal sqlStatement, toJSVal (array (mapM toJSVal arguments)),
             toJSVal callback, toJSVal errorCallback]))
