{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLMediaElement
       (load, canPlayType, play, pause, fastSeek,
        webkitGenerateKeyRequest, webkitAddKey, webkitCancelKeyRequest,
        webkitSetMediaKeys, addTextTrack, getVideoPlaybackQuality,
        webkitShowPlaybackTargetPicker, pattern NETWORK_EMPTY,
        pattern NETWORK_IDLE, pattern NETWORK_LOADING,
        pattern NETWORK_NO_SOURCE, pattern HAVE_NOTHING,
        pattern HAVE_METADATA, pattern HAVE_CURRENT_DATA,
        pattern HAVE_FUTURE_DATA, pattern HAVE_ENOUGH_DATA, getError,
        setSrc, getSrc, getCurrentSrc, getNetworkState, setPreload,
        getPreload, getBuffered, getReadyState, getSeeking, setCurrentTime,
        getCurrentTime, getDuration, getPaused, setDefaultPlaybackRate,
        getDefaultPlaybackRate, setPlaybackRate, getPlaybackRate,
        getPlayed, getSeekable, getEnded, setAutoplay, getAutoplay,
        setLoop, getLoop, setControls, getControls, setVolume, getVolume,
        setMuted, getMuted, setDefaultMuted, getDefaultMuted, emptied,
        loadedMetadata, loadedData, canPlay, canPlayThrough, playing,
        ended, waiting, durationChange, timeUpdate, playEvent, pauseEvent,
        rateChange, volumeChange, setWebkitPreservesPitch,
        getWebkitPreservesPitch, getWebkitHasClosedCaptions,
        setWebkitClosedCaptionsVisible, getWebkitClosedCaptionsVisible,
        getWebkitAudioDecodedByteCount, getWebkitVideoDecodedByteCount,
        webKitKeyAdded, webKitKeyError, webKitKeyMessage, webKitNeedKey,
        getWebkitKeys, getAudioTracks, getTextTracks, getVideoTracks,
        setMediaGroup, getMediaGroup, setController, getController,
        getWebkitCurrentPlaybackTargetIsWireless,
        webKitCurrentPlaybackTargetIsWirelessChanged,
        webKitPlaybackTargetAvailabilityChanged, setSrcObject,
        getSrcObject, HTMLMediaElement, castToHTMLMediaElement,
        gTypeHTMLMediaElement, IsHTMLMediaElement, toHTMLMediaElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.load Mozilla HTMLMediaElement.load documentation> 
load :: (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
load self = liftDOM (void ((toHTMLMediaElement self) ^. js "load"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
canPlayType ::
            (MonadDOM m, IsHTMLMediaElement self, ToJSString type',
             ToJSString keySystem, FromJSString result) =>
              self -> type' -> Maybe keySystem -> m result
canPlayType self type' keySystem
  = liftDOM
      (((toHTMLMediaElement self) ^. jsf "canPlayType"
          [toJSVal type', toJSVal keySystem])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.play Mozilla HTMLMediaElement.play documentation> 
play :: (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
play self = liftDOM (void ((toHTMLMediaElement self) ^. js "play"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.pause Mozilla HTMLMediaElement.pause documentation> 
pause :: (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
pause self
  = liftDOM (void ((toHTMLMediaElement self) ^. js "pause"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.fastSeek Mozilla HTMLMediaElement.fastSeek documentation> 
fastSeek ::
         (MonadDOM m, IsHTMLMediaElement self) => self -> Double -> m ()
fastSeek self time
  = liftDOM
      (void ((toHTMLMediaElement self) ^. jsf "fastSeek" [toJSVal time]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitGenerateKeyRequest Mozilla HTMLMediaElement.webkitGenerateKeyRequest documentation> 
webkitGenerateKeyRequest ::
                         (MonadDOM m, IsHTMLMediaElement self, ToJSString keySystem,
                          IsUint8Array initData) =>
                           self -> Maybe keySystem -> Maybe initData -> m ()
webkitGenerateKeyRequest self keySystem initData
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "webkitGenerateKeyRequest"
            [toJSVal keySystem, toJSVal initData]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAddKey Mozilla HTMLMediaElement.webkitAddKey documentation> 
webkitAddKey ::
             (MonadDOM m, IsHTMLMediaElement self, ToJSString keySystem,
              IsUint8Array key, IsUint8Array initData, ToJSString sessionId) =>
               self ->
                 Maybe keySystem -> Maybe key -> Maybe initData -> sessionId -> m ()
webkitAddKey self keySystem key initData sessionId
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "webkitAddKey"
            [toJSVal keySystem, toJSVal key, toJSVal initData,
             toJSVal sessionId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCancelKeyRequest Mozilla HTMLMediaElement.webkitCancelKeyRequest documentation> 
webkitCancelKeyRequest ::
                       (MonadDOM m, IsHTMLMediaElement self, ToJSString keySystem,
                        ToJSString sessionId) =>
                         self -> Maybe keySystem -> sessionId -> m ()
webkitCancelKeyRequest self keySystem sessionId
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "webkitCancelKeyRequest"
            [toJSVal keySystem, toJSVal sessionId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitSetMediaKeys Mozilla HTMLMediaElement.webkitSetMediaKeys documentation> 
webkitSetMediaKeys ::
                   (MonadDOM m, IsHTMLMediaElement self) =>
                     self -> Maybe MediaKeys -> m ()
webkitSetMediaKeys self mediaKeys
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "webkitSetMediaKeys"
            [toJSVal mediaKeys]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
addTextTrack ::
             (MonadDOM m, IsHTMLMediaElement self, ToJSString kind,
              ToJSString label, ToJSString language) =>
               self -> kind -> label -> language -> m (Maybe TextTrack)
addTextTrack self kind label language
  = liftDOM
      (((toHTMLMediaElement self) ^. jsf "addTextTrack"
          [toJSVal kind, toJSVal label, toJSVal language])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getVideoPlaybackQuality Mozilla HTMLMediaElement.getVideoPlaybackQuality documentation> 
getVideoPlaybackQuality ::
                        (MonadDOM m, IsHTMLMediaElement self) =>
                          self -> m (Maybe VideoPlaybackQuality)
getVideoPlaybackQuality self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "getVideoPlaybackQuality") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitShowPlaybackTargetPicker Mozilla HTMLMediaElement.webkitShowPlaybackTargetPicker documentation> 
webkitShowPlaybackTargetPicker ::
                               (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
webkitShowPlaybackTargetPicker self
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. js "webkitShowPlaybackTargetPicker"))
pattern NETWORK_EMPTY = 0
pattern NETWORK_IDLE = 1
pattern NETWORK_LOADING = 2
pattern NETWORK_NO_SOURCE = 3
pattern HAVE_NOTHING = 0
pattern HAVE_METADATA = 1
pattern HAVE_CURRENT_DATA = 2
pattern HAVE_FUTURE_DATA = 3
pattern HAVE_ENOUGH_DATA = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.error Mozilla HTMLMediaElement.error documentation> 
getError ::
         (MonadDOM m, IsHTMLMediaElement self) =>
           self -> m (Maybe MediaError)
getError self
  = liftDOM (((toHTMLMediaElement self) ^. js "error") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
setSrc ::
       (MonadDOM m, IsHTMLMediaElement self, ToJSString val) =>
         self -> val -> m ()
setSrc self val
  = liftDOM ((toHTMLMediaElement self) ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
getSrc ::
       (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
         self -> m result
getSrc self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentSrc Mozilla HTMLMediaElement.currentSrc documentation> 
getCurrentSrc ::
              (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m result
getCurrentSrc self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "currentSrc") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.networkState Mozilla HTMLMediaElement.networkState documentation> 
getNetworkState ::
                (MonadDOM m, IsHTMLMediaElement self) => self -> m Word
getNetworkState self
  = liftDOM
      (round <$>
         (((toHTMLMediaElement self) ^. js "networkState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
setPreload ::
           (MonadDOM m, IsHTMLMediaElement self, ToJSString val) =>
             self -> val -> m ()
setPreload self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "preload" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
getPreload ::
           (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
             self -> m result
getPreload self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "preload") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.buffered Mozilla HTMLMediaElement.buffered documentation> 
getBuffered ::
            (MonadDOM m, IsHTMLMediaElement self) =>
              self -> m (Maybe TimeRanges)
getBuffered self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "buffered") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.readyState Mozilla HTMLMediaElement.readyState documentation> 
getReadyState ::
              (MonadDOM m, IsHTMLMediaElement self) => self -> m Word
getReadyState self
  = liftDOM
      (round <$>
         (((toHTMLMediaElement self) ^. js "readyState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seeking Mozilla HTMLMediaElement.seeking documentation> 
getSeeking ::
           (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getSeeking self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "seeking") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
setCurrentTime ::
               (MonadDOM m, IsHTMLMediaElement self) => self -> Double -> m ()
setCurrentTime self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "currentTime" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
getCurrentTime ::
               (MonadDOM m, IsHTMLMediaElement self) => self -> m Double
getCurrentTime self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "currentTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.duration Mozilla HTMLMediaElement.duration documentation> 
getDuration ::
            (MonadDOM m, IsHTMLMediaElement self) => self -> m Double
getDuration self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "duration") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.paused Mozilla HTMLMediaElement.paused documentation> 
getPaused ::
          (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getPaused self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "paused") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
setDefaultPlaybackRate ::
                       (MonadDOM m, IsHTMLMediaElement self) => self -> Double -> m ()
setDefaultPlaybackRate self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "defaultPlaybackRate"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
getDefaultPlaybackRate ::
                       (MonadDOM m, IsHTMLMediaElement self) => self -> m Double
getDefaultPlaybackRate self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "defaultPlaybackRate") >>=
         valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
setPlaybackRate ::
                (MonadDOM m, IsHTMLMediaElement self) => self -> Double -> m ()
setPlaybackRate self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "playbackRate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
getPlaybackRate ::
                (MonadDOM m, IsHTMLMediaElement self) => self -> m Double
getPlaybackRate self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "playbackRate") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.played Mozilla HTMLMediaElement.played documentation> 
getPlayed ::
          (MonadDOM m, IsHTMLMediaElement self) =>
            self -> m (Maybe TimeRanges)
getPlayed self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "played") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seekable Mozilla HTMLMediaElement.seekable documentation> 
getSeekable ::
            (MonadDOM m, IsHTMLMediaElement self) =>
              self -> m (Maybe TimeRanges)
getSeekable self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "seekable") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ended Mozilla HTMLMediaElement.ended documentation> 
getEnded :: (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getEnded self
  = liftDOM (((toHTMLMediaElement self) ^. js "ended") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
setAutoplay ::
            (MonadDOM m, IsHTMLMediaElement self) => self -> Bool -> m ()
setAutoplay self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "autoplay" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
getAutoplay ::
            (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getAutoplay self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "autoplay") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
setLoop ::
        (MonadDOM m, IsHTMLMediaElement self) => self -> Bool -> m ()
setLoop self val
  = liftDOM ((toHTMLMediaElement self) ^. jss "loop" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
getLoop :: (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getLoop self
  = liftDOM (((toHTMLMediaElement self) ^. js "loop") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
setControls ::
            (MonadDOM m, IsHTMLMediaElement self) => self -> Bool -> m ()
setControls self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "controls" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
getControls ::
            (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getControls self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "controls") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
setVolume ::
          (MonadDOM m, IsHTMLMediaElement self) => self -> Double -> m ()
setVolume self val
  = liftDOM ((toHTMLMediaElement self) ^. jss "volume" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
getVolume ::
          (MonadDOM m, IsHTMLMediaElement self) => self -> m Double
getVolume self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "volume") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
setMuted ::
         (MonadDOM m, IsHTMLMediaElement self) => self -> Bool -> m ()
setMuted self val
  = liftDOM ((toHTMLMediaElement self) ^. jss "muted" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
getMuted :: (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getMuted self
  = liftDOM (((toHTMLMediaElement self) ^. js "muted") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
setDefaultMuted ::
                (MonadDOM m, IsHTMLMediaElement self) => self -> Bool -> m ()
setDefaultMuted self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "defaultMuted" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
getDefaultMuted ::
                (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getDefaultMuted self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "defaultMuted") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onemptied Mozilla HTMLMediaElement.onemptied documentation> 
emptied ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
emptied = unsafeEventName (toJSString "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onloadedmetadata Mozilla HTMLMediaElement.onloadedmetadata documentation> 
loadedMetadata ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
loadedMetadata = unsafeEventName (toJSString "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onloadeddata Mozilla HTMLMediaElement.onloadeddata documentation> 
loadedData ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
loadedData = unsafeEventName (toJSString "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.oncanplay Mozilla HTMLMediaElement.oncanplay documentation> 
canPlay ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
canPlay = unsafeEventName (toJSString "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.oncanplaythrough Mozilla HTMLMediaElement.oncanplaythrough documentation> 
canPlayThrough ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
canPlayThrough = unsafeEventName (toJSString "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onplaying Mozilla HTMLMediaElement.onplaying documentation> 
playing ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
playing = unsafeEventName (toJSString "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onended Mozilla HTMLMediaElement.onended documentation> 
ended ::
      (IsHTMLMediaElement self, IsEventTarget self) =>
        EventName self Event
ended = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwaiting Mozilla HTMLMediaElement.onwaiting documentation> 
waiting ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
waiting = unsafeEventName (toJSString "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ondurationchange Mozilla HTMLMediaElement.ondurationchange documentation> 
durationChange ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
durationChange = unsafeEventName (toJSString "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ontimeupdate Mozilla HTMLMediaElement.ontimeupdate documentation> 
timeUpdate ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
timeUpdate = unsafeEventName (toJSString "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onplay Mozilla HTMLMediaElement.onplay documentation> 
playEvent ::
          (IsHTMLMediaElement self, IsEventTarget self) =>
            EventName self Event
playEvent = unsafeEventName (toJSString "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onpause Mozilla HTMLMediaElement.onpause documentation> 
pauseEvent ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
pauseEvent = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onratechange Mozilla HTMLMediaElement.onratechange documentation> 
rateChange ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
rateChange = unsafeEventName (toJSString "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onvolumechange Mozilla HTMLMediaElement.onvolumechange documentation> 
volumeChange ::
             (IsHTMLMediaElement self, IsEventTarget self) =>
               EventName self Event
volumeChange = unsafeEventName (toJSString "volumechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
setWebkitPreservesPitch ::
                        (MonadDOM m, IsHTMLMediaElement self) => self -> Bool -> m ()
setWebkitPreservesPitch self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "webkitPreservesPitch"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
getWebkitPreservesPitch ::
                        (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getWebkitPreservesPitch self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "webkitPreservesPitch") >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitHasClosedCaptions Mozilla HTMLMediaElement.webkitHasClosedCaptions documentation> 
getWebkitHasClosedCaptions ::
                           (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getWebkitHasClosedCaptions self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "webkitHasClosedCaptions") >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
setWebkitClosedCaptionsVisible ::
                               (MonadDOM m, IsHTMLMediaElement self) => self -> Bool -> m ()
setWebkitClosedCaptionsVisible self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "webkitClosedCaptionsVisible"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
getWebkitClosedCaptionsVisible ::
                               (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getWebkitClosedCaptionsVisible self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "webkitClosedCaptionsVisible")
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAudioDecodedByteCount Mozilla HTMLMediaElement.webkitAudioDecodedByteCount documentation> 
getWebkitAudioDecodedByteCount ::
                               (MonadDOM m, IsHTMLMediaElement self) => self -> m Word
getWebkitAudioDecodedByteCount self
  = liftDOM
      (round <$>
         (((toHTMLMediaElement self) ^. js "webkitAudioDecodedByteCount")
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitVideoDecodedByteCount Mozilla HTMLMediaElement.webkitVideoDecodedByteCount documentation> 
getWebkitVideoDecodedByteCount ::
                               (MonadDOM m, IsHTMLMediaElement self) => self -> m Word
getWebkitVideoDecodedByteCount self
  = liftDOM
      (round <$>
         (((toHTMLMediaElement self) ^. js "webkitVideoDecodedByteCount")
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeyadded Mozilla HTMLMediaElement.onwebkitkeyadded documentation> 
webKitKeyAdded ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
webKitKeyAdded = unsafeEventName (toJSString "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeyerror Mozilla HTMLMediaElement.onwebkitkeyerror documentation> 
webKitKeyError ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
webKitKeyError = unsafeEventName (toJSString "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeymessage Mozilla HTMLMediaElement.onwebkitkeymessage documentation> 
webKitKeyMessage ::
                 (IsHTMLMediaElement self, IsEventTarget self) =>
                   EventName self Event
webKitKeyMessage = unsafeEventName (toJSString "webkitkeymessage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitneedkey Mozilla HTMLMediaElement.onwebkitneedkey documentation> 
webKitNeedKey ::
              (IsHTMLMediaElement self, IsEventTarget self) =>
                EventName self Event
webKitNeedKey = unsafeEventName (toJSString "webkitneedkey")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitKeys Mozilla HTMLMediaElement.webkitKeys documentation> 
getWebkitKeys ::
              (MonadDOM m, IsHTMLMediaElement self) =>
                self -> m (Maybe MediaKeys)
getWebkitKeys self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "webkitKeys") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.audioTracks Mozilla HTMLMediaElement.audioTracks documentation> 
getAudioTracks ::
               (MonadDOM m, IsHTMLMediaElement self) =>
                 self -> m (Maybe AudioTrackList)
getAudioTracks self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "audioTracks") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.textTracks Mozilla HTMLMediaElement.textTracks documentation> 
getTextTracks ::
              (MonadDOM m, IsHTMLMediaElement self) =>
                self -> m (Maybe TextTrackList)
getTextTracks self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "textTracks") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.videoTracks Mozilla HTMLMediaElement.videoTracks documentation> 
getVideoTracks ::
               (MonadDOM m, IsHTMLMediaElement self) =>
                 self -> m (Maybe VideoTrackList)
getVideoTracks self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "videoTracks") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
setMediaGroup ::
              (MonadDOM m, IsHTMLMediaElement self, ToJSString val) =>
                self -> Maybe val -> m ()
setMediaGroup self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "mediaGroup" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
getMediaGroup ::
              (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m (Maybe result)
getMediaGroup self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "mediaGroup") >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
setController ::
              (MonadDOM m, IsHTMLMediaElement self) =>
                self -> Maybe MediaController -> m ()
setController self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "controller" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
getController ::
              (MonadDOM m, IsHTMLMediaElement self) =>
                self -> m (Maybe MediaController)
getController self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "controller") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless Mozilla HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless documentation> 
getWebkitCurrentPlaybackTargetIsWireless ::
                                         (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getWebkitCurrentPlaybackTargetIsWireless self
  = liftDOM
      (((toHTMLMediaElement self) ^.
          js "webkitCurrentPlaybackTargetIsWireless")
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitcurrentplaybacktargetiswirelesschanged Mozilla HTMLMediaElement.onwebkitcurrentplaybacktargetiswirelesschanged documentation> 
webKitCurrentPlaybackTargetIsWirelessChanged ::
                                             (IsHTMLMediaElement self, IsEventTarget self) =>
                                               EventName self Event
webKitCurrentPlaybackTargetIsWirelessChanged
  = unsafeEventName
      (toJSString "webkitcurrentplaybacktargetiswirelesschanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitplaybacktargetavailabilitychanged Mozilla HTMLMediaElement.onwebkitplaybacktargetavailabilitychanged documentation> 
webKitPlaybackTargetAvailabilityChanged ::
                                        (IsHTMLMediaElement self, IsEventTarget self) =>
                                          EventName self Event
webKitPlaybackTargetAvailabilityChanged
  = unsafeEventName
      (toJSString "webkitplaybacktargetavailabilitychanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
setSrcObject ::
             (MonadDOM m, IsHTMLMediaElement self) =>
               self -> Maybe MediaStream -> m ()
setSrcObject self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "srcObject" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObject ::
             (MonadDOM m, IsHTMLMediaElement self) =>
               self -> m (Maybe MediaStream)
getSrcObject self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "srcObject") >>= fromJSVal)