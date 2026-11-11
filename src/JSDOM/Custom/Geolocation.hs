module JSDOM.Custom.Geolocation (
    module Generated
  , getCurrentPosition'
  , getCurrentPosition
) where

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)

import JSDOM.Types

import JSDOM.Custom.GeolocationPositionError (throwPositionException)

import JSDOM.Generated.PositionCallback
       (newPositionCallback)
import JSDOM.Generated.PositionErrorCallback
       (newPositionErrorCallback)

import JSDOM.Generated.Geolocation as Generated hiding (getCurrentPosition)
import qualified
       JSDOM.Generated.Geolocation as Generated
       (getCurrentPosition)

-- | Blocking version of
-- <https://developer.mozilla.org/docs/Web/API/Geolocation/getCurrentPosition Geolocation.getCurrentPosition>.
getCurrentPosition' :: MonadDOM m => Geolocation -> Maybe PositionOptions -> m (Either GeolocationPositionError GeolocationPosition)
getCurrentPosition' self options = do
    result <- liftIO newEmptyMVar
    withCallback (newPositionCallback (liftIO . putMVar result . Right)) $ \success ->
        withCallback (newPositionErrorCallback (liftIO . putMVar result . Left)) $ \error -> do
            Generated.getCurrentPosition self success (Just error) options
            liftIO $ takeMVar result

-- | Like 'getCurrentPosition'' but throws 'PositionException' on error.
getCurrentPosition :: MonadDOM m => Geolocation -> Maybe PositionOptions -> m GeolocationPosition
getCurrentPosition self options =
    getCurrentPosition' self options >>= either throwPositionException return
