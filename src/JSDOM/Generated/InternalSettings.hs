{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.InternalSettings
       (setTouchEventEmulationEnabled, setStandardFontFamily,
        setSerifFontFamily, setSansSerifFontFamily, setFixedFontFamily,
        setCursiveFontFamily, setFantasyFontFamily,
        setPictographFontFamily, setFontFallbackPrefersPictographs,
        setTextAutosizingEnabled, setTextAutosizingWindowSizeOverride,
        setTextAutosizingFontScaleFactor, setCSSShapesEnabled,
        setCanStartMedia, setShouldDisplayTrackKind,
        shouldDisplayTrackKind, shouldDisplayTrackKind_,
        setDefaultVideoPosterURL,
        setTimeWithoutMouseMovementBeforeHidingControls,
        setMediaTypeOverride, setPluginReplacementEnabled,
        setEditingBehavior, setShouldConvertPositionStyleOnCopy,
        setLangAttributeAwareFormControlUIEnabled,
        setStorageBlockingPolicy, setImagesEnabled,
        setUseLegacyBackgroundSizeShorthandBehavior,
        setAutoscrollForDragAndDropEnabled,
        setBackgroundShouldExtendBeyondPage,
        setScrollingTreeIncludesFrames, setMinimumTimerInterval,
        InternalSettings, castToInternalSettings, gTypeInternalSettings)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTouchEventEmulationEnabled Mozilla InternalSettings.setTouchEventEmulationEnabled documentation> 
setTouchEventEmulationEnabled ::
                              (MonadDOM m) => InternalSettings -> Bool -> m ()
setTouchEventEmulationEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setTouchEventEmulationEnabled" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setStandardFontFamily Mozilla InternalSettings.setStandardFontFamily documentation> 
setStandardFontFamily ::
                      (MonadDOM m, ToJSString family', ToJSString script) =>
                        InternalSettings -> family' -> script -> m ()
setStandardFontFamily self family' script
  = liftDOM
      (void
         (self ^. jsf "setStandardFontFamily"
            [toJSVal family', toJSVal script]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setSerifFontFamily Mozilla InternalSettings.setSerifFontFamily documentation> 
setSerifFontFamily ::
                   (MonadDOM m, ToJSString family', ToJSString script) =>
                     InternalSettings -> family' -> script -> m ()
setSerifFontFamily self family' script
  = liftDOM
      (void
         (self ^. jsf "setSerifFontFamily"
            [toJSVal family', toJSVal script]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setSansSerifFontFamily Mozilla InternalSettings.setSansSerifFontFamily documentation> 
setSansSerifFontFamily ::
                       (MonadDOM m, ToJSString family', ToJSString script) =>
                         InternalSettings -> family' -> script -> m ()
setSansSerifFontFamily self family' script
  = liftDOM
      (void
         (self ^. jsf "setSansSerifFontFamily"
            [toJSVal family', toJSVal script]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setFixedFontFamily Mozilla InternalSettings.setFixedFontFamily documentation> 
setFixedFontFamily ::
                   (MonadDOM m, ToJSString family', ToJSString script) =>
                     InternalSettings -> family' -> script -> m ()
setFixedFontFamily self family' script
  = liftDOM
      (void
         (self ^. jsf "setFixedFontFamily"
            [toJSVal family', toJSVal script]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setCursiveFontFamily Mozilla InternalSettings.setCursiveFontFamily documentation> 
setCursiveFontFamily ::
                     (MonadDOM m, ToJSString family', ToJSString script) =>
                       InternalSettings -> family' -> script -> m ()
setCursiveFontFamily self family' script
  = liftDOM
      (void
         (self ^. jsf "setCursiveFontFamily"
            [toJSVal family', toJSVal script]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setFantasyFontFamily Mozilla InternalSettings.setFantasyFontFamily documentation> 
setFantasyFontFamily ::
                     (MonadDOM m, ToJSString family', ToJSString script) =>
                       InternalSettings -> family' -> script -> m ()
setFantasyFontFamily self family' script
  = liftDOM
      (void
         (self ^. jsf "setFantasyFontFamily"
            [toJSVal family', toJSVal script]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setPictographFontFamily Mozilla InternalSettings.setPictographFontFamily documentation> 
setPictographFontFamily ::
                        (MonadDOM m, ToJSString family', ToJSString script) =>
                          InternalSettings -> family' -> script -> m ()
setPictographFontFamily self family' script
  = liftDOM
      (void
         (self ^. jsf "setPictographFontFamily"
            [toJSVal family', toJSVal script]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setFontFallbackPrefersPictographs Mozilla InternalSettings.setFontFallbackPrefersPictographs documentation> 
setFontFallbackPrefersPictographs ::
                                  (MonadDOM m) => InternalSettings -> Bool -> m ()
setFontFallbackPrefersPictographs self preferPictographs
  = liftDOM
      (void
         (self ^. jsf "setFontFallbackPrefersPictographs"
            [toJSVal preferPictographs]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTextAutosizingEnabled Mozilla InternalSettings.setTextAutosizingEnabled documentation> 
setTextAutosizingEnabled ::
                         (MonadDOM m) => InternalSettings -> Bool -> m ()
setTextAutosizingEnabled self enabled
  = liftDOM
      (void (self ^. jsf "setTextAutosizingEnabled" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTextAutosizingWindowSizeOverride Mozilla InternalSettings.setTextAutosizingWindowSizeOverride documentation> 
setTextAutosizingWindowSizeOverride ::
                                    (MonadDOM m) => InternalSettings -> Int -> Int -> m ()
setTextAutosizingWindowSizeOverride self width height
  = liftDOM
      (void
         (self ^. jsf "setTextAutosizingWindowSizeOverride"
            [toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTextAutosizingFontScaleFactor Mozilla InternalSettings.setTextAutosizingFontScaleFactor documentation> 
setTextAutosizingFontScaleFactor ::
                                 (MonadDOM m) => InternalSettings -> Float -> m ()
setTextAutosizingFontScaleFactor self fontScaleFactor
  = liftDOM
      (void
         (self ^. jsf "setTextAutosizingFontScaleFactor"
            [toJSVal fontScaleFactor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setCSSShapesEnabled Mozilla InternalSettings.setCSSShapesEnabled documentation> 
setCSSShapesEnabled ::
                    (MonadDOM m) => InternalSettings -> Bool -> m ()
setCSSShapesEnabled self enabled
  = liftDOM
      (void (self ^. jsf "setCSSShapesEnabled" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setCanStartMedia Mozilla InternalSettings.setCanStartMedia documentation> 
setCanStartMedia ::
                 (MonadDOM m) => InternalSettings -> Bool -> m ()
setCanStartMedia self enabled
  = liftDOM (void (self ^. jsf "setCanStartMedia" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setShouldDisplayTrackKind Mozilla InternalSettings.setShouldDisplayTrackKind documentation> 
setShouldDisplayTrackKind ::
                          (MonadDOM m, ToJSString kind) =>
                            InternalSettings -> kind -> Bool -> m ()
setShouldDisplayTrackKind self kind enabled
  = liftDOM
      (void
         (self ^. jsf "setShouldDisplayTrackKind"
            [toJSVal kind, toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldDisplayTrackKind Mozilla InternalSettings.shouldDisplayTrackKind documentation> 
shouldDisplayTrackKind ::
                       (MonadDOM m, ToJSString trackKind) =>
                         InternalSettings -> trackKind -> m Bool
shouldDisplayTrackKind self trackKind
  = liftDOM
      ((self ^. jsf "shouldDisplayTrackKind" [toJSVal trackKind]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldDisplayTrackKind Mozilla InternalSettings.shouldDisplayTrackKind documentation> 
shouldDisplayTrackKind_ ::
                        (MonadDOM m, ToJSString trackKind) =>
                          InternalSettings -> trackKind -> m ()
shouldDisplayTrackKind_ self trackKind
  = liftDOM
      (void (self ^. jsf "shouldDisplayTrackKind" [toJSVal trackKind]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setDefaultVideoPosterURL Mozilla InternalSettings.setDefaultVideoPosterURL documentation> 
setDefaultVideoPosterURL ::
                         (MonadDOM m, ToJSString poster) =>
                           InternalSettings -> poster -> m ()
setDefaultVideoPosterURL self poster
  = liftDOM
      (void (self ^. jsf "setDefaultVideoPosterURL" [toJSVal poster]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTimeWithoutMouseMovementBeforeHidingControls Mozilla InternalSettings.setTimeWithoutMouseMovementBeforeHidingControls documentation> 
setTimeWithoutMouseMovementBeforeHidingControls ::
                                                (MonadDOM m) => InternalSettings -> Double -> m ()
setTimeWithoutMouseMovementBeforeHidingControls self time
  = liftDOM
      (void
         (self ^. jsf "setTimeWithoutMouseMovementBeforeHidingControls"
            [toJSVal time]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setMediaTypeOverride Mozilla InternalSettings.setMediaTypeOverride documentation> 
setMediaTypeOverride ::
                     (MonadDOM m, ToJSString mediaTypeOverride) =>
                       InternalSettings -> mediaTypeOverride -> m ()
setMediaTypeOverride self mediaTypeOverride
  = liftDOM
      (void
         (self ^. jsf "setMediaTypeOverride" [toJSVal mediaTypeOverride]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setPluginReplacementEnabled Mozilla InternalSettings.setPluginReplacementEnabled documentation> 
setPluginReplacementEnabled ::
                            (MonadDOM m) => InternalSettings -> Bool -> m ()
setPluginReplacementEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setPluginReplacementEnabled" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setEditingBehavior Mozilla InternalSettings.setEditingBehavior documentation> 
setEditingBehavior ::
                   (MonadDOM m, ToJSString behavior) =>
                     InternalSettings -> behavior -> m ()
setEditingBehavior self behavior
  = liftDOM
      (void (self ^. jsf "setEditingBehavior" [toJSVal behavior]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setShouldConvertPositionStyleOnCopy Mozilla InternalSettings.setShouldConvertPositionStyleOnCopy documentation> 
setShouldConvertPositionStyleOnCopy ::
                                    (MonadDOM m) => InternalSettings -> Bool -> m ()
setShouldConvertPositionStyleOnCopy self convert
  = liftDOM
      (void
         (self ^. jsf "setShouldConvertPositionStyleOnCopy"
            [toJSVal convert]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setLangAttributeAwareFormControlUIEnabled Mozilla InternalSettings.setLangAttributeAwareFormControlUIEnabled documentation> 
setLangAttributeAwareFormControlUIEnabled ::
                                          (MonadDOM m) => InternalSettings -> Bool -> m ()
setLangAttributeAwareFormControlUIEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setLangAttributeAwareFormControlUIEnabled"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setStorageBlockingPolicy Mozilla InternalSettings.setStorageBlockingPolicy documentation> 
setStorageBlockingPolicy ::
                         (MonadDOM m, ToJSString policy) =>
                           InternalSettings -> policy -> m ()
setStorageBlockingPolicy self policy
  = liftDOM
      (void (self ^. jsf "setStorageBlockingPolicy" [toJSVal policy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setImagesEnabled Mozilla InternalSettings.setImagesEnabled documentation> 
setImagesEnabled ::
                 (MonadDOM m) => InternalSettings -> Bool -> m ()
setImagesEnabled self enabled
  = liftDOM (void (self ^. jsf "setImagesEnabled" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setUseLegacyBackgroundSizeShorthandBehavior Mozilla InternalSettings.setUseLegacyBackgroundSizeShorthandBehavior documentation> 
setUseLegacyBackgroundSizeShorthandBehavior ::
                                            (MonadDOM m) => InternalSettings -> Bool -> m ()
setUseLegacyBackgroundSizeShorthandBehavior self enabled
  = liftDOM
      (void
         (self ^. jsf "setUseLegacyBackgroundSizeShorthandBehavior"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setAutoscrollForDragAndDropEnabled Mozilla InternalSettings.setAutoscrollForDragAndDropEnabled documentation> 
setAutoscrollForDragAndDropEnabled ::
                                   (MonadDOM m) => InternalSettings -> Bool -> m ()
setAutoscrollForDragAndDropEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setAutoscrollForDragAndDropEnabled"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setBackgroundShouldExtendBeyondPage Mozilla InternalSettings.setBackgroundShouldExtendBeyondPage documentation> 
setBackgroundShouldExtendBeyondPage ::
                                    (MonadDOM m) => InternalSettings -> Bool -> m ()
setBackgroundShouldExtendBeyondPage self hasExtendedBackground
  = liftDOM
      (void
         (self ^. jsf "setBackgroundShouldExtendBeyondPage"
            [toJSVal hasExtendedBackground]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setScrollingTreeIncludesFrames Mozilla InternalSettings.setScrollingTreeIncludesFrames documentation> 
setScrollingTreeIncludesFrames ::
                               (MonadDOM m) => InternalSettings -> Bool -> m ()
setScrollingTreeIncludesFrames self enabled
  = liftDOM
      (void
         (self ^. jsf "setScrollingTreeIncludesFrames" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setMinimumTimerInterval Mozilla InternalSettings.setMinimumTimerInterval documentation> 
setMinimumTimerInterval ::
                        (MonadDOM m) => InternalSettings -> Double -> m ()
setMinimumTimerInterval self intervalInSeconds
  = liftDOM
      (void
         (self ^. jsf "setMinimumTimerInterval"
            [toJSVal intervalInSeconds]))
