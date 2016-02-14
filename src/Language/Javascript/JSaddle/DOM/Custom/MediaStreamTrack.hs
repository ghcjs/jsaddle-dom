module Language.Javascript.JSaddle.DOM.Custom.MediaStreamTrack (
    module Generated
  , getSources
) where

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (newEmptyMVar, takeMVar, putMVar)

import Language.Javascript.JSaddle (postGUIAsyncJS)
import Language.Javascript.JSaddle.DOM.Types
       (withCallback, SourceInfo(..), MonadDOM, MediaStreamTrackSourcesCallback(..))

import Language.Javascript.JSaddle.DOM.Generated.MediaStreamTrackSourcesCallback
       (newMediaStreamTrackSourcesCallback)

import Language.Javascript.JSaddle.DOM.Generated.MediaStreamTrack as Generated hiding (getSources)
import qualified
       Language.Javascript.JSaddle.DOM.Generated.MediaStreamTrack
       as Generated (getSources)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSources Mozilla MediaStreamTrack.getSources documentation>
getSources :: (MonadDOM m, IsMediaStreamTrack self) => self -> m [Maybe SourceInfo]
getSources self = do
    result <- liftIO newEmptyMVar
    withCallback (newMediaStreamTrackSourcesCallback (liftIO . putMVar result)) $ \callback -> do
        postGUIAsyncJS $ Generated.getSources self (Just callback)
        liftIO $ takeMVar result


