{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaControlsHost
       (sortedTrackListForMenu, sortedTrackListForMenu_,
        sortedTrackListForMenuAudio, sortedTrackListForMenuAudio_,
        displayNameForTrack, displayNameForTrack_, setSelectedTextTrack,
        setPreparedToReturnVideoLayerToInline, updateTextTrackContainer,
        enteredFullscreen, exitedFullscreen, generateUUID, generateUUID_,
        base64StringForIconNameAndType, base64StringForIconNameAndType_,
        getCaptionMenuOffItem, getCaptionMenuAutomaticItem,
        getCaptionDisplayMode, getTextTrackContainer,
        getAllowsInlineMediaPlayback, getSupportsFullscreen,
        getIsVideoLayerInline, getUserGestureRequired,
        getIsInMediaDocument, getShouldForceControlsDisplay,
        getExternalDeviceDisplayName, getExternalDeviceType,
        setControlsDependOnPageScaleFactor,
        getControlsDependOnPageScaleFactor, getShadowRootCSSText,
        MediaControlsHost(..), gTypeMediaControlsHost)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenu ::
                       (MonadDOM m) => MediaControlsHost -> TextTrackList -> m [TextTrack]
sortedTrackListForMenu self trackList
  = liftDOM
      ((self ^. jsf "sortedTrackListForMenu" [toJSVal trackList]) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenu_ ::
                        (MonadDOM m) => MediaControlsHost -> TextTrackList -> m ()
sortedTrackListForMenu_ self trackList
  = liftDOM
      (void (self ^. jsf "sortedTrackListForMenu" [toJSVal trackList]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenuAudio ::
                            (MonadDOM m) =>
                              MediaControlsHost -> AudioTrackList -> m [AudioTrack]
sortedTrackListForMenuAudio self trackList
  = liftDOM
      ((self ^. jsf "sortedTrackListForMenu" [toJSVal trackList]) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenuAudio_ ::
                             (MonadDOM m) => MediaControlsHost -> AudioTrackList -> m ()
sortedTrackListForMenuAudio_ self trackList
  = liftDOM
      (void (self ^. jsf "sortedTrackListForMenu" [toJSVal trackList]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrack ::
                    (MonadDOM m, IsTrack track, FromJSString result) =>
                      MediaControlsHost -> Maybe track -> m result
displayNameForTrack self track
  = liftDOM
      ((self ^. jsf "displayNameForTrack" [toJSVal track]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrack_ ::
                     (MonadDOM m, IsTrack track) =>
                       MediaControlsHost -> Maybe track -> m ()
displayNameForTrack_ self track
  = liftDOM
      (void (self ^. jsf "displayNameForTrack" [toJSVal track]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.setSelectedTextTrack Mozilla MediaControlsHost.setSelectedTextTrack documentation> 
setSelectedTextTrack ::
                     (MonadDOM m) => MediaControlsHost -> Maybe TextTrack -> m ()
setSelectedTextTrack self track
  = liftDOM
      (void (self ^. jsf "setSelectedTextTrack" [toJSVal track]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.setPreparedToReturnVideoLayerToInline Mozilla MediaControlsHost.setPreparedToReturnVideoLayerToInline documentation> 
setPreparedToReturnVideoLayerToInline ::
                                      (MonadDOM m) => MediaControlsHost -> Bool -> m ()
setPreparedToReturnVideoLayerToInline self prepared
  = liftDOM
      (void
         (self ^. jsf "setPreparedToReturnVideoLayerToInline"
            [toJSVal prepared]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.updateTextTrackContainer Mozilla MediaControlsHost.updateTextTrackContainer documentation> 
updateTextTrackContainer ::
                         (MonadDOM m) => MediaControlsHost -> m ()
updateTextTrackContainer self
  = liftDOM (void (self ^. jsf "updateTextTrackContainer" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.enteredFullscreen Mozilla MediaControlsHost.enteredFullscreen documentation> 
enteredFullscreen :: (MonadDOM m) => MediaControlsHost -> m ()
enteredFullscreen self
  = liftDOM (void (self ^. jsf "enteredFullscreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.exitedFullscreen Mozilla MediaControlsHost.exitedFullscreen documentation> 
exitedFullscreen :: (MonadDOM m) => MediaControlsHost -> m ()
exitedFullscreen self
  = liftDOM (void (self ^. jsf "exitedFullscreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.generateUUID Mozilla MediaControlsHost.generateUUID documentation> 
generateUUID ::
             (MonadDOM m, FromJSString result) => MediaControlsHost -> m result
generateUUID self
  = liftDOM ((self ^. jsf "generateUUID" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.generateUUID Mozilla MediaControlsHost.generateUUID documentation> 
generateUUID_ :: (MonadDOM m) => MediaControlsHost -> m ()
generateUUID_ self = liftDOM (void (self ^. jsf "generateUUID" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.base64StringForIconNameAndType Mozilla MediaControlsHost.base64StringForIconNameAndType documentation> 
base64StringForIconNameAndType ::
                               (MonadDOM m, ToJSString iconName, ToJSString iconType,
                                FromJSString result) =>
                                 MediaControlsHost -> iconName -> iconType -> m result
base64StringForIconNameAndType self iconName iconType
  = liftDOM
      ((self ^. jsf "base64StringForIconNameAndType"
          [toJSVal iconName, toJSVal iconType])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.base64StringForIconNameAndType Mozilla MediaControlsHost.base64StringForIconNameAndType documentation> 
base64StringForIconNameAndType_ ::
                                (MonadDOM m, ToJSString iconName, ToJSString iconType) =>
                                  MediaControlsHost -> iconName -> iconType -> m ()
base64StringForIconNameAndType_ self iconName iconType
  = liftDOM
      (void
         (self ^. jsf "base64StringForIconNameAndType"
            [toJSVal iconName, toJSVal iconType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuOffItem Mozilla MediaControlsHost.captionMenuOffItem documentation> 
getCaptionMenuOffItem ::
                      (MonadDOM m) => MediaControlsHost -> m TextTrack
getCaptionMenuOffItem self
  = liftDOM
      ((self ^. js "captionMenuOffItem") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuAutomaticItem Mozilla MediaControlsHost.captionMenuAutomaticItem documentation> 
getCaptionMenuAutomaticItem ::
                            (MonadDOM m) => MediaControlsHost -> m TextTrack
getCaptionMenuAutomaticItem self
  = liftDOM
      ((self ^. js "captionMenuAutomaticItem") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionDisplayMode Mozilla MediaControlsHost.captionDisplayMode documentation> 
getCaptionDisplayMode ::
                      (MonadDOM m, FromJSString result) => MediaControlsHost -> m result
getCaptionDisplayMode self
  = liftDOM
      ((self ^. js "captionDisplayMode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.textTrackContainer Mozilla MediaControlsHost.textTrackContainer documentation> 
getTextTrackContainer ::
                      (MonadDOM m) => MediaControlsHost -> m HTMLElement
getTextTrackContainer self
  = liftDOM
      ((self ^. js "textTrackContainer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.allowsInlineMediaPlayback Mozilla MediaControlsHost.allowsInlineMediaPlayback documentation> 
getAllowsInlineMediaPlayback ::
                             (MonadDOM m) => MediaControlsHost -> m Bool
getAllowsInlineMediaPlayback self
  = liftDOM ((self ^. js "allowsInlineMediaPlayback") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.supportsFullscreen Mozilla MediaControlsHost.supportsFullscreen documentation> 
getSupportsFullscreen ::
                      (MonadDOM m) => MediaControlsHost -> m Bool
getSupportsFullscreen self
  = liftDOM ((self ^. js "supportsFullscreen") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.isVideoLayerInline Mozilla MediaControlsHost.isVideoLayerInline documentation> 
getIsVideoLayerInline ::
                      (MonadDOM m) => MediaControlsHost -> m Bool
getIsVideoLayerInline self
  = liftDOM ((self ^. js "isVideoLayerInline") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.userGestureRequired Mozilla MediaControlsHost.userGestureRequired documentation> 
getUserGestureRequired ::
                       (MonadDOM m) => MediaControlsHost -> m Bool
getUserGestureRequired self
  = liftDOM ((self ^. js "userGestureRequired") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.isInMediaDocument Mozilla MediaControlsHost.isInMediaDocument documentation> 
getIsInMediaDocument :: (MonadDOM m) => MediaControlsHost -> m Bool
getIsInMediaDocument self
  = liftDOM ((self ^. js "isInMediaDocument") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.shouldForceControlsDisplay Mozilla MediaControlsHost.shouldForceControlsDisplay documentation> 
getShouldForceControlsDisplay ::
                              (MonadDOM m) => MediaControlsHost -> m Bool
getShouldForceControlsDisplay self
  = liftDOM ((self ^. js "shouldForceControlsDisplay") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceDisplayName Mozilla MediaControlsHost.externalDeviceDisplayName documentation> 
getExternalDeviceDisplayName ::
                             (MonadDOM m, FromJSString result) => MediaControlsHost -> m result
getExternalDeviceDisplayName self
  = liftDOM
      ((self ^. js "externalDeviceDisplayName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceType Mozilla MediaControlsHost.externalDeviceType documentation> 
getExternalDeviceType ::
                      (MonadDOM m) => MediaControlsHost -> m DeviceType
getExternalDeviceType self
  = liftDOM
      ((self ^. js "externalDeviceType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
setControlsDependOnPageScaleFactor ::
                                   (MonadDOM m) => MediaControlsHost -> Bool -> m ()
setControlsDependOnPageScaleFactor self val
  = liftDOM
      (self ^. jss "controlsDependOnPageScaleFactor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
getControlsDependOnPageScaleFactor ::
                                   (MonadDOM m) => MediaControlsHost -> m Bool
getControlsDependOnPageScaleFactor self
  = liftDOM
      ((self ^. js "controlsDependOnPageScaleFactor") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.shadowRootCSSText Mozilla MediaControlsHost.shadowRootCSSText documentation> 
getShadowRootCSSText ::
                     (MonadDOM m, FromJSString result) => MediaControlsHost -> m result
getShadowRootCSSText self
  = liftDOM ((self ^. js "shadowRootCSSText") >>= fromJSValUnchecked)
