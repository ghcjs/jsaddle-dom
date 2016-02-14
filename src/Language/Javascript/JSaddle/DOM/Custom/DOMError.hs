{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE RecordWildCards #-}
module Language.Javascript.JSaddle.DOM.Custom.DOMError (
    module Generated
  , DOMErrorException(..)
  , throwDOMErrorException
) where

import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import Language.Javascript.JSaddle.DOM.Types (MonadDOM)
import Language.Javascript.JSaddle.DOM.Generated.DOMError as Generated

data DOMErrorException = DOMErrorException { domErrorName :: String } deriving (Show, Eq)

instance Exception DOMErrorException

throwDOMErrorException :: MonadDOM m => DOMError -> m a
throwDOMErrorException error = do
    domErrorName <- getName error
    liftIO $ throwIO DOMErrorException{..}
