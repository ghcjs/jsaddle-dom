module JSDOM.Custom.MediaStreamTrack (
    module Generated
  , getSources
) where

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (newEmptyMVar, takeMVar, putMVar)

import JSDOM.Types
       (withCallback, Callback(..), SourceInfo(..), MonadDOM, MediaStreamTrackSourcesCallback(..))

import JSDOM.Generated.MediaStreamTrackSourcesCallback
       (newMediaStreamTrackSourcesCallback)

import JSDOM.Generated.MediaStreamTrack as Generated hiding (getSources)
import qualified
       JSDOM.Generated.MediaStreamTrack
       as Generated (getSources)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSources Mozilla MediaStreamTrack.getSources documentation>
getSources :: (MonadDOM m, IsMediaStreamTrack self) => self -> m [Maybe SourceInfo]
getSources self = do
    result <- liftIO newEmptyMVar
    withCallback (newMediaStreamTrackSourcesCallback (liftIO . putMVar result)) $ \callback -> do
        Generated.getSources self (Just callback)
        liftIO $ takeMVar result


