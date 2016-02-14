module Language.Javascript.JSaddle.DOM.Custom.Geolocation (
    module Generated
  , getCurrentPosition'
  , getCurrentPosition
) where

import Data.Maybe (fromJust)

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)

import Language.Javascript.JSaddle (postGUIAsyncJS)
import Language.Javascript.JSaddle.DOM.Types

import Language.Javascript.JSaddle.DOM.Custom.PositionError (throwPositionException)

import Language.Javascript.JSaddle.DOM.Generated.PositionCallback
       (newPositionCallback)
import Language.Javascript.JSaddle.DOM.Generated.PositionErrorCallback
       (newPositionErrorCallback)

import Language.Javascript.JSaddle.DOM.Generated.Geolocation as Generated hiding (getCurrentPosition)
import qualified
       Language.Javascript.JSaddle.DOM.Generated.Geolocation as Generated
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
