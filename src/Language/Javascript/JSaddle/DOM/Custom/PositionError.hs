{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DeriveDataTypeable #-}
module Language.Javascript.JSaddle.DOM.Custom.PositionError (
    module Generated
  , PositionErrorCode(..)
  , PositionException(..)
  , throwPositionException
) where

import Prelude ()
import Prelude.Compat
import Data.Typeable (Typeable)
import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import Language.Javascript.JSaddle.DOM.Types (MonadDOM)

import Language.Javascript.JSaddle.DOM.Generated.PositionError as Generated

data PositionErrorCode = PositionPermissionDenied | PositionUnavailable | PositionTimeout deriving (Show, Eq, Enum)
data PositionException = PositionException {
        positionErrorCode    :: PositionErrorCode,
        positionErrorMessage :: String } deriving (Show, Eq, Typeable)

instance Exception PositionException

throwPositionException :: MonadDOM m => PositionError -> m a
throwPositionException error = do
    positionErrorCode    <- (toEnum . subtract 1 . fromIntegral) <$> getCode error
    positionErrorMessage <- getMessage error
    liftIO $ throwIO (PositionException{..})

