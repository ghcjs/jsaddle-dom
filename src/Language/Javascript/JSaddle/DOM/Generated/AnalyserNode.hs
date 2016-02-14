{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.AnalyserNode
       (getFloatFrequencyData, getByteFrequencyData,
        getByteTimeDomainData, setFftSize, getFftSize,
        getFrequencyBinCount, setMinDecibels, getMinDecibels,
        setMaxDecibels, getMaxDecibels, setSmoothingTimeConstant,
        getSmoothingTimeConstant, AnalyserNode, castToAnalyserNode,
        gTypeAnalyserNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getFloatFrequencyData Mozilla AnalyserNode.getFloatFrequencyData documentation> 
getFloatFrequencyData ::
                      (MonadDOM m, IsFloat32Array array) =>
                        AnalyserNode -> Maybe array -> m ()
getFloatFrequencyData self array
  = liftDOM
      (void (self ^. jsf "getFloatFrequencyData" [toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getByteFrequencyData Mozilla AnalyserNode.getByteFrequencyData documentation> 
getByteFrequencyData ::
                     (MonadDOM m, IsUint8Array array) =>
                       AnalyserNode -> Maybe array -> m ()
getByteFrequencyData self array
  = liftDOM
      (void (self ^. jsf "getByteFrequencyData" [toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getByteTimeDomainData Mozilla AnalyserNode.getByteTimeDomainData documentation> 
getByteTimeDomainData ::
                      (MonadDOM m, IsUint8Array array) =>
                        AnalyserNode -> Maybe array -> m ()
getByteTimeDomainData self array
  = liftDOM
      (void (self ^. jsf "getByteTimeDomainData" [toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
setFftSize :: (MonadDOM m) => AnalyserNode -> Word -> m ()
setFftSize self val = liftDOM (self ^. jss "fftSize" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
getFftSize :: (MonadDOM m) => AnalyserNode -> m Word
getFftSize self
  = liftDOM (round <$> ((self ^. js "fftSize") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.frequencyBinCount Mozilla AnalyserNode.frequencyBinCount documentation> 
getFrequencyBinCount :: (MonadDOM m) => AnalyserNode -> m Word
getFrequencyBinCount self
  = liftDOM
      (round <$> ((self ^. js "frequencyBinCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
setMinDecibels :: (MonadDOM m) => AnalyserNode -> Double -> m ()
setMinDecibels self val
  = liftDOM (self ^. jss "minDecibels" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
getMinDecibels :: (MonadDOM m) => AnalyserNode -> m Double
getMinDecibels self
  = liftDOM ((self ^. js "minDecibels") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
setMaxDecibels :: (MonadDOM m) => AnalyserNode -> Double -> m ()
setMaxDecibels self val
  = liftDOM (self ^. jss "maxDecibels" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
getMaxDecibels :: (MonadDOM m) => AnalyserNode -> m Double
getMaxDecibels self
  = liftDOM ((self ^. js "maxDecibels") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
setSmoothingTimeConstant ::
                         (MonadDOM m) => AnalyserNode -> Double -> m ()
setSmoothingTimeConstant self val
  = liftDOM (self ^. jss "smoothingTimeConstant" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
getSmoothingTimeConstant ::
                         (MonadDOM m) => AnalyserNode -> m Double
getSmoothingTimeConstant self
  = liftDOM ((self ^. js "smoothingTimeConstant") >>= valToNumber)