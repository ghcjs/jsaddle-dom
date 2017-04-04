module JSDOM.Custom.Navigator (
    module Generated
  , getUserMedia
) where

import Data.Maybe (fromJust)

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)

import JSDOM.Types
       (withCallback, Callback(..), MediaStream(..), NavigatorUserMediaError(..),
        MediaStreamConstraints(..), MonadDOM, NavigatorUserMediaSuccessCallback(..),
        NavigatorUserMediaErrorCallback(..))

import JSDOM.Custom.NavigatorUserMediaError (throwUserMediaException)

import JSDOM.Generated.NavigatorUserMediaSuccessCallback
       (newNavigatorUserMediaSuccessCallback)
import JSDOM.Generated.NavigatorUserMediaErrorCallback
       (newNavigatorUserMediaErrorCallback)

import JSDOM.Generated.Navigator as Generated hiding (getUserMedia)
import qualified JSDOM.Generated.Navigator
       as Generated (getUserMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitGetUserMedia Mozilla Navigator.webkitGetUserMedia documentation>
getUserMedia' :: MonadDOM m => Navigator -> MediaStreamConstraints -> m (Either NavigatorUserMediaError MediaStream)
getUserMedia' self constraints = do
    result <- liftIO newEmptyMVar
    withCallback (newNavigatorUserMediaSuccessCallback (liftIO . putMVar result . Right)) $ \success ->
        withCallback (newNavigatorUserMediaErrorCallback (liftIO . putMVar result . Left)) $ \error -> do
            Generated.getUserMedia self constraints success error
            liftIO $ takeMVar result

getUserMedia :: MonadDOM m => Navigator -> MediaStreamConstraints -> m MediaStream
getUserMedia self constraints = getUserMedia' self constraints >>= either throwUserMediaException return
