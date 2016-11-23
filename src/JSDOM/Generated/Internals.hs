{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Internals
       (address, address_, nodeNeedsStyleRecalc, nodeNeedsStyleRecalc_,
        description, description_, hasPausedImageAnimations,
        hasPausedImageAnimations_, elementRenderTreeAsText,
        elementRenderTreeAsText_, isPreloaded, isPreloaded_,
        isLoadingFromMemoryCache, isLoadingFromMemoryCache_,
        xhrResponseSource, xhrResponseSource_, clearMemoryCache,
        pruneMemoryCacheToSize, memoryCacheSize, memoryCacheSize_,
        clearPageCache, pageCacheSize, pageCacheSize_,
        computedStyleIncludingVisitedInfo,
        computedStyleIncludingVisitedInfo_,
        computedStyleIncludingVisitedInfoUnsafe,
        computedStyleIncludingVisitedInfoUnchecked, ensureShadowRoot,
        ensureShadowRoot_, ensureShadowRootUnsafe,
        ensureShadowRootUnchecked, createShadowRoot, createShadowRoot_,
        createShadowRootUnsafe, createShadowRootUnchecked, shadowRoot,
        shadowRoot_, shadowRootUnsafe, shadowRootUnchecked, shadowRootType,
        shadowRootType_, includerFor, includerFor_, includerForUnsafe,
        includerForUnchecked, shadowPseudoId, shadowPseudoId_,
        setShadowPseudoId, treeScopeRootNode, treeScopeRootNode_,
        treeScopeRootNodeUnsafe, treeScopeRootNodeUnchecked,
        parentTreeScope, parentTreeScope_, parentTreeScopeUnsafe,
        parentTreeScopeUnchecked, lastSpatialNavigationCandidateCount,
        lastSpatialNavigationCandidateCount_, numberOfActiveAnimations,
        numberOfActiveAnimations_, suspendAnimations, resumeAnimations,
        animationsAreSuspended, animationsAreSuspended_,
        pauseAnimationAtTimeOnElement, pauseAnimationAtTimeOnElement_,
        pauseAnimationAtTimeOnPseudoElement,
        pauseAnimationAtTimeOnPseudoElement_,
        pauseTransitionAtTimeOnElement, pauseTransitionAtTimeOnElement_,
        pauseTransitionAtTimeOnPseudoElement,
        pauseTransitionAtTimeOnPseudoElement_, attached, attached_,
        visiblePlaceholder, visiblePlaceholder_, selectColorInColorChooser,
        formControlStateOfPreviousHistoryItem,
        formControlStateOfPreviousHistoryItem_,
        setFormControlStateOfPreviousHistoryItem, absoluteCaretBounds,
        absoluteCaretBounds_, absoluteCaretBoundsUnsafe,
        absoluteCaretBoundsUnchecked, boundingBox, boundingBox_,
        boundingBoxUnsafe, boundingBoxUnchecked, inspectorHighlightRects,
        inspectorHighlightRects_, inspectorHighlightRectsUnsafe,
        inspectorHighlightRectsUnchecked, inspectorHighlightObject,
        inspectorHighlightObject_, markerCountForNode, markerCountForNode_,
        markerRangeForNode, markerRangeForNode_, markerRangeForNodeUnsafe,
        markerRangeForNodeUnchecked, markerDescriptionForNode,
        markerDescriptionForNode_, addTextMatchMarker,
        setMarkedTextMatchesAreHighlighted, invalidateFontCache,
        setScrollViewPosition, setPagination, configurationForViewport,
        configurationForViewport_, wasLastChangeUserEdit,
        wasLastChangeUserEdit_, elementShouldAutoComplete,
        elementShouldAutoComplete_, setEditingValue, setAutofilled,
        countMatchesForText, countMatchesForText_, paintControlTints,
        scrollElementToRect, rangeFromLocationAndLength,
        rangeFromLocationAndLength_, rangeFromLocationAndLengthUnsafe,
        rangeFromLocationAndLengthUnchecked, locationFromRange,
        locationFromRange_, lengthFromRange, lengthFromRange_, rangeAsText,
        rangeAsText_, subrange, subrange_, subrangeUnsafe,
        subrangeUnchecked, rangeForDictionaryLookupAtLocation,
        rangeForDictionaryLookupAtLocation_,
        rangeForDictionaryLookupAtLocationUnsafe,
        rangeForDictionaryLookupAtLocationUnchecked, setDelegatesScrolling,
        lastSpellCheckRequestSequence, lastSpellCheckRequestSequence_,
        lastSpellCheckProcessedSequence, lastSpellCheckProcessedSequence_,
        userPreferredLanguages, userPreferredLanguages_,
        setUserPreferredLanguages, wheelEventHandlerCount,
        wheelEventHandlerCount_, touchEventHandlerCount,
        touchEventHandlerCount_, nodesFromRect, nodesFromRect_,
        nodesFromRectUnsafe, nodesFromRectUnchecked, parserMetaData,
        parserMetaData_, updateEditorUINowIfScheduled, hasSpellingMarker,
        hasSpellingMarker_, hasGrammarMarker, hasGrammarMarker_,
        hasAutocorrectedMarker, hasAutocorrectedMarker_,
        setContinuousSpellCheckingEnabled,
        setAutomaticQuoteSubstitutionEnabled,
        setAutomaticLinkDetectionEnabled,
        setAutomaticDashSubstitutionEnabled,
        setAutomaticTextReplacementEnabled,
        setAutomaticSpellingCorrectionEnabled, isOverwriteModeEnabled,
        isOverwriteModeEnabled_, toggleOverwriteModeEnabled,
        numberOfScrollableAreas, numberOfScrollableAreas_,
        isPageBoxVisible, isPageBoxVisible_, layerTreeAsText,
        layerTreeAsText_, scrollingStateTreeAsText,
        scrollingStateTreeAsText_, mainThreadScrollingReasons,
        mainThreadScrollingReasons_, nonFastScrollableRects,
        nonFastScrollableRects_, nonFastScrollableRectsUnsafe,
        nonFastScrollableRectsUnchecked, repaintRectsAsText,
        repaintRectsAsText_, garbageCollectDocumentResources,
        allowRoundingHacks, insertAuthorCSS, insertUserCSS,
        setBatteryStatus, setDeviceProximity, numberOfLiveNodes,
        numberOfLiveNodes_, numberOfLiveDocuments, numberOfLiveDocuments_,
        consoleMessageArgumentCounts, consoleMessageArgumentCounts_,
        openDummyInspectorFrontend, openDummyInspectorFrontend_,
        openDummyInspectorFrontendUnsafe,
        openDummyInspectorFrontendUnchecked, closeDummyInspectorFrontend,
        setJavaScriptProfilingEnabled, setInspectorIsUnderTest,
        counterValue, counterValue_, pageNumber, pageNumber_,
        shortcutIconURLs, shortcutIconURLs_, allIconURLs, allIconURLs_,
        numberOfPages, numberOfPages_, pageProperty, pageProperty_,
        pageSizeAndMarginsInPixels, pageSizeAndMarginsInPixels_,
        setPageScaleFactor, setPageZoomFactor, setHeaderHeight,
        setFooterHeight, setTopContentInset,
        webkitWillEnterFullScreenForElement,
        webkitDidEnterFullScreenForElement,
        webkitWillExitFullScreenForElement,
        webkitDidExitFullScreenForElement, setApplicationCacheOriginQuota,
        registerURLSchemeAsBypassingContentSecurityPolicy,
        removeURLSchemeRegisteredAsBypassingContentSecurityPolicy,
        mallocStatistics, mallocStatistics_, mallocStatisticsUnsafe,
        mallocStatisticsUnchecked, typeConversions, typeConversions_,
        typeConversionsUnsafe, typeConversionsUnchecked, memoryInfo,
        memoryInfo_, memoryInfoUnsafe, memoryInfoUnchecked,
        getReferencedFilePaths, getReferencedFilePaths_,
        startTrackingRepaints, stopTrackingRepaints, isTimerThrottled,
        isTimerThrottled_,
        updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks,
        getCurrentCursorInfo, getCurrentCursorInfo_, markerTextForListItem,
        markerTextForListItem_, toolTipFromElement, toolTipFromElement_,
        deserializeBuffer, deserializeBuffer_, deserializeBufferUnsafe,
        deserializeBufferUnchecked, serializeObject, serializeObject_,
        serializeObjectUnsafe, serializeObjectUnchecked,
        setUsesOverlayScrollbars, forceReload, simulateAudioInterruption,
        mediaElementHasCharacteristic, mediaElementHasCharacteristic_,
        initializeMockCDM, enableMockSpeechSynthesizer, getImageSourceURL,
        getImageSourceURL_, captionsStyleSheetOverride,
        captionsStyleSheetOverride_, setCaptionsStyleSheetOverride,
        setPrimaryAudioTrackLanguageOverride, setCaptionDisplayMode,
        createTimeRanges, createTimeRanges_, createTimeRangesUnsafe,
        createTimeRangesUnchecked, closestTimeToTimeRanges,
        closestTimeToTimeRanges_, isSelectPopupVisible,
        isSelectPopupVisible_, isVibrating, isVibrating_,
        isPluginUnavailabilityIndicatorObscured,
        isPluginUnavailabilityIndicatorObscured_, isPluginSnapshotted,
        isPluginSnapshotted_, selectionBounds, selectionBounds_,
        selectionBoundsUnsafe, selectionBoundsUnchecked,
        initializeMockMediaSource, bufferedSamplesForTrackID,
        bufferedSamplesForTrackID_, beginMediaSessionInterruption,
        endMediaSessionInterruption, applicationWillEnterForeground,
        applicationWillEnterBackground, setMediaSessionRestrictions,
        postRemoteControlCommand, simulateSystemSleep, simulateSystemWake,
        elementIsBlockingDisplaySleep, elementIsBlockingDisplaySleep_,
        installMockPageOverlay, pageOverlayLayerTreeAsText,
        pageOverlayLayerTreeAsText_, setPageMuted, isPagePlayingAudio,
        isPagePlayingAudio_, pattern LAYER_TREE_INCLUDES_VISIBLE_RECTS,
        pattern LAYER_TREE_INCLUDES_TILE_CACHES,
        pattern LAYER_TREE_INCLUDES_REPAINT_RECTS,
        pattern LAYER_TREE_INCLUDES_PAINTING_PHASES,
        pattern LAYER_TREE_INCLUDES_CONTENT_LAYERS, getSettings,
        getSettingsUnsafe, getSettingsUnchecked, getWorkerThreadCount,
        getConsoleProfiles, Internals(..), gTypeInternals)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.address Mozilla Internals.address documentation> 
address ::
        (MonadDOM m, IsNode node, FromJSString result) =>
          Internals -> Maybe node -> m result
address self node
  = liftDOM
      ((self ^. jsf "address" [toJSVal node]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.address Mozilla Internals.address documentation> 
address_ ::
         (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
address_ self node
  = liftDOM (void (self ^. jsf "address" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodeNeedsStyleRecalc Mozilla Internals.nodeNeedsStyleRecalc documentation> 
nodeNeedsStyleRecalc ::
                     (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Bool
nodeNeedsStyleRecalc self node
  = liftDOM
      ((self ^. jsf "nodeNeedsStyleRecalc" [toJSVal node]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodeNeedsStyleRecalc Mozilla Internals.nodeNeedsStyleRecalc documentation> 
nodeNeedsStyleRecalc_ ::
                      (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
nodeNeedsStyleRecalc_ self node
  = liftDOM
      (void (self ^. jsf "nodeNeedsStyleRecalc" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.description Mozilla Internals.description documentation> 
description ::
            (MonadDOM m, FromJSString result) => Internals -> JSVal -> m result
description self value
  = liftDOM
      ((self ^. jsf "description" [toJSVal value]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.description Mozilla Internals.description documentation> 
description_ :: (MonadDOM m) => Internals -> JSVal -> m ()
description_ self value
  = liftDOM (void (self ^. jsf "description" [toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasPausedImageAnimations Mozilla Internals.hasPausedImageAnimations documentation> 
hasPausedImageAnimations ::
                         (MonadDOM m, IsElement element) =>
                           Internals -> Maybe element -> m Bool
hasPausedImageAnimations self element
  = liftDOM
      ((self ^. jsf "hasPausedImageAnimations" [toJSVal element]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasPausedImageAnimations Mozilla Internals.hasPausedImageAnimations documentation> 
hasPausedImageAnimations_ ::
                          (MonadDOM m, IsElement element) =>
                            Internals -> Maybe element -> m ()
hasPausedImageAnimations_ self element
  = liftDOM
      (void (self ^. jsf "hasPausedImageAnimations" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementRenderTreeAsText Mozilla Internals.elementRenderTreeAsText documentation> 
elementRenderTreeAsText ::
                        (MonadDOM m, IsElement element, FromJSString result) =>
                          Internals -> Maybe element -> m result
elementRenderTreeAsText self element
  = liftDOM
      ((self ^. jsf "elementRenderTreeAsText" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementRenderTreeAsText Mozilla Internals.elementRenderTreeAsText documentation> 
elementRenderTreeAsText_ ::
                         (MonadDOM m, IsElement element) =>
                           Internals -> Maybe element -> m ()
elementRenderTreeAsText_ self element
  = liftDOM
      (void (self ^. jsf "elementRenderTreeAsText" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPreloaded Mozilla Internals.isPreloaded documentation> 
isPreloaded ::
            (MonadDOM m, ToJSString url) => Internals -> url -> m Bool
isPreloaded self url
  = liftDOM ((self ^. jsf "isPreloaded" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPreloaded Mozilla Internals.isPreloaded documentation> 
isPreloaded_ ::
             (MonadDOM m, ToJSString url) => Internals -> url -> m ()
isPreloaded_ self url
  = liftDOM (void (self ^. jsf "isPreloaded" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isLoadingFromMemoryCache Mozilla Internals.isLoadingFromMemoryCache documentation> 
isLoadingFromMemoryCache ::
                         (MonadDOM m, ToJSString url) => Internals -> url -> m Bool
isLoadingFromMemoryCache self url
  = liftDOM
      ((self ^. jsf "isLoadingFromMemoryCache" [toJSVal url]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isLoadingFromMemoryCache Mozilla Internals.isLoadingFromMemoryCache documentation> 
isLoadingFromMemoryCache_ ::
                          (MonadDOM m, ToJSString url) => Internals -> url -> m ()
isLoadingFromMemoryCache_ self url
  = liftDOM
      (void (self ^. jsf "isLoadingFromMemoryCache" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.xhrResponseSource Mozilla Internals.xhrResponseSource documentation> 
xhrResponseSource ::
                  (MonadDOM m, FromJSString result) =>
                    Internals -> Maybe XMLHttpRequest -> m result
xhrResponseSource self xhr
  = liftDOM
      ((self ^. jsf "xhrResponseSource" [toJSVal xhr]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.xhrResponseSource Mozilla Internals.xhrResponseSource documentation> 
xhrResponseSource_ ::
                   (MonadDOM m) => Internals -> Maybe XMLHttpRequest -> m ()
xhrResponseSource_ self xhr
  = liftDOM (void (self ^. jsf "xhrResponseSource" [toJSVal xhr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.clearMemoryCache Mozilla Internals.clearMemoryCache documentation> 
clearMemoryCache :: (MonadDOM m) => Internals -> m ()
clearMemoryCache self
  = liftDOM (void (self ^. jsf "clearMemoryCache" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pruneMemoryCacheToSize Mozilla Internals.pruneMemoryCacheToSize documentation> 
pruneMemoryCacheToSize :: (MonadDOM m) => Internals -> Int -> m ()
pruneMemoryCacheToSize self size
  = liftDOM
      (void (self ^. jsf "pruneMemoryCacheToSize" [toJSVal size]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryCacheSize Mozilla Internals.memoryCacheSize documentation> 
memoryCacheSize :: (MonadDOM m) => Internals -> m Int
memoryCacheSize self
  = liftDOM
      (round <$> ((self ^. jsf "memoryCacheSize" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryCacheSize Mozilla Internals.memoryCacheSize documentation> 
memoryCacheSize_ :: (MonadDOM m) => Internals -> m ()
memoryCacheSize_ self
  = liftDOM (void (self ^. jsf "memoryCacheSize" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.clearPageCache Mozilla Internals.clearPageCache documentation> 
clearPageCache :: (MonadDOM m) => Internals -> m ()
clearPageCache self
  = liftDOM (void (self ^. jsf "clearPageCache" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageCacheSize Mozilla Internals.pageCacheSize documentation> 
pageCacheSize :: (MonadDOM m) => Internals -> m Word
pageCacheSize self
  = liftDOM
      (round <$> ((self ^. jsf "pageCacheSize" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageCacheSize Mozilla Internals.pageCacheSize documentation> 
pageCacheSize_ :: (MonadDOM m) => Internals -> m ()
pageCacheSize_ self
  = liftDOM (void (self ^. jsf "pageCacheSize" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfo ::
                                  (MonadDOM m, IsNode node) =>
                                    Internals -> Maybe node -> m (Maybe CSSStyleDeclaration)
computedStyleIncludingVisitedInfo self node
  = liftDOM
      ((self ^. jsf "computedStyleIncludingVisitedInfo" [toJSVal node])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfo_ ::
                                   (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
computedStyleIncludingVisitedInfo_ self node
  = liftDOM
      (void
         (self ^. jsf "computedStyleIncludingVisitedInfo" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfoUnsafe ::
                                        (MonadDOM m, IsNode node, HasCallStack) =>
                                          Internals -> Maybe node -> m CSSStyleDeclaration
computedStyleIncludingVisitedInfoUnsafe self node
  = liftDOM
      (((self ^. jsf "computedStyleIncludingVisitedInfo" [toJSVal node])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfoUnchecked ::
                                           (MonadDOM m, IsNode node) =>
                                             Internals -> Maybe node -> m CSSStyleDeclaration
computedStyleIncludingVisitedInfoUnchecked self node
  = liftDOM
      ((self ^. jsf "computedStyleIncludingVisitedInfo" [toJSVal node])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRoot ::
                 (MonadDOM m, IsElement host) =>
                   Internals -> Maybe host -> m (Maybe Node)
ensureShadowRoot self host
  = liftDOM
      ((self ^. jsf "ensureShadowRoot" [toJSVal host]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRoot_ ::
                  (MonadDOM m, IsElement host) => Internals -> Maybe host -> m ()
ensureShadowRoot_ self host
  = liftDOM (void (self ^. jsf "ensureShadowRoot" [toJSVal host]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRootUnsafe ::
                       (MonadDOM m, IsElement host, HasCallStack) =>
                         Internals -> Maybe host -> m Node
ensureShadowRootUnsafe self host
  = liftDOM
      (((self ^. jsf "ensureShadowRoot" [toJSVal host]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRootUnchecked ::
                          (MonadDOM m, IsElement host) => Internals -> Maybe host -> m Node
ensureShadowRootUnchecked self host
  = liftDOM
      ((self ^. jsf "ensureShadowRoot" [toJSVal host]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRoot ::
                 (MonadDOM m, IsElement host) =>
                   Internals -> Maybe host -> m (Maybe Node)
createShadowRoot self host
  = liftDOM
      ((self ^. jsf "createShadowRoot" [toJSVal host]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRoot_ ::
                  (MonadDOM m, IsElement host) => Internals -> Maybe host -> m ()
createShadowRoot_ self host
  = liftDOM (void (self ^. jsf "createShadowRoot" [toJSVal host]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRootUnsafe ::
                       (MonadDOM m, IsElement host, HasCallStack) =>
                         Internals -> Maybe host -> m Node
createShadowRootUnsafe self host
  = liftDOM
      (((self ^. jsf "createShadowRoot" [toJSVal host]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRootUnchecked ::
                          (MonadDOM m, IsElement host) => Internals -> Maybe host -> m Node
createShadowRootUnchecked self host
  = liftDOM
      ((self ^. jsf "createShadowRoot" [toJSVal host]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRoot ::
           (MonadDOM m, IsElement host) =>
             Internals -> Maybe host -> m (Maybe Node)
shadowRoot self host
  = liftDOM ((self ^. jsf "shadowRoot" [toJSVal host]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRoot_ ::
            (MonadDOM m, IsElement host) => Internals -> Maybe host -> m ()
shadowRoot_ self host
  = liftDOM (void (self ^. jsf "shadowRoot" [toJSVal host]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRootUnsafe ::
                 (MonadDOM m, IsElement host, HasCallStack) =>
                   Internals -> Maybe host -> m Node
shadowRootUnsafe self host
  = liftDOM
      (((self ^. jsf "shadowRoot" [toJSVal host]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRootUnchecked ::
                    (MonadDOM m, IsElement host) => Internals -> Maybe host -> m Node
shadowRootUnchecked self host
  = liftDOM
      ((self ^. jsf "shadowRoot" [toJSVal host]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRootType Mozilla Internals.shadowRootType documentation> 
shadowRootType ::
               (MonadDOM m, IsNode root, FromJSString result) =>
                 Internals -> Maybe root -> m result
shadowRootType self root
  = liftDOM
      ((self ^. jsf "shadowRootType" [toJSVal root]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRootType Mozilla Internals.shadowRootType documentation> 
shadowRootType_ ::
                (MonadDOM m, IsNode root) => Internals -> Maybe root -> m ()
shadowRootType_ self root
  = liftDOM (void (self ^. jsf "shadowRootType" [toJSVal root]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerFor ::
            (MonadDOM m, IsNode node) =>
              Internals -> Maybe node -> m (Maybe Element)
includerFor self node
  = liftDOM
      ((self ^. jsf "includerFor" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerFor_ ::
             (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
includerFor_ self node
  = liftDOM (void (self ^. jsf "includerFor" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerForUnsafe ::
                  (MonadDOM m, IsNode node, HasCallStack) =>
                    Internals -> Maybe node -> m Element
includerForUnsafe self node
  = liftDOM
      (((self ^. jsf "includerFor" [toJSVal node]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerForUnchecked ::
                     (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Element
includerForUnchecked self node
  = liftDOM
      ((self ^. jsf "includerFor" [toJSVal node]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
shadowPseudoId ::
               (MonadDOM m, IsElement element, FromJSString result) =>
                 Internals -> Maybe element -> m result
shadowPseudoId self element
  = liftDOM
      ((self ^. jsf "shadowPseudoId" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
shadowPseudoId_ ::
                (MonadDOM m, IsElement element) =>
                  Internals -> Maybe element -> m ()
shadowPseudoId_ self element
  = liftDOM (void (self ^. jsf "shadowPseudoId" [toJSVal element]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNode_ ::
                   (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
treeScopeRootNode_ self node
  = liftDOM (void (self ^. jsf "treeScopeRootNode" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNodeUnsafe ::
                        (MonadDOM m, IsNode node, HasCallStack) =>
                          Internals -> Maybe node -> m Node
treeScopeRootNodeUnsafe self node
  = liftDOM
      (((self ^. jsf "treeScopeRootNode" [toJSVal node]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNodeUnchecked ::
                           (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Node
treeScopeRootNodeUnchecked self node
  = liftDOM
      ((self ^. jsf "treeScopeRootNode" [toJSVal node]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScope ::
                (MonadDOM m, IsNode node) =>
                  Internals -> Maybe node -> m (Maybe Node)
parentTreeScope self node
  = liftDOM
      ((self ^. jsf "parentTreeScope" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScope_ ::
                 (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
parentTreeScope_ self node
  = liftDOM (void (self ^. jsf "parentTreeScope" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScopeUnsafe ::
                      (MonadDOM m, IsNode node, HasCallStack) =>
                        Internals -> Maybe node -> m Node
parentTreeScopeUnsafe self node
  = liftDOM
      (((self ^. jsf "parentTreeScope" [toJSVal node]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScopeUnchecked ::
                         (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Node
parentTreeScopeUnchecked self node
  = liftDOM
      ((self ^. jsf "parentTreeScope" [toJSVal node]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpatialNavigationCandidateCount Mozilla Internals.lastSpatialNavigationCandidateCount documentation> 
lastSpatialNavigationCandidateCount ::
                                    (MonadDOM m) => Internals -> m Word
lastSpatialNavigationCandidateCount self
  = liftDOM
      (round <$>
         ((self ^. jsf "lastSpatialNavigationCandidateCount" ()) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpatialNavigationCandidateCount Mozilla Internals.lastSpatialNavigationCandidateCount documentation> 
lastSpatialNavigationCandidateCount_ ::
                                     (MonadDOM m) => Internals -> m ()
lastSpatialNavigationCandidateCount_ self
  = liftDOM
      (void (self ^. jsf "lastSpatialNavigationCandidateCount" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfActiveAnimations Mozilla Internals.numberOfActiveAnimations documentation> 
numberOfActiveAnimations :: (MonadDOM m) => Internals -> m Word
numberOfActiveAnimations self
  = liftDOM
      (round <$>
         ((self ^. jsf "numberOfActiveAnimations" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfActiveAnimations Mozilla Internals.numberOfActiveAnimations documentation> 
numberOfActiveAnimations_ :: (MonadDOM m) => Internals -> m ()
numberOfActiveAnimations_ self
  = liftDOM (void (self ^. jsf "numberOfActiveAnimations" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.suspendAnimations Mozilla Internals.suspendAnimations documentation> 
suspendAnimations :: (MonadDOM m) => Internals -> m ()
suspendAnimations self
  = liftDOM (void (self ^. jsf "suspendAnimations" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.resumeAnimations Mozilla Internals.resumeAnimations documentation> 
resumeAnimations :: (MonadDOM m) => Internals -> m ()
resumeAnimations self
  = liftDOM (void (self ^. jsf "resumeAnimations" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.animationsAreSuspended Mozilla Internals.animationsAreSuspended documentation> 
animationsAreSuspended :: (MonadDOM m) => Internals -> m Bool
animationsAreSuspended self
  = liftDOM ((self ^. jsf "animationsAreSuspended" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.animationsAreSuspended Mozilla Internals.animationsAreSuspended documentation> 
animationsAreSuspended_ :: (MonadDOM m) => Internals -> m ()
animationsAreSuspended_ self
  = liftDOM (void (self ^. jsf "animationsAreSuspended" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnElement Mozilla Internals.pauseAnimationAtTimeOnElement documentation> 
pauseAnimationAtTimeOnElement ::
                              (MonadDOM m, ToJSString animationName, IsElement element) =>
                                Internals -> animationName -> Double -> Maybe element -> m Bool
pauseAnimationAtTimeOnElement self animationName pauseTime element
  = liftDOM
      ((self ^. jsf "pauseAnimationAtTimeOnElement"
          [toJSVal animationName, toJSVal pauseTime, toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnElement Mozilla Internals.pauseAnimationAtTimeOnElement documentation> 
pauseAnimationAtTimeOnElement_ ::
                               (MonadDOM m, ToJSString animationName, IsElement element) =>
                                 Internals -> animationName -> Double -> Maybe element -> m ()
pauseAnimationAtTimeOnElement_ self animationName pauseTime element
  = liftDOM
      (void
         (self ^. jsf "pauseAnimationAtTimeOnElement"
            [toJSVal animationName, toJSVal pauseTime, toJSVal element]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnPseudoElement Mozilla Internals.pauseAnimationAtTimeOnPseudoElement documentation> 
pauseAnimationAtTimeOnPseudoElement_ ::
                                     (MonadDOM m, ToJSString animationName, IsElement element,
                                      ToJSString pseudoId) =>
                                       Internals ->
                                         animationName ->
                                           Double -> Maybe element -> pseudoId -> m ()
pauseAnimationAtTimeOnPseudoElement_ self animationName pauseTime
  element pseudoId
  = liftDOM
      (void
         (self ^. jsf "pauseAnimationAtTimeOnPseudoElement"
            [toJSVal animationName, toJSVal pauseTime, toJSVal element,
             toJSVal pseudoId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnElement Mozilla Internals.pauseTransitionAtTimeOnElement documentation> 
pauseTransitionAtTimeOnElement ::
                               (MonadDOM m, ToJSString propertyName, IsElement element) =>
                                 Internals -> propertyName -> Double -> Maybe element -> m Bool
pauseTransitionAtTimeOnElement self propertyName pauseTime element
  = liftDOM
      ((self ^. jsf "pauseTransitionAtTimeOnElement"
          [toJSVal propertyName, toJSVal pauseTime, toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnElement Mozilla Internals.pauseTransitionAtTimeOnElement documentation> 
pauseTransitionAtTimeOnElement_ ::
                                (MonadDOM m, ToJSString propertyName, IsElement element) =>
                                  Internals -> propertyName -> Double -> Maybe element -> m ()
pauseTransitionAtTimeOnElement_ self propertyName pauseTime element
  = liftDOM
      (void
         (self ^. jsf "pauseTransitionAtTimeOnElement"
            [toJSVal propertyName, toJSVal pauseTime, toJSVal element]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnPseudoElement Mozilla Internals.pauseTransitionAtTimeOnPseudoElement documentation> 
pauseTransitionAtTimeOnPseudoElement_ ::
                                      (MonadDOM m, ToJSString property, IsElement element,
                                       ToJSString pseudoId) =>
                                        Internals ->
                                          property -> Double -> Maybe element -> pseudoId -> m ()
pauseTransitionAtTimeOnPseudoElement_ self property pauseTime
  element pseudoId
  = liftDOM
      (void
         (self ^. jsf "pauseTransitionAtTimeOnPseudoElement"
            [toJSVal property, toJSVal pauseTime, toJSVal element,
             toJSVal pseudoId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.attached Mozilla Internals.attached documentation> 
attached ::
         (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Bool
attached self node
  = liftDOM ((self ^. jsf "attached" [toJSVal node]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.attached Mozilla Internals.attached documentation> 
attached_ ::
          (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
attached_ self node
  = liftDOM (void (self ^. jsf "attached" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.visiblePlaceholder Mozilla Internals.visiblePlaceholder documentation> 
visiblePlaceholder ::
                   (MonadDOM m, IsElement element, FromJSString result) =>
                     Internals -> Maybe element -> m result
visiblePlaceholder self element
  = liftDOM
      ((self ^. jsf "visiblePlaceholder" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.visiblePlaceholder Mozilla Internals.visiblePlaceholder documentation> 
visiblePlaceholder_ ::
                    (MonadDOM m, IsElement element) =>
                      Internals -> Maybe element -> m ()
visiblePlaceholder_ self element
  = liftDOM
      (void (self ^. jsf "visiblePlaceholder" [toJSVal element]))

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
      ((self ^. jsf "formControlStateOfPreviousHistoryItem" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
formControlStateOfPreviousHistoryItem_ ::
                                       (MonadDOM m) => Internals -> m ()
formControlStateOfPreviousHistoryItem_ self
  = liftDOM
      (void (self ^. jsf "formControlStateOfPreviousHistoryItem" ()))

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
  = liftDOM ((self ^. jsf "absoluteCaretBounds" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBounds_ :: (MonadDOM m) => Internals -> m ()
absoluteCaretBounds_ self
  = liftDOM (void (self ^. jsf "absoluteCaretBounds" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBoundsUnsafe ::
                          (MonadDOM m, HasCallStack) => Internals -> m ClientRect
absoluteCaretBoundsUnsafe self
  = liftDOM
      (((self ^. jsf "absoluteCaretBounds" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBoundsUnchecked ::
                             (MonadDOM m) => Internals -> m ClientRect
absoluteCaretBoundsUnchecked self
  = liftDOM
      ((self ^. jsf "absoluteCaretBounds" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBox ::
            (MonadDOM m, IsElement element) =>
              Internals -> Maybe element -> m (Maybe ClientRect)
boundingBox self element
  = liftDOM
      ((self ^. jsf "boundingBox" [toJSVal element]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBox_ ::
             (MonadDOM m, IsElement element) =>
               Internals -> Maybe element -> m ()
boundingBox_ self element
  = liftDOM (void (self ^. jsf "boundingBox" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBoxUnsafe ::
                  (MonadDOM m, IsElement element, HasCallStack) =>
                    Internals -> Maybe element -> m ClientRect
boundingBoxUnsafe self element
  = liftDOM
      (((self ^. jsf "boundingBox" [toJSVal element]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBoxUnchecked ::
                     (MonadDOM m, IsElement element) =>
                       Internals -> Maybe element -> m ClientRect
boundingBoxUnchecked self element
  = liftDOM
      ((self ^. jsf "boundingBox" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRects ::
                        (MonadDOM m) => Internals -> m (Maybe ClientRectList)
inspectorHighlightRects self
  = liftDOM
      ((self ^. jsf "inspectorHighlightRects" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRects_ :: (MonadDOM m) => Internals -> m ()
inspectorHighlightRects_ self
  = liftDOM (void (self ^. jsf "inspectorHighlightRects" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRectsUnsafe ::
                              (MonadDOM m, HasCallStack) => Internals -> m ClientRectList
inspectorHighlightRectsUnsafe self
  = liftDOM
      (((self ^. jsf "inspectorHighlightRects" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRectsUnchecked ::
                                 (MonadDOM m) => Internals -> m ClientRectList
inspectorHighlightRectsUnchecked self
  = liftDOM
      ((self ^. jsf "inspectorHighlightRects" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightObject Mozilla Internals.inspectorHighlightObject documentation> 
inspectorHighlightObject ::
                         (MonadDOM m, FromJSString result) => Internals -> m result
inspectorHighlightObject self
  = liftDOM
      ((self ^. jsf "inspectorHighlightObject" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightObject Mozilla Internals.inspectorHighlightObject documentation> 
inspectorHighlightObject_ :: (MonadDOM m) => Internals -> m ()
inspectorHighlightObject_ self
  = liftDOM (void (self ^. jsf "inspectorHighlightObject" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerCountForNode Mozilla Internals.markerCountForNode documentation> 
markerCountForNode_ ::
                    (MonadDOM m, IsNode node, ToJSString markerType) =>
                      Internals -> Maybe node -> markerType -> m ()
markerCountForNode_ self node markerType
  = liftDOM
      (void
         (self ^. jsf "markerCountForNode"
            [toJSVal node, toJSVal markerType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNode ::
                   (MonadDOM m, IsNode node, ToJSString markerType) =>
                     Internals -> Maybe node -> markerType -> Word -> m (Maybe Range)
markerRangeForNode self node markerType index
  = liftDOM
      ((self ^. jsf "markerRangeForNode"
          [toJSVal node, toJSVal markerType, toJSVal index])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNode_ ::
                    (MonadDOM m, IsNode node, ToJSString markerType) =>
                      Internals -> Maybe node -> markerType -> Word -> m ()
markerRangeForNode_ self node markerType index
  = liftDOM
      (void
         (self ^. jsf "markerRangeForNode"
            [toJSVal node, toJSVal markerType, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNodeUnsafe ::
                         (MonadDOM m, IsNode node, ToJSString markerType, HasCallStack) =>
                           Internals -> Maybe node -> markerType -> Word -> m Range
markerRangeForNodeUnsafe self node markerType index
  = liftDOM
      (((self ^. jsf "markerRangeForNode"
           [toJSVal node, toJSVal markerType, toJSVal index])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNodeUnchecked ::
                            (MonadDOM m, IsNode node, ToJSString markerType) =>
                              Internals -> Maybe node -> markerType -> Word -> m Range
markerRangeForNodeUnchecked self node markerType index
  = liftDOM
      ((self ^. jsf "markerRangeForNode"
          [toJSVal node, toJSVal markerType, toJSVal index])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerDescriptionForNode Mozilla Internals.markerDescriptionForNode documentation> 
markerDescriptionForNode_ ::
                          (MonadDOM m, IsNode node, ToJSString markerType) =>
                            Internals -> Maybe node -> markerType -> Word -> m ()
markerDescriptionForNode_ self node markerType index
  = liftDOM
      (void
         (self ^. jsf "markerDescriptionForNode"
            [toJSVal node, toJSVal markerType, toJSVal index]))

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
  = liftDOM (void (self ^. jsf "invalidateFontCache" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.configurationForViewport Mozilla Internals.configurationForViewport documentation> 
configurationForViewport_ ::
                          (MonadDOM m) =>
                            Internals -> Float -> Int -> Int -> Int -> Int -> m ()
configurationForViewport_ self devicePixelRatio deviceWidth
  deviceHeight availableWidth availableHeight
  = liftDOM
      (void
         (self ^. jsf "configurationForViewport"
            [toJSVal devicePixelRatio, toJSVal deviceWidth,
             toJSVal deviceHeight, toJSVal availableWidth,
             toJSVal availableHeight]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wasLastChangeUserEdit Mozilla Internals.wasLastChangeUserEdit documentation> 
wasLastChangeUserEdit ::
                      (MonadDOM m, IsElement textField) =>
                        Internals -> Maybe textField -> m Bool
wasLastChangeUserEdit self textField
  = liftDOM
      ((self ^. jsf "wasLastChangeUserEdit" [toJSVal textField]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wasLastChangeUserEdit Mozilla Internals.wasLastChangeUserEdit documentation> 
wasLastChangeUserEdit_ ::
                       (MonadDOM m, IsElement textField) =>
                         Internals -> Maybe textField -> m ()
wasLastChangeUserEdit_ self textField
  = liftDOM
      (void (self ^. jsf "wasLastChangeUserEdit" [toJSVal textField]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementShouldAutoComplete Mozilla Internals.elementShouldAutoComplete documentation> 
elementShouldAutoComplete ::
                          (MonadDOM m, IsElement inputElement) =>
                            Internals -> Maybe inputElement -> m Bool
elementShouldAutoComplete self inputElement
  = liftDOM
      ((self ^. jsf "elementShouldAutoComplete" [toJSVal inputElement])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementShouldAutoComplete Mozilla Internals.elementShouldAutoComplete documentation> 
elementShouldAutoComplete_ ::
                           (MonadDOM m, IsElement inputElement) =>
                             Internals -> Maybe inputElement -> m ()
elementShouldAutoComplete_ self inputElement
  = liftDOM
      (void
         (self ^. jsf "elementShouldAutoComplete" [toJSVal inputElement]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.countMatchesForText Mozilla Internals.countMatchesForText documentation> 
countMatchesForText_ ::
                     (MonadDOM m, ToJSString text, ToJSString markMatches) =>
                       Internals -> text -> Word -> markMatches -> m ()
countMatchesForText_ self text findOptions markMatches
  = liftDOM
      (void
         (self ^. jsf "countMatchesForText"
            [toJSVal text, toJSVal findOptions, toJSVal markMatches]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.paintControlTints Mozilla Internals.paintControlTints documentation> 
paintControlTints :: (MonadDOM m) => Internals -> m ()
paintControlTints self
  = liftDOM (void (self ^. jsf "paintControlTints" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLength_ ::
                            (MonadDOM m, IsElement scope) =>
                              Internals -> Maybe scope -> Int -> Int -> m ()
rangeFromLocationAndLength_ self scope rangeLocation rangeLength
  = liftDOM
      (void
         (self ^. jsf "rangeFromLocationAndLength"
            [toJSVal scope, toJSVal rangeLocation, toJSVal rangeLength]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLengthUnsafe ::
                                 (MonadDOM m, IsElement scope, HasCallStack) =>
                                   Internals -> Maybe scope -> Int -> Int -> m Range
rangeFromLocationAndLengthUnsafe self scope rangeLocation
  rangeLength
  = liftDOM
      (((self ^. jsf "rangeFromLocationAndLength"
           [toJSVal scope, toJSVal rangeLocation, toJSVal rangeLength])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLengthUnchecked ::
                                    (MonadDOM m, IsElement scope) =>
                                      Internals -> Maybe scope -> Int -> Int -> m Range
rangeFromLocationAndLengthUnchecked self scope rangeLocation
  rangeLength
  = liftDOM
      ((self ^. jsf "rangeFromLocationAndLength"
          [toJSVal scope, toJSVal rangeLocation, toJSVal rangeLength])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.locationFromRange Mozilla Internals.locationFromRange documentation> 
locationFromRange ::
                  (MonadDOM m, IsElement scope) =>
                    Internals -> Maybe scope -> Maybe Range -> m Word
locationFromRange self scope range
  = liftDOM
      (round <$>
         ((self ^. jsf "locationFromRange" [toJSVal scope, toJSVal range])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.locationFromRange Mozilla Internals.locationFromRange documentation> 
locationFromRange_ ::
                   (MonadDOM m, IsElement scope) =>
                     Internals -> Maybe scope -> Maybe Range -> m ()
locationFromRange_ self scope range
  = liftDOM
      (void
         (self ^. jsf "locationFromRange" [toJSVal scope, toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lengthFromRange Mozilla Internals.lengthFromRange documentation> 
lengthFromRange ::
                (MonadDOM m, IsElement scope) =>
                  Internals -> Maybe scope -> Maybe Range -> m Word
lengthFromRange self scope range
  = liftDOM
      (round <$>
         ((self ^. jsf "lengthFromRange" [toJSVal scope, toJSVal range]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lengthFromRange Mozilla Internals.lengthFromRange documentation> 
lengthFromRange_ ::
                 (MonadDOM m, IsElement scope) =>
                   Internals -> Maybe scope -> Maybe Range -> m ()
lengthFromRange_ self scope range
  = liftDOM
      (void
         (self ^. jsf "lengthFromRange" [toJSVal scope, toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeAsText Mozilla Internals.rangeAsText documentation> 
rangeAsText ::
            (MonadDOM m, FromJSString result) =>
              Internals -> Maybe Range -> m result
rangeAsText self range
  = liftDOM
      ((self ^. jsf "rangeAsText" [toJSVal range]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeAsText Mozilla Internals.rangeAsText documentation> 
rangeAsText_ :: (MonadDOM m) => Internals -> Maybe Range -> m ()
rangeAsText_ self range
  = liftDOM (void (self ^. jsf "rangeAsText" [toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrange ::
         (MonadDOM m) =>
           Internals -> Maybe Range -> Int -> Int -> m (Maybe Range)
subrange self range rangeLocation rangeLength
  = liftDOM
      ((self ^. jsf "subrange"
          [toJSVal range, toJSVal rangeLocation, toJSVal rangeLength])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrange_ ::
          (MonadDOM m) => Internals -> Maybe Range -> Int -> Int -> m ()
subrange_ self range rangeLocation rangeLength
  = liftDOM
      (void
         (self ^. jsf "subrange"
            [toJSVal range, toJSVal rangeLocation, toJSVal rangeLength]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrangeUnsafe ::
               (MonadDOM m, HasCallStack) =>
                 Internals -> Maybe Range -> Int -> Int -> m Range
subrangeUnsafe self range rangeLocation rangeLength
  = liftDOM
      (((self ^. jsf "subrange"
           [toJSVal range, toJSVal rangeLocation, toJSVal rangeLength])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrangeUnchecked ::
                  (MonadDOM m) => Internals -> Maybe Range -> Int -> Int -> m Range
subrangeUnchecked self range rangeLocation rangeLength
  = liftDOM
      ((self ^. jsf "subrange"
          [toJSVal range, toJSVal rangeLocation, toJSVal rangeLength])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocation ::
                                   (MonadDOM m) => Internals -> Int -> Int -> m (Maybe Range)
rangeForDictionaryLookupAtLocation self x y
  = liftDOM
      ((self ^. jsf "rangeForDictionaryLookupAtLocation"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocation_ ::
                                    (MonadDOM m) => Internals -> Int -> Int -> m ()
rangeForDictionaryLookupAtLocation_ self x y
  = liftDOM
      (void
         (self ^. jsf "rangeForDictionaryLookupAtLocation"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocationUnsafe ::
                                         (MonadDOM m, HasCallStack) =>
                                           Internals -> Int -> Int -> m Range
rangeForDictionaryLookupAtLocationUnsafe self x y
  = liftDOM
      (((self ^. jsf "rangeForDictionaryLookupAtLocation"
           [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocationUnchecked ::
                                            (MonadDOM m) => Internals -> Int -> Int -> m Range
rangeForDictionaryLookupAtLocationUnchecked self x y
  = liftDOM
      ((self ^. jsf "rangeForDictionaryLookupAtLocation"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

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
         ((self ^. jsf "lastSpellCheckRequestSequence" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckRequestSequence Mozilla Internals.lastSpellCheckRequestSequence documentation> 
lastSpellCheckRequestSequence_ :: (MonadDOM m) => Internals -> m ()
lastSpellCheckRequestSequence_ self
  = liftDOM (void (self ^. jsf "lastSpellCheckRequestSequence" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckProcessedSequence Mozilla Internals.lastSpellCheckProcessedSequence documentation> 
lastSpellCheckProcessedSequence ::
                                (MonadDOM m) => Internals -> m Int
lastSpellCheckProcessedSequence self
  = liftDOM
      (round <$>
         ((self ^. jsf "lastSpellCheckProcessedSequence" ()) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckProcessedSequence Mozilla Internals.lastSpellCheckProcessedSequence documentation> 
lastSpellCheckProcessedSequence_ ::
                                 (MonadDOM m) => Internals -> m ()
lastSpellCheckProcessedSequence_ self
  = liftDOM (void (self ^. jsf "lastSpellCheckProcessedSequence" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
userPreferredLanguages ::
                       (MonadDOM m, FromJSString result) => Internals -> m [result]
userPreferredLanguages self
  = liftDOM
      ((self ^. jsf "userPreferredLanguages" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
userPreferredLanguages_ :: (MonadDOM m) => Internals -> m ()
userPreferredLanguages_ self
  = liftDOM (void (self ^. jsf "userPreferredLanguages" ()))

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
      (round <$>
         ((self ^. jsf "wheelEventHandlerCount" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wheelEventHandlerCount Mozilla Internals.wheelEventHandlerCount documentation> 
wheelEventHandlerCount_ :: (MonadDOM m) => Internals -> m ()
wheelEventHandlerCount_ self
  = liftDOM (void (self ^. jsf "wheelEventHandlerCount" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.touchEventHandlerCount Mozilla Internals.touchEventHandlerCount documentation> 
touchEventHandlerCount :: (MonadDOM m) => Internals -> m Word
touchEventHandlerCount self
  = liftDOM
      (round <$>
         ((self ^. jsf "touchEventHandlerCount" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.touchEventHandlerCount Mozilla Internals.touchEventHandlerCount documentation> 
touchEventHandlerCount_ :: (MonadDOM m) => Internals -> m ()
touchEventHandlerCount_ self
  = liftDOM (void (self ^. jsf "touchEventHandlerCount" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRect_ ::
               (MonadDOM m, IsDocument document) =>
                 Internals ->
                   Maybe document ->
                     Int ->
                       Int -> Word -> Word -> Word -> Word -> Bool -> Bool -> Bool -> m ()
nodesFromRect_ self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftDOM
      (void
         (self ^. jsf "nodesFromRect"
            [toJSVal document, toJSVal x, toJSVal y, toJSVal topPadding,
             toJSVal rightPadding, toJSVal bottomPadding, toJSVal leftPadding,
             toJSVal ignoreClipping, toJSVal allowShadowContent,
             toJSVal allowChildFrameContent]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRectUnsafe ::
                    (MonadDOM m, IsDocument document, HasCallStack) =>
                      Internals ->
                        Maybe document ->
                          Int ->
                            Int ->
                              Word -> Word -> Word -> Word -> Bool -> Bool -> Bool -> m NodeList
nodesFromRectUnsafe self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftDOM
      (((self ^. jsf "nodesFromRect"
           [toJSVal document, toJSVal x, toJSVal y, toJSVal topPadding,
            toJSVal rightPadding, toJSVal bottomPadding, toJSVal leftPadding,
            toJSVal ignoreClipping, toJSVal allowShadowContent,
            toJSVal allowChildFrameContent])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRectUnchecked ::
                       (MonadDOM m, IsDocument document) =>
                         Internals ->
                           Maybe document ->
                             Int ->
                               Int ->
                                 Word -> Word -> Word -> Word -> Bool -> Bool -> Bool -> m NodeList
nodesFromRectUnchecked self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftDOM
      ((self ^. jsf "nodesFromRect"
          [toJSVal document, toJSVal x, toJSVal y, toJSVal topPadding,
           toJSVal rightPadding, toJSVal bottomPadding, toJSVal leftPadding,
           toJSVal ignoreClipping, toJSVal allowShadowContent,
           toJSVal allowChildFrameContent])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parserMetaData Mozilla Internals.parserMetaData documentation> 
parserMetaData ::
               (MonadDOM m, FromJSString result) => Internals -> JSVal -> m result
parserMetaData self func
  = liftDOM
      ((self ^. jsf "parserMetaData" [toJSVal func]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parserMetaData Mozilla Internals.parserMetaData documentation> 
parserMetaData_ :: (MonadDOM m) => Internals -> JSVal -> m ()
parserMetaData_ self func
  = liftDOM (void (self ^. jsf "parserMetaData" [toJSVal func]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateEditorUINowIfScheduled Mozilla Internals.updateEditorUINowIfScheduled documentation> 
updateEditorUINowIfScheduled :: (MonadDOM m) => Internals -> m ()
updateEditorUINowIfScheduled self
  = liftDOM (void (self ^. jsf "updateEditorUINowIfScheduled" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasSpellingMarker Mozilla Internals.hasSpellingMarker documentation> 
hasSpellingMarker ::
                  (MonadDOM m) => Internals -> Int -> Int -> m Bool
hasSpellingMarker self from length
  = liftDOM
      ((self ^. jsf "hasSpellingMarker" [toJSVal from, toJSVal length])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasSpellingMarker Mozilla Internals.hasSpellingMarker documentation> 
hasSpellingMarker_ ::
                   (MonadDOM m) => Internals -> Int -> Int -> m ()
hasSpellingMarker_ self from length
  = liftDOM
      (void
         (self ^. jsf "hasSpellingMarker" [toJSVal from, toJSVal length]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasGrammarMarker Mozilla Internals.hasGrammarMarker documentation> 
hasGrammarMarker ::
                 (MonadDOM m) => Internals -> Int -> Int -> m Bool
hasGrammarMarker self from length
  = liftDOM
      ((self ^. jsf "hasGrammarMarker" [toJSVal from, toJSVal length])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasGrammarMarker Mozilla Internals.hasGrammarMarker documentation> 
hasGrammarMarker_ ::
                  (MonadDOM m) => Internals -> Int -> Int -> m ()
hasGrammarMarker_ self from length
  = liftDOM
      (void
         (self ^. jsf "hasGrammarMarker" [toJSVal from, toJSVal length]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasAutocorrectedMarker Mozilla Internals.hasAutocorrectedMarker documentation> 
hasAutocorrectedMarker ::
                       (MonadDOM m) => Internals -> Int -> Int -> m Bool
hasAutocorrectedMarker self from length
  = liftDOM
      ((self ^. jsf "hasAutocorrectedMarker"
          [toJSVal from, toJSVal length])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasAutocorrectedMarker Mozilla Internals.hasAutocorrectedMarker documentation> 
hasAutocorrectedMarker_ ::
                        (MonadDOM m) => Internals -> Int -> Int -> m ()
hasAutocorrectedMarker_ self from length
  = liftDOM
      (void
         (self ^. jsf "hasAutocorrectedMarker"
            [toJSVal from, toJSVal length]))

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
  = liftDOM ((self ^. jsf "isOverwriteModeEnabled" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isOverwriteModeEnabled Mozilla Internals.isOverwriteModeEnabled documentation> 
isOverwriteModeEnabled_ :: (MonadDOM m) => Internals -> m ()
isOverwriteModeEnabled_ self
  = liftDOM (void (self ^. jsf "isOverwriteModeEnabled" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toggleOverwriteModeEnabled Mozilla Internals.toggleOverwriteModeEnabled documentation> 
toggleOverwriteModeEnabled :: (MonadDOM m) => Internals -> m ()
toggleOverwriteModeEnabled self
  = liftDOM (void (self ^. jsf "toggleOverwriteModeEnabled" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfScrollableAreas Mozilla Internals.numberOfScrollableAreas documentation> 
numberOfScrollableAreas :: (MonadDOM m) => Internals -> m Word
numberOfScrollableAreas self
  = liftDOM
      (round <$>
         ((self ^. jsf "numberOfScrollableAreas" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfScrollableAreas Mozilla Internals.numberOfScrollableAreas documentation> 
numberOfScrollableAreas_ :: (MonadDOM m) => Internals -> m ()
numberOfScrollableAreas_ self
  = liftDOM (void (self ^. jsf "numberOfScrollableAreas" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPageBoxVisible Mozilla Internals.isPageBoxVisible documentation> 
isPageBoxVisible :: (MonadDOM m) => Internals -> Int -> m Bool
isPageBoxVisible self pageNumber
  = liftDOM
      ((self ^. jsf "isPageBoxVisible" [toJSVal pageNumber]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPageBoxVisible Mozilla Internals.isPageBoxVisible documentation> 
isPageBoxVisible_ :: (MonadDOM m) => Internals -> Int -> m ()
isPageBoxVisible_ self pageNumber
  = liftDOM
      (void (self ^. jsf "isPageBoxVisible" [toJSVal pageNumber]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.layerTreeAsText Mozilla Internals.layerTreeAsText documentation> 
layerTreeAsText ::
                (MonadDOM m, IsDocument document, FromJSString result) =>
                  Internals -> Maybe document -> Word -> m result
layerTreeAsText self document flags
  = liftDOM
      ((self ^. jsf "layerTreeAsText" [toJSVal document, toJSVal flags])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.layerTreeAsText Mozilla Internals.layerTreeAsText documentation> 
layerTreeAsText_ ::
                 (MonadDOM m, IsDocument document) =>
                   Internals -> Maybe document -> Word -> m ()
layerTreeAsText_ self document flags
  = liftDOM
      (void
         (self ^. jsf "layerTreeAsText" [toJSVal document, toJSVal flags]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollingStateTreeAsText Mozilla Internals.scrollingStateTreeAsText documentation> 
scrollingStateTreeAsText ::
                         (MonadDOM m, FromJSString result) => Internals -> m result
scrollingStateTreeAsText self
  = liftDOM
      ((self ^. jsf "scrollingStateTreeAsText" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollingStateTreeAsText Mozilla Internals.scrollingStateTreeAsText documentation> 
scrollingStateTreeAsText_ :: (MonadDOM m) => Internals -> m ()
scrollingStateTreeAsText_ self
  = liftDOM (void (self ^. jsf "scrollingStateTreeAsText" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mainThreadScrollingReasons Mozilla Internals.mainThreadScrollingReasons documentation> 
mainThreadScrollingReasons ::
                           (MonadDOM m, FromJSString result) => Internals -> m result
mainThreadScrollingReasons self
  = liftDOM
      ((self ^. jsf "mainThreadScrollingReasons" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mainThreadScrollingReasons Mozilla Internals.mainThreadScrollingReasons documentation> 
mainThreadScrollingReasons_ :: (MonadDOM m) => Internals -> m ()
mainThreadScrollingReasons_ self
  = liftDOM (void (self ^. jsf "mainThreadScrollingReasons" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRects ::
                       (MonadDOM m) => Internals -> m (Maybe ClientRectList)
nonFastScrollableRects self
  = liftDOM ((self ^. jsf "nonFastScrollableRects" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRects_ :: (MonadDOM m) => Internals -> m ()
nonFastScrollableRects_ self
  = liftDOM (void (self ^. jsf "nonFastScrollableRects" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRectsUnsafe ::
                             (MonadDOM m, HasCallStack) => Internals -> m ClientRectList
nonFastScrollableRectsUnsafe self
  = liftDOM
      (((self ^. jsf "nonFastScrollableRects" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRectsUnchecked ::
                                (MonadDOM m) => Internals -> m ClientRectList
nonFastScrollableRectsUnchecked self
  = liftDOM
      ((self ^. jsf "nonFastScrollableRects" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.repaintRectsAsText Mozilla Internals.repaintRectsAsText documentation> 
repaintRectsAsText ::
                   (MonadDOM m, FromJSString result) => Internals -> m result
repaintRectsAsText self
  = liftDOM
      ((self ^. jsf "repaintRectsAsText" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.repaintRectsAsText Mozilla Internals.repaintRectsAsText documentation> 
repaintRectsAsText_ :: (MonadDOM m) => Internals -> m ()
repaintRectsAsText_ self
  = liftDOM (void (self ^. jsf "repaintRectsAsText" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.garbageCollectDocumentResources Mozilla Internals.garbageCollectDocumentResources documentation> 
garbageCollectDocumentResources ::
                                (MonadDOM m) => Internals -> m ()
garbageCollectDocumentResources self
  = liftDOM (void (self ^. jsf "garbageCollectDocumentResources" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allowRoundingHacks Mozilla Internals.allowRoundingHacks documentation> 
allowRoundingHacks :: (MonadDOM m) => Internals -> m ()
allowRoundingHacks self
  = liftDOM (void (self ^. jsf "allowRoundingHacks" ()))

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
      (round <$> ((self ^. jsf "numberOfLiveNodes" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveNodes Mozilla Internals.numberOfLiveNodes documentation> 
numberOfLiveNodes_ :: (MonadDOM m) => Internals -> m ()
numberOfLiveNodes_ self
  = liftDOM (void (self ^. jsf "numberOfLiveNodes" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveDocuments Mozilla Internals.numberOfLiveDocuments documentation> 
numberOfLiveDocuments :: (MonadDOM m) => Internals -> m Word
numberOfLiveDocuments self
  = liftDOM
      (round <$>
         ((self ^. jsf "numberOfLiveDocuments" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveDocuments Mozilla Internals.numberOfLiveDocuments documentation> 
numberOfLiveDocuments_ :: (MonadDOM m) => Internals -> m ()
numberOfLiveDocuments_ self
  = liftDOM (void (self ^. jsf "numberOfLiveDocuments" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleMessageArgumentCounts Mozilla Internals.consoleMessageArgumentCounts documentation> 
consoleMessageArgumentCounts ::
                             (MonadDOM m, FromJSString result) => Internals -> m [result]
consoleMessageArgumentCounts self
  = liftDOM
      ((self ^. jsf "consoleMessageArgumentCounts" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleMessageArgumentCounts Mozilla Internals.consoleMessageArgumentCounts documentation> 
consoleMessageArgumentCounts_ :: (MonadDOM m) => Internals -> m ()
consoleMessageArgumentCounts_ self
  = liftDOM (void (self ^. jsf "consoleMessageArgumentCounts" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontend ::
                           (MonadDOM m, ToJSString url) =>
                             Internals -> url -> m (Maybe Window)
openDummyInspectorFrontend self url
  = liftDOM
      ((self ^. jsf "openDummyInspectorFrontend" [toJSVal url]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontend_ ::
                            (MonadDOM m, ToJSString url) => Internals -> url -> m ()
openDummyInspectorFrontend_ self url
  = liftDOM
      (void (self ^. jsf "openDummyInspectorFrontend" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontendUnsafe ::
                                 (MonadDOM m, ToJSString url, HasCallStack) =>
                                   Internals -> url -> m Window
openDummyInspectorFrontendUnsafe self url
  = liftDOM
      (((self ^. jsf "openDummyInspectorFrontend" [toJSVal url]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontendUnchecked ::
                                    (MonadDOM m, ToJSString url) => Internals -> url -> m Window
openDummyInspectorFrontendUnchecked self url
  = liftDOM
      ((self ^. jsf "openDummyInspectorFrontend" [toJSVal url]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closeDummyInspectorFrontend Mozilla Internals.closeDummyInspectorFrontend documentation> 
closeDummyInspectorFrontend :: (MonadDOM m) => Internals -> m ()
closeDummyInspectorFrontend self
  = liftDOM (void (self ^. jsf "closeDummyInspectorFrontend" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.counterValue Mozilla Internals.counterValue documentation> 
counterValue_ ::
              (MonadDOM m, IsElement element) =>
                Internals -> Maybe element -> m ()
counterValue_ self element
  = liftDOM (void (self ^. jsf "counterValue" [toJSVal element]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageNumber Mozilla Internals.pageNumber documentation> 
pageNumber_ ::
            (MonadDOM m, IsElement element) =>
              Internals -> Maybe element -> Float -> Float -> m ()
pageNumber_ self element pageWidth pageHeight
  = liftDOM
      (void
         (self ^. jsf "pageNumber"
            [toJSVal element, toJSVal pageWidth, toJSVal pageHeight]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shortcutIconURLs Mozilla Internals.shortcutIconURLs documentation> 
shortcutIconURLs ::
                 (MonadDOM m, FromJSString result) => Internals -> m [result]
shortcutIconURLs self
  = liftDOM
      ((self ^. jsf "shortcutIconURLs" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shortcutIconURLs Mozilla Internals.shortcutIconURLs documentation> 
shortcutIconURLs_ :: (MonadDOM m) => Internals -> m ()
shortcutIconURLs_ self
  = liftDOM (void (self ^. jsf "shortcutIconURLs" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allIconURLs Mozilla Internals.allIconURLs documentation> 
allIconURLs ::
            (MonadDOM m, FromJSString result) => Internals -> m [result]
allIconURLs self
  = liftDOM ((self ^. jsf "allIconURLs" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allIconURLs Mozilla Internals.allIconURLs documentation> 
allIconURLs_ :: (MonadDOM m) => Internals -> m ()
allIconURLs_ self = liftDOM (void (self ^. jsf "allIconURLs" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfPages Mozilla Internals.numberOfPages documentation> 
numberOfPages ::
              (MonadDOM m) => Internals -> Double -> Double -> m Int
numberOfPages self pageWidthInPixels pageHeightInPixels
  = liftDOM
      (round <$>
         ((self ^. jsf "numberOfPages"
             [toJSVal pageWidthInPixels, toJSVal pageHeightInPixels])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfPages Mozilla Internals.numberOfPages documentation> 
numberOfPages_ ::
               (MonadDOM m) => Internals -> Double -> Double -> m ()
numberOfPages_ self pageWidthInPixels pageHeightInPixels
  = liftDOM
      (void
         (self ^. jsf "numberOfPages"
            [toJSVal pageWidthInPixels, toJSVal pageHeightInPixels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageProperty Mozilla Internals.pageProperty documentation> 
pageProperty ::
             (MonadDOM m, ToJSString propertyName, FromJSString result) =>
               Internals -> propertyName -> Int -> m result
pageProperty self propertyName pageNumber
  = liftDOM
      ((self ^. jsf "pageProperty"
          [toJSVal propertyName, toJSVal pageNumber])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageProperty Mozilla Internals.pageProperty documentation> 
pageProperty_ ::
              (MonadDOM m, ToJSString propertyName) =>
                Internals -> propertyName -> Int -> m ()
pageProperty_ self propertyName pageNumber
  = liftDOM
      (void
         (self ^. jsf "pageProperty"
            [toJSVal propertyName, toJSVal pageNumber]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageSizeAndMarginsInPixels Mozilla Internals.pageSizeAndMarginsInPixels documentation> 
pageSizeAndMarginsInPixels_ ::
                            (MonadDOM m) =>
                              Internals -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> m ()
pageSizeAndMarginsInPixels_ self pageIndex width height marginTop
  marginRight marginBottom marginLeft
  = liftDOM
      (void
         (self ^. jsf "pageSizeAndMarginsInPixels"
            [toJSVal pageIndex, toJSVal width, toJSVal height,
             toJSVal marginTop, toJSVal marginRight, toJSVal marginBottom,
             toJSVal marginLeft]))

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
         (self ^. jsf "setApplicationCacheOriginQuota"
            [integralToDoubleToJSVal quota]))

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
  = liftDOM ((self ^. jsf "mallocStatistics" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatistics_ :: (MonadDOM m) => Internals -> m ()
mallocStatistics_ self
  = liftDOM (void (self ^. jsf "mallocStatistics" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatisticsUnsafe ::
                       (MonadDOM m, HasCallStack) => Internals -> m MallocStatistics
mallocStatisticsUnsafe self
  = liftDOM
      (((self ^. jsf "mallocStatistics" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatisticsUnchecked ::
                          (MonadDOM m) => Internals -> m MallocStatistics
mallocStatisticsUnchecked self
  = liftDOM
      ((self ^. jsf "mallocStatistics" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversions ::
                (MonadDOM m) => Internals -> m (Maybe TypeConversions)
typeConversions self
  = liftDOM ((self ^. jsf "typeConversions" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversions_ :: (MonadDOM m) => Internals -> m ()
typeConversions_ self
  = liftDOM (void (self ^. jsf "typeConversions" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversionsUnsafe ::
                      (MonadDOM m, HasCallStack) => Internals -> m TypeConversions
typeConversionsUnsafe self
  = liftDOM
      (((self ^. jsf "typeConversions" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversionsUnchecked ::
                         (MonadDOM m) => Internals -> m TypeConversions
typeConversionsUnchecked self
  = liftDOM
      ((self ^. jsf "typeConversions" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfo :: (MonadDOM m) => Internals -> m (Maybe MemoryInfo)
memoryInfo self
  = liftDOM ((self ^. jsf "memoryInfo" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfo_ :: (MonadDOM m) => Internals -> m ()
memoryInfo_ self = liftDOM (void (self ^. jsf "memoryInfo" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfoUnsafe ::
                 (MonadDOM m, HasCallStack) => Internals -> m MemoryInfo
memoryInfoUnsafe self
  = liftDOM
      (((self ^. jsf "memoryInfo" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfoUnchecked :: (MonadDOM m) => Internals -> m MemoryInfo
memoryInfoUnchecked self
  = liftDOM ((self ^. jsf "memoryInfo" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getReferencedFilePaths Mozilla Internals.getReferencedFilePaths documentation> 
getReferencedFilePaths ::
                       (MonadDOM m, FromJSString result) => Internals -> m [result]
getReferencedFilePaths self
  = liftDOM
      ((self ^. jsf "getReferencedFilePaths" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getReferencedFilePaths Mozilla Internals.getReferencedFilePaths documentation> 
getReferencedFilePaths_ :: (MonadDOM m) => Internals -> m ()
getReferencedFilePaths_ self
  = liftDOM (void (self ^. jsf "getReferencedFilePaths" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.startTrackingRepaints Mozilla Internals.startTrackingRepaints documentation> 
startTrackingRepaints :: (MonadDOM m) => Internals -> m ()
startTrackingRepaints self
  = liftDOM (void (self ^. jsf "startTrackingRepaints" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.stopTrackingRepaints Mozilla Internals.stopTrackingRepaints documentation> 
stopTrackingRepaints :: (MonadDOM m) => Internals -> m ()
stopTrackingRepaints self
  = liftDOM (void (self ^. jsf "stopTrackingRepaints" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isTimerThrottled Mozilla Internals.isTimerThrottled documentation> 
isTimerThrottled :: (MonadDOM m) => Internals -> Int -> m Bool
isTimerThrottled self timerHandle
  = liftDOM
      ((self ^. jsf "isTimerThrottled" [toJSVal timerHandle]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isTimerThrottled Mozilla Internals.isTimerThrottled documentation> 
isTimerThrottled_ :: (MonadDOM m) => Internals -> Int -> m ()
isTimerThrottled_ self timerHandle
  = liftDOM
      (void (self ^. jsf "isTimerThrottled" [toJSVal timerHandle]))

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
      ((self ^. jsf "getCurrentCursorInfo" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getCurrentCursorInfo Mozilla Internals.getCurrentCursorInfo documentation> 
getCurrentCursorInfo_ :: (MonadDOM m) => Internals -> m ()
getCurrentCursorInfo_ self
  = liftDOM (void (self ^. jsf "getCurrentCursorInfo" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerTextForListItem Mozilla Internals.markerTextForListItem documentation> 
markerTextForListItem ::
                      (MonadDOM m, IsElement element, FromJSString result) =>
                        Internals -> Maybe element -> m result
markerTextForListItem self element
  = liftDOM
      ((self ^. jsf "markerTextForListItem" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerTextForListItem Mozilla Internals.markerTextForListItem documentation> 
markerTextForListItem_ ::
                       (MonadDOM m, IsElement element) =>
                         Internals -> Maybe element -> m ()
markerTextForListItem_ self element
  = liftDOM
      (void (self ^. jsf "markerTextForListItem" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toolTipFromElement Mozilla Internals.toolTipFromElement documentation> 
toolTipFromElement ::
                   (MonadDOM m, IsElement element, FromJSString result) =>
                     Internals -> Maybe element -> m result
toolTipFromElement self element
  = liftDOM
      ((self ^. jsf "toolTipFromElement" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toolTipFromElement Mozilla Internals.toolTipFromElement documentation> 
toolTipFromElement_ ::
                    (MonadDOM m, IsElement element) =>
                      Internals -> Maybe element -> m ()
toolTipFromElement_ self element
  = liftDOM
      (void (self ^. jsf "toolTipFromElement" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBuffer ::
                  (MonadDOM m, IsArrayBuffer buffer) =>
                    Internals -> Maybe buffer -> m (Maybe SerializedScriptValue)
deserializeBuffer self buffer
  = liftDOM
      ((self ^. jsf "deserializeBuffer" [toJSVal buffer]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBuffer_ ::
                   (MonadDOM m, IsArrayBuffer buffer) =>
                     Internals -> Maybe buffer -> m ()
deserializeBuffer_ self buffer
  = liftDOM (void (self ^. jsf "deserializeBuffer" [toJSVal buffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBufferUnsafe ::
                        (MonadDOM m, IsArrayBuffer buffer, HasCallStack) =>
                          Internals -> Maybe buffer -> m SerializedScriptValue
deserializeBufferUnsafe self buffer
  = liftDOM
      (((self ^. jsf "deserializeBuffer" [toJSVal buffer]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBufferUnchecked ::
                           (MonadDOM m, IsArrayBuffer buffer) =>
                             Internals -> Maybe buffer -> m SerializedScriptValue
deserializeBufferUnchecked self buffer
  = liftDOM
      ((self ^. jsf "deserializeBuffer" [toJSVal buffer]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObject ::
                (MonadDOM m, IsSerializedScriptValue obj) =>
                  Internals -> Maybe obj -> m (Maybe ArrayBuffer)
serializeObject self obj
  = liftDOM
      ((self ^. jsf "serializeObject" [toJSVal obj]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObject_ ::
                 (MonadDOM m, IsSerializedScriptValue obj) =>
                   Internals -> Maybe obj -> m ()
serializeObject_ self obj
  = liftDOM (void (self ^. jsf "serializeObject" [toJSVal obj]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObjectUnsafe ::
                      (MonadDOM m, IsSerializedScriptValue obj, HasCallStack) =>
                        Internals -> Maybe obj -> m ArrayBuffer
serializeObjectUnsafe self obj
  = liftDOM
      (((self ^. jsf "serializeObject" [toJSVal obj]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObjectUnchecked ::
                         (MonadDOM m, IsSerializedScriptValue obj) =>
                           Internals -> Maybe obj -> m ArrayBuffer
serializeObjectUnchecked self obj
  = liftDOM
      ((self ^. jsf "serializeObject" [toJSVal obj]) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaElementHasCharacteristic Mozilla Internals.mediaElementHasCharacteristic documentation> 
mediaElementHasCharacteristic_ ::
                               (MonadDOM m, IsNode node, ToJSString characteristic) =>
                                 Internals -> Maybe node -> characteristic -> m ()
mediaElementHasCharacteristic_ self node characteristic
  = liftDOM
      (void
         (self ^. jsf "mediaElementHasCharacteristic"
            [toJSVal node, toJSVal characteristic]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockCDM Mozilla Internals.initializeMockCDM documentation> 
initializeMockCDM :: (MonadDOM m) => Internals -> m ()
initializeMockCDM self
  = liftDOM (void (self ^. jsf "initializeMockCDM" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.enableMockSpeechSynthesizer Mozilla Internals.enableMockSpeechSynthesizer documentation> 
enableMockSpeechSynthesizer :: (MonadDOM m) => Internals -> m ()
enableMockSpeechSynthesizer self
  = liftDOM (void (self ^. jsf "enableMockSpeechSynthesizer" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getImageSourceURL Mozilla Internals.getImageSourceURL documentation> 
getImageSourceURL ::
                  (MonadDOM m, IsElement element, FromJSString result) =>
                    Internals -> Maybe element -> m result
getImageSourceURL self element
  = liftDOM
      ((self ^. jsf "getImageSourceURL" [toJSVal element]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getImageSourceURL Mozilla Internals.getImageSourceURL documentation> 
getImageSourceURL_ ::
                   (MonadDOM m, IsElement element) =>
                     Internals -> Maybe element -> m ()
getImageSourceURL_ self element
  = liftDOM
      (void (self ^. jsf "getImageSourceURL" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
captionsStyleSheetOverride ::
                           (MonadDOM m, FromJSString result) => Internals -> m result
captionsStyleSheetOverride self
  = liftDOM
      ((self ^. jsf "captionsStyleSheetOverride" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
captionsStyleSheetOverride_ :: (MonadDOM m) => Internals -> m ()
captionsStyleSheetOverride_ self
  = liftDOM (void (self ^. jsf "captionsStyleSheetOverride" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRanges_ ::
                  (MonadDOM m, IsFloat32Array startTimes, IsFloat32Array endTimes) =>
                    Internals -> Maybe startTimes -> Maybe endTimes -> m ()
createTimeRanges_ self startTimes endTimes
  = liftDOM
      (void
         (self ^. jsf "createTimeRanges"
            [toJSVal startTimes, toJSVal endTimes]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRangesUnsafe ::
                       (MonadDOM m, IsFloat32Array startTimes, IsFloat32Array endTimes,
                        HasCallStack) =>
                         Internals -> Maybe startTimes -> Maybe endTimes -> m TimeRanges
createTimeRangesUnsafe self startTimes endTimes
  = liftDOM
      (((self ^. jsf "createTimeRanges"
           [toJSVal startTimes, toJSVal endTimes])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRangesUnchecked ::
                          (MonadDOM m, IsFloat32Array startTimes, IsFloat32Array endTimes) =>
                            Internals -> Maybe startTimes -> Maybe endTimes -> m TimeRanges
createTimeRangesUnchecked self startTimes endTimes
  = liftDOM
      ((self ^. jsf "createTimeRanges"
          [toJSVal startTimes, toJSVal endTimes])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closestTimeToTimeRanges Mozilla Internals.closestTimeToTimeRanges documentation> 
closestTimeToTimeRanges ::
                        (MonadDOM m) => Internals -> Double -> Maybe TimeRanges -> m Double
closestTimeToTimeRanges self time ranges
  = liftDOM
      ((self ^. jsf "closestTimeToTimeRanges"
          [toJSVal time, toJSVal ranges])
         >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closestTimeToTimeRanges Mozilla Internals.closestTimeToTimeRanges documentation> 
closestTimeToTimeRanges_ ::
                         (MonadDOM m) => Internals -> Double -> Maybe TimeRanges -> m ()
closestTimeToTimeRanges_ self time ranges
  = liftDOM
      (void
         (self ^. jsf "closestTimeToTimeRanges"
            [toJSVal time, toJSVal ranges]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isSelectPopupVisible Mozilla Internals.isSelectPopupVisible documentation> 
isSelectPopupVisible ::
                     (MonadDOM m, IsNode node) => Internals -> Maybe node -> m Bool
isSelectPopupVisible self node
  = liftDOM
      ((self ^. jsf "isSelectPopupVisible" [toJSVal node]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isSelectPopupVisible Mozilla Internals.isSelectPopupVisible documentation> 
isSelectPopupVisible_ ::
                      (MonadDOM m, IsNode node) => Internals -> Maybe node -> m ()
isSelectPopupVisible_ self node
  = liftDOM
      (void (self ^. jsf "isSelectPopupVisible" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isVibrating Mozilla Internals.isVibrating documentation> 
isVibrating :: (MonadDOM m) => Internals -> m Bool
isVibrating self
  = liftDOM ((self ^. jsf "isVibrating" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isVibrating Mozilla Internals.isVibrating documentation> 
isVibrating_ :: (MonadDOM m) => Internals -> m ()
isVibrating_ self = liftDOM (void (self ^. jsf "isVibrating" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginUnavailabilityIndicatorObscured Mozilla Internals.isPluginUnavailabilityIndicatorObscured documentation> 
isPluginUnavailabilityIndicatorObscured ::
                                        (MonadDOM m, IsElement element) =>
                                          Internals -> Maybe element -> m Bool
isPluginUnavailabilityIndicatorObscured self element
  = liftDOM
      ((self ^. jsf "isPluginUnavailabilityIndicatorObscured"
          [toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginUnavailabilityIndicatorObscured Mozilla Internals.isPluginUnavailabilityIndicatorObscured documentation> 
isPluginUnavailabilityIndicatorObscured_ ::
                                         (MonadDOM m, IsElement element) =>
                                           Internals -> Maybe element -> m ()
isPluginUnavailabilityIndicatorObscured_ self element
  = liftDOM
      (void
         (self ^. jsf "isPluginUnavailabilityIndicatorObscured"
            [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginSnapshotted Mozilla Internals.isPluginSnapshotted documentation> 
isPluginSnapshotted ::
                    (MonadDOM m, IsElement element) =>
                      Internals -> Maybe element -> m Bool
isPluginSnapshotted self element
  = liftDOM
      ((self ^. jsf "isPluginSnapshotted" [toJSVal element]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginSnapshotted Mozilla Internals.isPluginSnapshotted documentation> 
isPluginSnapshotted_ ::
                     (MonadDOM m, IsElement element) =>
                       Internals -> Maybe element -> m ()
isPluginSnapshotted_ self element
  = liftDOM
      (void (self ^. jsf "isPluginSnapshotted" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBounds ::
                (MonadDOM m) => Internals -> m (Maybe ClientRect)
selectionBounds self
  = liftDOM ((self ^. jsf "selectionBounds" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBounds_ :: (MonadDOM m) => Internals -> m ()
selectionBounds_ self
  = liftDOM (void (self ^. jsf "selectionBounds" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBoundsUnsafe ::
                      (MonadDOM m, HasCallStack) => Internals -> m ClientRect
selectionBoundsUnsafe self
  = liftDOM
      (((self ^. jsf "selectionBounds" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBoundsUnchecked ::
                         (MonadDOM m) => Internals -> m ClientRect
selectionBoundsUnchecked self
  = liftDOM
      ((self ^. jsf "selectionBounds" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockMediaSource Mozilla Internals.initializeMockMediaSource documentation> 
initializeMockMediaSource :: (MonadDOM m) => Internals -> m ()
initializeMockMediaSource self
  = liftDOM (void (self ^. jsf "initializeMockMediaSource" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.bufferedSamplesForTrackID Mozilla Internals.bufferedSamplesForTrackID documentation> 
bufferedSamplesForTrackID ::
                          (MonadDOM m, ToJSString trackID, FromJSString result) =>
                            Internals -> Maybe SourceBuffer -> trackID -> m [result]
bufferedSamplesForTrackID self buffer trackID
  = liftDOM
      ((self ^. jsf "bufferedSamplesForTrackID"
          [toJSVal buffer, toJSVal trackID])
         >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.bufferedSamplesForTrackID Mozilla Internals.bufferedSamplesForTrackID documentation> 
bufferedSamplesForTrackID_ ::
                           (MonadDOM m, ToJSString trackID) =>
                             Internals -> Maybe SourceBuffer -> trackID -> m ()
bufferedSamplesForTrackID_ self buffer trackID
  = liftDOM
      (void
         (self ^. jsf "bufferedSamplesForTrackID"
            [toJSVal buffer, toJSVal trackID]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.beginMediaSessionInterruption Mozilla Internals.beginMediaSessionInterruption documentation> 
beginMediaSessionInterruption :: (MonadDOM m) => Internals -> m ()
beginMediaSessionInterruption self
  = liftDOM (void (self ^. jsf "beginMediaSessionInterruption" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.endMediaSessionInterruption Mozilla Internals.endMediaSessionInterruption documentation> 
endMediaSessionInterruption ::
                            (MonadDOM m, ToJSString flags) => Internals -> flags -> m ()
endMediaSessionInterruption self flags
  = liftDOM
      (void (self ^. jsf "endMediaSessionInterruption" [toJSVal flags]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterForeground Mozilla Internals.applicationWillEnterForeground documentation> 
applicationWillEnterForeground :: (MonadDOM m) => Internals -> m ()
applicationWillEnterForeground self
  = liftDOM (void (self ^. jsf "applicationWillEnterForeground" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterBackground Mozilla Internals.applicationWillEnterBackground documentation> 
applicationWillEnterBackground :: (MonadDOM m) => Internals -> m ()
applicationWillEnterBackground self
  = liftDOM (void (self ^. jsf "applicationWillEnterBackground" ()))

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
  = liftDOM (void (self ^. jsf "simulateSystemSleep" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemWake Mozilla Internals.simulateSystemWake documentation> 
simulateSystemWake :: (MonadDOM m) => Internals -> m ()
simulateSystemWake self
  = liftDOM (void (self ^. jsf "simulateSystemWake" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementIsBlockingDisplaySleep Mozilla Internals.elementIsBlockingDisplaySleep documentation> 
elementIsBlockingDisplaySleep ::
                              (MonadDOM m, IsElement element) =>
                                Internals -> Maybe element -> m Bool
elementIsBlockingDisplaySleep self element
  = liftDOM
      ((self ^. jsf "elementIsBlockingDisplaySleep" [toJSVal element])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementIsBlockingDisplaySleep Mozilla Internals.elementIsBlockingDisplaySleep documentation> 
elementIsBlockingDisplaySleep_ ::
                               (MonadDOM m, IsElement element) =>
                                 Internals -> Maybe element -> m ()
elementIsBlockingDisplaySleep_ self element
  = liftDOM
      (void
         (self ^. jsf "elementIsBlockingDisplaySleep" [toJSVal element]))

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
      ((self ^. jsf "pageOverlayLayerTreeAsText" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageOverlayLayerTreeAsText Mozilla Internals.pageOverlayLayerTreeAsText documentation> 
pageOverlayLayerTreeAsText_ :: (MonadDOM m) => Internals -> m ()
pageOverlayLayerTreeAsText_ self
  = liftDOM (void (self ^. jsf "pageOverlayLayerTreeAsText" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPageMuted Mozilla Internals.setPageMuted documentation> 
setPageMuted :: (MonadDOM m) => Internals -> Bool -> m ()
setPageMuted self muted
  = liftDOM (void (self ^. jsf "setPageMuted" [toJSVal muted]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPagePlayingAudio Mozilla Internals.isPagePlayingAudio documentation> 
isPagePlayingAudio :: (MonadDOM m) => Internals -> m Bool
isPagePlayingAudio self
  = liftDOM ((self ^. jsf "isPagePlayingAudio" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPagePlayingAudio Mozilla Internals.isPagePlayingAudio documentation> 
isPagePlayingAudio_ :: (MonadDOM m) => Internals -> m ()
isPagePlayingAudio_ self
  = liftDOM (void (self ^. jsf "isPagePlayingAudio" ()))
pattern LAYER_TREE_INCLUDES_VISIBLE_RECTS = 1
pattern LAYER_TREE_INCLUDES_TILE_CACHES = 2
pattern LAYER_TREE_INCLUDES_REPAINT_RECTS = 4
pattern LAYER_TREE_INCLUDES_PAINTING_PHASES = 8
pattern LAYER_TREE_INCLUDES_CONTENT_LAYERS = 16

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
getSettings ::
            (MonadDOM m) => Internals -> m (Maybe InternalSettings)
getSettings self = liftDOM ((self ^. js "settings") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
getSettingsUnsafe ::
                  (MonadDOM m, HasCallStack) => Internals -> m InternalSettings
getSettingsUnsafe self
  = liftDOM
      (((self ^. js "settings") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
getSettingsUnchecked ::
                     (MonadDOM m) => Internals -> m InternalSettings
getSettingsUnchecked self
  = liftDOM ((self ^. js "settings") >>= fromJSValUnchecked)

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
