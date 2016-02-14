{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.Internals
       (address, nodeNeedsStyleRecalc, description,
        hasPausedImageAnimations, elementRenderTreeAsText, isPreloaded,
        isLoadingFromMemoryCache, xhrResponseSource, clearMemoryCache,
        pruneMemoryCacheToSize, memoryCacheSize, clearPageCache,
        pageCacheSize, computedStyleIncludingVisitedInfo, ensureShadowRoot,
        createShadowRoot, shadowRoot, shadowRootType, includerFor,
        shadowPseudoId, setShadowPseudoId, treeScopeRootNode,
        parentTreeScope, lastSpatialNavigationCandidateCount,
        numberOfActiveAnimations, suspendAnimations, resumeAnimations,
        animationsAreSuspended, pauseAnimationAtTimeOnElement,
        pauseAnimationAtTimeOnPseudoElement,
        pauseTransitionAtTimeOnElement,
        pauseTransitionAtTimeOnPseudoElement, attached, visiblePlaceholder,
        selectColorInColorChooser, formControlStateOfPreviousHistoryItem,
        setFormControlStateOfPreviousHistoryItem, absoluteCaretBounds,
        boundingBox, inspectorHighlightRects, inspectorHighlightObject,
        markerCountForNode, markerRangeForNode, markerDescriptionForNode,
        addTextMatchMarker, setMarkedTextMatchesAreHighlighted,
        invalidateFontCache, setScrollViewPosition, setPagination,
        configurationForViewport, wasLastChangeUserEdit,
        elementShouldAutoComplete, setEditingValue, setAutofilled,
        countMatchesForText, paintControlTints, scrollElementToRect,
        rangeFromLocationAndLength, locationFromRange, lengthFromRange,
        rangeAsText, subrange, rangeForDictionaryLookupAtLocation,
        setDelegatesScrolling, lastSpellCheckRequestSequence,
        lastSpellCheckProcessedSequence, userPreferredLanguages,
        setUserPreferredLanguages, wheelEventHandlerCount,
        touchEventHandlerCount, nodesFromRect, parserMetaData,
        updateEditorUINowIfScheduled, hasSpellingMarker, hasGrammarMarker,
        hasAutocorrectedMarker, setContinuousSpellCheckingEnabled,
        setAutomaticQuoteSubstitutionEnabled,
        setAutomaticLinkDetectionEnabled,
        setAutomaticDashSubstitutionEnabled,
        setAutomaticTextReplacementEnabled,
        setAutomaticSpellingCorrectionEnabled, isOverwriteModeEnabled,
        toggleOverwriteModeEnabled, numberOfScrollableAreas,
        isPageBoxVisible, layerTreeAsText, scrollingStateTreeAsText,
        mainThreadScrollingReasons, nonFastScrollableRects,
        repaintRectsAsText, garbageCollectDocumentResources,
        allowRoundingHacks, insertAuthorCSS, insertUserCSS,
        setBatteryStatus, setDeviceProximity, numberOfLiveNodes,
        numberOfLiveDocuments, consoleMessageArgumentCounts,
        openDummyInspectorFrontend, closeDummyInspectorFrontend,
        setJavaScriptProfilingEnabled, setInspectorIsUnderTest,
        counterValue, pageNumber, shortcutIconURLs, allIconURLs,
        numberOfPages, pageProperty, pageSizeAndMarginsInPixels,
        setPageScaleFactor, setPageZoomFactor, setHeaderHeight,
        setFooterHeight, setTopContentInset,
        webkitWillEnterFullScreenForElement,
        webkitDidEnterFullScreenForElement,
        webkitWillExitFullScreenForElement,
        webkitDidExitFullScreenForElement, setApplicationCacheOriginQuota,
        registerURLSchemeAsBypassingContentSecurityPolicy,
        removeURLSchemeRegisteredAsBypassingContentSecurityPolicy,
        mallocStatistics, typeConversions, memoryInfo,
        getReferencedFilePaths, startTrackingRepaints,
        stopTrackingRepaints, isTimerThrottled,
        updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks,
        getCurrentCursorInfo, markerTextForListItem, toolTipFromElement,
        deserializeBuffer, serializeObject, setUsesOverlayScrollbars,
        forceReload, simulateAudioInterruption,
        mediaElementHasCharacteristic, initializeMockCDM,
        enableMockSpeechSynthesizer, getImageSourceURL,
        captionsStyleSheetOverride, setCaptionsStyleSheetOverride,
        setPrimaryAudioTrackLanguageOverride, setCaptionDisplayMode,
        createTimeRanges, closestTimeToTimeRanges, isSelectPopupVisible,
        isVibrating, isPluginUnavailabilityIndicatorObscured,
        isPluginSnapshotted, selectionBounds, initializeMockMediaSource,
        bufferedSamplesForTrackID, beginMediaSessionInterruption,
        endMediaSessionInterruption, applicationWillEnterForeground,
        applicationWillEnterBackground, setMediaSessionRestrictions,
        postRemoteControlCommand, simulateSystemSleep, simulateSystemWake,
        elementIsBlockingDisplaySleep, installMockPageOverlay,
        pageOverlayLayerTreeAsText, setPageMuted, isPagePlayingAudio,
        pattern LAYER_TREE_INCLUDES_VISIBLE_RECTS,
        pattern LAYER_TREE_INCLUDES_TILE_CACHES,
        pattern LAYER_TREE_INCLUDES_REPAINT_RECTS,
        pattern LAYER_TREE_INCLUDES_PAINTING_PHASES,
        pattern LAYER_TREE_INCLUDES_CONTENT_LAYERS, getSettings,
        getWorkerThreadCount, getConsoleProfiles, Internals,
        castToInternals, gTypeInternals)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.address Mozilla Internals.address documentation> 
address ::
        (MonadDOM m, IsNode node, FromJSString result) =>
          Internals -> Maybe node -> m result
address self node
  = liftDOM
      ((self ^. jsf "address" [toJSVal node]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodeNeedsStyleRecalc Mozilla Internals.nodeNeedsStyleRecalc documentation> 
nodeNeedsStyleRecalc ::
                     (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Bool
nodeNeedsStyleRecalc self node
  = liftDOM
      ((self ^. jsf "nodeNeedsStyleRecalc" [toJSVal node]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.description Mozilla Internals.description documentation> 
description ::
            (MonadDOM m, FromJSString result) => Internals -> JSVal -> m result
description self value
  = liftDOM
      ((self ^. jsf "description" [toJSVal value]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasPausedImageAnimations Mozilla Internals.hasPausedImageAnimations documentation> 
hasPausedImageAnimations ::
                         (MonadDOM m, IsElement element) =>
                           Internals -> Maybe element -> m Bool
hasPausedImageAnimations self element
  = liftDOM
      ((self ^. jsf "hasPausedImageAnimations" [toJSVal element]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementRenderTreeAsText Mozilla Internals.elementRenderTreeAsText documentation> 
elementRenderTreeAsText ::
                        (MonadDOM m, IsElement element, FromJSString result) =>
                          Internals -> Maybe element -> m result
elementRenderTreeAsText self element
  = liftDOM
      ((self ^. jsf "elementRenderTreeAsText" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPreloaded Mozilla Internals.isPreloaded documentation> 
isPreloaded ::
            (MonadDOM m, ToJSString url) => Internals -> url -> m Bool
isPreloaded self url
  = liftDOM ((self ^. jsf "isPreloaded" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isLoadingFromMemoryCache Mozilla Internals.isLoadingFromMemoryCache documentation> 
isLoadingFromMemoryCache ::
                         (MonadDOM m, ToJSString url) => Internals -> url -> m Bool
isLoadingFromMemoryCache self url
  = liftDOM
      ((self ^. jsf "isLoadingFromMemoryCache" [toJSVal url]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.xhrResponseSource Mozilla Internals.xhrResponseSource documentation> 
xhrResponseSource ::
                  (MonadDOM m, FromJSString result) =>
                    Internals -> Maybe XMLHttpRequest -> m result
xhrResponseSource self xhr
  = liftDOM
      ((self ^. jsf "xhrResponseSource" [toJSVal xhr]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.clearMemoryCache Mozilla Internals.clearMemoryCache documentation> 
clearMemoryCache :: (MonadDOM m) => Internals -> m ()
clearMemoryCache self
  = liftDOM (void (self ^. js "clearMemoryCache"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pruneMemoryCacheToSize Mozilla Internals.pruneMemoryCacheToSize documentation> 
pruneMemoryCacheToSize :: (MonadDOM m) => Internals -> Int -> m ()
pruneMemoryCacheToSize self size
  = liftDOM
      (void (self ^. jsf "pruneMemoryCacheToSize" [toJSVal size]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryCacheSize Mozilla Internals.memoryCacheSize documentation> 
memoryCacheSize :: (MonadDOM m) => Internals -> m Int
memoryCacheSize self
  = liftDOM
      (round <$> ((self ^. js "memoryCacheSize") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.clearPageCache Mozilla Internals.clearPageCache documentation> 
clearPageCache :: (MonadDOM m) => Internals -> m ()
clearPageCache self = liftDOM (void (self ^. js "clearPageCache"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageCacheSize Mozilla Internals.pageCacheSize documentation> 
pageCacheSize :: (MonadDOM m) => Internals -> m Word
pageCacheSize self
  = liftDOM
      (round <$> ((self ^. js "pageCacheSize") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfo ::
                                  (MonadDOM m, IsNode node) =>
                                    Internals -> Maybe node -> m (Maybe CSSStyleDeclaration)
computedStyleIncludingVisitedInfo self node
  = liftDOM
      ((self ^. jsf "computedStyleIncludingVisitedInfo" [toJSVal node])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRoot ::
                 (MonadDOM m, IsElement host) =>
                   Internals -> Maybe host -> m (Maybe Node)
ensureShadowRoot self host
  = liftDOM
      ((self ^. jsf "ensureShadowRoot" [toJSVal host]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRoot ::
                 (MonadDOM m, IsElement host) =>
                   Internals -> Maybe host -> m (Maybe Node)
createShadowRoot self host
  = liftDOM
      ((self ^. jsf "createShadowRoot" [toJSVal host]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRoot ::
           (MonadDOM m, IsElement host) =>
             Internals -> Maybe host -> m (Maybe Node)
shadowRoot self host
  = liftDOM ((self ^. jsf "shadowRoot" [toJSVal host]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRootType Mozilla Internals.shadowRootType documentation> 
shadowRootType ::
               (MonadDOM m, IsNode root, FromJSString result) =>
                 Internals -> Maybe root -> m result
shadowRootType self root
  = liftDOM
      ((self ^. jsf "shadowRootType" [toJSVal root]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerFor ::
            (MonadDOM m, IsNode node) =>
              Internals -> Maybe node -> m (Maybe Element)
includerFor self node
  = liftDOM
      ((self ^. jsf "includerFor" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
shadowPseudoId ::
               (MonadDOM m, IsElement element, FromJSString result) =>
                 Internals -> Maybe element -> m result
shadowPseudoId self element
  = liftDOM
      ((self ^. jsf "shadowPseudoId" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setShadowPseudoId Mozilla Internals.setShadowPseudoId documentation> 
setShadowPseudoId ::
                  (MonadDOM m, IsElement element, ToJSString id) =>
                    Internals -> Maybe element -> id -> m ()
setShadowPseudoId self element id
  = liftDOM
      (void
         (self ^. jsf "setShadowPseudoId" [toJSVal element, toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNode ::
                  (MonadDOM m, IsNode node) =>
                    Internals -> Maybe node -> m (Maybe Node)
treeScopeRootNode self node
  = liftDOM
      ((self ^. jsf "treeScopeRootNode" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScope ::
                (MonadDOM m, IsNode node) =>
                  Internals -> Maybe node -> m (Maybe Node)
parentTreeScope self node
  = liftDOM
      ((self ^. jsf "parentTreeScope" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpatialNavigationCandidateCount Mozilla Internals.lastSpatialNavigationCandidateCount documentation> 
lastSpatialNavigationCandidateCount ::
                                    (MonadDOM m) => Internals -> m Word
lastSpatialNavigationCandidateCount self
  = liftDOM
      (round <$>
         ((self ^. js "lastSpatialNavigationCandidateCount") >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfActiveAnimations Mozilla Internals.numberOfActiveAnimations documentation> 
numberOfActiveAnimations :: (MonadDOM m) => Internals -> m Word
numberOfActiveAnimations self
  = liftDOM
      (round <$>
         ((self ^. js "numberOfActiveAnimations") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.suspendAnimations Mozilla Internals.suspendAnimations documentation> 
suspendAnimations :: (MonadDOM m) => Internals -> m ()
suspendAnimations self
  = liftDOM (void (self ^. js "suspendAnimations"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.resumeAnimations Mozilla Internals.resumeAnimations documentation> 
resumeAnimations :: (MonadDOM m) => Internals -> m ()
resumeAnimations self
  = liftDOM (void (self ^. js "resumeAnimations"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.animationsAreSuspended Mozilla Internals.animationsAreSuspended documentation> 
animationsAreSuspended :: (MonadDOM m) => Internals -> m Bool
animationsAreSuspended self
  = liftDOM ((self ^. js "animationsAreSuspended") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnElement Mozilla Internals.pauseAnimationAtTimeOnElement documentation> 
pauseAnimationAtTimeOnElement ::
                              (MonadDOM m, ToJSString animationName, IsElement element) =>
                                Internals -> animationName -> Double -> Maybe element -> m Bool
pauseAnimationAtTimeOnElement self animationName pauseTime element
  = liftDOM
      ((self ^. jsf "pauseAnimationAtTimeOnElement"
          [toJSVal animationName, toJSVal pauseTime, toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnPseudoElement Mozilla Internals.pauseAnimationAtTimeOnPseudoElement documentation> 
pauseAnimationAtTimeOnPseudoElement ::
                                    (MonadDOM m, ToJSString animationName, IsElement element,
                                     ToJSString pseudoId) =>
                                      Internals ->
                                        animationName ->
                                          Double -> Maybe element -> pseudoId -> m Bool
pauseAnimationAtTimeOnPseudoElement self animationName pauseTime
  element pseudoId
  = liftDOM
      ((self ^. jsf "pauseAnimationAtTimeOnPseudoElement"
          [toJSVal animationName, toJSVal pauseTime, toJSVal element,
           toJSVal pseudoId])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnElement Mozilla Internals.pauseTransitionAtTimeOnElement documentation> 
pauseTransitionAtTimeOnElement ::
                               (MonadDOM m, ToJSString propertyName, IsElement element) =>
                                 Internals -> propertyName -> Double -> Maybe element -> m Bool
pauseTransitionAtTimeOnElement self propertyName pauseTime element
  = liftDOM
      ((self ^. jsf "pauseTransitionAtTimeOnElement"
          [toJSVal propertyName, toJSVal pauseTime, toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnPseudoElement Mozilla Internals.pauseTransitionAtTimeOnPseudoElement documentation> 
pauseTransitionAtTimeOnPseudoElement ::
                                     (MonadDOM m, ToJSString property, IsElement element,
                                      ToJSString pseudoId) =>
                                       Internals ->
                                         property -> Double -> Maybe element -> pseudoId -> m Bool
pauseTransitionAtTimeOnPseudoElement self property pauseTime
  element pseudoId
  = liftDOM
      ((self ^. jsf "pauseTransitionAtTimeOnPseudoElement"
          [toJSVal property, toJSVal pauseTime, toJSVal element,
           toJSVal pseudoId])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.attached Mozilla Internals.attached documentation> 
attached ::
         (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Bool
attached self node
  = liftDOM ((self ^. jsf "attached" [toJSVal node]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.visiblePlaceholder Mozilla Internals.visiblePlaceholder documentation> 
visiblePlaceholder ::
                   (MonadDOM m, IsElement element, FromJSString result) =>
                     Internals -> Maybe element -> m result
visiblePlaceholder self element
  = liftDOM
      ((self ^. jsf "visiblePlaceholder" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectColorInColorChooser Mozilla Internals.selectColorInColorChooser documentation> 
selectColorInColorChooser ::
                          (MonadDOM m, IsElement element, ToJSString colorValue) =>
                            Internals -> Maybe element -> colorValue -> m ()
selectColorInColorChooser self element colorValue
  = liftDOM
      (void
         (self ^. jsf "selectColorInColorChooser"
            [toJSVal element, toJSVal colorValue]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
formControlStateOfPreviousHistoryItem ::
                                      (MonadDOM m, FromJSString result) => Internals -> m [result]
formControlStateOfPreviousHistoryItem self
  = liftDOM
      ((self ^. js "formControlStateOfPreviousHistoryItem") >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setFormControlStateOfPreviousHistoryItem Mozilla Internals.setFormControlStateOfPreviousHistoryItem documentation> 
setFormControlStateOfPreviousHistoryItem ::
                                         (MonadDOM m, ToJSString values) =>
                                           Internals -> [values] -> m ()
setFormControlStateOfPreviousHistoryItem self values
  = liftDOM
      (void
         (self ^. jsf "setFormControlStateOfPreviousHistoryItem"
            [toJSVal (array values)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBounds ::
                    (MonadDOM m) => Internals -> m (Maybe ClientRect)
absoluteCaretBounds self
  = liftDOM ((self ^. js "absoluteCaretBounds") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBox ::
            (MonadDOM m, IsElement element) =>
              Internals -> Maybe element -> m (Maybe ClientRect)
boundingBox self element
  = liftDOM
      ((self ^. jsf "boundingBox" [toJSVal element]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRects ::
                        (MonadDOM m) => Internals -> m (Maybe ClientRectList)
inspectorHighlightRects self
  = liftDOM ((self ^. js "inspectorHighlightRects") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightObject Mozilla Internals.inspectorHighlightObject documentation> 
inspectorHighlightObject ::
                         (MonadDOM m, FromJSString result) => Internals -> m result
inspectorHighlightObject self
  = liftDOM
      ((self ^. js "inspectorHighlightObject") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerCountForNode Mozilla Internals.markerCountForNode documentation> 
markerCountForNode ::
                   (MonadDOM m, IsNode node, ToJSString markerType) =>
                     Internals -> Maybe node -> markerType -> m Word
markerCountForNode self node markerType
  = liftDOM
      (round <$>
         ((self ^. jsf "markerCountForNode"
             [toJSVal node, toJSVal markerType])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNode ::
                   (MonadDOM m, IsNode node, ToJSString markerType) =>
                     Internals -> Maybe node -> markerType -> Word -> m (Maybe Range)
markerRangeForNode self node markerType index
  = liftDOM
      ((self ^. jsf "markerRangeForNode"
          [toJSVal node, toJSVal markerType, toJSVal index])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerDescriptionForNode Mozilla Internals.markerDescriptionForNode documentation> 
markerDescriptionForNode ::
                         (MonadDOM m, IsNode node, ToJSString markerType,
                          FromJSString result) =>
                           Internals -> Maybe node -> markerType -> Word -> m result
markerDescriptionForNode self node markerType index
  = liftDOM
      ((self ^. jsf "markerDescriptionForNode"
          [toJSVal node, toJSVal markerType, toJSVal index])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.addTextMatchMarker Mozilla Internals.addTextMatchMarker documentation> 
addTextMatchMarker ::
                   (MonadDOM m) => Internals -> Maybe Range -> Bool -> m ()
addTextMatchMarker self range isActive
  = liftDOM
      (void
         (self ^. jsf "addTextMatchMarker"
            [toJSVal range, toJSVal isActive]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setMarkedTextMatchesAreHighlighted Mozilla Internals.setMarkedTextMatchesAreHighlighted documentation> 
setMarkedTextMatchesAreHighlighted ::
                                   (MonadDOM m) => Internals -> Bool -> m ()
setMarkedTextMatchesAreHighlighted self flag
  = liftDOM
      (void
         (self ^. jsf "setMarkedTextMatchesAreHighlighted" [toJSVal flag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.invalidateFontCache Mozilla Internals.invalidateFontCache documentation> 
invalidateFontCache :: (MonadDOM m) => Internals -> m ()
invalidateFontCache self
  = liftDOM (void (self ^. js "invalidateFontCache"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setScrollViewPosition Mozilla Internals.setScrollViewPosition documentation> 
setScrollViewPosition ::
                      (MonadDOM m) => Internals -> Int -> Int -> m ()
setScrollViewPosition self x y
  = liftDOM
      (void (self ^. jsf "setScrollViewPosition" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPagination Mozilla Internals.setPagination documentation> 
setPagination ::
              (MonadDOM m, ToJSString mode) =>
                Internals -> mode -> Int -> Int -> m ()
setPagination self mode gap pageLength
  = liftDOM
      (void
         (self ^. jsf "setPagination"
            [toJSVal mode, toJSVal gap, toJSVal pageLength]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.configurationForViewport Mozilla Internals.configurationForViewport documentation> 
configurationForViewport ::
                         (MonadDOM m, FromJSString result) =>
                           Internals -> Float -> Int -> Int -> Int -> Int -> m result
configurationForViewport self devicePixelRatio deviceWidth
  deviceHeight availableWidth availableHeight
  = liftDOM
      ((self ^. jsf "configurationForViewport"
          [toJSVal devicePixelRatio, toJSVal deviceWidth,
           toJSVal deviceHeight, toJSVal availableWidth,
           toJSVal availableHeight])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wasLastChangeUserEdit Mozilla Internals.wasLastChangeUserEdit documentation> 
wasLastChangeUserEdit ::
                      (MonadDOM m, IsElement textField) =>
                        Internals -> Maybe textField -> m Bool
wasLastChangeUserEdit self textField
  = liftDOM
      ((self ^. jsf "wasLastChangeUserEdit" [toJSVal textField]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementShouldAutoComplete Mozilla Internals.elementShouldAutoComplete documentation> 
elementShouldAutoComplete ::
                          (MonadDOM m, IsElement inputElement) =>
                            Internals -> Maybe inputElement -> m Bool
elementShouldAutoComplete self inputElement
  = liftDOM
      ((self ^. jsf "elementShouldAutoComplete" [toJSVal inputElement])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setEditingValue Mozilla Internals.setEditingValue documentation> 
setEditingValue ::
                (MonadDOM m, IsElement inputElement, ToJSString value) =>
                  Internals -> Maybe inputElement -> value -> m ()
setEditingValue self inputElement value
  = liftDOM
      (void
         (self ^. jsf "setEditingValue"
            [toJSVal inputElement, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutofilled Mozilla Internals.setAutofilled documentation> 
setAutofilled ::
              (MonadDOM m, IsElement inputElement) =>
                Internals -> Maybe inputElement -> Bool -> m ()
setAutofilled self inputElement enabled
  = liftDOM
      (void
         (self ^. jsf "setAutofilled"
            [toJSVal inputElement, toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.countMatchesForText Mozilla Internals.countMatchesForText documentation> 
countMatchesForText ::
                    (MonadDOM m, ToJSString text, ToJSString markMatches) =>
                      Internals -> text -> Word -> markMatches -> m Word
countMatchesForText self text findOptions markMatches
  = liftDOM
      (round <$>
         ((self ^. jsf "countMatchesForText"
             [toJSVal text, toJSVal findOptions, toJSVal markMatches])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.paintControlTints Mozilla Internals.paintControlTints documentation> 
paintControlTints :: (MonadDOM m) => Internals -> m ()
paintControlTints self
  = liftDOM (void (self ^. js "paintControlTints"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollElementToRect Mozilla Internals.scrollElementToRect documentation> 
scrollElementToRect ::
                    (MonadDOM m, IsElement element) =>
                      Internals -> Maybe element -> Int -> Int -> Int -> Int -> m ()
scrollElementToRect self element x y w h
  = liftDOM
      (void
         (self ^. jsf "scrollElementToRect"
            [toJSVal element, toJSVal x, toJSVal y, toJSVal w, toJSVal h]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLength ::
                           (MonadDOM m, IsElement scope) =>
                             Internals -> Maybe scope -> Int -> Int -> m (Maybe Range)
rangeFromLocationAndLength self scope rangeLocation rangeLength
  = liftDOM
      ((self ^. jsf "rangeFromLocationAndLength"
          [toJSVal scope, toJSVal rangeLocation, toJSVal rangeLength])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.locationFromRange Mozilla Internals.locationFromRange documentation> 
locationFromRange ::
                  (MonadDOM m, IsElement scope) =>
                    Internals -> Maybe scope -> Maybe Range -> m Word
locationFromRange self scope range
  = liftDOM
      (round <$>
         ((self ^. jsf "locationFromRange" [toJSVal scope, toJSVal range])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lengthFromRange Mozilla Internals.lengthFromRange documentation> 
lengthFromRange ::
                (MonadDOM m, IsElement scope) =>
                  Internals -> Maybe scope -> Maybe Range -> m Word
lengthFromRange self scope range
  = liftDOM
      (round <$>
         ((self ^. jsf "lengthFromRange" [toJSVal scope, toJSVal range]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeAsText Mozilla Internals.rangeAsText documentation> 
rangeAsText ::
            (MonadDOM m, FromJSString result) =>
              Internals -> Maybe Range -> m result
rangeAsText self range
  = liftDOM
      ((self ^. jsf "rangeAsText" [toJSVal range]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrange ::
         (MonadDOM m) =>
           Internals -> Maybe Range -> Int -> Int -> m (Maybe Range)
subrange self range rangeLocation rangeLength
  = liftDOM
      ((self ^. jsf "subrange"
          [toJSVal range, toJSVal rangeLocation, toJSVal rangeLength])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocation ::
                                   (MonadDOM m) => Internals -> Int -> Int -> m (Maybe Range)
rangeForDictionaryLookupAtLocation self x y
  = liftDOM
      ((self ^. jsf "rangeForDictionaryLookupAtLocation"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setDelegatesScrolling Mozilla Internals.setDelegatesScrolling documentation> 
setDelegatesScrolling :: (MonadDOM m) => Internals -> Bool -> m ()
setDelegatesScrolling self enabled
  = liftDOM
      (void (self ^. jsf "setDelegatesScrolling" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckRequestSequence Mozilla Internals.lastSpellCheckRequestSequence documentation> 
lastSpellCheckRequestSequence :: (MonadDOM m) => Internals -> m Int
lastSpellCheckRequestSequence self
  = liftDOM
      (round <$>
         ((self ^. js "lastSpellCheckRequestSequence") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckProcessedSequence Mozilla Internals.lastSpellCheckProcessedSequence documentation> 
lastSpellCheckProcessedSequence ::
                                (MonadDOM m) => Internals -> m Int
lastSpellCheckProcessedSequence self
  = liftDOM
      (round <$>
         ((self ^. js "lastSpellCheckProcessedSequence") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
userPreferredLanguages ::
                       (MonadDOM m, FromJSString result) => Internals -> m [result]
userPreferredLanguages self
  = liftDOM
      ((self ^. js "userPreferredLanguages") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setUserPreferredLanguages Mozilla Internals.setUserPreferredLanguages documentation> 
setUserPreferredLanguages ::
                          (MonadDOM m, ToJSString languages) =>
                            Internals -> [languages] -> m ()
setUserPreferredLanguages self languages
  = liftDOM
      (void
         (self ^. jsf "setUserPreferredLanguages"
            [toJSVal (array languages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wheelEventHandlerCount Mozilla Internals.wheelEventHandlerCount documentation> 
wheelEventHandlerCount :: (MonadDOM m) => Internals -> m Word
wheelEventHandlerCount self
  = liftDOM
      (round <$> ((self ^. js "wheelEventHandlerCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.touchEventHandlerCount Mozilla Internals.touchEventHandlerCount documentation> 
touchEventHandlerCount :: (MonadDOM m) => Internals -> m Word
touchEventHandlerCount self
  = liftDOM
      (round <$> ((self ^. js "touchEventHandlerCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRect ::
              (MonadDOM m, IsDocument document) =>
                Internals ->
                  Maybe document ->
                    Int ->
                      Int ->
                        Word ->
                          Word -> Word -> Word -> Bool -> Bool -> Bool -> m (Maybe NodeList)
nodesFromRect self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftDOM
      ((self ^. jsf "nodesFromRect"
          [toJSVal document, toJSVal x, toJSVal y, toJSVal topPadding,
           toJSVal rightPadding, toJSVal bottomPadding, toJSVal leftPadding,
           toJSVal ignoreClipping, toJSVal allowShadowContent,
           toJSVal allowChildFrameContent])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parserMetaData Mozilla Internals.parserMetaData documentation> 
parserMetaData ::
               (MonadDOM m, FromJSString result) => Internals -> JSVal -> m result
parserMetaData self func
  = liftDOM
      ((self ^. jsf "parserMetaData" [toJSVal func]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateEditorUINowIfScheduled Mozilla Internals.updateEditorUINowIfScheduled documentation> 
updateEditorUINowIfScheduled :: (MonadDOM m) => Internals -> m ()
updateEditorUINowIfScheduled self
  = liftDOM (void (self ^. js "updateEditorUINowIfScheduled"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasSpellingMarker Mozilla Internals.hasSpellingMarker documentation> 
hasSpellingMarker ::
                  (MonadDOM m) => Internals -> Int -> Int -> m Bool
hasSpellingMarker self from length
  = liftDOM
      ((self ^. jsf "hasSpellingMarker" [toJSVal from, toJSVal length])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasGrammarMarker Mozilla Internals.hasGrammarMarker documentation> 
hasGrammarMarker ::
                 (MonadDOM m) => Internals -> Int -> Int -> m Bool
hasGrammarMarker self from length
  = liftDOM
      ((self ^. jsf "hasGrammarMarker" [toJSVal from, toJSVal length])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasAutocorrectedMarker Mozilla Internals.hasAutocorrectedMarker documentation> 
hasAutocorrectedMarker ::
                       (MonadDOM m) => Internals -> Int -> Int -> m Bool
hasAutocorrectedMarker self from length
  = liftDOM
      ((self ^. jsf "hasAutocorrectedMarker"
          [toJSVal from, toJSVal length])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setContinuousSpellCheckingEnabled Mozilla Internals.setContinuousSpellCheckingEnabled documentation> 
setContinuousSpellCheckingEnabled ::
                                  (MonadDOM m) => Internals -> Bool -> m ()
setContinuousSpellCheckingEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setContinuousSpellCheckingEnabled"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticQuoteSubstitutionEnabled Mozilla Internals.setAutomaticQuoteSubstitutionEnabled documentation> 
setAutomaticQuoteSubstitutionEnabled ::
                                     (MonadDOM m) => Internals -> Bool -> m ()
setAutomaticQuoteSubstitutionEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setAutomaticQuoteSubstitutionEnabled"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticLinkDetectionEnabled Mozilla Internals.setAutomaticLinkDetectionEnabled documentation> 
setAutomaticLinkDetectionEnabled ::
                                 (MonadDOM m) => Internals -> Bool -> m ()
setAutomaticLinkDetectionEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setAutomaticLinkDetectionEnabled" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticDashSubstitutionEnabled Mozilla Internals.setAutomaticDashSubstitutionEnabled documentation> 
setAutomaticDashSubstitutionEnabled ::
                                    (MonadDOM m) => Internals -> Bool -> m ()
setAutomaticDashSubstitutionEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setAutomaticDashSubstitutionEnabled"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticTextReplacementEnabled Mozilla Internals.setAutomaticTextReplacementEnabled documentation> 
setAutomaticTextReplacementEnabled ::
                                   (MonadDOM m) => Internals -> Bool -> m ()
setAutomaticTextReplacementEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setAutomaticTextReplacementEnabled"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticSpellingCorrectionEnabled Mozilla Internals.setAutomaticSpellingCorrectionEnabled documentation> 
setAutomaticSpellingCorrectionEnabled ::
                                      (MonadDOM m) => Internals -> Bool -> m ()
setAutomaticSpellingCorrectionEnabled self enabled
  = liftDOM
      (void
         (self ^. jsf "setAutomaticSpellingCorrectionEnabled"
            [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isOverwriteModeEnabled Mozilla Internals.isOverwriteModeEnabled documentation> 
isOverwriteModeEnabled :: (MonadDOM m) => Internals -> m Bool
isOverwriteModeEnabled self
  = liftDOM ((self ^. js "isOverwriteModeEnabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toggleOverwriteModeEnabled Mozilla Internals.toggleOverwriteModeEnabled documentation> 
toggleOverwriteModeEnabled :: (MonadDOM m) => Internals -> m ()
toggleOverwriteModeEnabled self
  = liftDOM (void (self ^. js "toggleOverwriteModeEnabled"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfScrollableAreas Mozilla Internals.numberOfScrollableAreas documentation> 
numberOfScrollableAreas :: (MonadDOM m) => Internals -> m Word
numberOfScrollableAreas self
  = liftDOM
      (round <$>
         ((self ^. js "numberOfScrollableAreas") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPageBoxVisible Mozilla Internals.isPageBoxVisible documentation> 
isPageBoxVisible :: (MonadDOM m) => Internals -> Int -> m Bool
isPageBoxVisible self pageNumber
  = liftDOM
      ((self ^. jsf "isPageBoxVisible" [toJSVal pageNumber]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.layerTreeAsText Mozilla Internals.layerTreeAsText documentation> 
layerTreeAsText ::
                (MonadDOM m, IsDocument document, FromJSString result) =>
                  Internals -> Maybe document -> Word -> m result
layerTreeAsText self document flags
  = liftDOM
      ((self ^. jsf "layerTreeAsText" [toJSVal document, toJSVal flags])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollingStateTreeAsText Mozilla Internals.scrollingStateTreeAsText documentation> 
scrollingStateTreeAsText ::
                         (MonadDOM m, FromJSString result) => Internals -> m result
scrollingStateTreeAsText self
  = liftDOM
      ((self ^. js "scrollingStateTreeAsText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mainThreadScrollingReasons Mozilla Internals.mainThreadScrollingReasons documentation> 
mainThreadScrollingReasons ::
                           (MonadDOM m, FromJSString result) => Internals -> m result
mainThreadScrollingReasons self
  = liftDOM
      ((self ^. js "mainThreadScrollingReasons") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRects ::
                       (MonadDOM m) => Internals -> m (Maybe ClientRectList)
nonFastScrollableRects self
  = liftDOM ((self ^. js "nonFastScrollableRects") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.repaintRectsAsText Mozilla Internals.repaintRectsAsText documentation> 
repaintRectsAsText ::
                   (MonadDOM m, FromJSString result) => Internals -> m result
repaintRectsAsText self
  = liftDOM
      ((self ^. js "repaintRectsAsText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.garbageCollectDocumentResources Mozilla Internals.garbageCollectDocumentResources documentation> 
garbageCollectDocumentResources ::
                                (MonadDOM m) => Internals -> m ()
garbageCollectDocumentResources self
  = liftDOM (void (self ^. js "garbageCollectDocumentResources"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allowRoundingHacks Mozilla Internals.allowRoundingHacks documentation> 
allowRoundingHacks :: (MonadDOM m) => Internals -> m ()
allowRoundingHacks self
  = liftDOM (void (self ^. js "allowRoundingHacks"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertAuthorCSS Mozilla Internals.insertAuthorCSS documentation> 
insertAuthorCSS ::
                (MonadDOM m, ToJSString css) => Internals -> css -> m ()
insertAuthorCSS self css
  = liftDOM (void (self ^. jsf "insertAuthorCSS" [toJSVal css]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertUserCSS Mozilla Internals.insertUserCSS documentation> 
insertUserCSS ::
              (MonadDOM m, ToJSString css) => Internals -> css -> m ()
insertUserCSS self css
  = liftDOM (void (self ^. jsf "insertUserCSS" [toJSVal css]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setBatteryStatus Mozilla Internals.setBatteryStatus documentation> 
setBatteryStatus ::
                 (MonadDOM m, ToJSString eventType) =>
                   Internals ->
                     eventType -> Bool -> Double -> Double -> Double -> m ()
setBatteryStatus self eventType charging chargingTime
  dischargingTime level
  = liftDOM
      (void
         (self ^. jsf "setBatteryStatus"
            [toJSVal eventType, toJSVal charging, toJSVal chargingTime,
             toJSVal dischargingTime, toJSVal level]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setDeviceProximity Mozilla Internals.setDeviceProximity documentation> 
setDeviceProximity ::
                   (MonadDOM m, ToJSString eventType) =>
                     Internals -> eventType -> Double -> Double -> Double -> m ()
setDeviceProximity self eventType value min max
  = liftDOM
      (void
         (self ^. jsf "setDeviceProximity"
            [toJSVal eventType, toJSVal value, toJSVal min, toJSVal max]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveNodes Mozilla Internals.numberOfLiveNodes documentation> 
numberOfLiveNodes :: (MonadDOM m) => Internals -> m Word
numberOfLiveNodes self
  = liftDOM
      (round <$> ((self ^. js "numberOfLiveNodes") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveDocuments Mozilla Internals.numberOfLiveDocuments documentation> 
numberOfLiveDocuments :: (MonadDOM m) => Internals -> m Word
numberOfLiveDocuments self
  = liftDOM
      (round <$> ((self ^. js "numberOfLiveDocuments") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleMessageArgumentCounts Mozilla Internals.consoleMessageArgumentCounts documentation> 
consoleMessageArgumentCounts ::
                             (MonadDOM m, FromJSString result) => Internals -> m [result]
consoleMessageArgumentCounts self
  = liftDOM
      ((self ^. js "consoleMessageArgumentCounts") >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontend ::
                           (MonadDOM m, ToJSString url) =>
                             Internals -> url -> m (Maybe Window)
openDummyInspectorFrontend self url
  = liftDOM
      ((self ^. jsf "openDummyInspectorFrontend" [toJSVal url]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closeDummyInspectorFrontend Mozilla Internals.closeDummyInspectorFrontend documentation> 
closeDummyInspectorFrontend :: (MonadDOM m) => Internals -> m ()
closeDummyInspectorFrontend self
  = liftDOM (void (self ^. js "closeDummyInspectorFrontend"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setJavaScriptProfilingEnabled Mozilla Internals.setJavaScriptProfilingEnabled documentation> 
setJavaScriptProfilingEnabled ::
                              (MonadDOM m) => Internals -> Bool -> m ()
setJavaScriptProfilingEnabled self creates
  = liftDOM
      (void
         (self ^. jsf "setJavaScriptProfilingEnabled" [toJSVal creates]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setInspectorIsUnderTest Mozilla Internals.setInspectorIsUnderTest documentation> 
setInspectorIsUnderTest ::
                        (MonadDOM m) => Internals -> Bool -> m ()
setInspectorIsUnderTest self isUnderTest
  = liftDOM
      (void
         (self ^. jsf "setInspectorIsUnderTest" [toJSVal isUnderTest]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.counterValue Mozilla Internals.counterValue documentation> 
counterValue ::
             (MonadDOM m, IsElement element, FromJSString result) =>
               Internals -> Maybe element -> m result
counterValue self element
  = liftDOM
      ((self ^. jsf "counterValue" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageNumber Mozilla Internals.pageNumber documentation> 
pageNumber ::
           (MonadDOM m, IsElement element) =>
             Internals -> Maybe element -> Float -> Float -> m Int
pageNumber self element pageWidth pageHeight
  = liftDOM
      (round <$>
         ((self ^. jsf "pageNumber"
             [toJSVal element, toJSVal pageWidth, toJSVal pageHeight])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shortcutIconURLs Mozilla Internals.shortcutIconURLs documentation> 
shortcutIconURLs ::
                 (MonadDOM m, FromJSString result) => Internals -> m [result]
shortcutIconURLs self
  = liftDOM
      ((self ^. js "shortcutIconURLs") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allIconURLs Mozilla Internals.allIconURLs documentation> 
allIconURLs ::
            (MonadDOM m, FromJSString result) => Internals -> m [result]
allIconURLs self
  = liftDOM ((self ^. js "allIconURLs") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfPages Mozilla Internals.numberOfPages documentation> 
numberOfPages ::
              (MonadDOM m) => Internals -> Double -> Double -> m Int
numberOfPages self pageWidthInPixels pageHeightInPixels
  = liftDOM
      (round <$>
         ((self ^. jsf "numberOfPages"
             [toJSVal pageWidthInPixels, toJSVal pageHeightInPixels])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageProperty Mozilla Internals.pageProperty documentation> 
pageProperty ::
             (MonadDOM m, ToJSString propertyName, FromJSString result) =>
               Internals -> propertyName -> Int -> m result
pageProperty self propertyName pageNumber
  = liftDOM
      ((self ^. jsf "pageProperty"
          [toJSVal propertyName, toJSVal pageNumber])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageSizeAndMarginsInPixels Mozilla Internals.pageSizeAndMarginsInPixels documentation> 
pageSizeAndMarginsInPixels ::
                           (MonadDOM m, FromJSString result) =>
                             Internals ->
                               Int -> Int -> Int -> Int -> Int -> Int -> Int -> m result
pageSizeAndMarginsInPixels self pageIndex width height marginTop
  marginRight marginBottom marginLeft
  = liftDOM
      ((self ^. jsf "pageSizeAndMarginsInPixels"
          [toJSVal pageIndex, toJSVal width, toJSVal height,
           toJSVal marginTop, toJSVal marginRight, toJSVal marginBottom,
           toJSVal marginLeft])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPageScaleFactor Mozilla Internals.setPageScaleFactor documentation> 
setPageScaleFactor ::
                   (MonadDOM m) => Internals -> Float -> Int -> Int -> m ()
setPageScaleFactor self scaleFactor x y
  = liftDOM
      (void
         (self ^. jsf "setPageScaleFactor"
            [toJSVal scaleFactor, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPageZoomFactor Mozilla Internals.setPageZoomFactor documentation> 
setPageZoomFactor :: (MonadDOM m) => Internals -> Float -> m ()
setPageZoomFactor self zoomFactor
  = liftDOM
      (void (self ^. jsf "setPageZoomFactor" [toJSVal zoomFactor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setHeaderHeight Mozilla Internals.setHeaderHeight documentation> 
setHeaderHeight :: (MonadDOM m) => Internals -> Float -> m ()
setHeaderHeight self height
  = liftDOM (void (self ^. jsf "setHeaderHeight" [toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setFooterHeight Mozilla Internals.setFooterHeight documentation> 
setFooterHeight :: (MonadDOM m) => Internals -> Float -> m ()
setFooterHeight self height
  = liftDOM (void (self ^. jsf "setFooterHeight" [toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setTopContentInset Mozilla Internals.setTopContentInset documentation> 
setTopContentInset :: (MonadDOM m) => Internals -> Float -> m ()
setTopContentInset self contentInset
  = liftDOM
      (void (self ^. jsf "setTopContentInset" [toJSVal contentInset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillEnterFullScreenForElement Mozilla Internals.webkitWillEnterFullScreenForElement documentation> 
webkitWillEnterFullScreenForElement ::
                                    (MonadDOM m, IsElement element) =>
                                      Internals -> Maybe element -> m ()
webkitWillEnterFullScreenForElement self element
  = liftDOM
      (void
         (self ^. jsf "webkitWillEnterFullScreenForElement"
            [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidEnterFullScreenForElement Mozilla Internals.webkitDidEnterFullScreenForElement documentation> 
webkitDidEnterFullScreenForElement ::
                                   (MonadDOM m, IsElement element) =>
                                     Internals -> Maybe element -> m ()
webkitDidEnterFullScreenForElement self element
  = liftDOM
      (void
         (self ^. jsf "webkitDidEnterFullScreenForElement"
            [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillExitFullScreenForElement Mozilla Internals.webkitWillExitFullScreenForElement documentation> 
webkitWillExitFullScreenForElement ::
                                   (MonadDOM m, IsElement element) =>
                                     Internals -> Maybe element -> m ()
webkitWillExitFullScreenForElement self element
  = liftDOM
      (void
         (self ^. jsf "webkitWillExitFullScreenForElement"
            [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidExitFullScreenForElement Mozilla Internals.webkitDidExitFullScreenForElement documentation> 
webkitDidExitFullScreenForElement ::
                                  (MonadDOM m, IsElement element) =>
                                    Internals -> Maybe element -> m ()
webkitDidExitFullScreenForElement self element
  = liftDOM
      (void
         (self ^. jsf "webkitDidExitFullScreenForElement"
            [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setApplicationCacheOriginQuota Mozilla Internals.setApplicationCacheOriginQuota documentation> 
setApplicationCacheOriginQuota ::
                               (MonadDOM m) => Internals -> Word64 -> m ()
setApplicationCacheOriginQuota self quota
  = liftDOM
      (void
         (self ^. jsf "setApplicationCacheOriginQuota" [toJSVal quota]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.registerURLSchemeAsBypassingContentSecurityPolicy Mozilla Internals.registerURLSchemeAsBypassingContentSecurityPolicy documentation> 
registerURLSchemeAsBypassingContentSecurityPolicy ::
                                                  (MonadDOM m, ToJSString scheme) =>
                                                    Internals -> scheme -> m ()
registerURLSchemeAsBypassingContentSecurityPolicy self scheme
  = liftDOM
      (void
         (self ^. jsf "registerURLSchemeAsBypassingContentSecurityPolicy"
            [toJSVal scheme]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy Mozilla Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy documentation> 
removeURLSchemeRegisteredAsBypassingContentSecurityPolicy ::
                                                          (MonadDOM m, ToJSString scheme) =>
                                                            Internals -> scheme -> m ()
removeURLSchemeRegisteredAsBypassingContentSecurityPolicy self
  scheme
  = liftDOM
      (void
         (self ^.
            jsf "removeURLSchemeRegisteredAsBypassingContentSecurityPolicy"
            [toJSVal scheme]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatistics ::
                 (MonadDOM m) => Internals -> m (Maybe MallocStatistics)
mallocStatistics self
  = liftDOM ((self ^. js "mallocStatistics") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversions ::
                (MonadDOM m) => Internals -> m (Maybe TypeConversions)
typeConversions self
  = liftDOM ((self ^. js "typeConversions") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfo :: (MonadDOM m) => Internals -> m (Maybe MemoryInfo)
memoryInfo self = liftDOM ((self ^. js "memoryInfo") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getReferencedFilePaths Mozilla Internals.getReferencedFilePaths documentation> 
getReferencedFilePaths ::
                       (MonadDOM m, FromJSString result) => Internals -> m [result]
getReferencedFilePaths self
  = liftDOM
      ((self ^. js "getReferencedFilePaths") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.startTrackingRepaints Mozilla Internals.startTrackingRepaints documentation> 
startTrackingRepaints :: (MonadDOM m) => Internals -> m ()
startTrackingRepaints self
  = liftDOM (void (self ^. js "startTrackingRepaints"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.stopTrackingRepaints Mozilla Internals.stopTrackingRepaints documentation> 
stopTrackingRepaints :: (MonadDOM m) => Internals -> m ()
stopTrackingRepaints self
  = liftDOM (void (self ^. js "stopTrackingRepaints"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isTimerThrottled Mozilla Internals.isTimerThrottled documentation> 
isTimerThrottled :: (MonadDOM m) => Internals -> Int -> m Bool
isTimerThrottled self timerHandle
  = liftDOM
      ((self ^. jsf "isTimerThrottled" [toJSVal timerHandle]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks Mozilla Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks documentation> 
updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks ::
                                                          (MonadDOM m, IsNode node) =>
                                                            Internals -> Maybe node -> m ()
updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks self node
  = liftDOM
      (void
         (self ^.
            jsf "updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks"
            [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getCurrentCursorInfo Mozilla Internals.getCurrentCursorInfo documentation> 
getCurrentCursorInfo ::
                     (MonadDOM m, FromJSString result) => Internals -> m result
getCurrentCursorInfo self
  = liftDOM
      ((self ^. js "getCurrentCursorInfo") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerTextForListItem Mozilla Internals.markerTextForListItem documentation> 
markerTextForListItem ::
                      (MonadDOM m, IsElement element, FromJSString result) =>
                        Internals -> Maybe element -> m result
markerTextForListItem self element
  = liftDOM
      ((self ^. jsf "markerTextForListItem" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toolTipFromElement Mozilla Internals.toolTipFromElement documentation> 
toolTipFromElement ::
                   (MonadDOM m, IsElement element, FromJSString result) =>
                     Internals -> Maybe element -> m result
toolTipFromElement self element
  = liftDOM
      ((self ^. jsf "toolTipFromElement" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBuffer ::
                  (MonadDOM m, IsArrayBuffer buffer) =>
                    Internals -> Maybe buffer -> m (Maybe SerializedScriptValue)
deserializeBuffer self buffer
  = liftDOM
      ((self ^. jsf "deserializeBuffer" [toJSVal buffer]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObject ::
                (MonadDOM m, IsSerializedScriptValue obj) =>
                  Internals -> Maybe obj -> m (Maybe ArrayBuffer)
serializeObject self obj
  = liftDOM
      ((self ^. jsf "serializeObject" [toJSVal obj]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setUsesOverlayScrollbars Mozilla Internals.setUsesOverlayScrollbars documentation> 
setUsesOverlayScrollbars ::
                         (MonadDOM m) => Internals -> Bool -> m ()
setUsesOverlayScrollbars self enabled
  = liftDOM
      (void (self ^. jsf "setUsesOverlayScrollbars" [toJSVal enabled]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.forceReload Mozilla Internals.forceReload documentation> 
forceReload :: (MonadDOM m) => Internals -> Bool -> m ()
forceReload self endToEnd
  = liftDOM (void (self ^. jsf "forceReload" [toJSVal endToEnd]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateAudioInterruption Mozilla Internals.simulateAudioInterruption documentation> 
simulateAudioInterruption ::
                          (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
simulateAudioInterruption self node
  = liftDOM
      (void (self ^. jsf "simulateAudioInterruption" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaElementHasCharacteristic Mozilla Internals.mediaElementHasCharacteristic documentation> 
mediaElementHasCharacteristic ::
                              (MonadDOM m, IsNode node, ToJSString characteristic) =>
                                Internals -> Maybe node -> characteristic -> m Bool
mediaElementHasCharacteristic self node characteristic
  = liftDOM
      ((self ^. jsf "mediaElementHasCharacteristic"
          [toJSVal node, toJSVal characteristic])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockCDM Mozilla Internals.initializeMockCDM documentation> 
initializeMockCDM :: (MonadDOM m) => Internals -> m ()
initializeMockCDM self
  = liftDOM (void (self ^. js "initializeMockCDM"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.enableMockSpeechSynthesizer Mozilla Internals.enableMockSpeechSynthesizer documentation> 
enableMockSpeechSynthesizer :: (MonadDOM m) => Internals -> m ()
enableMockSpeechSynthesizer self
  = liftDOM (void (self ^. js "enableMockSpeechSynthesizer"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getImageSourceURL Mozilla Internals.getImageSourceURL documentation> 
getImageSourceURL ::
                  (MonadDOM m, IsElement element, FromJSString result) =>
                    Internals -> Maybe element -> m result
getImageSourceURL self element
  = liftDOM
      ((self ^. jsf "getImageSourceURL" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
captionsStyleSheetOverride ::
                           (MonadDOM m, FromJSString result) => Internals -> m result
captionsStyleSheetOverride self
  = liftDOM
      ((self ^. js "captionsStyleSheetOverride") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setCaptionsStyleSheetOverride Mozilla Internals.setCaptionsStyleSheetOverride documentation> 
setCaptionsStyleSheetOverride ::
                              (MonadDOM m, ToJSString override) => Internals -> override -> m ()
setCaptionsStyleSheetOverride self override
  = liftDOM
      (void
         (self ^. jsf "setCaptionsStyleSheetOverride" [toJSVal override]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPrimaryAudioTrackLanguageOverride Mozilla Internals.setPrimaryAudioTrackLanguageOverride documentation> 
setPrimaryAudioTrackLanguageOverride ::
                                     (MonadDOM m, ToJSString language) =>
                                       Internals -> language -> m ()
setPrimaryAudioTrackLanguageOverride self language
  = liftDOM
      (void
         (self ^. jsf "setPrimaryAudioTrackLanguageOverride"
            [toJSVal language]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setCaptionDisplayMode Mozilla Internals.setCaptionDisplayMode documentation> 
setCaptionDisplayMode ::
                      (MonadDOM m, ToJSString mode) => Internals -> mode -> m ()
setCaptionDisplayMode self mode
  = liftDOM
      (void (self ^. jsf "setCaptionDisplayMode" [toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRanges ::
                 (MonadDOM m, IsFloat32Array startTimes, IsFloat32Array endTimes) =>
                   Internals ->
                     Maybe startTimes -> Maybe endTimes -> m (Maybe TimeRanges)
createTimeRanges self startTimes endTimes
  = liftDOM
      ((self ^. jsf "createTimeRanges"
          [toJSVal startTimes, toJSVal endTimes])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closestTimeToTimeRanges Mozilla Internals.closestTimeToTimeRanges documentation> 
closestTimeToTimeRanges ::
                        (MonadDOM m) => Internals -> Double -> Maybe TimeRanges -> m Double
closestTimeToTimeRanges self time ranges
  = liftDOM
      ((self ^. jsf "closestTimeToTimeRanges"
          [toJSVal time, toJSVal ranges])
         >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isSelectPopupVisible Mozilla Internals.isSelectPopupVisible documentation> 
isSelectPopupVisible ::
                     (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Bool
isSelectPopupVisible self node
  = liftDOM
      ((self ^. jsf "isSelectPopupVisible" [toJSVal node]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isVibrating Mozilla Internals.isVibrating documentation> 
isVibrating :: (MonadDOM m) => Internals -> m Bool
isVibrating self
  = liftDOM ((self ^. js "isVibrating") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginUnavailabilityIndicatorObscured Mozilla Internals.isPluginUnavailabilityIndicatorObscured documentation> 
isPluginUnavailabilityIndicatorObscured ::
                                        (MonadDOM m, IsElement element) =>
                                          Internals -> Maybe element -> m Bool
isPluginUnavailabilityIndicatorObscured self element
  = liftDOM
      ((self ^. jsf "isPluginUnavailabilityIndicatorObscured"
          [toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginSnapshotted Mozilla Internals.isPluginSnapshotted documentation> 
isPluginSnapshotted ::
                    (MonadDOM m, IsElement element) =>
                      Internals -> Maybe element -> m Bool
isPluginSnapshotted self element
  = liftDOM
      ((self ^. jsf "isPluginSnapshotted" [toJSVal element]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBounds ::
                (MonadDOM m) => Internals -> m (Maybe ClientRect)
selectionBounds self
  = liftDOM ((self ^. js "selectionBounds") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockMediaSource Mozilla Internals.initializeMockMediaSource documentation> 
initializeMockMediaSource :: (MonadDOM m) => Internals -> m ()
initializeMockMediaSource self
  = liftDOM (void (self ^. js "initializeMockMediaSource"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.bufferedSamplesForTrackID Mozilla Internals.bufferedSamplesForTrackID documentation> 
bufferedSamplesForTrackID ::
                          (MonadDOM m, ToJSString trackID, FromJSString result) =>
                            Internals -> Maybe SourceBuffer -> trackID -> m [result]
bufferedSamplesForTrackID self buffer trackID
  = liftDOM
      ((self ^. jsf "bufferedSamplesForTrackID"
          [toJSVal buffer, toJSVal trackID])
         >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.beginMediaSessionInterruption Mozilla Internals.beginMediaSessionInterruption documentation> 
beginMediaSessionInterruption :: (MonadDOM m) => Internals -> m ()
beginMediaSessionInterruption self
  = liftDOM (void (self ^. js "beginMediaSessionInterruption"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.endMediaSessionInterruption Mozilla Internals.endMediaSessionInterruption documentation> 
endMediaSessionInterruption ::
                            (MonadDOM m, ToJSString flags) => Internals -> flags -> m ()
endMediaSessionInterruption self flags
  = liftDOM
      (void (self ^. jsf "endMediaSessionInterruption" [toJSVal flags]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterForeground Mozilla Internals.applicationWillEnterForeground documentation> 
applicationWillEnterForeground :: (MonadDOM m) => Internals -> m ()
applicationWillEnterForeground self
  = liftDOM (void (self ^. js "applicationWillEnterForeground"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterBackground Mozilla Internals.applicationWillEnterBackground documentation> 
applicationWillEnterBackground :: (MonadDOM m) => Internals -> m ()
applicationWillEnterBackground self
  = liftDOM (void (self ^. js "applicationWillEnterBackground"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setMediaSessionRestrictions Mozilla Internals.setMediaSessionRestrictions documentation> 
setMediaSessionRestrictions ::
                            (MonadDOM m, ToJSString mediaType, ToJSString restrictions) =>
                              Internals -> mediaType -> restrictions -> m ()
setMediaSessionRestrictions self mediaType restrictions
  = liftDOM
      (void
         (self ^. jsf "setMediaSessionRestrictions"
            [toJSVal mediaType, toJSVal restrictions]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.postRemoteControlCommand Mozilla Internals.postRemoteControlCommand documentation> 
postRemoteControlCommand ::
                         (MonadDOM m, ToJSString command) => Internals -> command -> m ()
postRemoteControlCommand self command
  = liftDOM
      (void (self ^. jsf "postRemoteControlCommand" [toJSVal command]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemSleep Mozilla Internals.simulateSystemSleep documentation> 
simulateSystemSleep :: (MonadDOM m) => Internals -> m ()
simulateSystemSleep self
  = liftDOM (void (self ^. js "simulateSystemSleep"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemWake Mozilla Internals.simulateSystemWake documentation> 
simulateSystemWake :: (MonadDOM m) => Internals -> m ()
simulateSystemWake self
  = liftDOM (void (self ^. js "simulateSystemWake"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementIsBlockingDisplaySleep Mozilla Internals.elementIsBlockingDisplaySleep documentation> 
elementIsBlockingDisplaySleep ::
                              (MonadDOM m, IsElement element) =>
                                Internals -> Maybe element -> m Bool
elementIsBlockingDisplaySleep self element
  = liftDOM
      ((self ^. jsf "elementIsBlockingDisplaySleep" [toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.installMockPageOverlay Mozilla Internals.installMockPageOverlay documentation> 
installMockPageOverlay ::
                       (MonadDOM m) => Internals -> PageOverlayType -> m ()
installMockPageOverlay self type'
  = liftDOM
      (void (self ^. jsf "installMockPageOverlay" [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageOverlayLayerTreeAsText Mozilla Internals.pageOverlayLayerTreeAsText documentation> 
pageOverlayLayerTreeAsText ::
                           (MonadDOM m, FromJSString result) => Internals -> m result
pageOverlayLayerTreeAsText self
  = liftDOM
      ((self ^. js "pageOverlayLayerTreeAsText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPageMuted Mozilla Internals.setPageMuted documentation> 
setPageMuted :: (MonadDOM m) => Internals -> Bool -> m ()
setPageMuted self muted
  = liftDOM (void (self ^. jsf "setPageMuted" [toJSVal muted]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPagePlayingAudio Mozilla Internals.isPagePlayingAudio documentation> 
isPagePlayingAudio :: (MonadDOM m) => Internals -> m Bool
isPagePlayingAudio self
  = liftDOM ((self ^. js "isPagePlayingAudio") >>= valToBool)
pattern LAYER_TREE_INCLUDES_VISIBLE_RECTS = 1
pattern LAYER_TREE_INCLUDES_TILE_CACHES = 2
pattern LAYER_TREE_INCLUDES_REPAINT_RECTS = 4
pattern LAYER_TREE_INCLUDES_PAINTING_PHASES = 8
pattern LAYER_TREE_INCLUDES_CONTENT_LAYERS = 16

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
getSettings ::
            (MonadDOM m) => Internals -> m (Maybe InternalSettings)
getSettings self = liftDOM ((self ^. js "settings") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.workerThreadCount Mozilla Internals.workerThreadCount documentation> 
getWorkerThreadCount :: (MonadDOM m) => Internals -> m Word
getWorkerThreadCount self
  = liftDOM
      (round <$> ((self ^. js "workerThreadCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleProfiles Mozilla Internals.consoleProfiles documentation> 
getConsoleProfiles ::
                   (MonadDOM m) => Internals -> m [Maybe ScriptProfile]
getConsoleProfiles self
  = liftDOM ((self ^. js "consoleProfiles") >>= fromJSArray)