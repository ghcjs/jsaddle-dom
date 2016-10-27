{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioBufferSourceNode
       (start, stop, noteOn, noteGrainOn, noteOff,
        pattern UNSCHEDULED_STATE, pattern SCHEDULED_STATE,
        pattern PLAYING_STATE, pattern FINISHED_STATE, setBuffer,
        getBuffer, getBufferUnsafe, getBufferUnchecked, getPlaybackState,
        getGain, getGainUnsafe, getGainUnchecked, getPlaybackRate,
        getPlaybackRateUnsafe, getPlaybackRateUnchecked, setLoop, getLoop,
        setLoopStart, getLoopStart, setLoopEnd, getLoopEnd, setLooping,
        getLooping, ended, AudioBufferSourceNode(..),
        gTypeAudioBufferSourceNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.start Mozilla AudioBufferSourceNode.start documentation> 
start ::
      (MonadDOM m) =>
        AudioBufferSourceNode -> Double -> Double -> Double -> m ()
start self when grainOffset grainDuration
  = liftDOM
      (void
         (self ^. jsf "start"
            [toJSVal when, toJSVal grainOffset, toJSVal grainDuration]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.stop Mozilla AudioBufferSourceNode.stop documentation> 
stop :: (MonadDOM m) => AudioBufferSourceNode -> Double -> m ()
stop self when = liftDOM (void (self ^. jsf "stop" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOn Mozilla AudioBufferSourceNode.noteOn documentation> 
noteOn :: (MonadDOM m) => AudioBufferSourceNode -> Double -> m ()
noteOn self when
  = liftDOM (void (self ^. jsf "noteOn" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteGrainOn Mozilla AudioBufferSourceNode.noteGrainOn documentation> 
noteGrainOn ::
            (MonadDOM m) =>
              AudioBufferSourceNode -> Double -> Double -> Double -> m ()
noteGrainOn self when grainOffset grainDuration
  = liftDOM
      (void
         (self ^. jsf "noteGrainOn"
            [toJSVal when, toJSVal grainOffset, toJSVal grainDuration]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOff Mozilla AudioBufferSourceNode.noteOff documentation> 
noteOff :: (MonadDOM m) => AudioBufferSourceNode -> Double -> m ()
noteOff self when
  = liftDOM (void (self ^. jsf "noteOff" [toJSVal when]))
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
setBuffer ::
          (MonadDOM m) => AudioBufferSourceNode -> Maybe AudioBuffer -> m ()
setBuffer self val = liftDOM (self ^. jss "buffer" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBuffer ::
          (MonadDOM m) => AudioBufferSourceNode -> m (Maybe AudioBuffer)
getBuffer self = liftDOM ((self ^. js "buffer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBufferUnsafe ::
                (MonadDOM m, HasCallStack) =>
                  AudioBufferSourceNode -> m AudioBuffer
getBufferUnsafe self
  = liftDOM
      (((self ^. js "buffer") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBufferUnchecked ::
                   (MonadDOM m) => AudioBufferSourceNode -> m AudioBuffer
getBufferUnchecked self
  = liftDOM ((self ^. js "buffer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackState Mozilla AudioBufferSourceNode.playbackState documentation> 
getPlaybackState :: (MonadDOM m) => AudioBufferSourceNode -> m Word
getPlaybackState self
  = liftDOM
      (round <$> ((self ^. js "playbackState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.gain Mozilla AudioBufferSourceNode.gain documentation> 
getGain ::
        (MonadDOM m) => AudioBufferSourceNode -> m (Maybe AudioParam)
getGain self = liftDOM ((self ^. js "gain") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.gain Mozilla AudioBufferSourceNode.gain documentation> 
getGainUnsafe ::
              (MonadDOM m, HasCallStack) => AudioBufferSourceNode -> m AudioParam
getGainUnsafe self
  = liftDOM
      (((self ^. js "gain") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.gain Mozilla AudioBufferSourceNode.gain documentation> 
getGainUnchecked ::
                 (MonadDOM m) => AudioBufferSourceNode -> m AudioParam
getGainUnchecked self
  = liftDOM ((self ^. js "gain") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackRate Mozilla AudioBufferSourceNode.playbackRate documentation> 
getPlaybackRate ::
                (MonadDOM m) => AudioBufferSourceNode -> m (Maybe AudioParam)
getPlaybackRate self
  = liftDOM ((self ^. js "playbackRate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackRate Mozilla AudioBufferSourceNode.playbackRate documentation> 
getPlaybackRateUnsafe ::
                      (MonadDOM m, HasCallStack) => AudioBufferSourceNode -> m AudioParam
getPlaybackRateUnsafe self
  = liftDOM
      (((self ^. js "playbackRate") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackRate Mozilla AudioBufferSourceNode.playbackRate documentation> 
getPlaybackRateUnchecked ::
                         (MonadDOM m) => AudioBufferSourceNode -> m AudioParam
getPlaybackRateUnchecked self
  = liftDOM ((self ^. js "playbackRate") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
setLoop :: (MonadDOM m) => AudioBufferSourceNode -> Bool -> m ()
setLoop self val = liftDOM (self ^. jss "loop" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
getLoop :: (MonadDOM m) => AudioBufferSourceNode -> m Bool
getLoop self = liftDOM ((self ^. js "loop") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
setLoopStart ::
             (MonadDOM m) => AudioBufferSourceNode -> Double -> m ()
setLoopStart self val
  = liftDOM (self ^. jss "loopStart" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
getLoopStart :: (MonadDOM m) => AudioBufferSourceNode -> m Double
getLoopStart self
  = liftDOM ((self ^. js "loopStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
setLoopEnd ::
           (MonadDOM m) => AudioBufferSourceNode -> Double -> m ()
setLoopEnd self val = liftDOM (self ^. jss "loopEnd" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
getLoopEnd :: (MonadDOM m) => AudioBufferSourceNode -> m Double
getLoopEnd self = liftDOM ((self ^. js "loopEnd") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
setLooping :: (MonadDOM m) => AudioBufferSourceNode -> Bool -> m ()
setLooping self val = liftDOM (self ^. jss "looping" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
getLooping :: (MonadDOM m) => AudioBufferSourceNode -> m Bool
getLooping self = liftDOM ((self ^. js "looping") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.onended Mozilla AudioBufferSourceNode.onended documentation> 
ended :: EventName AudioBufferSourceNode Event
ended = unsafeEventName (toJSString "ended")
