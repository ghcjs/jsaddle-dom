{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLStatementCallback
       (newSQLStatementCallback, newSQLStatementCallbackSync,
        newSQLStatementCallbackAsync, SQLStatementCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallback ::
                        (MonadDOM m) =>
                          (SQLTransaction -> SQLResultSet -> JSM ()) ->
                            m SQLStatementCallback
newSQLStatementCallback callback
  = liftDOM
      (SQLStatementCallback . Callback <$>
         function
           (\ _ _ [transaction, resultSet] ->
              fromJSValUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallbackSync ::
                            (MonadDOM m) =>
                              (SQLTransaction -> SQLResultSet -> JSM ()) ->
                                m SQLStatementCallback
newSQLStatementCallbackSync callback
  = liftDOM
      (SQLStatementCallback . Callback <$>
         function
           (\ _ _ [transaction, resultSet] ->
              fromJSValUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallbackAsync ::
                             (MonadDOM m) =>
                               (SQLTransaction -> SQLResultSet -> JSM ()) ->
                                 m SQLStatementCallback
newSQLStatementCallbackAsync callback
  = liftDOM
      (SQLStatementCallback . Callback <$>
         function
           (\ _ _ [transaction, resultSet] ->
              fromJSValUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))
