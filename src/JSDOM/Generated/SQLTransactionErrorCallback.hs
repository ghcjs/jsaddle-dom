{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLTransactionErrorCallback
       (newSQLTransactionErrorCallback,
        newSQLTransactionErrorCallbackSync,
        newSQLTransactionErrorCallbackAsync, SQLTransactionErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallback ::
                               (MonadDOM m) =>
                                 (SQLError -> JSM ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallback callback
  = liftDOM
      (SQLTransactionErrorCallback . Callback <$>
         function
           (\ _ _ [error] ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackSync ::
                                   (MonadDOM m) =>
                                     (SQLError -> JSM ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackSync callback
  = liftDOM
      (SQLTransactionErrorCallback . Callback <$>
         function
           (\ _ _ [error] ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackAsync ::
                                    (MonadDOM m) =>
                                      (SQLError -> JSM ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackAsync callback
  = liftDOM
      (SQLTransactionErrorCallback . Callback <$>
         asyncFunction
           (\ _ _ [error] ->
              fromJSValUnchecked error >>= \ error' -> callback error'))
