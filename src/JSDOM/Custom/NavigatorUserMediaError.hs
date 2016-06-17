{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DeriveDataTypeable #-}
module JSDOM.Custom.NavigatorUserMediaError (
    module Generated
  , UserMediaException(..)
  , throwUserMediaException
) where

import Data.Typeable (Typeable)
import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import JSDOM.Types (MonadDOM)

import JSDOM.Custom.DOMError (getName)
import JSDOM.Generated.NavigatorUserMediaError as Generated

data UserMediaException = UserMediaException {
        userMediaErrorName           :: String,
        userMediaErrorConstraintName :: String } deriving (Show, Eq, Typeable)

instance Exception UserMediaException

throwUserMediaException :: MonadDOM m => NavigatorUserMediaError -> m a
throwUserMediaException error = do
    userMediaErrorName           <- getName           error
    userMediaErrorConstraintName <- getConstraintName error
    liftIO $ throwIO (UserMediaException{..})



