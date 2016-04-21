module Language.Javascript.JSaddle.DOM.Custom.Navigator (
    module Generated
  , getUserMedia
) where

import Data.Maybe (fromJust)

import Control.Monad.IO.Class (MonadIO(..))
import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)

import Language.Javascript.JSaddle (postGUIAsyncJS)
import Language.Javascript.JSaddle.DOM.Types
       (withCallback, Callback(..), MediaStream(..), NavigatorUserMediaError(..),
        Dictionary(..), MonadDOM, NavigatorUserMediaSuccessCallback(..),
        NavigatorUserMediaErrorCallback(..))

import Language.Javascript.JSaddle.DOM.Custom.NavigatorUserMediaError (throwUserMediaException)

import Language.Javascript.JSaddle.DOM.Generated.NavigatorUserMediaSuccessCallback
       (newNavigatorUserMediaSuccessCallback)
import Language.Javascript.JSaddle.DOM.Generated.NavigatorUserMediaErrorCallback
       (newNavigatorUserMediaErrorCallback)

import Language.Javascript.JSaddle.DOM.Generated.Navigator as Generated hiding (getUserMedia)
import qualified Language.Javascript.JSaddle.DOM.Generated.Navigator
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
