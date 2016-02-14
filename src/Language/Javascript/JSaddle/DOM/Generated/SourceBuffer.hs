{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SourceBuffer
       (appendBuffer, appendBufferView, abort, remove, setMode, getMode,
        getUpdating, getBuffered, setTimestampOffset, getTimestampOffset,
        getAudioTracks, getVideoTracks, getTextTracks,
        setAppendWindowStart, getAppendWindowStart, setAppendWindowEnd,
        getAppendWindowEnd, SourceBuffer, castToSourceBuffer,
        gTypeSourceBuffer)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendBuffer Mozilla SourceBuffer.appendBuffer documentation> 
appendBuffer ::
             (MonadDOM m, IsArrayBuffer data') =>
               SourceBuffer -> Maybe data' -> m ()
appendBuffer self data'
  = liftDOM (void (self ^. jsf "appendBuffer" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendBuffer Mozilla SourceBuffer.appendBuffer documentation> 
appendBufferView ::
                 (MonadDOM m, IsArrayBufferView data') =>
                   SourceBuffer -> Maybe data' -> m ()
appendBufferView self data'
  = liftDOM (void (self ^. jsf "appendBuffer" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.abort Mozilla SourceBuffer.abort documentation> 
abort :: (MonadDOM m) => SourceBuffer -> m ()
abort self = liftDOM (void (self ^. js "abort"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.remove Mozilla SourceBuffer.remove documentation> 
remove :: (MonadDOM m) => SourceBuffer -> Double -> Double -> m ()
remove self start end
  = liftDOM
      (void (self ^. jsf "remove" [toJSVal start, toJSVal end]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.mode Mozilla SourceBuffer.mode documentation> 
setMode :: (MonadDOM m) => SourceBuffer -> AppendMode -> m ()
setMode self val = liftDOM (self ^. jss "mode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.mode Mozilla SourceBuffer.mode documentation> 
getMode :: (MonadDOM m) => SourceBuffer -> m AppendMode
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.updating Mozilla SourceBuffer.updating documentation> 
getUpdating :: (MonadDOM m) => SourceBuffer -> m Bool
getUpdating self = liftDOM ((self ^. js "updating") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.buffered Mozilla SourceBuffer.buffered documentation> 
getBuffered :: (MonadDOM m) => SourceBuffer -> m (Maybe TimeRanges)
getBuffered self = liftDOM ((self ^. js "buffered") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
setTimestampOffset ::
                   (MonadDOM m) => SourceBuffer -> Double -> m ()
setTimestampOffset self val
  = liftDOM (self ^. jss "timestampOffset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
getTimestampOffset :: (MonadDOM m) => SourceBuffer -> m Double
getTimestampOffset self
  = liftDOM ((self ^. js "timestampOffset") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.audioTracks Mozilla SourceBuffer.audioTracks documentation> 
getAudioTracks ::
               (MonadDOM m) => SourceBuffer -> m (Maybe AudioTrackList)
getAudioTracks self
  = liftDOM ((self ^. js "audioTracks") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.videoTracks Mozilla SourceBuffer.videoTracks documentation> 
getVideoTracks ::
               (MonadDOM m) => SourceBuffer -> m (Maybe VideoTrackList)
getVideoTracks self
  = liftDOM ((self ^. js "videoTracks") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.textTracks Mozilla SourceBuffer.textTracks documentation> 
getTextTracks ::
              (MonadDOM m) => SourceBuffer -> m (Maybe TextTrackList)
getTextTracks self
  = liftDOM ((self ^. js "textTracks") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowStart Mozilla SourceBuffer.appendWindowStart documentation> 
setAppendWindowStart ::
                     (MonadDOM m) => SourceBuffer -> Double -> m ()
setAppendWindowStart self val
  = liftDOM (self ^. jss "appendWindowStart" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowStart Mozilla SourceBuffer.appendWindowStart documentation> 
getAppendWindowStart :: (MonadDOM m) => SourceBuffer -> m Double
getAppendWindowStart self
  = liftDOM ((self ^. js "appendWindowStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowEnd Mozilla SourceBuffer.appendWindowEnd documentation> 
setAppendWindowEnd ::
                   (MonadDOM m) => SourceBuffer -> Double -> m ()
setAppendWindowEnd self val
  = liftDOM (self ^. jss "appendWindowEnd" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowEnd Mozilla SourceBuffer.appendWindowEnd documentation> 
getAppendWindowEnd :: (MonadDOM m) => SourceBuffer -> m Double
getAppendWindowEnd self
  = liftDOM ((self ^. js "appendWindowEnd") >>= valToNumber)