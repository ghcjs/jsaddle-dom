module JSDOM.Custom.Navigator (
    module Generated
  , getUserMedia
) where

import Data.Maybe (fromJust)

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)

import Language.Javascript.JSaddle (postGUIAsyncJS)
import JSDOM.Types
       (withCallback, Callback(..), MediaStream(..), NavigatorUserMediaError(..),
        Dictionary(..), MonadDOM, NavigatorUserMediaSuccessCallback(..),
        NavigatorUserMediaErrorCallback(..))

import JSDOM.Custom.NavigatorUserMediaError (throwUserMediaException)

import JSDOM.Generated.NavigatorUserMediaSuccessCallback
       (newNavigatorUserMediaSuccessCallback)
import JSDOM.Generated.NavigatorUserMediaErrorCallback
       (newNavigatorUserMediaErrorCallback)

import JSDOM.Generated.Navigator as Generated hiding (getUserMedia)
import qualified JSDOM.Generated.Navigator
       as Generated (webkitGetUserMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitGetUserMedia Mozilla Navigator.webkitGetUserMedia documentation>
getUserMedia' :: MonadDOM m => Navigator -> Maybe Dictionary -> m (Either NavigatorUserMediaError MediaStream)
getUserMedia' self options = do
    result <- liftIO newEmptyMVar
    withCallback (newNavigatorUserMediaSuccessCallback (liftIO . putMVar result . Right . fromJust)) $ \success ->
        withCallback (newNavigatorUserMediaErrorCallback (liftIO . putMVar result . Left . fromJust)) $ \error -> do
            postGUIAsyncJS $ Generated.webkitGetUserMedia self options (Just success) (Just error)
            liftIO $ takeMVar result

getUserMedia :: MonadDOM m => Navigator -> Maybe Dictionary -> m MediaStream
getUserMedia self options = getUserMedia' self options >>= either throwUserMediaException return
