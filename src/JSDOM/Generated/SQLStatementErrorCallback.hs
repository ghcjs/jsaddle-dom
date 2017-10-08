{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLStatementErrorCallback
       (newSQLStatementErrorCallback, newSQLStatementErrorCallbackSync,
        newSQLStatementErrorCallbackAsync, SQLStatementErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallback ::
                             (MonadDOM m) =>
                               (SQLTransaction -> SQLError -> JSM ()) ->
                                 m SQLStatementErrorCallback
newSQLStatementErrorCallback callback
  = liftDOM
      (SQLStatementErrorCallback . Callback <$>
         function
           (\ _ _ [transaction, error] ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackSync ::
                                 (MonadDOM m) =>
                                   (SQLTransaction -> SQLError -> JSM ()) ->
                                     m SQLStatementErrorCallback
newSQLStatementErrorCallbackSync callback
  = liftDOM
      (SQLStatementErrorCallback . Callback <$>
         function
           (\ _ _ [transaction, error] ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackAsync ::
                                  (MonadDOM m) =>
                                    (SQLTransaction -> SQLError -> JSM ()) ->
                                      m SQLStatementErrorCallback
newSQLStatementErrorCallbackAsync callback
  = liftDOM
      (SQLStatementErrorCallback . Callback <$>
         asyncFunction
           (\ _ _ [transaction, error] ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))
