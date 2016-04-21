{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DeriveDataTypeable #-}
module Language.Javascript.JSaddle.DOM.Custom.NavigatorUserMediaError (
    module Generated
  , UserMediaException(..)
  , throwUserMediaException
) where

import Data.Typeable (Typeable)
import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import Language.Javascript.JSaddle.DOM.Types (MonadDOM)

import Language.Javascript.JSaddle.DOM.Custom.DOMError (getName)
import Language.Javascript.JSaddle.DOM.Generated.NavigatorUserMediaError as Generated

data UserMediaException = UserMediaException {
        userMediaErrorName           :: String,
        userMediaErrorConstraintName :: String } deriving (Show, Eq, Typeable)

instance Exception UserMediaException

throwUserMediaException :: MonadDOM m => NavigatorUserMediaError -> m a
throwUserMediaException error = do
    userMediaErrorName           <- getName           error
    userMediaErrorConstraintName <- getConstraintName error
    liftIO $ throwIO (UserMediaException{..})



