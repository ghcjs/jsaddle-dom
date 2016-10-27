{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioContext
       (newAudioContext, createBuffer, createBuffer_, createBufferUnsafe,
        createBufferUnchecked, createBufferFromArrayBuffer,
        createBufferFromArrayBuffer_, createBufferFromArrayBufferUnsafe,
        createBufferFromArrayBufferUnchecked, decodeAudioData,
        createBufferSource, createBufferSource_, createBufferSourceUnsafe,
        createBufferSourceUnchecked, createMediaElementSource,
        createMediaElementSource_, createMediaElementSourceUnsafe,
        createMediaElementSourceUnchecked, createMediaStreamSource,
        createMediaStreamSource_, createMediaStreamSourceUnsafe,
        createMediaStreamSourceUnchecked, createMediaStreamDestination,
        createMediaStreamDestination_, createMediaStreamDestinationUnsafe,
        createMediaStreamDestinationUnchecked, createGain, createGain_,
        createGainUnsafe, createGainUnchecked, createDelay, createDelay_,
        createDelayUnsafe, createDelayUnchecked, createBiquadFilter,
        createBiquadFilter_, createBiquadFilterUnsafe,
        createBiquadFilterUnchecked, createWaveShaper, createWaveShaper_,
        createWaveShaperUnsafe, createWaveShaperUnchecked, createPanner,
        createPanner_, createPannerUnsafe, createPannerUnchecked,
        createConvolver, createConvolver_, createConvolverUnsafe,
        createConvolverUnchecked, createDynamicsCompressor,
        createDynamicsCompressor_, createDynamicsCompressorUnsafe,
        createDynamicsCompressorUnchecked, createAnalyser, createAnalyser_,
        createAnalyserUnsafe, createAnalyserUnchecked,
        createScriptProcessor, createScriptProcessor_,
        createScriptProcessorUnsafe, createScriptProcessorUnchecked,
        createOscillator, createOscillator_, createOscillatorUnsafe,
        createOscillatorUnchecked, createPeriodicWave, createPeriodicWave_,
        createPeriodicWaveUnsafe, createPeriodicWaveUnchecked,
        createChannelSplitter, createChannelSplitter_,
        createChannelSplitterUnsafe, createChannelSplitterUnchecked,
        createChannelMerger, createChannelMerger_,
        createChannelMergerUnsafe, createChannelMergerUnchecked,
        startRendering, createGainNode, createGainNode_,
        createGainNodeUnsafe, createGainNodeUnchecked, createDelayNode,
        createDelayNode_, createDelayNodeUnsafe, createDelayNodeUnchecked,
        createJavaScriptNode, createJavaScriptNode_,
        createJavaScriptNodeUnsafe, createJavaScriptNodeUnchecked,
        getDestination, getDestinationUnsafe, getDestinationUnchecked,
        getCurrentTime, getSampleRate, getListener, getListenerUnsafe,
        getListenerUnchecked, getActiveSourceCount, complete,
        AudioContext(..), gTypeAudioContext, IsAudioContext,
        toAudioContext)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
createBuffer_ ::
              (MonadDOM m, IsAudioContext self) =>
                self -> Word -> Word -> Float -> m ()
createBuffer_ self numberOfChannels numberOfFrames sampleRate
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createBuffer"
            [toJSVal numberOfChannels, toJSVal numberOfFrames,
             toJSVal sampleRate]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferUnsafe ::
                   (MonadDOM m, IsAudioContext self, HasCallStack) =>
                     self -> Word -> Word -> Float -> m AudioBuffer
createBufferUnsafe self numberOfChannels numberOfFrames sampleRate
  = liftDOM
      ((((toAudioContext self) ^. jsf "createBuffer"
           [toJSVal numberOfChannels, toJSVal numberOfFrames,
            toJSVal sampleRate])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferUnchecked ::
                      (MonadDOM m, IsAudioContext self) =>
                        self -> Word -> Word -> Float -> m AudioBuffer
createBufferUnchecked self numberOfChannels numberOfFrames
  sampleRate
  = liftDOM
      (((toAudioContext self) ^. jsf "createBuffer"
          [toJSVal numberOfChannels, toJSVal numberOfFrames,
           toJSVal sampleRate])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer ::
                            (MonadDOM m, IsAudioContext self, IsArrayBuffer buffer) =>
                              self -> Maybe buffer -> Bool -> m (Maybe AudioBuffer)
createBufferFromArrayBuffer self buffer mixToMono
  = liftDOM
      (((toAudioContext self) ^. jsf "createBuffer"
          [toJSVal buffer, toJSVal mixToMono])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer_ ::
                             (MonadDOM m, IsAudioContext self, IsArrayBuffer buffer) =>
                               self -> Maybe buffer -> Bool -> m ()
createBufferFromArrayBuffer_ self buffer mixToMono
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createBuffer"
            [toJSVal buffer, toJSVal mixToMono]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBufferUnsafe ::
                                  (MonadDOM m, IsAudioContext self, IsArrayBuffer buffer,
                                   HasCallStack) =>
                                    self -> Maybe buffer -> Bool -> m AudioBuffer
createBufferFromArrayBufferUnsafe self buffer mixToMono
  = liftDOM
      ((((toAudioContext self) ^. jsf "createBuffer"
           [toJSVal buffer, toJSVal mixToMono])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBufferUnchecked ::
                                     (MonadDOM m, IsAudioContext self, IsArrayBuffer buffer) =>
                                       self -> Maybe buffer -> Bool -> m AudioBuffer
createBufferFromArrayBufferUnchecked self buffer mixToMono
  = liftDOM
      (((toAudioContext self) ^. jsf "createBuffer"
          [toJSVal buffer, toJSVal mixToMono])
         >>= fromJSValUnchecked)

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
      (((toAudioContext self) ^. jsf "createBufferSource" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource_ ::
                    (MonadDOM m, IsAudioContext self) => self -> m ()
createBufferSource_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createBufferSource" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSourceUnsafe ::
                         (MonadDOM m, IsAudioContext self, HasCallStack) =>
                           self -> m AudioBufferSourceNode
createBufferSourceUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createBufferSource" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSourceUnchecked ::
                            (MonadDOM m, IsAudioContext self) =>
                              self -> m AudioBufferSourceNode
createBufferSourceUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createBufferSource" ()) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource_ ::
                          (MonadDOM m, IsAudioContext self,
                           IsHTMLMediaElement mediaElement) =>
                            self -> Maybe mediaElement -> m ()
createMediaElementSource_ self mediaElement
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createMediaElementSource"
            [toJSVal mediaElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSourceUnsafe ::
                               (MonadDOM m, IsAudioContext self, IsHTMLMediaElement mediaElement,
                                HasCallStack) =>
                                 self -> Maybe mediaElement -> m MediaElementAudioSourceNode
createMediaElementSourceUnsafe self mediaElement
  = liftDOM
      ((((toAudioContext self) ^. jsf "createMediaElementSource"
           [toJSVal mediaElement])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSourceUnchecked ::
                                  (MonadDOM m, IsAudioContext self,
                                   IsHTMLMediaElement mediaElement) =>
                                    self -> Maybe mediaElement -> m MediaElementAudioSourceNode
createMediaElementSourceUnchecked self mediaElement
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaElementSource"
          [toJSVal mediaElement])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource ::
                        (MonadDOM m, IsAudioContext self) =>
                          self -> Maybe MediaStream -> m (Maybe MediaStreamAudioSourceNode)
createMediaStreamSource self mediaStream
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaStreamSource"
          [toJSVal mediaStream])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource_ ::
                         (MonadDOM m, IsAudioContext self) =>
                           self -> Maybe MediaStream -> m ()
createMediaStreamSource_ self mediaStream
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createMediaStreamSource"
            [toJSVal mediaStream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSourceUnsafe ::
                              (MonadDOM m, IsAudioContext self, HasCallStack) =>
                                self -> Maybe MediaStream -> m MediaStreamAudioSourceNode
createMediaStreamSourceUnsafe self mediaStream
  = liftDOM
      ((((toAudioContext self) ^. jsf "createMediaStreamSource"
           [toJSVal mediaStream])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSourceUnchecked ::
                                 (MonadDOM m, IsAudioContext self) =>
                                   self -> Maybe MediaStream -> m MediaStreamAudioSourceNode
createMediaStreamSourceUnchecked self mediaStream
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaStreamSource"
          [toJSVal mediaStream])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination ::
                             (MonadDOM m, IsAudioContext self) =>
                               self -> m (Maybe MediaStreamAudioDestinationNode)
createMediaStreamDestination self
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaStreamDestination" ())
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination_ ::
                              (MonadDOM m, IsAudioContext self) => self -> m ()
createMediaStreamDestination_ self
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createMediaStreamDestination" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestinationUnsafe ::
                                   (MonadDOM m, IsAudioContext self, HasCallStack) =>
                                     self -> m MediaStreamAudioDestinationNode
createMediaStreamDestinationUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createMediaStreamDestination" ())
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestinationUnchecked ::
                                      (MonadDOM m, IsAudioContext self) =>
                                        self -> m MediaStreamAudioDestinationNode
createMediaStreamDestinationUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaStreamDestination" ())
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain ::
           (MonadDOM m, IsAudioContext self) => self -> m (Maybe GainNode)
createGain self
  = liftDOM
      (((toAudioContext self) ^. jsf "createGain" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain_ :: (MonadDOM m, IsAudioContext self) => self -> m ()
createGain_ self
  = liftDOM (void ((toAudioContext self) ^. jsf "createGain" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGainUnsafe ::
                 (MonadDOM m, IsAudioContext self, HasCallStack) =>
                   self -> m GainNode
createGainUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createGain" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGainUnchecked ::
                    (MonadDOM m, IsAudioContext self) => self -> m GainNode
createGainUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createGain" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay ::
            (MonadDOM m, IsAudioContext self) =>
              self -> Double -> m (Maybe DelayNode)
createDelay self maxDelayTime
  = liftDOM
      (((toAudioContext self) ^. jsf "createDelay"
          [toJSVal maxDelayTime])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay_ ::
             (MonadDOM m, IsAudioContext self) => self -> Double -> m ()
createDelay_ self maxDelayTime
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createDelay"
            [toJSVal maxDelayTime]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelayUnsafe ::
                  (MonadDOM m, IsAudioContext self, HasCallStack) =>
                    self -> Double -> m DelayNode
createDelayUnsafe self maxDelayTime
  = liftDOM
      ((((toAudioContext self) ^. jsf "createDelay"
           [toJSVal maxDelayTime])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelayUnchecked ::
                     (MonadDOM m, IsAudioContext self) => self -> Double -> m DelayNode
createDelayUnchecked self maxDelayTime
  = liftDOM
      (((toAudioContext self) ^. jsf "createDelay"
          [toJSVal maxDelayTime])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter ::
                   (MonadDOM m, IsAudioContext self) =>
                     self -> m (Maybe BiquadFilterNode)
createBiquadFilter self
  = liftDOM
      (((toAudioContext self) ^. jsf "createBiquadFilter" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter_ ::
                    (MonadDOM m, IsAudioContext self) => self -> m ()
createBiquadFilter_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createBiquadFilter" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilterUnsafe ::
                         (MonadDOM m, IsAudioContext self, HasCallStack) =>
                           self -> m BiquadFilterNode
createBiquadFilterUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createBiquadFilter" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilterUnchecked ::
                            (MonadDOM m, IsAudioContext self) => self -> m BiquadFilterNode
createBiquadFilterUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createBiquadFilter" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper ::
                 (MonadDOM m, IsAudioContext self) =>
                   self -> m (Maybe WaveShaperNode)
createWaveShaper self
  = liftDOM
      (((toAudioContext self) ^. jsf "createWaveShaper" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper_ ::
                  (MonadDOM m, IsAudioContext self) => self -> m ()
createWaveShaper_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createWaveShaper" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaperUnsafe ::
                       (MonadDOM m, IsAudioContext self, HasCallStack) =>
                         self -> m WaveShaperNode
createWaveShaperUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createWaveShaper" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaperUnchecked ::
                          (MonadDOM m, IsAudioContext self) => self -> m WaveShaperNode
createWaveShaperUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createWaveShaper" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner ::
             (MonadDOM m, IsAudioContext self) => self -> m (Maybe PannerNode)
createPanner self
  = liftDOM
      (((toAudioContext self) ^. jsf "createPanner" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner_ :: (MonadDOM m, IsAudioContext self) => self -> m ()
createPanner_ self
  = liftDOM (void ((toAudioContext self) ^. jsf "createPanner" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPannerUnsafe ::
                   (MonadDOM m, IsAudioContext self, HasCallStack) =>
                     self -> m PannerNode
createPannerUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createPanner" ()) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPannerUnchecked ::
                      (MonadDOM m, IsAudioContext self) => self -> m PannerNode
createPannerUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createPanner" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver ::
                (MonadDOM m, IsAudioContext self) =>
                  self -> m (Maybe ConvolverNode)
createConvolver self
  = liftDOM
      (((toAudioContext self) ^. jsf "createConvolver" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver_ ::
                 (MonadDOM m, IsAudioContext self) => self -> m ()
createConvolver_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createConvolver" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolverUnsafe ::
                      (MonadDOM m, IsAudioContext self, HasCallStack) =>
                        self -> m ConvolverNode
createConvolverUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createConvolver" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolverUnchecked ::
                         (MonadDOM m, IsAudioContext self) => self -> m ConvolverNode
createConvolverUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createConvolver" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor ::
                         (MonadDOM m, IsAudioContext self) =>
                           self -> m (Maybe DynamicsCompressorNode)
createDynamicsCompressor self
  = liftDOM
      (((toAudioContext self) ^. jsf "createDynamicsCompressor" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor_ ::
                          (MonadDOM m, IsAudioContext self) => self -> m ()
createDynamicsCompressor_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createDynamicsCompressor" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressorUnsafe ::
                               (MonadDOM m, IsAudioContext self, HasCallStack) =>
                                 self -> m DynamicsCompressorNode
createDynamicsCompressorUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createDynamicsCompressor" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressorUnchecked ::
                                  (MonadDOM m, IsAudioContext self) =>
                                    self -> m DynamicsCompressorNode
createDynamicsCompressorUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createDynamicsCompressor" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser ::
               (MonadDOM m, IsAudioContext self) => self -> m (Maybe AnalyserNode)
createAnalyser self
  = liftDOM
      (((toAudioContext self) ^. jsf "createAnalyser" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser_ ::
                (MonadDOM m, IsAudioContext self) => self -> m ()
createAnalyser_ self
  = liftDOM (void ((toAudioContext self) ^. jsf "createAnalyser" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyserUnsafe ::
                     (MonadDOM m, IsAudioContext self, HasCallStack) =>
                       self -> m AnalyserNode
createAnalyserUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createAnalyser" ()) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyserUnchecked ::
                        (MonadDOM m, IsAudioContext self) => self -> m AnalyserNode
createAnalyserUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createAnalyser" ()) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor_ ::
                       (MonadDOM m, IsAudioContext self) =>
                         self -> Word -> Word -> Word -> m ()
createScriptProcessor_ self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createScriptProcessor"
            [toJSVal bufferSize, toJSVal numberOfInputChannels,
             toJSVal numberOfOutputChannels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessorUnsafe ::
                            (MonadDOM m, IsAudioContext self, HasCallStack) =>
                              self -> Word -> Word -> Word -> m ScriptProcessorNode
createScriptProcessorUnsafe self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      ((((toAudioContext self) ^. jsf "createScriptProcessor"
           [toJSVal bufferSize, toJSVal numberOfInputChannels,
            toJSVal numberOfOutputChannels])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessorUnchecked ::
                               (MonadDOM m, IsAudioContext self) =>
                                 self -> Word -> Word -> Word -> m ScriptProcessorNode
createScriptProcessorUnchecked self bufferSize
  numberOfInputChannels numberOfOutputChannels
  = liftDOM
      (((toAudioContext self) ^. jsf "createScriptProcessor"
          [toJSVal bufferSize, toJSVal numberOfInputChannels,
           toJSVal numberOfOutputChannels])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator ::
                 (MonadDOM m, IsAudioContext self) =>
                   self -> m (Maybe OscillatorNode)
createOscillator self
  = liftDOM
      (((toAudioContext self) ^. jsf "createOscillator" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator_ ::
                  (MonadDOM m, IsAudioContext self) => self -> m ()
createOscillator_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createOscillator" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillatorUnsafe ::
                       (MonadDOM m, IsAudioContext self, HasCallStack) =>
                         self -> m OscillatorNode
createOscillatorUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createOscillator" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillatorUnchecked ::
                          (MonadDOM m, IsAudioContext self) => self -> m OscillatorNode
createOscillatorUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createOscillator" ()) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave_ ::
                    (MonadDOM m, IsAudioContext self, IsFloat32Array real,
                     IsFloat32Array imag) =>
                      self -> Maybe real -> Maybe imag -> m ()
createPeriodicWave_ self real imag
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createPeriodicWave"
            [toJSVal real, toJSVal imag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWaveUnsafe ::
                         (MonadDOM m, IsAudioContext self, IsFloat32Array real,
                          IsFloat32Array imag, HasCallStack) =>
                           self -> Maybe real -> Maybe imag -> m PeriodicWave
createPeriodicWaveUnsafe self real imag
  = liftDOM
      ((((toAudioContext self) ^. jsf "createPeriodicWave"
           [toJSVal real, toJSVal imag])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWaveUnchecked ::
                            (MonadDOM m, IsAudioContext self, IsFloat32Array real,
                             IsFloat32Array imag) =>
                              self -> Maybe real -> Maybe imag -> m PeriodicWave
createPeriodicWaveUnchecked self real imag
  = liftDOM
      (((toAudioContext self) ^. jsf "createPeriodicWave"
          [toJSVal real, toJSVal imag])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter ::
                      (MonadDOM m, IsAudioContext self) =>
                        self -> Word -> m (Maybe ChannelSplitterNode)
createChannelSplitter self numberOfOutputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelSplitter"
          [toJSVal numberOfOutputs])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter_ ::
                       (MonadDOM m, IsAudioContext self) => self -> Word -> m ()
createChannelSplitter_ self numberOfOutputs
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createChannelSplitter"
            [toJSVal numberOfOutputs]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitterUnsafe ::
                            (MonadDOM m, IsAudioContext self, HasCallStack) =>
                              self -> Word -> m ChannelSplitterNode
createChannelSplitterUnsafe self numberOfOutputs
  = liftDOM
      ((((toAudioContext self) ^. jsf "createChannelSplitter"
           [toJSVal numberOfOutputs])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitterUnchecked ::
                               (MonadDOM m, IsAudioContext self) =>
                                 self -> Word -> m ChannelSplitterNode
createChannelSplitterUnchecked self numberOfOutputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelSplitter"
          [toJSVal numberOfOutputs])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger ::
                    (MonadDOM m, IsAudioContext self) =>
                      self -> Word -> m (Maybe ChannelMergerNode)
createChannelMerger self numberOfInputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelMerger"
          [toJSVal numberOfInputs])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger_ ::
                     (MonadDOM m, IsAudioContext self) => self -> Word -> m ()
createChannelMerger_ self numberOfInputs
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createChannelMerger"
            [toJSVal numberOfInputs]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMergerUnsafe ::
                          (MonadDOM m, IsAudioContext self, HasCallStack) =>
                            self -> Word -> m ChannelMergerNode
createChannelMergerUnsafe self numberOfInputs
  = liftDOM
      ((((toAudioContext self) ^. jsf "createChannelMerger"
           [toJSVal numberOfInputs])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMergerUnchecked ::
                             (MonadDOM m, IsAudioContext self) =>
                               self -> Word -> m ChannelMergerNode
createChannelMergerUnchecked self numberOfInputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelMerger"
          [toJSVal numberOfInputs])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.startRendering Mozilla AudioContext.startRendering documentation> 
startRendering :: (MonadDOM m, IsAudioContext self) => self -> m ()
startRendering self
  = liftDOM (void ((toAudioContext self) ^. jsf "startRendering" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNode ::
               (MonadDOM m, IsAudioContext self) => self -> m (Maybe GainNode)
createGainNode self
  = liftDOM
      (((toAudioContext self) ^. jsf "createGainNode" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNode_ ::
                (MonadDOM m, IsAudioContext self) => self -> m ()
createGainNode_ self
  = liftDOM (void ((toAudioContext self) ^. jsf "createGainNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNodeUnsafe ::
                     (MonadDOM m, IsAudioContext self, HasCallStack) =>
                       self -> m GainNode
createGainNodeUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. jsf "createGainNode" ()) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNodeUnchecked ::
                        (MonadDOM m, IsAudioContext self) => self -> m GainNode
createGainNodeUnchecked self
  = liftDOM
      (((toAudioContext self) ^. jsf "createGainNode" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNode ::
                (MonadDOM m, IsAudioContext self) =>
                  self -> Double -> m (Maybe DelayNode)
createDelayNode self maxDelayTime
  = liftDOM
      (((toAudioContext self) ^. jsf "createDelayNode"
          [toJSVal maxDelayTime])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNode_ ::
                 (MonadDOM m, IsAudioContext self) => self -> Double -> m ()
createDelayNode_ self maxDelayTime
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createDelayNode"
            [toJSVal maxDelayTime]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNodeUnsafe ::
                      (MonadDOM m, IsAudioContext self, HasCallStack) =>
                        self -> Double -> m DelayNode
createDelayNodeUnsafe self maxDelayTime
  = liftDOM
      ((((toAudioContext self) ^. jsf "createDelayNode"
           [toJSVal maxDelayTime])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNodeUnchecked ::
                         (MonadDOM m, IsAudioContext self) => self -> Double -> m DelayNode
createDelayNodeUnchecked self maxDelayTime
  = liftDOM
      (((toAudioContext self) ^. jsf "createDelayNode"
          [toJSVal maxDelayTime])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNode_ ::
                      (MonadDOM m, IsAudioContext self) =>
                        self -> Word -> Word -> Word -> m ()
createJavaScriptNode_ self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createJavaScriptNode"
            [toJSVal bufferSize, toJSVal numberOfInputChannels,
             toJSVal numberOfOutputChannels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNodeUnsafe ::
                           (MonadDOM m, IsAudioContext self, HasCallStack) =>
                             self -> Word -> Word -> Word -> m ScriptProcessorNode
createJavaScriptNodeUnsafe self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      ((((toAudioContext self) ^. jsf "createJavaScriptNode"
           [toJSVal bufferSize, toJSVal numberOfInputChannels,
            toJSVal numberOfOutputChannels])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNodeUnchecked ::
                              (MonadDOM m, IsAudioContext self) =>
                                self -> Word -> Word -> Word -> m ScriptProcessorNode
createJavaScriptNodeUnchecked self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      (((toAudioContext self) ^. jsf "createJavaScriptNode"
          [toJSVal bufferSize, toJSVal numberOfInputChannels,
           toJSVal numberOfOutputChannels])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestination ::
               (MonadDOM m, IsAudioContext self) =>
                 self -> m (Maybe AudioDestinationNode)
getDestination self
  = liftDOM
      (((toAudioContext self) ^. js "destination") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestinationUnsafe ::
                     (MonadDOM m, IsAudioContext self, HasCallStack) =>
                       self -> m AudioDestinationNode
getDestinationUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. js "destination") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestinationUnchecked ::
                        (MonadDOM m, IsAudioContext self) => self -> m AudioDestinationNode
getDestinationUnchecked self
  = liftDOM
      (((toAudioContext self) ^. js "destination") >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListenerUnsafe ::
                  (MonadDOM m, IsAudioContext self, HasCallStack) =>
                    self -> m AudioListener
getListenerUnsafe self
  = liftDOM
      ((((toAudioContext self) ^. js "listener") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListenerUnchecked ::
                     (MonadDOM m, IsAudioContext self) => self -> m AudioListener
getListenerUnchecked self
  = liftDOM
      (((toAudioContext self) ^. js "listener") >>= fromJSValUnchecked)

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
