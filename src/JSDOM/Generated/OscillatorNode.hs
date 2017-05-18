{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.OscillatorNode
       (start, stop, setPeriodicWave, pattern UNSCHEDULED_STATE,
        pattern SCHEDULED_STATE, pattern PLAYING_STATE,
        pattern FINISHED_STATE, setType, getType, getPlaybackState,
        getFrequency, getDetune, ended, OscillatorNode(..),
        gTypeOscillatorNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.start Mozilla OscillatorNode.start documentation> 
start :: (MonadDOM m) => OscillatorNode -> Maybe Double -> m ()
start self when
  = liftDOM (void (self ^. jsf "start" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.stop Mozilla OscillatorNode.stop documentation> 
stop :: (MonadDOM m) => OscillatorNode -> Maybe Double -> m ()
stop self when = liftDOM (void (self ^. jsf "stop" [toJSVal when]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.setPeriodicWave Mozilla OscillatorNode.setPeriodicWave documentation> 
setPeriodicWave ::
                (MonadDOM m) => OscillatorNode -> Maybe PeriodicWave -> m ()
setPeriodicWave self wave
  = liftDOM (void (self ^. jsf "setPeriodicWave" [toJSVal wave]))
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
setType :: (MonadDOM m) => OscillatorNode -> OscillatorType -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
getType :: (MonadDOM m) => OscillatorNode -> m OscillatorType
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.playbackState Mozilla OscillatorNode.playbackState documentation> 
getPlaybackState :: (MonadDOM m) => OscillatorNode -> m Word
getPlaybackState self
  = liftDOM
      (round <$> ((self ^. js "playbackState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.frequency Mozilla OscillatorNode.frequency documentation> 
getFrequency :: (MonadDOM m) => OscillatorNode -> m AudioParam
getFrequency self
  = liftDOM ((self ^. js "frequency") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.detune Mozilla OscillatorNode.detune documentation> 
getDetune :: (MonadDOM m) => OscillatorNode -> m AudioParam
getDetune self
  = liftDOM ((self ^. js "detune") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.onended Mozilla OscillatorNode.onended documentation> 
ended :: EventName OscillatorNode Event
ended = unsafeEventName (toJSString "ended")
