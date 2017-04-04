{-# LANGUAGE DeriveDataTypeable #-}
module JSDOM.Custom.AudioContext (
    module Generated
  , DecodeAudioError(..)
  , decodeAudioData
) where

import Prelude ()
import Prelude.Compat
import Data.Typeable (Typeable)
import Control.Exception (Exception(..), throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import JSDOM.Types

import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)
import JSDOM.Generated.AudioBufferCallback
       (newAudioBufferCallback)
import JSDOM.Generated.AudioContext as Generated hiding (decodeAudioData)
import qualified JSDOM.Generated.AudioContext
       as Generated (decodeAudioData)

data DecodeAudioError = DecodeAudioError deriving (Show, Eq, Typeable)

instance Exception DecodeAudioError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation>
decodeAudioData :: (MonadDOM m, IsAudioContext self, IsArrayBuffer audioData) =>
                   self -> audioData -> m AudioBuffer
decodeAudioData self audioData = do
    result <- liftIO newEmptyMVar
    success <- newAudioBufferCallback $ \buffer -> liftIO $ putMVar result (Just buffer)
    error <- newAudioBufferCallback . const . liftIO $ putMVar result Nothing
    Generated.decodeAudioData self audioData (Just success) (Just error)
    liftIO $ takeMVar result >>= maybe (throwIO DecodeAudioError) return
