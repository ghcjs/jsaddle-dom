{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.OscillatorNode
       (start, stop, noteOn, noteOff, setPeriodicWave, pattern SINE,
        pattern SQUARE, pattern SAWTOOTH, pattern TRIANGLE, pattern CUSTOM,
        pattern UNSCHEDULED_STATE, pattern SCHEDULED_STATE,
        pattern PLAYING_STATE, pattern FINISHED_STATE, setType, getType,
        getPlaybackState, getFrequency, getDetune, ended, OscillatorNode,
        castToOscillatorNode, gTypeOscillatorNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.start Mozilla OscillatorNode.start documentation> 
start :: (MonadDOM m) => OscillatorNode -> Double -> m ()
start self when
  = liftDOM (void (self ^. jsf "start" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.stop Mozilla OscillatorNode.stop documentation> 
stop :: (MonadDOM m) => OscillatorNode -> Double -> m ()
stop self when = liftDOM (void (self ^. jsf "stop" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOn Mozilla OscillatorNode.noteOn documentation> 
noteOn :: (MonadDOM m) => OscillatorNode -> Double -> m ()
noteOn self when
  = liftDOM (void (self ^. jsf "noteOn" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOff Mozilla OscillatorNode.noteOff documentation> 
noteOff :: (MonadDOM m) => OscillatorNode -> Double -> m ()
noteOff self when
  = liftDOM (void (self ^. jsf "noteOff" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.setPeriodicWave Mozilla OscillatorNode.setPeriodicWave documentation> 
setPeriodicWave ::
                (MonadDOM m) => OscillatorNode -> Maybe PeriodicWave -> m ()
setPeriodicWave self wave
  = liftDOM (void (self ^. jsf "setPeriodicWave" [toJSVal wave]))
pattern SINE = 0
pattern SQUARE = 1
pattern SAWTOOTH = 2
pattern TRIANGLE = 3
pattern CUSTOM = 4
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => OscillatorNode -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => OscillatorNode -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.playbackState Mozilla OscillatorNode.playbackState documentation> 
getPlaybackState :: (MonadDOM m) => OscillatorNode -> m Word
getPlaybackState self
  = liftDOM
      (round <$> ((self ^. js "playbackState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.frequency Mozilla OscillatorNode.frequency documentation> 
getFrequency ::
             (MonadDOM m) => OscillatorNode -> m (Maybe AudioParam)
getFrequency self
  = liftDOM ((self ^. js "frequency") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.detune Mozilla OscillatorNode.detune documentation> 
getDetune :: (MonadDOM m) => OscillatorNode -> m (Maybe AudioParam)
getDetune self = liftDOM ((self ^. js "detune") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.onended Mozilla OscillatorNode.onended documentation> 
ended :: EventName OscillatorNode Event
ended = unsafeEventName (toJSString "ended")