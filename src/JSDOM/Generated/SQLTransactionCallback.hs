{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLTransactionCallback
       (newSQLTransactionCallback, newSQLTransactionCallbackSync,
        newSQLTransactionCallbackAsync, SQLTransactionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallback ::
                          (MonadDOM m) =>
                            (SQLTransaction -> JSM ()) -> m SQLTransactionCallback
newSQLTransactionCallback callback
  = liftDOM
      (SQLTransactionCallback . Callback <$>
         function
           (\ _ _ [transaction] ->
              fromJSValUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackSync ::
                              (MonadDOM m) =>
                                (SQLTransaction -> JSM ()) -> m SQLTransactionCallback
newSQLTransactionCallbackSync callback
  = liftDOM
      (SQLTransactionCallback . Callback <$>
         function
           (\ _ _ [transaction] ->
              fromJSValUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackAsync ::
                               (MonadDOM m) =>
                                 (SQLTransaction -> JSM ()) -> m SQLTransactionCallback
newSQLTransactionCallbackAsync callback
  = liftDOM
      (SQLTransactionCallback . Callback <$>
         function
           (\ _ _ [transaction] ->
              fromJSValUnchecked transaction >>=
                \ transaction' -> callback transaction'))
