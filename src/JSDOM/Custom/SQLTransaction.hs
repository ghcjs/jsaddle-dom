module JSDOM.Custom.SQLTransaction (
    module Generated
  , executeSql'
  , executeSql
  , executeSql_
) where

import Data.Maybe (fromJust)

import Control.Monad (void)
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)
import Control.Monad.IO.Class (MonadIO(..))

import JSDOM.Types
       (withCallback, Callback(..), SQLResultSet(..), SQLError(..), IsObjectArray,
        MonadDOM, ToJSString, SQLStatementCallback(..),
        SQLStatementErrorCallback(..), IsSQLValue)

import JSDOM.Custom.SQLError (throwSQLException)

import JSDOM.Generated.SQLStatementCallback
       (newSQLStatementCallback)
import JSDOM.Generated.SQLStatementErrorCallback
       (newSQLStatementErrorCallback)

import JSDOM.Generated.SQLTransaction as Generated hiding (executeSql)
import qualified
       JSDOM.Generated.SQLTransaction
       as Generated (executeSql)

executeSql' :: (MonadDOM m, ToJSString sqlStatement, IsSQLValue arguments) =>
              SQLTransaction -> sqlStatement -> [arguments] -> m (Either SQLError SQLResultSet)
executeSql' self sqlStatement arguments = do
    result <- liftIO newEmptyMVar
    withCallback (newSQLStatementCallback (\tx rs -> liftIO . putMVar result $ Right rs)) $ \success ->
        withCallback (newSQLStatementErrorCallback (\tx e -> liftIO . putMVar result $ Left e)) $ \error -> do
            Generated.executeSql self sqlStatement arguments (Just success) (Just error)
            liftIO $ takeMVar result

executeSql :: (MonadDOM m, ToJSString sqlStatement, IsSQLValue arguments) =>
              SQLTransaction -> sqlStatement -> [arguments] -> m SQLResultSet
executeSql self sqlStatement arguments = executeSql' self sqlStatement arguments >>= either throwSQLException return

executeSql_ :: (MonadDOM m, ToJSString sqlStatement, IsSQLValue arguments) =>
              SQLTransaction -> sqlStatement -> [arguments] -> m ()
executeSql_ self sqlStatement arguments = void $ executeSql self sqlStatement arguments
