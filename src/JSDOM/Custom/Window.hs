module JSDOM.Custom.Window (
    module Generated
  , openDatabase
) where

import Prelude ()
import Prelude.Compat
import Control.Monad.IO.Class (MonadIO(..))

import JSDOM.Types
       (withCallback, Callback(..), MonadDOM, ToJSString, Database, DatabaseCallback(..))

import JSDOM.Generated.Window as Generated hiding (openDatabase)
import qualified JSDOM.Generated.Window
       as Generated (openDatabase)
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)
import JSDOM.Generated.DatabaseCallback
       (newDatabaseCallback)
import Data.Maybe (fromJust)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation>
openDatabase :: (MonadDOM m, ToJSString name, ToJSString version, ToJSString displayName) =>
                Window -> name -> version -> displayName -> Word -> m Database
openDatabase self name version displayName estimatedSize = do
    result <- liftIO newEmptyMVar
    withCallback (newDatabaseCallback (liftIO . putMVar result)) $ \creationCallback ->
        Generated.openDatabase self name version displayName estimatedSize (Just creationCallback)
            >>= maybe (fromJust <$> liftIO (takeMVar result)) return
