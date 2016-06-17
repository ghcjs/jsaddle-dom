{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DeriveDataTypeable #-}
module JSDOM.Custom.DOMError (
    module Generated
  , DOMErrorException(..)
  , throwDOMErrorException
) where

import Prelude ()
import Prelude.Compat
import Data.Typeable (Typeable)
import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import JSDOM.Types (MonadDOM)
import JSDOM.Generated.DOMError as Generated

data DOMErrorException = DOMErrorException { domErrorName :: String } deriving (Show, Eq, Typeable)

instance Exception DOMErrorException

throwDOMErrorException :: MonadDOM m => DOMError -> m a
throwDOMErrorException error = do
    domErrorName <- getName error
    liftIO $ throwIO DOMErrorException{..}
