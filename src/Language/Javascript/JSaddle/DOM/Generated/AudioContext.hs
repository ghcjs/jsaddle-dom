{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.AudioContext
       (newAudioContext, createBuffer, createBufferFromArrayBuffer,
        decodeAudioData, createBufferSource, createMediaElementSource,
        createMediaStreamSource, createMediaStreamDestination, createGain,
        createDelay, createBiquadFilter, createWaveShaper, createPanner,
        createConvolver, createDynamicsCompressor, createAnalyser,
        createScriptProcessor, createOscillator, createPeriodicWave,
        createChannelSplitter, createChannelMerger, startRendering,
        createGainNode, createDelayNode, createJavaScriptNode,
        getDestination, getCurrentTime, getSampleRate, getListener,
        getActiveSourceCount, complete, AudioContext, castToAudioContext,
        gTypeAudioContext, IsAudioContext, toAudioContext)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation> 
newAudioContext :: (MonadDOM m) => m AudioContext
newAudioContext
  = liftDOM (AudioContext <$> new (jsg "AudioContext") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBuffer ::
             (MonadDOM m, IsAudioContext self) =>
               self -> Word -> Word -> Float -> m (Maybe AudioBuffer)
createBuffer self numberOfChannels numberOfFrames sampleRate
  = liftDOM
      (((toAudioContext self) ^. jsf "createBuffer"
          [toJSVal numberOfChannels, toJSVal numberOfFrames,
           toJSVal sampleRate])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer ::
                            (MonadDOM m, IsAudioContext self, IsArrayBuffer buffer) =>
                              self -> Maybe buffer -> Bool -> m (Maybe AudioBuffer)
createBufferFromArrayBuffer self buffer mixToMono
  = liftDOM
      (((toAudioContext self) ^. jsf "createBuffer"
          [toJSVal buffer, toJSVal mixToMono])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation> 
decodeAudioData ::
                (MonadDOM m, IsAudioContext self, IsArrayBuffer audioData) =>
                  self ->
                    Maybe audioData ->
                      Maybe AudioBufferCallback -> Maybe AudioBufferCallback -> m ()
decodeAudioData self audioData successCallback errorCallback
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "decodeAudioData"
            [toJSVal audioData, toJSVal successCallback,
             toJSVal errorCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource ::
                   (MonadDOM m, IsAudioContext self) =>
                     self -> m (Maybe AudioBufferSourceNode)
createBufferSource self
  = liftDOM
      (((toAudioContext self) ^. js "createBufferSource") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource ::
                         (MonadDOM m, IsAudioContext self,
                          IsHTMLMediaElement mediaElement) =>
                           self -> Maybe mediaElement -> m (Maybe MediaElementAudioSourceNode)
createMediaElementSource self mediaElement
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaElementSource"
          [toJSVal mediaElement])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource ::
                        (MonadDOM m, IsAudioContext self) =>
                          self -> Maybe MediaStream -> m (Maybe MediaStreamAudioSourceNode)
createMediaStreamSource self mediaStream
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaStreamSource"
          [toJSVal mediaStream])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination ::
                             (MonadDOM m, IsAudioContext self) =>
                               self -> m (Maybe MediaStreamAudioDestinationNode)
createMediaStreamDestination self
  = liftDOM
      (((toAudioContext self) ^. js "createMediaStreamDestination") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain ::
           (MonadDOM m, IsAudioContext self) => self -> m (Maybe GainNode)
createGain self
  = liftDOM
      (((toAudioContext self) ^. js "createGain") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay ::
            (MonadDOM m, IsAudioContext self) =>
              self -> Double -> m (Maybe DelayNode)
createDelay self maxDelayTime
  = liftDOM
      (((toAudioContext self) ^. jsf "createDelay"
          [toJSVal maxDelayTime])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter ::
                   (MonadDOM m, IsAudioContext self) =>
                     self -> m (Maybe BiquadFilterNode)
createBiquadFilter self
  = liftDOM
      (((toAudioContext self) ^. js "createBiquadFilter") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper ::
                 (MonadDOM m, IsAudioContext self) =>
                   self -> m (Maybe WaveShaperNode)
createWaveShaper self
  = liftDOM
      (((toAudioContext self) ^. js "createWaveShaper") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner ::
             (MonadDOM m, IsAudioContext self) => self -> m (Maybe PannerNode)
createPanner self
  = liftDOM
      (((toAudioContext self) ^. js "createPanner") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver ::
                (MonadDOM m, IsAudioContext self) =>
                  self -> m (Maybe ConvolverNode)
createConvolver self
  = liftDOM
      (((toAudioContext self) ^. js "createConvolver") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor ::
                         (MonadDOM m, IsAudioContext self) =>
                           self -> m (Maybe DynamicsCompressorNode)
createDynamicsCompressor self
  = liftDOM
      (((toAudioContext self) ^. js "createDynamicsCompressor") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser ::
               (MonadDOM m, IsAudioContext self) => self -> m (Maybe AnalyserNode)
createAnalyser self
  = liftDOM
      (((toAudioContext self) ^. js "createAnalyser") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor ::
                      (MonadDOM m, IsAudioContext self) =>
                        self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
createScriptProcessor self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      (((toAudioContext self) ^. jsf "createScriptProcessor"
          [toJSVal bufferSize, toJSVal numberOfInputChannels,
           toJSVal numberOfOutputChannels])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator ::
                 (MonadDOM m, IsAudioContext self) =>
                   self -> m (Maybe OscillatorNode)
createOscillator self
  = liftDOM
      (((toAudioContext self) ^. js "createOscillator") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave ::
                   (MonadDOM m, IsAudioContext self, IsFloat32Array real,
                    IsFloat32Array imag) =>
                     self -> Maybe real -> Maybe imag -> m (Maybe PeriodicWave)
createPeriodicWave self real imag
  = liftDOM
      (((toAudioContext self) ^. jsf "createPeriodicWave"
          [toJSVal real, toJSVal imag])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter ::
                      (MonadDOM m, IsAudioContext self) =>
                        self -> Word -> m (Maybe ChannelSplitterNode)
createChannelSplitter self numberOfOutputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelSplitter"
          [toJSVal numberOfOutputs])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger ::
                    (MonadDOM m, IsAudioContext self) =>
                      self -> Word -> m (Maybe ChannelMergerNode)
createChannelMerger self numberOfInputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelMerger"
          [toJSVal numberOfInputs])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.startRendering Mozilla AudioContext.startRendering documentation> 
startRendering :: (MonadDOM m, IsAudioContext self) => self -> m ()
startRendering self
  = liftDOM (void ((toAudioContext self) ^. js "startRendering"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNode ::
               (MonadDOM m, IsAudioContext self) => self -> m (Maybe GainNode)
createGainNode self
  = liftDOM
      (((toAudioContext self) ^. js "createGainNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNode ::
                (MonadDOM m, IsAudioContext self) =>
                  self -> Double -> m (Maybe DelayNode)
createDelayNode self maxDelayTime
  = liftDOM
      (((toAudioContext self) ^. jsf "createDelayNode"
          [toJSVal maxDelayTime])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNode ::
                     (MonadDOM m, IsAudioContext self) =>
                       self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
createJavaScriptNode self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      (((toAudioContext self) ^. jsf "createJavaScriptNode"
          [toJSVal bufferSize, toJSVal numberOfInputChannels,
           toJSVal numberOfOutputChannels])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestination ::
               (MonadDOM m, IsAudioContext self) =>
                 self -> m (Maybe AudioDestinationNode)
getDestination self
  = liftDOM
      (((toAudioContext self) ^. js "destination") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.currentTime Mozilla AudioContext.currentTime documentation> 
getCurrentTime ::
               (MonadDOM m, IsAudioContext self) => self -> m Double
getCurrentTime self
  = liftDOM
      (((toAudioContext self) ^. js "currentTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.sampleRate Mozilla AudioContext.sampleRate documentation> 
getSampleRate ::
              (MonadDOM m, IsAudioContext self) => self -> m Float
getSampleRate self
  = liftDOM
      (realToFrac <$>
         (((toAudioContext self) ^. js "sampleRate") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListener ::
            (MonadDOM m, IsAudioContext self) =>
              self -> m (Maybe AudioListener)
getListener self
  = liftDOM (((toAudioContext self) ^. js "listener") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.activeSourceCount Mozilla AudioContext.activeSourceCount documentation> 
getActiveSourceCount ::
                     (MonadDOM m, IsAudioContext self) => self -> m Word
getActiveSourceCount self
  = liftDOM
      (round <$>
         (((toAudioContext self) ^. js "activeSourceCount") >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.oncomplete Mozilla AudioContext.oncomplete documentation> 
complete ::
         (IsAudioContext self, IsEventTarget self) =>
           EventName self OfflineAudioCompletionEvent
complete = unsafeEventName (toJSString "complete")