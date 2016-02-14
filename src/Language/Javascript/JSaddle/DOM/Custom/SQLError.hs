{-# LANGUAGE RecordWildCards #-}
module Language.Javascript.JSaddle.DOM.Custom.SQLError (
    module Generated
  , SQLErrorCode(..)
  , SQLException(..)
  , throwSQLException
) where

import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import Language.Javascript.JSaddle.DOM.Types (MonadDOM)

import Language.Javascript.JSaddle.DOM.Generated.SQLError as Generated

data SQLErrorCode = SQLErrorUnknown
                  | SQLErrorDatabase
                  | SQLErrorVersion
                  | SQLErrorTooLarge
                  | SQLErrorQuota
                  | SQLErrorSyntax
                  | SQLErrorConstraint
                  | SQLErrorTimeout
                  deriving (Show, Eq, Enum)
data SQLException = SQLException { sqlErrorCode :: SQLErrorCode, sqlErrorMessage :: String } deriving (Show, Eq)

instance Exception SQLException

throwSQLException :: MonadDOM m => SQLError -> m a
throwSQLException error = do
    sqlErrorCode <- (toEnum . subtract 1 . fromIntegral) <$> getCode error
    sqlErrorMessage <- getMessage error
    liftIO $ throwIO (SQLException{..})

