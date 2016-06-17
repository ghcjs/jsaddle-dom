{-# LANGUAGE FlexibleContexts #-}
module JSDOM.Custom.Database (
    module Generated
  , changeVersion'
  , changeVersion
  , transaction'
  , transaction
  , readTransaction'
  , readTransaction
) where

import Data.Maybe (fromJust, maybe)

import Control.Monad.IO.Class (MonadIO(..))
import Control.Exception (Exception, bracket)

import Language.Javascript.JSaddle (JSM, postGUIAsyncJS)
import JSDOM.Types
       (MonadDOM, SQLTransaction, SQLError,
        SQLTransactionCallback(..), ToJSString(..), Callback(..), withCallback,
        SQLTransactionErrorCallback(..), VoidCallback(..))

import JSDOM.Custom.SQLError (throwSQLException)
import JSDOM.Generated.SQLTransactionCallback (newSQLTransactionCallbackSync)
import JSDOM.Generated.Database as Generated hiding (changeVersion, transaction, readTransaction)
import qualified JSDOM.Generated.Database as Generated (changeVersion, transaction, readTransaction)
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)
import JSDOM.Generated.SQLTransactionErrorCallback
       (newSQLTransactionErrorCallback)
import JSDOM.Generated.VoidCallback
       (newVoidCallback)
import Data.Coerce (Coercible, coerce)
import Control.Monad.Trans.Reader (ReaderT(..), ask)

withSQLTransactionCallback :: MonadDOM m => (SQLTransaction -> JSM ()) -> (SQLTransactionCallback -> JSM a) -> m a
withSQLTransactionCallback callback = withCallback (newSQLTransactionCallbackSync (callback . fromJust))

withSQLErrorCallbacks :: MonadDOM m => (Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> JSM ()) -> m (Maybe SQLError)
withSQLErrorCallbacks f = do
    result <- liftIO newEmptyMVar
    withCallback (newSQLTransactionErrorCallback (liftIO . putMVar result)) $ \error ->
        withCallback (newVoidCallback $ liftIO $ putMVar result Nothing) $ \success -> do
            postGUIAsyncJS $ f (Just error) (Just success)
            liftIO $ takeMVar result

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.changeVersion Mozilla Database.changeVersion documentation>
changeVersion' :: (MonadDOM m, ToJSString oldVersion, ToJSString newVersion) =>
                  Database -> oldVersion -> newVersion -> Maybe (SQLTransaction -> JSM ()) -> m (Maybe SQLError)
changeVersion' self oldVersion newVersion Nothing = withSQLErrorCallbacks $ Generated.changeVersion self oldVersion newVersion Nothing
changeVersion' self oldVersion newVersion (Just callback) =
    withSQLTransactionCallback callback $ \transaction ->
        withSQLErrorCallbacks $ \e s ->
            Generated.changeVersion self oldVersion newVersion (Just transaction) e s

changeVersion :: (MonadDOM m, ToJSString oldVersion, ToJSString newVersion) =>
                 Database -> oldVersion -> newVersion -> Maybe (SQLTransaction -> JSM ()) -> m ()
changeVersion self oldVersion newVersion callback =
    changeVersion' self oldVersion newVersion callback >>= maybe (return ()) throwSQLException

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.transaction Mozilla Database.transaction documentation>
transaction' :: (MonadDOM m) => Database -> (SQLTransaction -> JSM ()) -> m (Maybe SQLError)
transaction' self callback =
    withSQLTransactionCallback callback $ \transaction ->
        withSQLErrorCallbacks $ \e s ->
            Generated.transaction self (Just transaction) e s

transaction :: (MonadDOM m) => Database -> (SQLTransaction -> JSM ()) -> m ()
transaction self callback = transaction' self callback >>= maybe (return ()) throwSQLException

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.readTransaction Mozilla Database.readTransaction documentation>
readTransaction' :: (MonadDOM m) => Database -> (SQLTransaction -> JSM ()) -> m (Maybe SQLError)
readTransaction' self callback =
    withSQLTransactionCallback callback $ \transaction ->
        withSQLErrorCallbacks $ \e s ->
            Generated.readTransaction self (Just transaction) e s

readTransaction :: (MonadDOM m) => Database -> (SQLTransaction -> JSM ()) -> m ()
readTransaction self callback = readTransaction' self callback >>= maybe (return ()) throwSQLException
