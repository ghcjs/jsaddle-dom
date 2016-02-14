module Language.Javascript.JSaddle.DOM.Custom.Window (
    module Generated
  , openDatabase
) where

import Control.Monad.IO.Class (MonadIO(..))

import Language.Javascript.JSaddle.DOM.Types
       (withCallback, MonadDOM, ToJSString, Database, DatabaseCallback(..))

import Language.Javascript.JSaddle.Monad (postGUISyncJS)
import Language.Javascript.JSaddle.DOM.Generated.Window as Generated hiding (openDatabase)
import qualified Language.Javascript.JSaddle.DOM.Generated.Window
       as Generated (openDatabase)
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)
import Language.Javascript.JSaddle.DOM.Generated.DatabaseCallback
       (newDatabaseCallback)
import Data.Maybe (fromJust)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation>
openDatabase :: (MonadDOM m, ToJSString name, ToJSString version, ToJSString displayName) =>
                Window -> name -> version -> displayName -> Word -> m Database
openDatabase self name version displayName estimatedSize = do
    result <- liftIO newEmptyMVar
    withCallback (newDatabaseCallback (liftIO . putMVar result)) $ \creationCallback ->
        postGUISyncJS $ Generated.openDatabase self name version displayName estimatedSize (Just creationCallback)
            >>= maybe (fromJust <$> liftIO (takeMVar result)) return
