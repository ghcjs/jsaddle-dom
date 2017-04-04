{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.BiquadFilterNode
       (getFrequencyResponse, setType, getType, getFrequency, getDetune,
        getQ, getGain, BiquadFilterNode(..), gTypeBiquadFilterNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.getFrequencyResponse Mozilla BiquadFilterNode.getFrequencyResponse documentation> 
getFrequencyResponse ::
                     (MonadDOM m, IsFloat32Array frequencyHz,
                      IsFloat32Array magResponse, IsFloat32Array phaseResponse) =>
                       BiquadFilterNode ->
                         Maybe frequencyHz ->
                           Maybe magResponse -> Maybe phaseResponse -> m ()
getFrequencyResponse self frequencyHz magResponse phaseResponse
  = liftDOM
      (void
         (self ^. jsf "getFrequencyResponse"
            [toJSVal frequencyHz, toJSVal magResponse, toJSVal phaseResponse]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
setType ::
        (MonadDOM m) => BiquadFilterNode -> BiquadFilterType -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
getType :: (MonadDOM m) => BiquadFilterNode -> m BiquadFilterType
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequency Mozilla BiquadFilterNode.frequency documentation> 
getFrequency :: (MonadDOM m) => BiquadFilterNode -> m AudioParam
getFrequency self
  = liftDOM ((self ^. js "frequency") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.detune Mozilla BiquadFilterNode.detune documentation> 
getDetune :: (MonadDOM m) => BiquadFilterNode -> m AudioParam
getDetune self
  = liftDOM ((self ^. js "detune") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.Q Mozilla BiquadFilterNode.Q documentation> 
getQ :: (MonadDOM m) => BiquadFilterNode -> m AudioParam
getQ self = liftDOM ((self ^. js "Q") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.gain Mozilla BiquadFilterNode.gain documentation> 
getGain :: (MonadDOM m) => BiquadFilterNode -> m AudioParam
getGain self = liftDOM ((self ^. js "gain") >>= fromJSValUnchecked)
