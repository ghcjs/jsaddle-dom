{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLMediaElement
       (load, canPlayType, canPlayType_, getStartDate, getStartDate_,
        play, pause, fastSeek, webkitSetMediaKeys, setMediaKeys,
        addTextTrack, addTextTrack_, getVideoPlaybackQuality,
        getVideoPlaybackQuality_, webkitShowPlaybackTargetPicker,
        pattern NETWORK_EMPTY, pattern NETWORK_IDLE,
        pattern NETWORK_LOADING, pattern NETWORK_NO_SOURCE,
        pattern HAVE_NOTHING, pattern HAVE_METADATA,
        pattern HAVE_CURRENT_DATA, pattern HAVE_FUTURE_DATA,
        pattern HAVE_ENOUGH_DATA, getError, setSrc, getSrc, setSrcObject,
        getSrcObject, getSrcObjectUnsafe, getSrcObjectUnchecked,
        getCurrentSrc, setCrossOrigin, getCrossOrigin,
        getCrossOriginUnsafe, getCrossOriginUnchecked, getNetworkState,
        setPreload, getPreload, getBuffered, getReadyState, getSeeking,
        setCurrentTime, getCurrentTime, getDuration, getPaused,
        setDefaultPlaybackRate, getDefaultPlaybackRate, setPlaybackRate,
        getPlaybackRate, getPlayed, getSeekable, getEnded, setAutoplay,
        getAutoplay, setLoop, getLoop, setControls, getControls, setVolume,
        getVolume, setMuted, getMuted, setDefaultMuted, getDefaultMuted,
        setWebkitPreservesPitch, getWebkitPreservesPitch,
        getWebkitHasClosedCaptions, setWebkitClosedCaptionsVisible,
        getWebkitClosedCaptionsVisible, getWebkitAudioDecodedByteCount,
        getWebkitVideoDecodedByteCount, getWebkitKeys, getMediaKeys,
        encrypted, waitingforkey, getAudioTracks, getTextTracks,
        getVideoTracks, setMediaGroup, getMediaGroup, setController,
        getController, getControllerUnsafe, getControllerUnchecked,
        getWebkitCurrentPlaybackTargetIsWireless, setKind, getKind,
        setSession, getSession, getSessionUnsafe, getSessionUnchecked,
        HTMLMediaElement(..), gTypeHTMLMediaElement, IsHTMLMediaElement,
        toHTMLMediaElement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.load Mozilla HTMLMediaElement.load documentation> 
load :: (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
load self
  = liftDOM (void ((toHTMLMediaElement self) ^. jsf "load" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
canPlayType ::
            (MonadDOM m, IsHTMLMediaElement self, ToJSString type',
             FromJSString result) =>
              self -> type' -> m result
canPlayType self type'
  = liftDOM
      (((toHTMLMediaElement self) ^. jsf "canPlayType" [toJSVal type'])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
canPlayType_ ::
             (MonadDOM m, IsHTMLMediaElement self, ToJSString type') =>
               self -> type' -> m ()
canPlayType_ self type'
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "canPlayType" [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getStartDate Mozilla HTMLMediaElement.getStartDate documentation> 
getStartDate ::
             (MonadDOM m, IsHTMLMediaElement self) => self -> m Date
getStartDate self
  = liftDOM
      (((toHTMLMediaElement self) ^. jsf "getStartDate" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getStartDate Mozilla HTMLMediaElement.getStartDate documentation> 
getStartDate_ ::
              (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
getStartDate_ self
  = liftDOM
      (void ((toHTMLMediaElement self) ^. jsf "getStartDate" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.play Mozilla HTMLMediaElement.play documentation> 
play :: (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
play self
  = liftDOM
      (void
         (((toHTMLMediaElement self) ^. jsf "play" ()) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.pause Mozilla HTMLMediaElement.pause documentation> 
pause :: (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
pause self
  = liftDOM (void ((toHTMLMediaElement self) ^. jsf "pause" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.fastSeek Mozilla HTMLMediaElement.fastSeek documentation> 
fastSeek ::
         (MonadDOM m, IsHTMLMediaElement self) => self -> Double -> m ()
fastSeek self time
  = liftDOM
      (void ((toHTMLMediaElement self) ^. jsf "fastSeek" [toJSVal time]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitSetMediaKeys Mozilla HTMLMediaElement.webkitSetMediaKeys documentation> 
webkitSetMediaKeys ::
                   (MonadDOM m, IsHTMLMediaElement self) =>
                     self -> Maybe WebKitMediaKeys -> m ()
webkitSetMediaKeys self mediaKeys
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "webkitSetMediaKeys"
            [toJSVal mediaKeys]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.setMediaKeys Mozilla HTMLMediaElement.setMediaKeys documentation> 
setMediaKeys ::
             (MonadDOM m, IsHTMLMediaElement self) =>
               self -> Maybe MediaKeys -> m ()
setMediaKeys self mediaKeys
  = liftDOM
      (void
         (((toHTMLMediaElement self) ^. jsf "setMediaKeys"
             [toJSVal mediaKeys])
            >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
addTextTrack ::
             (MonadDOM m, IsHTMLMediaElement self, ToJSString kind,
              ToJSString label, ToJSString language) =>
               self -> kind -> Maybe label -> Maybe language -> m TextTrack
addTextTrack self kind label language
  = liftDOM
      (((toHTMLMediaElement self) ^. jsf "addTextTrack"
          [toJSVal kind, toJSVal label, toJSVal language])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
addTextTrack_ ::
              (MonadDOM m, IsHTMLMediaElement self, ToJSString kind,
               ToJSString label, ToJSString language) =>
                self -> kind -> Maybe label -> Maybe language -> m ()
addTextTrack_ self kind label language
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "addTextTrack"
            [toJSVal kind, toJSVal label, toJSVal language]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getVideoPlaybackQuality Mozilla HTMLMediaElement.getVideoPlaybackQuality documentation> 
getVideoPlaybackQuality ::
                        (MonadDOM m, IsHTMLMediaElement self) =>
                          self -> m VideoPlaybackQuality
getVideoPlaybackQuality self
  = liftDOM
      (((toHTMLMediaElement self) ^. jsf "getVideoPlaybackQuality" ())
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getVideoPlaybackQuality Mozilla HTMLMediaElement.getVideoPlaybackQuality documentation> 
getVideoPlaybackQuality_ ::
                         (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
getVideoPlaybackQuality_ self
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "getVideoPlaybackQuality" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitShowPlaybackTargetPicker Mozilla HTMLMediaElement.webkitShowPlaybackTargetPicker documentation> 
webkitShowPlaybackTargetPicker ::
                               (MonadDOM m, IsHTMLMediaElement self) => self -> m ()
webkitShowPlaybackTargetPicker self
  = liftDOM
      (void
         ((toHTMLMediaElement self) ^. jsf "webkitShowPlaybackTargetPicker"
            ()))
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
         (MonadDOM m, IsHTMLMediaElement self) => self -> m MediaError
getError self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "error") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
setSrcObject ::
             (MonadDOM m, IsHTMLMediaElement self, IsMediaProvider val) =>
               self -> Maybe val -> m ()
setSrcObject self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "srcObject" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObject ::
             (MonadDOM m, IsHTMLMediaElement self) =>
               self -> m (Maybe MediaProvider)
getSrcObject self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "srcObject") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObjectUnsafe ::
                   (MonadDOM m, IsHTMLMediaElement self, HasCallStack) =>
                     self -> m MediaProvider
getSrcObjectUnsafe self
  = liftDOM
      ((((toHTMLMediaElement self) ^. js "srcObject") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObjectUnchecked ::
                      (MonadDOM m, IsHTMLMediaElement self) => self -> m MediaProvider
getSrcObjectUnchecked self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "srcObject") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentSrc Mozilla HTMLMediaElement.currentSrc documentation> 
getCurrentSrc ::
              (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m result
getCurrentSrc self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "currentSrc") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadDOM m, IsHTMLMediaElement self, ToJSString val) =>
                 self -> Maybe val -> m ()
setCrossOrigin self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "crossOrigin" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
                 self -> m (Maybe result)
getCrossOrigin self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "crossOrigin") >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
getCrossOriginUnsafe ::
                     (MonadDOM m, IsHTMLMediaElement self, HasCallStack,
                      FromJSString result) =>
                       self -> m result
getCrossOriginUnsafe self
  = liftDOM
      ((((toHTMLMediaElement self) ^. js "crossOrigin") >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
getCrossOriginUnchecked ::
                        (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
                          self -> m result
getCrossOriginUnchecked self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "crossOrigin") >>=
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
            (MonadDOM m, IsHTMLMediaElement self) => self -> m TimeRanges
getBuffered self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "buffered") >>=
         fromJSValUnchecked)

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
          (MonadDOM m, IsHTMLMediaElement self) => self -> m TimeRanges
getPlayed self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "played") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seekable Mozilla HTMLMediaElement.seekable documentation> 
getSeekable ::
            (MonadDOM m, IsHTMLMediaElement self) => self -> m TimeRanges
getSeekable self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "seekable") >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitKeys Mozilla HTMLMediaElement.webkitKeys documentation> 
getWebkitKeys ::
              (MonadDOM m, IsHTMLMediaElement self) => self -> m WebKitMediaKeys
getWebkitKeys self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "webkitKeys") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaKeys Mozilla HTMLMediaElement.mediaKeys documentation> 
getMediaKeys ::
             (MonadDOM m, IsHTMLMediaElement self) => self -> m MediaKeys
getMediaKeys self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "mediaKeys") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onencrypted Mozilla HTMLMediaElement.onencrypted documentation> 
encrypted ::
          (IsHTMLMediaElement self, IsEventTarget self) =>
            EventName self onencrypted
encrypted = unsafeEventName (toJSString "encrypted")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwaitingforkey Mozilla HTMLMediaElement.onwaitingforkey documentation> 
waitingforkey ::
              (IsHTMLMediaElement self, IsEventTarget self) =>
                EventName self onwaitingforkey
waitingforkey = unsafeEventName (toJSString "waitingforkey")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.audioTracks Mozilla HTMLMediaElement.audioTracks documentation> 
getAudioTracks ::
               (MonadDOM m, IsHTMLMediaElement self) => self -> m AudioTrackList
getAudioTracks self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "audioTracks") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.textTracks Mozilla HTMLMediaElement.textTracks documentation> 
getTextTracks ::
              (MonadDOM m, IsHTMLMediaElement self) => self -> m TextTrackList
getTextTracks self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "textTracks") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.videoTracks Mozilla HTMLMediaElement.videoTracks documentation> 
getVideoTracks ::
               (MonadDOM m, IsHTMLMediaElement self) => self -> m VideoTrackList
getVideoTracks self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "videoTracks") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
setMediaGroup ::
              (MonadDOM m, IsHTMLMediaElement self, ToJSString val) =>
                self -> val -> m ()
setMediaGroup self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "mediaGroup" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
getMediaGroup ::
              (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m result
getMediaGroup self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "mediaGroup") >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
getControllerUnsafe ::
                    (MonadDOM m, IsHTMLMediaElement self, HasCallStack) =>
                      self -> m MediaController
getControllerUnsafe self
  = liftDOM
      ((((toHTMLMediaElement self) ^. js "controller") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
getControllerUnchecked ::
                       (MonadDOM m, IsHTMLMediaElement self) => self -> m MediaController
getControllerUnchecked self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "controller") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless Mozilla HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless documentation> 
getWebkitCurrentPlaybackTargetIsWireless ::
                                         (MonadDOM m, IsHTMLMediaElement self) => self -> m Bool
getWebkitCurrentPlaybackTargetIsWireless self
  = liftDOM
      (((toHTMLMediaElement self) ^.
          js "webkitCurrentPlaybackTargetIsWireless")
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.kind Mozilla HTMLMediaElement.kind documentation> 
setKind ::
        (MonadDOM m, IsHTMLMediaElement self, ToJSString val) =>
          self -> val -> m ()
setKind self val
  = liftDOM ((toHTMLMediaElement self) ^. jss "kind" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.kind Mozilla HTMLMediaElement.kind documentation> 
getKind ::
        (MonadDOM m, IsHTMLMediaElement self, FromJSString result) =>
          self -> m result
getKind self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
setSession ::
           (MonadDOM m, IsHTMLMediaElement self) =>
             self -> Maybe MediaSession -> m ()
setSession self val
  = liftDOM
      ((toHTMLMediaElement self) ^. jss "session" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
getSession ::
           (MonadDOM m, IsHTMLMediaElement self) =>
             self -> m (Maybe MediaSession)
getSession self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "session") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
getSessionUnsafe ::
                 (MonadDOM m, IsHTMLMediaElement self, HasCallStack) =>
                   self -> m MediaSession
getSessionUnsafe self
  = liftDOM
      ((((toHTMLMediaElement self) ^. js "session") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
getSessionUnchecked ::
                    (MonadDOM m, IsHTMLMediaElement self) => self -> m MediaSession
getSessionUnchecked self
  = liftDOM
      (((toHTMLMediaElement self) ^. js "session") >>=
         fromJSValUnchecked)
