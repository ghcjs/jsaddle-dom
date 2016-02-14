module Language.Javascript.JSaddle.DOM.Custom.AudioContext (
    module Generated
  , DecodeAudioError(..)
  , decodeAudioData
) where

import Control.Exception (Exception(..), throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import Language.Javascript.JSaddle.DOM.Types

import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)
import Language.Javascript.JSaddle.DOM.Generated.AudioBufferCallback
       (newAudioBufferCallback)
import Language.Javascript.JSaddle.DOM.Generated.AudioContext as Generated hiding (decodeAudioData)
import qualified Language.Javascript.JSaddle.DOM.Generated.AudioContext
       as Generated (decodeAudioData)

data DecodeAudioError = DecodeAudioError deriving (Show, Eq)

instance Exception DecodeAudioError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation>
decodeAudioData :: (MonadDOM m, IsAudioContext self, IsArrayBuffer audioData) =>
                   self -> audioData -> m AudioBuffer
decodeAudioData self audioData = do
    result <- liftIO newEmptyMVar
    success <- newAudioBufferCallback $ \buffer -> liftIO $ putMVar result buffer
    error <- newAudioBufferCallback . const . liftIO $ putMVar result Nothing
    Generated.decodeAudioData self (Just audioData) (Just success) (Just error)
    liftIO $ takeMVar result >>= maybe (throwIO DecodeAudioError) return
