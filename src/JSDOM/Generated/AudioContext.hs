{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioContext
       (newAudioContext, suspend, resume, close, createBuffer,
        createBuffer_, createBufferFromArrayBuffer,
        createBufferFromArrayBuffer_, decodeAudioData, createBufferSource,
        createBufferSource_, createMediaElementSource,
        createMediaElementSource_, createMediaStreamSource,
        createMediaStreamSource_, createMediaStreamDestination,
        createMediaStreamDestination_, createGain, createGain_,
        createDelay, createDelay_, createBiquadFilter, createBiquadFilter_,
        createWaveShaper, createWaveShaper_, createPanner, createPanner_,
        createConvolver, createConvolver_, createDynamicsCompressor,
        createDynamicsCompressor_, createAnalyser, createAnalyser_,
        createScriptProcessor, createScriptProcessor_, createOscillator,
        createOscillator_, createPeriodicWave, createPeriodicWave_,
        createChannelSplitter, createChannelSplitter_, createChannelMerger,
        createChannelMerger_, startRendering, getDestination,
        getCurrentTime, getSampleRate, getListener, getState, statechange,
        getActiveSourceCount, complete, AudioContext(..),
        gTypeAudioContext, IsAudioContext, toAudioContext)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.suspend Mozilla AudioContext.suspend documentation> 
suspend :: (MonadDOM m, IsAudioContext self) => self -> m ()
suspend self
  = liftDOM
      (void
         (((toAudioContext self) ^. jsf "suspend" ()) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.resume Mozilla AudioContext.resume documentation> 
resume :: (MonadDOM m, IsAudioContext self) => self -> m ()
resume self
  = liftDOM
      (void (((toAudioContext self) ^. jsf "resume" ()) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.close Mozilla AudioContext.close documentation> 
close :: (MonadDOM m, IsAudioContext self) => self -> m ()
close self
  = liftDOM
      (void (((toAudioContext self) ^. jsf "close" ()) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBuffer ::
             (MonadDOM m, IsAudioContext self) =>
               self -> Word -> Word -> Float -> m AudioBuffer
createBuffer self numberOfChannels numberOfFrames sampleRate
  = liftDOM
      (((toAudioContext self) ^. jsf "createBuffer"
          [toJSVal numberOfChannels, toJSVal numberOfFrames,
           toJSVal sampleRate])
         >>= fromJSValUnchecked)

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
createBufferFromArrayBuffer ::
                            (MonadDOM m, IsAudioContext self, IsArrayBuffer buffer) =>
                              self -> buffer -> Bool -> m AudioBuffer
createBufferFromArrayBuffer self buffer mixToMono
  = liftDOM
      (((toAudioContext self) ^. jsf "createBuffer"
          [toJSVal buffer, toJSVal mixToMono])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer_ ::
                             (MonadDOM m, IsAudioContext self, IsArrayBuffer buffer) =>
                               self -> buffer -> Bool -> m ()
createBufferFromArrayBuffer_ self buffer mixToMono
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createBuffer"
            [toJSVal buffer, toJSVal mixToMono]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation> 
decodeAudioData ::
                (MonadDOM m, IsAudioContext self, IsArrayBuffer audioData) =>
                  self ->
                    audioData ->
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
                     self -> m AudioBufferSourceNode
createBufferSource self
  = liftDOM
      (((toAudioContext self) ^. jsf "createBufferSource" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource_ ::
                    (MonadDOM m, IsAudioContext self) => self -> m ()
createBufferSource_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createBufferSource" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource ::
                         (MonadDOM m, IsAudioContext self,
                          IsHTMLMediaElement mediaElement) =>
                           self -> mediaElement -> m MediaElementAudioSourceNode
createMediaElementSource self mediaElement
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaElementSource"
          [toJSVal mediaElement])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource_ ::
                          (MonadDOM m, IsAudioContext self,
                           IsHTMLMediaElement mediaElement) =>
                            self -> mediaElement -> m ()
createMediaElementSource_ self mediaElement
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createMediaElementSource"
            [toJSVal mediaElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource ::
                        (MonadDOM m, IsAudioContext self) =>
                          self -> MediaStream -> m MediaStreamAudioSourceNode
createMediaStreamSource self mediaStream
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaStreamSource"
          [toJSVal mediaStream])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource_ ::
                         (MonadDOM m, IsAudioContext self) => self -> MediaStream -> m ()
createMediaStreamSource_ self mediaStream
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createMediaStreamSource"
            [toJSVal mediaStream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination ::
                             (MonadDOM m, IsAudioContext self) =>
                               self -> m MediaStreamAudioDestinationNode
createMediaStreamDestination self
  = liftDOM
      (((toAudioContext self) ^. jsf "createMediaStreamDestination" ())
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination_ ::
                              (MonadDOM m, IsAudioContext self) => self -> m ()
createMediaStreamDestination_ self
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createMediaStreamDestination" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain ::
           (MonadDOM m, IsAudioContext self) => self -> m GainNode
createGain self
  = liftDOM
      (((toAudioContext self) ^. jsf "createGain" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain_ :: (MonadDOM m, IsAudioContext self) => self -> m ()
createGain_ self
  = liftDOM (void ((toAudioContext self) ^. jsf "createGain" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay ::
            (MonadDOM m, IsAudioContext self) =>
              self -> Maybe Double -> m DelayNode
createDelay self maxDelayTime
  = liftDOM
      (((toAudioContext self) ^. jsf "createDelay"
          [toJSVal maxDelayTime])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay_ ::
             (MonadDOM m, IsAudioContext self) => self -> Maybe Double -> m ()
createDelay_ self maxDelayTime
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createDelay"
            [toJSVal maxDelayTime]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter ::
                   (MonadDOM m, IsAudioContext self) => self -> m BiquadFilterNode
createBiquadFilter self
  = liftDOM
      (((toAudioContext self) ^. jsf "createBiquadFilter" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter_ ::
                    (MonadDOM m, IsAudioContext self) => self -> m ()
createBiquadFilter_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createBiquadFilter" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper ::
                 (MonadDOM m, IsAudioContext self) => self -> m WaveShaperNode
createWaveShaper self
  = liftDOM
      (((toAudioContext self) ^. jsf "createWaveShaper" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper_ ::
                  (MonadDOM m, IsAudioContext self) => self -> m ()
createWaveShaper_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createWaveShaper" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner ::
             (MonadDOM m, IsAudioContext self) => self -> m PannerNode
createPanner self
  = liftDOM
      (((toAudioContext self) ^. jsf "createPanner" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner_ :: (MonadDOM m, IsAudioContext self) => self -> m ()
createPanner_ self
  = liftDOM (void ((toAudioContext self) ^. jsf "createPanner" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver ::
                (MonadDOM m, IsAudioContext self) => self -> m ConvolverNode
createConvolver self
  = liftDOM
      (((toAudioContext self) ^. jsf "createConvolver" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver_ ::
                 (MonadDOM m, IsAudioContext self) => self -> m ()
createConvolver_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createConvolver" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor ::
                         (MonadDOM m, IsAudioContext self) =>
                           self -> m DynamicsCompressorNode
createDynamicsCompressor self
  = liftDOM
      (((toAudioContext self) ^. jsf "createDynamicsCompressor" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor_ ::
                          (MonadDOM m, IsAudioContext self) => self -> m ()
createDynamicsCompressor_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createDynamicsCompressor" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser ::
               (MonadDOM m, IsAudioContext self) => self -> m AnalyserNode
createAnalyser self
  = liftDOM
      (((toAudioContext self) ^. jsf "createAnalyser" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser_ ::
                (MonadDOM m, IsAudioContext self) => self -> m ()
createAnalyser_ self
  = liftDOM (void ((toAudioContext self) ^. jsf "createAnalyser" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor ::
                      (MonadDOM m, IsAudioContext self) =>
                        self -> Word -> Maybe Word -> Maybe Word -> m ScriptProcessorNode
createScriptProcessor self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      (((toAudioContext self) ^. jsf "createScriptProcessor"
          [toJSVal bufferSize, toJSVal numberOfInputChannels,
           toJSVal numberOfOutputChannels])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor_ ::
                       (MonadDOM m, IsAudioContext self) =>
                         self -> Word -> Maybe Word -> Maybe Word -> m ()
createScriptProcessor_ self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createScriptProcessor"
            [toJSVal bufferSize, toJSVal numberOfInputChannels,
             toJSVal numberOfOutputChannels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator ::
                 (MonadDOM m, IsAudioContext self) => self -> m OscillatorNode
createOscillator self
  = liftDOM
      (((toAudioContext self) ^. jsf "createOscillator" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator_ ::
                  (MonadDOM m, IsAudioContext self) => self -> m ()
createOscillator_ self
  = liftDOM
      (void ((toAudioContext self) ^. jsf "createOscillator" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave ::
                   (MonadDOM m, IsAudioContext self, IsFloat32Array real,
                    IsFloat32Array imag) =>
                     self -> real -> imag -> m PeriodicWave
createPeriodicWave self real imag
  = liftDOM
      (((toAudioContext self) ^. jsf "createPeriodicWave"
          [toJSVal real, toJSVal imag])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave_ ::
                    (MonadDOM m, IsAudioContext self, IsFloat32Array real,
                     IsFloat32Array imag) =>
                      self -> real -> imag -> m ()
createPeriodicWave_ self real imag
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createPeriodicWave"
            [toJSVal real, toJSVal imag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter ::
                      (MonadDOM m, IsAudioContext self) =>
                        self -> Maybe Word -> m ChannelSplitterNode
createChannelSplitter self numberOfOutputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelSplitter"
          [toJSVal numberOfOutputs])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter_ ::
                       (MonadDOM m, IsAudioContext self) => self -> Maybe Word -> m ()
createChannelSplitter_ self numberOfOutputs
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createChannelSplitter"
            [toJSVal numberOfOutputs]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger ::
                    (MonadDOM m, IsAudioContext self) =>
                      self -> Maybe Word -> m ChannelMergerNode
createChannelMerger self numberOfInputs
  = liftDOM
      (((toAudioContext self) ^. jsf "createChannelMerger"
          [toJSVal numberOfInputs])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger_ ::
                     (MonadDOM m, IsAudioContext self) => self -> Maybe Word -> m ()
createChannelMerger_ self numberOfInputs
  = liftDOM
      (void
         ((toAudioContext self) ^. jsf "createChannelMerger"
            [toJSVal numberOfInputs]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.startRendering Mozilla AudioContext.startRendering documentation> 
startRendering :: (MonadDOM m, IsAudioContext self) => self -> m ()
startRendering self
  = liftDOM (void ((toAudioContext self) ^. jsf "startRendering" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestination ::
               (MonadDOM m, IsAudioContext self) => self -> m AudioDestinationNode
getDestination self
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
            (MonadDOM m, IsAudioContext self) => self -> m AudioListener
getListener self
  = liftDOM
      (((toAudioContext self) ^. js "listener") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.state Mozilla AudioContext.state documentation> 
getState ::
         (MonadDOM m, IsAudioContext self) => self -> m AudioContextState
getState self
  = liftDOM
      (((toAudioContext self) ^. js "state") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.onstatechange Mozilla AudioContext.onstatechange documentation> 
statechange ::
            (IsAudioContext self, IsEventTarget self) =>
              EventName self onstatechange
statechange = unsafeEventName (toJSString "statechange")

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
