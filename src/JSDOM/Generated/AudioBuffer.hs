{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioBuffer
       (getChannelData, getLength, getDuration, getSampleRate, setGain,
        getGain, getNumberOfChannels, AudioBuffer, castToAudioBuffer,
        gTypeAudioBuffer)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.getChannelData Mozilla AudioBuffer.getChannelData documentation> 
getChannelData ::
               (MonadDOM m) => AudioBuffer -> Word -> m (Maybe Float32Array)
getChannelData self channelIndex
  = liftDOM
      ((self ^. jsf "getChannelData" [toJSVal channelIndex]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.length Mozilla AudioBuffer.length documentation> 
getLength :: (MonadDOM m) => AudioBuffer -> m Int
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.duration Mozilla AudioBuffer.duration documentation> 
getDuration :: (MonadDOM m) => AudioBuffer -> m Float
getDuration self
  = liftDOM
      (realToFrac <$> ((self ^. js "duration") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.sampleRate Mozilla AudioBuffer.sampleRate documentation> 
getSampleRate :: (MonadDOM m) => AudioBuffer -> m Float
getSampleRate self
  = liftDOM
      (realToFrac <$> ((self ^. js "sampleRate") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
setGain :: (MonadDOM m) => AudioBuffer -> Float -> m ()
setGain self val = liftDOM (self ^. jss "gain" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
getGain :: (MonadDOM m) => AudioBuffer -> m Float
getGain self
  = liftDOM (realToFrac <$> ((self ^. js "gain") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.numberOfChannels Mozilla AudioBuffer.numberOfChannels documentation> 
getNumberOfChannels :: (MonadDOM m) => AudioBuffer -> m Word
getNumberOfChannels self
  = liftDOM
      (round <$> ((self ^. js "numberOfChannels") >>= valToNumber))
