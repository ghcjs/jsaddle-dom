module JSDOM.Custom.Geolocation (
    module Generated
  , getCurrentPosition'
  , getCurrentPosition
) where

import Data.Maybe (fromJust)

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)

import Language.Javascript.JSaddle (postGUIAsyncJS)
import JSDOM.Types

import JSDOM.Custom.PositionError (throwPositionException)

import JSDOM.Generated.PositionCallback
       (newPositionCallback)
import JSDOM.Generated.PositionErrorCallback
       (newPositionErrorCallback)

import JSDOM.Generated.Geolocation as Generated hiding (getCurrentPosition)
import qualified
       JSDOM.Generated.Geolocation as Generated
       (getCurrentPosition)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation>
getCurrentPosition' :: MonadDOM m => Geolocation -> Maybe PositionOptions -> m (Either PositionError Geoposition)
getCurrentPosition' self options = do
    result <- liftIO newEmptyMVar
    withCallback (newPositionCallback (liftIO . putMVar result . Right . fromJust)) $ \success ->
        withCallback (newPositionErrorCallback (liftIO . putMVar result . Left . fromJust)) $ \error -> do
            postGUIAsyncJS $ Generated.getCurrentPosition self (Just success) (Just error) options
            liftIO $ takeMVar result

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation>
getCurrentPosition :: MonadDOM m => Geolocation -> Maybe PositionOptions -> m Geoposition
getCurrentPosition self options =
    getCurrentPosition' self options >>= either throwPositionException return
