{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SQLStatementErrorCallback
       (newSQLStatementErrorCallback, newSQLStatementErrorCallbackSync,
        newSQLStatementErrorCallbackAsync, SQLStatementErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallback ::
                             (MonadDOM m) =>
                               (Maybe SQLTransaction -> Maybe SQLError -> JSM ()) ->
                                 m SQLStatementErrorCallback
newSQLStatementErrorCallback callback
  = liftDOM
      (SQLStatementErrorCallback . Callback <$>
         function ""
           (\ _ _ [transaction, error] ->
              fromJSVal error >>=
                \ error' ->
                  fromJSVal transaction >>= \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackSync ::
                                 (MonadDOM m) =>
                                   (Maybe SQLTransaction -> Maybe SQLError -> JSM ()) ->
                                     m SQLStatementErrorCallback
newSQLStatementErrorCallbackSync callback
  = liftDOM
      (SQLStatementErrorCallback . Callback <$>
         function ""
           (\ _ _ [transaction, error] ->
              fromJSVal error >>=
                \ error' ->
                  fromJSVal transaction >>= \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackAsync ::
                                  (MonadDOM m) =>
                                    (Maybe SQLTransaction -> Maybe SQLError -> JSM ()) ->
                                      m SQLStatementErrorCallback
newSQLStatementErrorCallbackAsync callback
  = liftDOM
      (SQLStatementErrorCallback . Callback <$>
         function ""
           (\ _ _ [transaction, error] ->
              fromJSVal error >>=
                \ error' ->
                  fromJSVal transaction >>= \ transaction' -> callback transaction'
                    error'))