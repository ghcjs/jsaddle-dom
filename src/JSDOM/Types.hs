{-# LANGUAGE CPP #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE RankNTypes #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Types (
  -- * JavaScript Context and Monad
    JSContextRef(..), JSM, askJSM, runJSM, MonadJSM(..), liftJSM

  -- * DOM Context and Monad
  , DOMContext(..), DOM, askDOM, runDOM, MonadDOM(..), liftDOM

  -- * JavaScript Value
  , JSVal(..), ToJSVal(..), FromJSVal(..), PToJSVal(..), PFromJSVal(..)

  -- * JavaScript String
  , JSString(..), ToJSString(..), FromJSString(..)
  , toMaybeJSString, fromMaybeJSString

  -- * JavaScript Array
  , fromJSArray, fromJSArrayUnchecked

  -- * JavaScript Object
  , Object(..)

  -- * Nullable
  , Nullable(..), nullableToMaybe, maybeToNullable

  -- * DOM String
  , DOMString(..), ToDOMString(..), FromDOMString(..), IsDOMString

  -- * Object
  , maybeNullOrUndefined, maybeNullOrUndefined', GType(..)
  , GObject(..), IsGObject, toGObject, gTypeGObject, isA, objectToString
  , castTo, unsafeCastTo, uncheckedCastTo
  , strictEqual

  -- * Callbacks
  , Callback(..)
  , withCallback
  , AudioBufferCallback(..)
  , DatabaseCallback(..)
  , MediaQueryListListener(..)
  , MediaStreamTrackSourcesCallback(..)
  , NavigatorUserMediaErrorCallback(..)
  , NavigatorUserMediaSuccessCallback(..)
  , NotificationPermissionCallback(..)
  , PositionCallback(..)
  , PositionErrorCallback(..)
  , RequestAnimationFrameCallback(..)
  , RTCPeerConnectionErrorCallback(..)
  , RTCSessionDescriptionCallback(..)
  , RTCStatsCallback(..)
  , SQLStatementCallback(..)
  , SQLStatementErrorCallback(..)
  , SQLTransactionCallback(..)
  , SQLTransactionErrorCallback(..)
  , StorageErrorCallback(..)
  , StorageQuotaCallback(..)
  , StorageUsageCallback(..)
  , StringCallback(..)
  , VoidCallback(..)

  -- * Dictionaries
  , Dictionary(Dictionary), unDictionary, IsDictionary, toDictionary
  , BlobPropertyBag(BlobPropertyBag), unBlobPropertyBag, IsBlobPropertyBag, toBlobPropertyBag

  -- * Mutation Callback
  , MutationCallback(MutationCallback), unMutationCallback, IsMutationCallback, toMutationCallback

  -- * Promise
  , Promise(Promise), unPromise, IsPromise, toPromise, gTypePromise

  -- * Date
  , Date(Date), unDate, IsDate, toDate, gTypeDate

  -- * Arrays
  , Array(Array), unArray, IsArray, toArray, gTypeArray
  , ObjectArray(ObjectArray), unObjectArray, IsObjectArray, toObjectArray
  , ArrayBuffer(ArrayBuffer), unArrayBuffer, IsArrayBuffer, toArrayBuffer, gTypeArrayBuffer
  , ArrayBufferView(ArrayBufferView), unArrayBufferView, IsArrayBufferView, toArrayBufferView
  , Float32Array(Float32Array), unFloat32Array, IsFloat32Array, toFloat32Array, gTypeFloat32Array
  , Float64Array(Float64Array), unFloat64Array, IsFloat64Array, toFloat64Array, gTypeFloat64Array
  , Uint8Array(Uint8Array), unUint8Array, IsUint8Array, toUint8Array, gTypeUint8Array
  , Uint8ClampedArray(Uint8ClampedArray), unUint8ClampedArray, IsUint8ClampedArray, toUint8ClampedArray, gTypeUint8ClampedArray
  , Uint16Array(Uint16Array), unUint16Array, IsUint16Array, toUint16Array, gTypeUint16Array
  , Uint32Array(Uint32Array), unUint32Array, IsUint32Array, toUint32Array, gTypeUint32Array
  , Int8Array(Int8Array), unInt8Array, IsInt8Array, toInt8Array, gTypeInt8Array
  , Int16Array(Int16Array), unInt16Array, IsInt16Array, toInt16Array, gTypeInt16Array
  , Int32Array(Int32Array), unInt32Array, IsInt32Array, toInt32Array, gTypeInt32Array

  -- * Geolocation
  , SerializedScriptValue(SerializedScriptValue), unSerializedScriptValue, IsSerializedScriptValue, toSerializedScriptValue
  , PositionOptions(PositionOptions), unPositionOptions, IsPositionOptions, toPositionOptions
  , Acceleration(Acceleration), unAcceleration, IsAcceleration, toAcceleration
  , RotationRate(RotationRate), unRotationRate, IsRotationRate, toRotationRate

  -- * Crypto
  , Algorithm(Algorithm), unAlgorithm, IsAlgorithm, toAlgorithm
  , CryptoOperationData(CryptoOperationData), unCryptoOperationData, IsCryptoOperationData, toCryptoOperationData

  -- * CanvasStyle (fill & stroke style)
  , CanvasStyle(CanvasStyle), unCanvasStyle, IsCanvasStyle, toCanvasStyle

  , DOMException(DOMException), unDOMException, IsDOMException, toDOMException

  -- * WebGL typedefs
  , GLenum(..), GLboolean(..), GLbitfield(..), GLbyte(..), GLshort(..), GLint(..), GLsizei(..)
  , GLintptr(..), GLsizeiptr(..), GLubyte(..), GLushort(..), GLuint(..), GLfloat(..), GLclampf(..)
  , GLint64, GLuint64

  -- * Interface types from IDL files

  -- * Used for better error messages
  , HasCallStack

-- AUTO GENERATION STARTS HERE
  , ANGLEInstancedArrays(ANGLEInstancedArrays), unANGLEInstancedArrays, gTypeANGLEInstancedArrays
  , AbstractView(AbstractView), unAbstractView, gTypeAbstractView
  , AbstractWorker(AbstractWorker), unAbstractWorker, gTypeAbstractWorker
  , AllAudioCapabilities(AllAudioCapabilities), unAllAudioCapabilities, gTypeAllAudioCapabilities
  , AllVideoCapabilities(AllVideoCapabilities), unAllVideoCapabilities, gTypeAllVideoCapabilities
  , AnalyserNode(AnalyserNode), unAnalyserNode, gTypeAnalyserNode
  , AnimationEvent(AnimationEvent), unAnimationEvent, gTypeAnimationEvent
  , ApplicationCache(ApplicationCache), unApplicationCache, gTypeApplicationCache
  , Attr(Attr), unAttr, gTypeAttr
  , AudioBuffer(AudioBuffer), unAudioBuffer, gTypeAudioBuffer
  , AudioBufferSourceNode(AudioBufferSourceNode), unAudioBufferSourceNode, gTypeAudioBufferSourceNode
  , AudioContext(AudioContext), unAudioContext, IsAudioContext, toAudioContext, gTypeAudioContext
  , AudioDestinationNode(AudioDestinationNode), unAudioDestinationNode, gTypeAudioDestinationNode
  , AudioListener(AudioListener), unAudioListener, gTypeAudioListener
  , AudioNode(AudioNode), unAudioNode, IsAudioNode, toAudioNode, gTypeAudioNode
  , AudioParam(AudioParam), unAudioParam, gTypeAudioParam
  , AudioProcessingEvent(AudioProcessingEvent), unAudioProcessingEvent, gTypeAudioProcessingEvent
  , AudioStreamTrack(AudioStreamTrack), unAudioStreamTrack, gTypeAudioStreamTrack
  , AudioTrack(AudioTrack), unAudioTrack, gTypeAudioTrack
  , AudioTrackList(AudioTrackList), unAudioTrackList, gTypeAudioTrackList
  , AutocompleteErrorEvent(AutocompleteErrorEvent), unAutocompleteErrorEvent, gTypeAutocompleteErrorEvent
  , BarProp(BarProp), unBarProp, gTypeBarProp
  , BatteryManager(BatteryManager), unBatteryManager, gTypeBatteryManager
  , BeforeLoadEvent(BeforeLoadEvent), unBeforeLoadEvent, gTypeBeforeLoadEvent
  , BeforeUnloadEvent(BeforeUnloadEvent), unBeforeUnloadEvent, gTypeBeforeUnloadEvent
  , BiquadFilterNode(BiquadFilterNode), unBiquadFilterNode, gTypeBiquadFilterNode
  , Blob(Blob), unBlob, IsBlob, toBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, gTypeCDATASection
  , CSS(CSS), unCSS, gTypeCSS
  , CSSCharsetRule(CSSCharsetRule), unCSSCharsetRule, gTypeCSSCharsetRule
  , CSSFontFaceLoadEvent(CSSFontFaceLoadEvent), unCSSFontFaceLoadEvent, gTypeCSSFontFaceLoadEvent
  , CSSFontFaceRule(CSSFontFaceRule), unCSSFontFaceRule, gTypeCSSFontFaceRule
  , CSSImportRule(CSSImportRule), unCSSImportRule, gTypeCSSImportRule
  , CSSKeyframeRule(CSSKeyframeRule), unCSSKeyframeRule, gTypeCSSKeyframeRule
  , CSSKeyframesRule(CSSKeyframesRule), unCSSKeyframesRule, gTypeCSSKeyframesRule
  , CSSMediaRule(CSSMediaRule), unCSSMediaRule, gTypeCSSMediaRule
  , CSSPageRule(CSSPageRule), unCSSPageRule, gTypeCSSPageRule
  , CSSPrimitiveValue(CSSPrimitiveValue), unCSSPrimitiveValue, gTypeCSSPrimitiveValue
  , CSSRule(CSSRule), unCSSRule, IsCSSRule, toCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleRule(CSSStyleRule), unCSSStyleRule, gTypeCSSStyleRule
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, gTypeCSSStyleSheet
  , CSSSupportsRule(CSSSupportsRule), unCSSSupportsRule, gTypeCSSSupportsRule
  , CSSUnknownRule(CSSUnknownRule), unCSSUnknownRule, gTypeCSSUnknownRule
  , CSSValue(CSSValue), unCSSValue, IsCSSValue, toCSSValue, gTypeCSSValue
  , CSSValueList(CSSValueList), unCSSValueList, IsCSSValueList, toCSSValueList, gTypeCSSValueList
  , CanvasGradient(CanvasGradient), unCanvasGradient, gTypeCanvasGradient
  , CanvasPattern(CanvasPattern), unCanvasPattern, gTypeCanvasPattern
  , CanvasProxy(CanvasProxy), unCanvasProxy, gTypeCanvasProxy
  , CanvasRenderingContext(CanvasRenderingContext), unCanvasRenderingContext, IsCanvasRenderingContext, toCanvasRenderingContext, gTypeCanvasRenderingContext
  , CanvasRenderingContext2D(CanvasRenderingContext2D), unCanvasRenderingContext2D, gTypeCanvasRenderingContext2D
  , CapabilityRange(CapabilityRange), unCapabilityRange, gTypeCapabilityRange
  , ChannelMergerNode(ChannelMergerNode), unChannelMergerNode, gTypeChannelMergerNode
  , ChannelSplitterNode(ChannelSplitterNode), unChannelSplitterNode, gTypeChannelSplitterNode
  , CharacterData(CharacterData), unCharacterData, IsCharacterData, toCharacterData, gTypeCharacterData
  , ChildNode(ChildNode), unChildNode, gTypeChildNode
  , ClientRect(ClientRect), unClientRect, gTypeClientRect
  , ClientRectList(ClientRectList), unClientRectList, gTypeClientRectList
  , CloseEvent(CloseEvent), unCloseEvent, gTypeCloseEvent
  , CommandLineAPIHost(CommandLineAPIHost), unCommandLineAPIHost, gTypeCommandLineAPIHost
  , Comment(Comment), unComment, gTypeComment
  , CompositionEvent(CompositionEvent), unCompositionEvent, gTypeCompositionEvent
  , ConvolverNode(ConvolverNode), unConvolverNode, gTypeConvolverNode
  , Coordinates(Coordinates), unCoordinates, gTypeCoordinates
  , Counter(Counter), unCounter, gTypeCounter
  , Crypto(Crypto), unCrypto, gTypeCrypto
  , CryptoKey(CryptoKey), unCryptoKey, gTypeCryptoKey
  , CryptoKeyPair(CryptoKeyPair), unCryptoKeyPair, gTypeCryptoKeyPair
  , CustomEvent(CustomEvent), unCustomEvent, gTypeCustomEvent
  , DOMError(DOMError), unDOMError, IsDOMError, toDOMError, gTypeDOMError
  , DOMImplementation(DOMImplementation), unDOMImplementation, gTypeDOMImplementation
  , DOMNamedFlowCollection(DOMNamedFlowCollection), unDOMNamedFlowCollection, gTypeDOMNamedFlowCollection
  , DOMParser(DOMParser), unDOMParser, gTypeDOMParser
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, gTypeDOMStringList
  , DOMStringMap(DOMStringMap), unDOMStringMap, gTypeDOMStringMap
  , DOMTokenList(DOMTokenList), unDOMTokenList, IsDOMTokenList, toDOMTokenList, gTypeDOMTokenList
  , DataCue(DataCue), unDataCue, gTypeDataCue
  , DataTransfer(DataTransfer), unDataTransfer, gTypeDataTransfer
  , DataTransferItem(DataTransferItem), unDataTransferItem, gTypeDataTransferItem
  , DataTransferItemList(DataTransferItemList), unDataTransferItemList, gTypeDataTransferItemList
  , Database(Database), unDatabase, gTypeDatabase
  , DedicatedWorkerGlobalScope(DedicatedWorkerGlobalScope), unDedicatedWorkerGlobalScope, gTypeDedicatedWorkerGlobalScope
  , DelayNode(DelayNode), unDelayNode, gTypeDelayNode
  , DeviceMotionEvent(DeviceMotionEvent), unDeviceMotionEvent, gTypeDeviceMotionEvent
  , DeviceOrientationEvent(DeviceOrientationEvent), unDeviceOrientationEvent, gTypeDeviceOrientationEvent
  , DeviceProximityEvent(DeviceProximityEvent), unDeviceProximityEvent, gTypeDeviceProximityEvent
  , Document(Document), unDocument, IsDocument, toDocument, gTypeDocument
  , DocumentFragment(DocumentFragment), unDocumentFragment, gTypeDocumentFragment
  , DocumentType(DocumentType), unDocumentType, gTypeDocumentType
  , DynamicsCompressorNode(DynamicsCompressorNode), unDynamicsCompressorNode, gTypeDynamicsCompressorNode
  , EXTBlendMinMax(EXTBlendMinMax), unEXTBlendMinMax, gTypeEXTBlendMinMax
  , EXTFragDepth(EXTFragDepth), unEXTFragDepth, gTypeEXTFragDepth
  , EXTShaderTextureLOD(EXTShaderTextureLOD), unEXTShaderTextureLOD, gTypeEXTShaderTextureLOD
  , EXTTextureFilterAnisotropic(EXTTextureFilterAnisotropic), unEXTTextureFilterAnisotropic, gTypeEXTTextureFilterAnisotropic
  , EXTsRGB(EXTsRGB), unEXTsRGB, gTypeEXTsRGB
  , Element(Element), unElement, IsElement, toElement, gTypeElement
  , Entity(Entity), unEntity, gTypeEntity
  , EntityReference(EntityReference), unEntityReference, gTypeEntityReference
  , ErrorEvent(ErrorEvent), unErrorEvent, gTypeErrorEvent
  , Event(Event), unEvent, IsEvent, toEvent, gTypeEvent
  , EventListener(EventListener), unEventListener, gTypeEventListener
  , EventSource(EventSource), unEventSource, gTypeEventSource
  , EventTarget(EventTarget), unEventTarget, IsEventTarget, toEventTarget, gTypeEventTarget
  , File(File), unFile, gTypeFile
  , FileError(FileError), unFileError, gTypeFileError
  , FileList(FileList), unFileList, gTypeFileList
  , FileReader(FileReader), unFileReader, gTypeFileReader
  , FileReaderSync(FileReaderSync), unFileReaderSync, gTypeFileReaderSync
  , FocusEvent(FocusEvent), unFocusEvent, gTypeFocusEvent
  , FontLoader(FontLoader), unFontLoader, gTypeFontLoader
  , FormData(FormData), unFormData, gTypeFormData
  , GainNode(GainNode), unGainNode, gTypeGainNode
  , Gamepad(Gamepad), unGamepad, gTypeGamepad
  , GamepadButton(GamepadButton), unGamepadButton, gTypeGamepadButton
  , GamepadEvent(GamepadEvent), unGamepadEvent, gTypeGamepadEvent
  , Geolocation(Geolocation), unGeolocation, gTypeGeolocation
  , Geoposition(Geoposition), unGeoposition, gTypeGeoposition
  , HTMLAllCollection(HTMLAllCollection), unHTMLAllCollection, gTypeHTMLAllCollection
  , HTMLAnchorElement(HTMLAnchorElement), unHTMLAnchorElement, gTypeHTMLAnchorElement
  , HTMLAppletElement(HTMLAppletElement), unHTMLAppletElement, gTypeHTMLAppletElement
  , HTMLAreaElement(HTMLAreaElement), unHTMLAreaElement, gTypeHTMLAreaElement
  , HTMLAudioElement(HTMLAudioElement), unHTMLAudioElement, gTypeHTMLAudioElement
  , HTMLBRElement(HTMLBRElement), unHTMLBRElement, gTypeHTMLBRElement
  , HTMLBaseElement(HTMLBaseElement), unHTMLBaseElement, gTypeHTMLBaseElement
  , HTMLBaseFontElement(HTMLBaseFontElement), unHTMLBaseFontElement, gTypeHTMLBaseFontElement
  , HTMLBodyElement(HTMLBodyElement), unHTMLBodyElement, gTypeHTMLBodyElement
  , HTMLButtonElement(HTMLButtonElement), unHTMLButtonElement, gTypeHTMLButtonElement
  , HTMLCanvasElement(HTMLCanvasElement), unHTMLCanvasElement, gTypeHTMLCanvasElement
  , HTMLCollection(HTMLCollection), unHTMLCollection, IsHTMLCollection, toHTMLCollection, gTypeHTMLCollection
  , HTMLDListElement(HTMLDListElement), unHTMLDListElement, gTypeHTMLDListElement
  , HTMLDataListElement(HTMLDataListElement), unHTMLDataListElement, gTypeHTMLDataListElement
  , HTMLDetailsElement(HTMLDetailsElement), unHTMLDetailsElement, gTypeHTMLDetailsElement
  , HTMLDirectoryElement(HTMLDirectoryElement), unHTMLDirectoryElement, gTypeHTMLDirectoryElement
  , HTMLDivElement(HTMLDivElement), unHTMLDivElement, gTypeHTMLDivElement
  , HTMLDocument(HTMLDocument), unHTMLDocument, gTypeHTMLDocument
  , HTMLElement(HTMLElement), unHTMLElement, IsHTMLElement, toHTMLElement, gTypeHTMLElement
  , HTMLEmbedElement(HTMLEmbedElement), unHTMLEmbedElement, gTypeHTMLEmbedElement
  , HTMLFieldSetElement(HTMLFieldSetElement), unHTMLFieldSetElement, gTypeHTMLFieldSetElement
  , HTMLFontElement(HTMLFontElement), unHTMLFontElement, gTypeHTMLFontElement
  , HTMLFormControlsCollection(HTMLFormControlsCollection), unHTMLFormControlsCollection, gTypeHTMLFormControlsCollection
  , HTMLFormElement(HTMLFormElement), unHTMLFormElement, gTypeHTMLFormElement
  , HTMLFrameElement(HTMLFrameElement), unHTMLFrameElement, gTypeHTMLFrameElement
  , HTMLFrameSetElement(HTMLFrameSetElement), unHTMLFrameSetElement, gTypeHTMLFrameSetElement
  , HTMLHRElement(HTMLHRElement), unHTMLHRElement, gTypeHTMLHRElement
  , HTMLHeadElement(HTMLHeadElement), unHTMLHeadElement, gTypeHTMLHeadElement
  , HTMLHeadingElement(HTMLHeadingElement), unHTMLHeadingElement, gTypeHTMLHeadingElement
  , HTMLHtmlElement(HTMLHtmlElement), unHTMLHtmlElement, gTypeHTMLHtmlElement
  , HTMLIFrameElement(HTMLIFrameElement), unHTMLIFrameElement, gTypeHTMLIFrameElement
  , HTMLImageElement(HTMLImageElement), unHTMLImageElement, gTypeHTMLImageElement
  , HTMLInputElement(HTMLInputElement), unHTMLInputElement, gTypeHTMLInputElement
  , HTMLKeygenElement(HTMLKeygenElement), unHTMLKeygenElement, gTypeHTMLKeygenElement
  , HTMLLIElement(HTMLLIElement), unHTMLLIElement, gTypeHTMLLIElement
  , HTMLLabelElement(HTMLLabelElement), unHTMLLabelElement, gTypeHTMLLabelElement
  , HTMLLegendElement(HTMLLegendElement), unHTMLLegendElement, gTypeHTMLLegendElement
  , HTMLLinkElement(HTMLLinkElement), unHTMLLinkElement, gTypeHTMLLinkElement
  , HTMLMapElement(HTMLMapElement), unHTMLMapElement, gTypeHTMLMapElement
  , HTMLMarqueeElement(HTMLMarqueeElement), unHTMLMarqueeElement, gTypeHTMLMarqueeElement
  , HTMLMediaElement(HTMLMediaElement), unHTMLMediaElement, IsHTMLMediaElement, toHTMLMediaElement, gTypeHTMLMediaElement
  , HTMLMenuElement(HTMLMenuElement), unHTMLMenuElement, gTypeHTMLMenuElement
  , HTMLMetaElement(HTMLMetaElement), unHTMLMetaElement, gTypeHTMLMetaElement
  , HTMLMeterElement(HTMLMeterElement), unHTMLMeterElement, gTypeHTMLMeterElement
  , HTMLModElement(HTMLModElement), unHTMLModElement, gTypeHTMLModElement
  , HTMLOListElement(HTMLOListElement), unHTMLOListElement, gTypeHTMLOListElement
  , HTMLObjectElement(HTMLObjectElement), unHTMLObjectElement, gTypeHTMLObjectElement
  , HTMLOptGroupElement(HTMLOptGroupElement), unHTMLOptGroupElement, gTypeHTMLOptGroupElement
  , HTMLOptionElement(HTMLOptionElement), unHTMLOptionElement, gTypeHTMLOptionElement
  , HTMLOptionsCollection(HTMLOptionsCollection), unHTMLOptionsCollection, gTypeHTMLOptionsCollection
  , HTMLOutputElement(HTMLOutputElement), unHTMLOutputElement, gTypeHTMLOutputElement
  , HTMLParagraphElement(HTMLParagraphElement), unHTMLParagraphElement, gTypeHTMLParagraphElement
  , HTMLParamElement(HTMLParamElement), unHTMLParamElement, gTypeHTMLParamElement
  , HTMLPreElement(HTMLPreElement), unHTMLPreElement, gTypeHTMLPreElement
  , HTMLProgressElement(HTMLProgressElement), unHTMLProgressElement, gTypeHTMLProgressElement
  , HTMLQuoteElement(HTMLQuoteElement), unHTMLQuoteElement, gTypeHTMLQuoteElement
  , HTMLScriptElement(HTMLScriptElement), unHTMLScriptElement, gTypeHTMLScriptElement
  , HTMLSelectElement(HTMLSelectElement), unHTMLSelectElement, gTypeHTMLSelectElement
  , HTMLSourceElement(HTMLSourceElement), unHTMLSourceElement, gTypeHTMLSourceElement
  , HTMLSpanElement(HTMLSpanElement), unHTMLSpanElement, gTypeHTMLSpanElement
  , HTMLStyleElement(HTMLStyleElement), unHTMLStyleElement, gTypeHTMLStyleElement
  , HTMLTableCaptionElement(HTMLTableCaptionElement), unHTMLTableCaptionElement, gTypeHTMLTableCaptionElement
  , HTMLTableCellElement(HTMLTableCellElement), unHTMLTableCellElement, gTypeHTMLTableCellElement
  , HTMLTableColElement(HTMLTableColElement), unHTMLTableColElement, gTypeHTMLTableColElement
  , HTMLTableElement(HTMLTableElement), unHTMLTableElement, gTypeHTMLTableElement
  , HTMLTableRowElement(HTMLTableRowElement), unHTMLTableRowElement, gTypeHTMLTableRowElement
  , HTMLTableSectionElement(HTMLTableSectionElement), unHTMLTableSectionElement, gTypeHTMLTableSectionElement
  , HTMLTemplateElement(HTMLTemplateElement), unHTMLTemplateElement, gTypeHTMLTemplateElement
  , HTMLTextAreaElement(HTMLTextAreaElement), unHTMLTextAreaElement, gTypeHTMLTextAreaElement
  , HTMLTitleElement(HTMLTitleElement), unHTMLTitleElement, gTypeHTMLTitleElement
  , HTMLTrackElement(HTMLTrackElement), unHTMLTrackElement, gTypeHTMLTrackElement
  , HTMLUListElement(HTMLUListElement), unHTMLUListElement, gTypeHTMLUListElement
  , HTMLUnknownElement(HTMLUnknownElement), unHTMLUnknownElement, gTypeHTMLUnknownElement
  , HTMLVideoElement(HTMLVideoElement), unHTMLVideoElement, gTypeHTMLVideoElement
  , HashChangeEvent(HashChangeEvent), unHashChangeEvent, gTypeHashChangeEvent
  , History(History), unHistory, gTypeHistory
  , IDBAny(IDBAny), unIDBAny, gTypeIDBAny
  , IDBCursor(IDBCursor), unIDBCursor, IsIDBCursor, toIDBCursor, gTypeIDBCursor
  , IDBCursorWithValue(IDBCursorWithValue), unIDBCursorWithValue, gTypeIDBCursorWithValue
  , IDBDatabase(IDBDatabase), unIDBDatabase, gTypeIDBDatabase
  , IDBFactory(IDBFactory), unIDBFactory, gTypeIDBFactory
  , IDBIndex(IDBIndex), unIDBIndex, gTypeIDBIndex
  , IDBKeyRange(IDBKeyRange), unIDBKeyRange, gTypeIDBKeyRange
  , IDBObjectStore(IDBObjectStore), unIDBObjectStore, gTypeIDBObjectStore
  , IDBOpenDBRequest(IDBOpenDBRequest), unIDBOpenDBRequest, gTypeIDBOpenDBRequest
  , IDBRequest(IDBRequest), unIDBRequest, IsIDBRequest, toIDBRequest, gTypeIDBRequest
  , IDBTransaction(IDBTransaction), unIDBTransaction, gTypeIDBTransaction
  , IDBVersionChangeEvent(IDBVersionChangeEvent), unIDBVersionChangeEvent, gTypeIDBVersionChangeEvent
  , ImageData(ImageData), unImageData, gTypeImageData
  , InspectorFrontendHost(InspectorFrontendHost), unInspectorFrontendHost, gTypeInspectorFrontendHost
  , InternalSettings(InternalSettings), unInternalSettings, gTypeInternalSettings
  , Internals(Internals), unInternals, gTypeInternals
  , KeyboardEvent(KeyboardEvent), unKeyboardEvent, gTypeKeyboardEvent
  , Location(Location), unLocation, gTypeLocation
  , MallocStatistics(MallocStatistics), unMallocStatistics, gTypeMallocStatistics
  , MediaController(MediaController), unMediaController, gTypeMediaController
  , MediaControlsHost(MediaControlsHost), unMediaControlsHost, gTypeMediaControlsHost
  , MediaElementAudioSourceNode(MediaElementAudioSourceNode), unMediaElementAudioSourceNode, gTypeMediaElementAudioSourceNode
  , MediaError(MediaError), unMediaError, gTypeMediaError
  , MediaKeyError(MediaKeyError), unMediaKeyError, gTypeMediaKeyError
  , MediaKeyEvent(MediaKeyEvent), unMediaKeyEvent, gTypeMediaKeyEvent
  , MediaKeyMessageEvent(MediaKeyMessageEvent), unMediaKeyMessageEvent, gTypeMediaKeyMessageEvent
  , MediaKeyNeededEvent(MediaKeyNeededEvent), unMediaKeyNeededEvent, gTypeMediaKeyNeededEvent
  , MediaKeySession(MediaKeySession), unMediaKeySession, gTypeMediaKeySession
  , MediaKeys(MediaKeys), unMediaKeys, gTypeMediaKeys
  , MediaList(MediaList), unMediaList, gTypeMediaList
  , MediaQueryList(MediaQueryList), unMediaQueryList, gTypeMediaQueryList
  , MediaSource(MediaSource), unMediaSource, gTypeMediaSource
  , MediaSourceStates(MediaSourceStates), unMediaSourceStates, gTypeMediaSourceStates
  , MediaStream(MediaStream), unMediaStream, gTypeMediaStream
  , MediaStreamAudioDestinationNode(MediaStreamAudioDestinationNode), unMediaStreamAudioDestinationNode, gTypeMediaStreamAudioDestinationNode
  , MediaStreamAudioSourceNode(MediaStreamAudioSourceNode), unMediaStreamAudioSourceNode, gTypeMediaStreamAudioSourceNode
  , MediaStreamCapabilities(MediaStreamCapabilities), unMediaStreamCapabilities, IsMediaStreamCapabilities, toMediaStreamCapabilities, gTypeMediaStreamCapabilities
  , MediaStreamEvent(MediaStreamEvent), unMediaStreamEvent, gTypeMediaStreamEvent
  , MediaStreamTrack(MediaStreamTrack), unMediaStreamTrack, IsMediaStreamTrack, toMediaStreamTrack, gTypeMediaStreamTrack
  , MediaStreamTrackEvent(MediaStreamTrackEvent), unMediaStreamTrackEvent, gTypeMediaStreamTrackEvent
  , MediaTrackConstraint(MediaTrackConstraint), unMediaTrackConstraint, gTypeMediaTrackConstraint
  , MediaTrackConstraintSet(MediaTrackConstraintSet), unMediaTrackConstraintSet, gTypeMediaTrackConstraintSet
  , MediaTrackConstraints(MediaTrackConstraints), unMediaTrackConstraints, gTypeMediaTrackConstraints
  , MemoryInfo(MemoryInfo), unMemoryInfo, gTypeMemoryInfo
  , MessageChannel(MessageChannel), unMessageChannel, gTypeMessageChannel
  , MessageEvent(MessageEvent), unMessageEvent, gTypeMessageEvent
  , MessagePort(MessagePort), unMessagePort, gTypeMessagePort
  , MimeType(MimeType), unMimeType, gTypeMimeType
  , MimeTypeArray(MimeTypeArray), unMimeTypeArray, gTypeMimeTypeArray
  , MouseEvent(MouseEvent), unMouseEvent, IsMouseEvent, toMouseEvent, gTypeMouseEvent
  , MutationEvent(MutationEvent), unMutationEvent, gTypeMutationEvent
  , MutationObserver(MutationObserver), unMutationObserver, gTypeMutationObserver
  , MutationRecord(MutationRecord), unMutationRecord, gTypeMutationRecord
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, gTypeNavigator
  , NavigatorUserMediaError(NavigatorUserMediaError), unNavigatorUserMediaError, gTypeNavigatorUserMediaError
  , Node(Node), unNode, IsNode, toNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, IsNodeList, toNodeList, gTypeNodeList
  , Notification(Notification), unNotification, gTypeNotification
  , NotificationCenter(NotificationCenter), unNotificationCenter, gTypeNotificationCenter
  , OESElementIndexUint(OESElementIndexUint), unOESElementIndexUint, gTypeOESElementIndexUint
  , OESStandardDerivatives(OESStandardDerivatives), unOESStandardDerivatives, gTypeOESStandardDerivatives
  , OESTextureFloat(OESTextureFloat), unOESTextureFloat, gTypeOESTextureFloat
  , OESTextureFloatLinear(OESTextureFloatLinear), unOESTextureFloatLinear, gTypeOESTextureFloatLinear
  , OESTextureHalfFloat(OESTextureHalfFloat), unOESTextureHalfFloat, gTypeOESTextureHalfFloat
  , OESTextureHalfFloatLinear(OESTextureHalfFloatLinear), unOESTextureHalfFloatLinear, gTypeOESTextureHalfFloatLinear
  , OESVertexArrayObject(OESVertexArrayObject), unOESVertexArrayObject, gTypeOESVertexArrayObject
  , OfflineAudioCompletionEvent(OfflineAudioCompletionEvent), unOfflineAudioCompletionEvent, gTypeOfflineAudioCompletionEvent
  , OfflineAudioContext(OfflineAudioContext), unOfflineAudioContext, gTypeOfflineAudioContext
  , OscillatorNode(OscillatorNode), unOscillatorNode, gTypeOscillatorNode
  , OverflowEvent(OverflowEvent), unOverflowEvent, gTypeOverflowEvent
  , PageTransitionEvent(PageTransitionEvent), unPageTransitionEvent, gTypePageTransitionEvent
  , PannerNode(PannerNode), unPannerNode, gTypePannerNode
  , Path2D(Path2D), unPath2D, gTypePath2D
  , Performance(Performance), unPerformance, gTypePerformance
  , PerformanceEntry(PerformanceEntry), unPerformanceEntry, IsPerformanceEntry, toPerformanceEntry, gTypePerformanceEntry
  , PerformanceEntryList(PerformanceEntryList), unPerformanceEntryList, gTypePerformanceEntryList
  , PerformanceMark(PerformanceMark), unPerformanceMark, gTypePerformanceMark
  , PerformanceMeasure(PerformanceMeasure), unPerformanceMeasure, gTypePerformanceMeasure
  , PerformanceNavigation(PerformanceNavigation), unPerformanceNavigation, gTypePerformanceNavigation
  , PerformanceResourceTiming(PerformanceResourceTiming), unPerformanceResourceTiming, gTypePerformanceResourceTiming
  , PerformanceTiming(PerformanceTiming), unPerformanceTiming, gTypePerformanceTiming
  , PeriodicWave(PeriodicWave), unPeriodicWave, gTypePeriodicWave
  , Plugin(Plugin), unPlugin, gTypePlugin
  , PluginArray(PluginArray), unPluginArray, gTypePluginArray
  , PopStateEvent(PopStateEvent), unPopStateEvent, gTypePopStateEvent
  , PositionError(PositionError), unPositionError, gTypePositionError
  , ProcessingInstruction(ProcessingInstruction), unProcessingInstruction, gTypeProcessingInstruction
  , ProgressEvent(ProgressEvent), unProgressEvent, IsProgressEvent, toProgressEvent, gTypeProgressEvent
  , QuickTimePluginReplacement(QuickTimePluginReplacement), unQuickTimePluginReplacement, gTypeQuickTimePluginReplacement
  , RGBColor(RGBColor), unRGBColor, gTypeRGBColor
  , RTCConfiguration(RTCConfiguration), unRTCConfiguration, gTypeRTCConfiguration
  , RTCDTMFSender(RTCDTMFSender), unRTCDTMFSender, gTypeRTCDTMFSender
  , RTCDTMFToneChangeEvent(RTCDTMFToneChangeEvent), unRTCDTMFToneChangeEvent, gTypeRTCDTMFToneChangeEvent
  , RTCDataChannel(RTCDataChannel), unRTCDataChannel, gTypeRTCDataChannel
  , RTCDataChannelEvent(RTCDataChannelEvent), unRTCDataChannelEvent, gTypeRTCDataChannelEvent
  , RTCIceCandidate(RTCIceCandidate), unRTCIceCandidate, gTypeRTCIceCandidate
  , RTCIceCandidateEvent(RTCIceCandidateEvent), unRTCIceCandidateEvent, gTypeRTCIceCandidateEvent
  , RTCIceServer(RTCIceServer), unRTCIceServer, gTypeRTCIceServer
  , RTCPeerConnection(RTCPeerConnection), unRTCPeerConnection, gTypeRTCPeerConnection
  , RTCSessionDescription(RTCSessionDescription), unRTCSessionDescription, gTypeRTCSessionDescription
  , RTCStatsReport(RTCStatsReport), unRTCStatsReport, gTypeRTCStatsReport
  , RTCStatsResponse(RTCStatsResponse), unRTCStatsResponse, gTypeRTCStatsResponse
  , RadioNodeList(RadioNodeList), unRadioNodeList, gTypeRadioNodeList
  , Range(Range), unRange, gTypeRange
  , ReadableStream(ReadableStream), unReadableStream, gTypeReadableStream
  , Rect(Rect), unRect, gTypeRect
  , SQLError(SQLError), unSQLError, gTypeSQLError
  , SQLResultSet(SQLResultSet), unSQLResultSet, gTypeSQLResultSet
  , SQLResultSetRowList(SQLResultSetRowList), unSQLResultSetRowList, gTypeSQLResultSetRowList
  , SQLTransaction(SQLTransaction), unSQLTransaction, gTypeSQLTransaction
  , SVGAElement(SVGAElement), unSVGAElement, gTypeSVGAElement
  , SVGAltGlyphDefElement(SVGAltGlyphDefElement), unSVGAltGlyphDefElement, gTypeSVGAltGlyphDefElement
  , SVGAltGlyphElement(SVGAltGlyphElement), unSVGAltGlyphElement, gTypeSVGAltGlyphElement
  , SVGAltGlyphItemElement(SVGAltGlyphItemElement), unSVGAltGlyphItemElement, gTypeSVGAltGlyphItemElement
  , SVGAngle(SVGAngle), unSVGAngle, gTypeSVGAngle
  , SVGAnimateColorElement(SVGAnimateColorElement), unSVGAnimateColorElement, gTypeSVGAnimateColorElement
  , SVGAnimateElement(SVGAnimateElement), unSVGAnimateElement, gTypeSVGAnimateElement
  , SVGAnimateMotionElement(SVGAnimateMotionElement), unSVGAnimateMotionElement, gTypeSVGAnimateMotionElement
  , SVGAnimateTransformElement(SVGAnimateTransformElement), unSVGAnimateTransformElement, gTypeSVGAnimateTransformElement
  , SVGAnimatedAngle(SVGAnimatedAngle), unSVGAnimatedAngle, gTypeSVGAnimatedAngle
  , SVGAnimatedBoolean(SVGAnimatedBoolean), unSVGAnimatedBoolean, gTypeSVGAnimatedBoolean
  , SVGAnimatedEnumeration(SVGAnimatedEnumeration), unSVGAnimatedEnumeration, gTypeSVGAnimatedEnumeration
  , SVGAnimatedInteger(SVGAnimatedInteger), unSVGAnimatedInteger, gTypeSVGAnimatedInteger
  , SVGAnimatedLength(SVGAnimatedLength), unSVGAnimatedLength, gTypeSVGAnimatedLength
  , SVGAnimatedLengthList(SVGAnimatedLengthList), unSVGAnimatedLengthList, gTypeSVGAnimatedLengthList
  , SVGAnimatedNumber(SVGAnimatedNumber), unSVGAnimatedNumber, gTypeSVGAnimatedNumber
  , SVGAnimatedNumberList(SVGAnimatedNumberList), unSVGAnimatedNumberList, gTypeSVGAnimatedNumberList
  , SVGAnimatedPreserveAspectRatio(SVGAnimatedPreserveAspectRatio), unSVGAnimatedPreserveAspectRatio, gTypeSVGAnimatedPreserveAspectRatio
  , SVGAnimatedRect(SVGAnimatedRect), unSVGAnimatedRect, gTypeSVGAnimatedRect
  , SVGAnimatedString(SVGAnimatedString), unSVGAnimatedString, gTypeSVGAnimatedString
  , SVGAnimatedTransformList(SVGAnimatedTransformList), unSVGAnimatedTransformList, gTypeSVGAnimatedTransformList
  , SVGAnimationElement(SVGAnimationElement), unSVGAnimationElement, IsSVGAnimationElement, toSVGAnimationElement, gTypeSVGAnimationElement
  , SVGCircleElement(SVGCircleElement), unSVGCircleElement, gTypeSVGCircleElement
  , SVGClipPathElement(SVGClipPathElement), unSVGClipPathElement, gTypeSVGClipPathElement
  , SVGColor(SVGColor), unSVGColor, IsSVGColor, toSVGColor, gTypeSVGColor
  , SVGComponentTransferFunctionElement(SVGComponentTransferFunctionElement), unSVGComponentTransferFunctionElement, IsSVGComponentTransferFunctionElement, toSVGComponentTransferFunctionElement, gTypeSVGComponentTransferFunctionElement
  , SVGCursorElement(SVGCursorElement), unSVGCursorElement, gTypeSVGCursorElement
  , SVGDefsElement(SVGDefsElement), unSVGDefsElement, gTypeSVGDefsElement
  , SVGDescElement(SVGDescElement), unSVGDescElement, gTypeSVGDescElement
  , SVGDocument(SVGDocument), unSVGDocument, gTypeSVGDocument
  , SVGElement(SVGElement), unSVGElement, IsSVGElement, toSVGElement, gTypeSVGElement
  , SVGEllipseElement(SVGEllipseElement), unSVGEllipseElement, gTypeSVGEllipseElement
  , SVGExternalResourcesRequired(SVGExternalResourcesRequired), unSVGExternalResourcesRequired, gTypeSVGExternalResourcesRequired
  , SVGFEBlendElement(SVGFEBlendElement), unSVGFEBlendElement, gTypeSVGFEBlendElement
  , SVGFEColorMatrixElement(SVGFEColorMatrixElement), unSVGFEColorMatrixElement, gTypeSVGFEColorMatrixElement
  , SVGFEComponentTransferElement(SVGFEComponentTransferElement), unSVGFEComponentTransferElement, gTypeSVGFEComponentTransferElement
  , SVGFECompositeElement(SVGFECompositeElement), unSVGFECompositeElement, gTypeSVGFECompositeElement
  , SVGFEConvolveMatrixElement(SVGFEConvolveMatrixElement), unSVGFEConvolveMatrixElement, gTypeSVGFEConvolveMatrixElement
  , SVGFEDiffuseLightingElement(SVGFEDiffuseLightingElement), unSVGFEDiffuseLightingElement, gTypeSVGFEDiffuseLightingElement
  , SVGFEDisplacementMapElement(SVGFEDisplacementMapElement), unSVGFEDisplacementMapElement, gTypeSVGFEDisplacementMapElement
  , SVGFEDistantLightElement(SVGFEDistantLightElement), unSVGFEDistantLightElement, gTypeSVGFEDistantLightElement
  , SVGFEDropShadowElement(SVGFEDropShadowElement), unSVGFEDropShadowElement, gTypeSVGFEDropShadowElement
  , SVGFEFloodElement(SVGFEFloodElement), unSVGFEFloodElement, gTypeSVGFEFloodElement
  , SVGFEFuncAElement(SVGFEFuncAElement), unSVGFEFuncAElement, gTypeSVGFEFuncAElement
  , SVGFEFuncBElement(SVGFEFuncBElement), unSVGFEFuncBElement, gTypeSVGFEFuncBElement
  , SVGFEFuncGElement(SVGFEFuncGElement), unSVGFEFuncGElement, gTypeSVGFEFuncGElement
  , SVGFEFuncRElement(SVGFEFuncRElement), unSVGFEFuncRElement, gTypeSVGFEFuncRElement
  , SVGFEGaussianBlurElement(SVGFEGaussianBlurElement), unSVGFEGaussianBlurElement, gTypeSVGFEGaussianBlurElement
  , SVGFEImageElement(SVGFEImageElement), unSVGFEImageElement, gTypeSVGFEImageElement
  , SVGFEMergeElement(SVGFEMergeElement), unSVGFEMergeElement, gTypeSVGFEMergeElement
  , SVGFEMergeNodeElement(SVGFEMergeNodeElement), unSVGFEMergeNodeElement, gTypeSVGFEMergeNodeElement
  , SVGFEMorphologyElement(SVGFEMorphologyElement), unSVGFEMorphologyElement, gTypeSVGFEMorphologyElement
  , SVGFEOffsetElement(SVGFEOffsetElement), unSVGFEOffsetElement, gTypeSVGFEOffsetElement
  , SVGFEPointLightElement(SVGFEPointLightElement), unSVGFEPointLightElement, gTypeSVGFEPointLightElement
  , SVGFESpecularLightingElement(SVGFESpecularLightingElement), unSVGFESpecularLightingElement, gTypeSVGFESpecularLightingElement
  , SVGFESpotLightElement(SVGFESpotLightElement), unSVGFESpotLightElement, gTypeSVGFESpotLightElement
  , SVGFETileElement(SVGFETileElement), unSVGFETileElement, gTypeSVGFETileElement
  , SVGFETurbulenceElement(SVGFETurbulenceElement), unSVGFETurbulenceElement, gTypeSVGFETurbulenceElement
  , SVGFilterElement(SVGFilterElement), unSVGFilterElement, gTypeSVGFilterElement
  , SVGFilterPrimitiveStandardAttributes(SVGFilterPrimitiveStandardAttributes), unSVGFilterPrimitiveStandardAttributes, gTypeSVGFilterPrimitiveStandardAttributes
  , SVGFitToViewBox(SVGFitToViewBox), unSVGFitToViewBox, gTypeSVGFitToViewBox
  , SVGFontElement(SVGFontElement), unSVGFontElement, gTypeSVGFontElement
  , SVGFontFaceElement(SVGFontFaceElement), unSVGFontFaceElement, gTypeSVGFontFaceElement
  , SVGFontFaceFormatElement(SVGFontFaceFormatElement), unSVGFontFaceFormatElement, gTypeSVGFontFaceFormatElement
  , SVGFontFaceNameElement(SVGFontFaceNameElement), unSVGFontFaceNameElement, gTypeSVGFontFaceNameElement
  , SVGFontFaceSrcElement(SVGFontFaceSrcElement), unSVGFontFaceSrcElement, gTypeSVGFontFaceSrcElement
  , SVGFontFaceUriElement(SVGFontFaceUriElement), unSVGFontFaceUriElement, gTypeSVGFontFaceUriElement
  , SVGForeignObjectElement(SVGForeignObjectElement), unSVGForeignObjectElement, gTypeSVGForeignObjectElement
  , SVGGElement(SVGGElement), unSVGGElement, gTypeSVGGElement
  , SVGGlyphElement(SVGGlyphElement), unSVGGlyphElement, gTypeSVGGlyphElement
  , SVGGlyphRefElement(SVGGlyphRefElement), unSVGGlyphRefElement, gTypeSVGGlyphRefElement
  , SVGGradientElement(SVGGradientElement), unSVGGradientElement, IsSVGGradientElement, toSVGGradientElement, gTypeSVGGradientElement
  , SVGGraphicsElement(SVGGraphicsElement), unSVGGraphicsElement, IsSVGGraphicsElement, toSVGGraphicsElement, gTypeSVGGraphicsElement
  , SVGHKernElement(SVGHKernElement), unSVGHKernElement, gTypeSVGHKernElement
  , SVGImageElement(SVGImageElement), unSVGImageElement, gTypeSVGImageElement
  , SVGLength(SVGLength), unSVGLength, gTypeSVGLength
  , SVGLengthList(SVGLengthList), unSVGLengthList, gTypeSVGLengthList
  , SVGLineElement(SVGLineElement), unSVGLineElement, gTypeSVGLineElement
  , SVGLinearGradientElement(SVGLinearGradientElement), unSVGLinearGradientElement, gTypeSVGLinearGradientElement
  , SVGMPathElement(SVGMPathElement), unSVGMPathElement, gTypeSVGMPathElement
  , SVGMarkerElement(SVGMarkerElement), unSVGMarkerElement, gTypeSVGMarkerElement
  , SVGMaskElement(SVGMaskElement), unSVGMaskElement, gTypeSVGMaskElement
  , SVGMatrix(SVGMatrix), unSVGMatrix, gTypeSVGMatrix
  , SVGMetadataElement(SVGMetadataElement), unSVGMetadataElement, gTypeSVGMetadataElement
  , SVGMissingGlyphElement(SVGMissingGlyphElement), unSVGMissingGlyphElement, gTypeSVGMissingGlyphElement
  , SVGNumber(SVGNumber), unSVGNumber, gTypeSVGNumber
  , SVGNumberList(SVGNumberList), unSVGNumberList, gTypeSVGNumberList
  , SVGPaint(SVGPaint), unSVGPaint, gTypeSVGPaint
  , SVGPathElement(SVGPathElement), unSVGPathElement, gTypeSVGPathElement
  , SVGPathSeg(SVGPathSeg), unSVGPathSeg, IsSVGPathSeg, toSVGPathSeg, gTypeSVGPathSeg
  , SVGPathSegArcAbs(SVGPathSegArcAbs), unSVGPathSegArcAbs, gTypeSVGPathSegArcAbs
  , SVGPathSegArcRel(SVGPathSegArcRel), unSVGPathSegArcRel, gTypeSVGPathSegArcRel
  , SVGPathSegClosePath(SVGPathSegClosePath), unSVGPathSegClosePath, gTypeSVGPathSegClosePath
  , SVGPathSegCurvetoCubicAbs(SVGPathSegCurvetoCubicAbs), unSVGPathSegCurvetoCubicAbs, gTypeSVGPathSegCurvetoCubicAbs
  , SVGPathSegCurvetoCubicRel(SVGPathSegCurvetoCubicRel), unSVGPathSegCurvetoCubicRel, gTypeSVGPathSegCurvetoCubicRel
  , SVGPathSegCurvetoCubicSmoothAbs(SVGPathSegCurvetoCubicSmoothAbs), unSVGPathSegCurvetoCubicSmoothAbs, gTypeSVGPathSegCurvetoCubicSmoothAbs
  , SVGPathSegCurvetoCubicSmoothRel(SVGPathSegCurvetoCubicSmoothRel), unSVGPathSegCurvetoCubicSmoothRel, gTypeSVGPathSegCurvetoCubicSmoothRel
  , SVGPathSegCurvetoQuadraticAbs(SVGPathSegCurvetoQuadraticAbs), unSVGPathSegCurvetoQuadraticAbs, gTypeSVGPathSegCurvetoQuadraticAbs
  , SVGPathSegCurvetoQuadraticRel(SVGPathSegCurvetoQuadraticRel), unSVGPathSegCurvetoQuadraticRel, gTypeSVGPathSegCurvetoQuadraticRel
  , SVGPathSegCurvetoQuadraticSmoothAbs(SVGPathSegCurvetoQuadraticSmoothAbs), unSVGPathSegCurvetoQuadraticSmoothAbs, gTypeSVGPathSegCurvetoQuadraticSmoothAbs
  , SVGPathSegCurvetoQuadraticSmoothRel(SVGPathSegCurvetoQuadraticSmoothRel), unSVGPathSegCurvetoQuadraticSmoothRel, gTypeSVGPathSegCurvetoQuadraticSmoothRel
  , SVGPathSegLinetoAbs(SVGPathSegLinetoAbs), unSVGPathSegLinetoAbs, gTypeSVGPathSegLinetoAbs
  , SVGPathSegLinetoHorizontalAbs(SVGPathSegLinetoHorizontalAbs), unSVGPathSegLinetoHorizontalAbs, gTypeSVGPathSegLinetoHorizontalAbs
  , SVGPathSegLinetoHorizontalRel(SVGPathSegLinetoHorizontalRel), unSVGPathSegLinetoHorizontalRel, gTypeSVGPathSegLinetoHorizontalRel
  , SVGPathSegLinetoRel(SVGPathSegLinetoRel), unSVGPathSegLinetoRel, gTypeSVGPathSegLinetoRel
  , SVGPathSegLinetoVerticalAbs(SVGPathSegLinetoVerticalAbs), unSVGPathSegLinetoVerticalAbs, gTypeSVGPathSegLinetoVerticalAbs
  , SVGPathSegLinetoVerticalRel(SVGPathSegLinetoVerticalRel), unSVGPathSegLinetoVerticalRel, gTypeSVGPathSegLinetoVerticalRel
  , SVGPathSegList(SVGPathSegList), unSVGPathSegList, gTypeSVGPathSegList
  , SVGPathSegMovetoAbs(SVGPathSegMovetoAbs), unSVGPathSegMovetoAbs, gTypeSVGPathSegMovetoAbs
  , SVGPathSegMovetoRel(SVGPathSegMovetoRel), unSVGPathSegMovetoRel, gTypeSVGPathSegMovetoRel
  , SVGPatternElement(SVGPatternElement), unSVGPatternElement, gTypeSVGPatternElement
  , SVGPoint(SVGPoint), unSVGPoint, gTypeSVGPoint
  , SVGPointList(SVGPointList), unSVGPointList, gTypeSVGPointList
  , SVGPolygonElement(SVGPolygonElement), unSVGPolygonElement, gTypeSVGPolygonElement
  , SVGPolylineElement(SVGPolylineElement), unSVGPolylineElement, gTypeSVGPolylineElement
  , SVGPreserveAspectRatio(SVGPreserveAspectRatio), unSVGPreserveAspectRatio, gTypeSVGPreserveAspectRatio
  , SVGRadialGradientElement(SVGRadialGradientElement), unSVGRadialGradientElement, gTypeSVGRadialGradientElement
  , SVGRect(SVGRect), unSVGRect, gTypeSVGRect
  , SVGRectElement(SVGRectElement), unSVGRectElement, gTypeSVGRectElement
  , SVGRenderingIntent(SVGRenderingIntent), unSVGRenderingIntent, gTypeSVGRenderingIntent
  , SVGSVGElement(SVGSVGElement), unSVGSVGElement, gTypeSVGSVGElement
  , SVGScriptElement(SVGScriptElement), unSVGScriptElement, gTypeSVGScriptElement
  , SVGSetElement(SVGSetElement), unSVGSetElement, gTypeSVGSetElement
  , SVGStopElement(SVGStopElement), unSVGStopElement, gTypeSVGStopElement
  , SVGStringList(SVGStringList), unSVGStringList, gTypeSVGStringList
  , SVGStyleElement(SVGStyleElement), unSVGStyleElement, gTypeSVGStyleElement
  , SVGSwitchElement(SVGSwitchElement), unSVGSwitchElement, gTypeSVGSwitchElement
  , SVGSymbolElement(SVGSymbolElement), unSVGSymbolElement, gTypeSVGSymbolElement
  , SVGTRefElement(SVGTRefElement), unSVGTRefElement, gTypeSVGTRefElement
  , SVGTSpanElement(SVGTSpanElement), unSVGTSpanElement, gTypeSVGTSpanElement
  , SVGTests(SVGTests), unSVGTests, gTypeSVGTests
  , SVGTextContentElement(SVGTextContentElement), unSVGTextContentElement, IsSVGTextContentElement, toSVGTextContentElement, gTypeSVGTextContentElement
  , SVGTextElement(SVGTextElement), unSVGTextElement, gTypeSVGTextElement
  , SVGTextPathElement(SVGTextPathElement), unSVGTextPathElement, gTypeSVGTextPathElement
  , SVGTextPositioningElement(SVGTextPositioningElement), unSVGTextPositioningElement, IsSVGTextPositioningElement, toSVGTextPositioningElement, gTypeSVGTextPositioningElement
  , SVGTitleElement(SVGTitleElement), unSVGTitleElement, gTypeSVGTitleElement
  , SVGTransform(SVGTransform), unSVGTransform, gTypeSVGTransform
  , SVGTransformList(SVGTransformList), unSVGTransformList, gTypeSVGTransformList
  , SVGURIReference(SVGURIReference), unSVGURIReference, gTypeSVGURIReference
  , SVGUnitTypes(SVGUnitTypes), unSVGUnitTypes, gTypeSVGUnitTypes
  , SVGUseElement(SVGUseElement), unSVGUseElement, gTypeSVGUseElement
  , SVGVKernElement(SVGVKernElement), unSVGVKernElement, gTypeSVGVKernElement
  , SVGViewElement(SVGViewElement), unSVGViewElement, gTypeSVGViewElement
  , SVGViewSpec(SVGViewSpec), unSVGViewSpec, gTypeSVGViewSpec
  , SVGZoomAndPan(SVGZoomAndPan), unSVGZoomAndPan, gTypeSVGZoomAndPan
  , SVGZoomEvent(SVGZoomEvent), unSVGZoomEvent, gTypeSVGZoomEvent
  , Screen(Screen), unScreen, gTypeScreen
  , ScriptProcessorNode(ScriptProcessorNode), unScriptProcessorNode, gTypeScriptProcessorNode
  , ScriptProfile(ScriptProfile), unScriptProfile, gTypeScriptProfile
  , ScriptProfileNode(ScriptProfileNode), unScriptProfileNode, gTypeScriptProfileNode
  , SecurityPolicy(SecurityPolicy), unSecurityPolicy, gTypeSecurityPolicy
  , SecurityPolicyViolationEvent(SecurityPolicyViolationEvent), unSecurityPolicyViolationEvent, gTypeSecurityPolicyViolationEvent
  , Selection(Selection), unSelection, gTypeSelection
  , SourceBuffer(SourceBuffer), unSourceBuffer, gTypeSourceBuffer
  , SourceBufferList(SourceBufferList), unSourceBufferList, gTypeSourceBufferList
  , SourceInfo(SourceInfo), unSourceInfo, gTypeSourceInfo
  , SpeechSynthesis(SpeechSynthesis), unSpeechSynthesis, gTypeSpeechSynthesis
  , SpeechSynthesisEvent(SpeechSynthesisEvent), unSpeechSynthesisEvent, gTypeSpeechSynthesisEvent
  , SpeechSynthesisUtterance(SpeechSynthesisUtterance), unSpeechSynthesisUtterance, gTypeSpeechSynthesisUtterance
  , SpeechSynthesisVoice(SpeechSynthesisVoice), unSpeechSynthesisVoice, gTypeSpeechSynthesisVoice
  , Storage(Storage), unStorage, gTypeStorage
  , StorageEvent(StorageEvent), unStorageEvent, gTypeStorageEvent
  , StorageInfo(StorageInfo), unStorageInfo, gTypeStorageInfo
  , StorageQuota(StorageQuota), unStorageQuota, gTypeStorageQuota
  , StyleMedia(StyleMedia), unStyleMedia, gTypeStyleMedia
  , StyleSheet(StyleSheet), unStyleSheet, IsStyleSheet, toStyleSheet, gTypeStyleSheet
  , StyleSheetList(StyleSheetList), unStyleSheetList, gTypeStyleSheetList
  , SubtleCrypto(SubtleCrypto), unSubtleCrypto, gTypeSubtleCrypto
  , Text(Text), unText, IsText, toText, gTypeText
  , TextEvent(TextEvent), unTextEvent, gTypeTextEvent
  , TextMetrics(TextMetrics), unTextMetrics, gTypeTextMetrics
  , TextTrack(TextTrack), unTextTrack, gTypeTextTrack
  , TextTrackCue(TextTrackCue), unTextTrackCue, IsTextTrackCue, toTextTrackCue, gTypeTextTrackCue
  , TextTrackCueList(TextTrackCueList), unTextTrackCueList, gTypeTextTrackCueList
  , TextTrackList(TextTrackList), unTextTrackList, gTypeTextTrackList
  , TimeRanges(TimeRanges), unTimeRanges, gTypeTimeRanges
  , Touch(Touch), unTouch, gTypeTouch
  , TouchEvent(TouchEvent), unTouchEvent, gTypeTouchEvent
  , TouchList(TouchList), unTouchList, gTypeTouchList
  , TrackEvent(TrackEvent), unTrackEvent, gTypeTrackEvent
  , TransitionEvent(TransitionEvent), unTransitionEvent, gTypeTransitionEvent
  , TreeWalker(TreeWalker), unTreeWalker, gTypeTreeWalker
  , TypeConversions(TypeConversions), unTypeConversions, gTypeTypeConversions
  , UIEvent(UIEvent), unUIEvent, IsUIEvent, toUIEvent, gTypeUIEvent
  , UIRequestEvent(UIRequestEvent), unUIRequestEvent, gTypeUIRequestEvent
  , URL(URL), unURL, gTypeURL
  , URLUtils(URLUtils), unURLUtils, gTypeURLUtils
  , UserMessageHandler(UserMessageHandler), unUserMessageHandler, gTypeUserMessageHandler
  , UserMessageHandlersNamespace(UserMessageHandlersNamespace), unUserMessageHandlersNamespace, gTypeUserMessageHandlersNamespace
  , VTTCue(VTTCue), unVTTCue, gTypeVTTCue
  , VTTRegion(VTTRegion), unVTTRegion, gTypeVTTRegion
  , VTTRegionList(VTTRegionList), unVTTRegionList, gTypeVTTRegionList
  , ValidityState(ValidityState), unValidityState, gTypeValidityState
  , VideoPlaybackQuality(VideoPlaybackQuality), unVideoPlaybackQuality, gTypeVideoPlaybackQuality
  , VideoStreamTrack(VideoStreamTrack), unVideoStreamTrack, gTypeVideoStreamTrack
  , VideoTrack(VideoTrack), unVideoTrack, gTypeVideoTrack
  , VideoTrackList(VideoTrackList), unVideoTrackList, gTypeVideoTrackList
  , WaveShaperNode(WaveShaperNode), unWaveShaperNode, gTypeWaveShaperNode
  , WebGL2RenderingContext(WebGL2RenderingContext), unWebGL2RenderingContext, gTypeWebGL2RenderingContext
  , WebGLActiveInfo(WebGLActiveInfo), unWebGLActiveInfo, gTypeWebGLActiveInfo
  , WebGLBuffer(WebGLBuffer), unWebGLBuffer, gTypeWebGLBuffer
  , WebGLCompressedTextureATC(WebGLCompressedTextureATC), unWebGLCompressedTextureATC, gTypeWebGLCompressedTextureATC
  , WebGLCompressedTexturePVRTC(WebGLCompressedTexturePVRTC), unWebGLCompressedTexturePVRTC, gTypeWebGLCompressedTexturePVRTC
  , WebGLCompressedTextureS3TC(WebGLCompressedTextureS3TC), unWebGLCompressedTextureS3TC, gTypeWebGLCompressedTextureS3TC
  , WebGLContextAttributes(WebGLContextAttributes), unWebGLContextAttributes, gTypeWebGLContextAttributes
  , WebGLContextEvent(WebGLContextEvent), unWebGLContextEvent, gTypeWebGLContextEvent
  , WebGLDebugRendererInfo(WebGLDebugRendererInfo), unWebGLDebugRendererInfo, gTypeWebGLDebugRendererInfo
  , WebGLDebugShaders(WebGLDebugShaders), unWebGLDebugShaders, gTypeWebGLDebugShaders
  , WebGLDepthTexture(WebGLDepthTexture), unWebGLDepthTexture, gTypeWebGLDepthTexture
  , WebGLDrawBuffers(WebGLDrawBuffers), unWebGLDrawBuffers, gTypeWebGLDrawBuffers
  , WebGLFramebuffer(WebGLFramebuffer), unWebGLFramebuffer, gTypeWebGLFramebuffer
  , WebGLLoseContext(WebGLLoseContext), unWebGLLoseContext, gTypeWebGLLoseContext
  , WebGLProgram(WebGLProgram), unWebGLProgram, gTypeWebGLProgram
  , WebGLQuery(WebGLQuery), unWebGLQuery, gTypeWebGLQuery
  , WebGLRenderbuffer(WebGLRenderbuffer), unWebGLRenderbuffer, gTypeWebGLRenderbuffer
  , WebGLRenderingContext(WebGLRenderingContext), unWebGLRenderingContext, gTypeWebGLRenderingContext
  , WebGLRenderingContextBase(WebGLRenderingContextBase), unWebGLRenderingContextBase, IsWebGLRenderingContextBase, toWebGLRenderingContextBase, gTypeWebGLRenderingContextBase
  , WebGLSampler(WebGLSampler), unWebGLSampler, gTypeWebGLSampler
  , WebGLShader(WebGLShader), unWebGLShader, gTypeWebGLShader
  , WebGLShaderPrecisionFormat(WebGLShaderPrecisionFormat), unWebGLShaderPrecisionFormat, gTypeWebGLShaderPrecisionFormat
  , WebGLSync(WebGLSync), unWebGLSync, gTypeWebGLSync
  , WebGLTexture(WebGLTexture), unWebGLTexture, gTypeWebGLTexture
  , WebGLTransformFeedback(WebGLTransformFeedback), unWebGLTransformFeedback, gTypeWebGLTransformFeedback
  , WebGLUniformLocation(WebGLUniformLocation), unWebGLUniformLocation, gTypeWebGLUniformLocation
  , WebGLVertexArrayObject(WebGLVertexArrayObject), unWebGLVertexArrayObject, gTypeWebGLVertexArrayObject
  , WebGLVertexArrayObjectOES(WebGLVertexArrayObjectOES), unWebGLVertexArrayObjectOES, gTypeWebGLVertexArrayObjectOES
  , WebKitAnimationEvent(WebKitAnimationEvent), unWebKitAnimationEvent, gTypeWebKitAnimationEvent
  , WebKitCSSFilterValue(WebKitCSSFilterValue), unWebKitCSSFilterValue, gTypeWebKitCSSFilterValue
  , WebKitCSSMatrix(WebKitCSSMatrix), unWebKitCSSMatrix, gTypeWebKitCSSMatrix
  , WebKitCSSRegionRule(WebKitCSSRegionRule), unWebKitCSSRegionRule, gTypeWebKitCSSRegionRule
  , WebKitCSSTransformValue(WebKitCSSTransformValue), unWebKitCSSTransformValue, gTypeWebKitCSSTransformValue
  , WebKitCSSViewportRule(WebKitCSSViewportRule), unWebKitCSSViewportRule, gTypeWebKitCSSViewportRule
  , WebKitNamedFlow(WebKitNamedFlow), unWebKitNamedFlow, gTypeWebKitNamedFlow
  , WebKitNamespace(WebKitNamespace), unWebKitNamespace, gTypeWebKitNamespace
  , WebKitPlaybackTargetAvailabilityEvent(WebKitPlaybackTargetAvailabilityEvent), unWebKitPlaybackTargetAvailabilityEvent, gTypeWebKitPlaybackTargetAvailabilityEvent
  , WebKitPoint(WebKitPoint), unWebKitPoint, gTypeWebKitPoint
  , WebKitTransitionEvent(WebKitTransitionEvent), unWebKitTransitionEvent, gTypeWebKitTransitionEvent
  , WebSocket(WebSocket), unWebSocket, gTypeWebSocket
  , WheelEvent(WheelEvent), unWheelEvent, gTypeWheelEvent
  , Window(Window), unWindow, gTypeWindow
  , WindowBase64(WindowBase64), unWindowBase64, gTypeWindowBase64
  , WindowTimers(WindowTimers), unWindowTimers, gTypeWindowTimers
  , Worker(Worker), unWorker, gTypeWorker
  , WorkerGlobalScope(WorkerGlobalScope), unWorkerGlobalScope, IsWorkerGlobalScope, toWorkerGlobalScope, gTypeWorkerGlobalScope
  , WorkerLocation(WorkerLocation), unWorkerLocation, gTypeWorkerLocation
  , WorkerNavigator(WorkerNavigator), unWorkerNavigator, gTypeWorkerNavigator
  , XMLHttpRequest(XMLHttpRequest), unXMLHttpRequest, gTypeXMLHttpRequest
  , XMLHttpRequestProgressEvent(XMLHttpRequestProgressEvent), unXMLHttpRequestProgressEvent, gTypeXMLHttpRequestProgressEvent
  , XMLHttpRequestUpload(XMLHttpRequestUpload), unXMLHttpRequestUpload, gTypeXMLHttpRequestUpload
  , XMLSerializer(XMLSerializer), unXMLSerializer, gTypeXMLSerializer
  , XPathEvaluator(XPathEvaluator), unXPathEvaluator, gTypeXPathEvaluator
  , XPathExpression(XPathExpression), unXPathExpression, gTypeXPathExpression
  , XPathNSResolver(XPathNSResolver), unXPathNSResolver, gTypeXPathNSResolver
  , XPathResult(XPathResult), unXPathResult, gTypeXPathResult
  , XSLTProcessor(XSLTProcessor), unXSLTProcessor, gTypeXSLTProcessor
-- AUTO GENERATION ENDS HERE
  ) where

import Prelude ()
import Prelude.Compat hiding((!!))
import qualified Data.Text as T (unpack, Text)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int8, Int16, Int32, Int64)
import Data.Word (Word8, Word16, Word32, Word64)
import Data.Monoid ((<>))
import Language.Javascript.JSaddle
       (Object(..), valToBool, valNull, valToNumber, (!!), js, valToText,
        JSVal, JSString, JSM, maybeNullOrUndefined, maybeNullOrUndefined',
        valToStr, jsg, ToJSString(..), strToText, MakeObject(..),
        Nullable(..), Function(..), freeFunction, instanceOf, JSContextRef,
        askJSM, runJSM, MonadJSM(..), liftJSM, strictEqual)
import Foreign.Ptr (nullPtr)
import Control.Lens.Operators ((^.))
import Data.Maybe (catMaybes)
import Language.Javascript.JSaddle.Classes (ToJSVal(..))
import Control.Monad ((>=>))
import Data.Coerce (coerce, Coercible)
import Control.Monad.Trans.Reader (ReaderT(..), ask)
import Control.Exception (bracket)
#ifdef ghcjs_HOST_OS
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
#endif
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | This is the same as 'JSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
type DOM = JSM
-- | This is the same as 'JSContextRef' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
type DOMContext = JSContextRef
-- | This is the same as 'MonadJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
type MonadDOM = MonadJSM

-- | This is the same as 'liftJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
liftDOM :: MonadDOM m => DOM a -> m a
liftDOM = liftJSM

-- | This is the same as 'askJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
askDOM :: MonadDOM m => m DOMContext
askDOM = askJSM

-- | This is the same as 'runJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
runDOM :: MonadIO m => DOM a -> DOMContext -> m a
runDOM = runJSM

newtype GType = GType Object

typeInstanceIsA :: ToJSVal value => value -> GType -> JSM Bool
typeInstanceIsA o (GType t) = o `instanceOf` t

-- | Safe but slow way to cast
--
-- > castTo Element x >>= \case
-- >     Nothing      -> error "Was not an element"
-- >     Just element -> ...
castTo :: forall obj obj' m. (IsGObject obj, IsGObject obj', MonadJSM m) => (JSVal -> obj') -> obj -> m (Maybe obj')
castTo constructor obj = liftJSM $ do
  GType gtype <- typeGType (undefined :: obj')
  let jsval = coerce obj
  jsval `instanceOf` gtype >>= \case
    True  -> return . Just $ constructor jsval
    False -> return Nothing

-- | Unsafe way to cast.  Slow but if it fails an error message will
--   result and the message should be clear (uses HasCallStack).
--
-- > element <- unsafeCastTo Element x
unsafeCastTo :: forall obj obj' m. (HasCallStack, IsGObject obj, IsGObject obj', MonadJSM m) => (JSVal -> obj') -> obj -> m obj'
unsafeCastTo constructor obj = liftJSM $ do
  GType gtype <- typeGType (undefined :: obj')
  let jsval = coerce obj
  jsval `instanceOf` gtype >>= \case
    True  -> return $ constructor jsval
    False -> do
      srcType <- typeGType obj >>= \(GType t) -> valToText (t ^. js "name")
      destType <- valToText (gtype ^. js "name")
      error $ "unsafeCastTo :: invalid conversion from " <> T.unpack srcType <> " to "
        <> T.unpack destType <> " requested."

-- | Unsafe way to cast.  Fast but if it fails you program
--   will probably crash later on in some unpredictable way.
--
-- > element <- uncheckedCastTo Element x
uncheckedCastTo :: (IsGObject obj, IsGObject obj') => (JSVal -> obj') -> obj -> obj'
uncheckedCastTo constructor = constructor . coerce

-- | Determine if this is an instance of a particular type
--
isA :: IsGObject o => o -> GType -> JSM Bool
isA obj = typeInstanceIsA (unGObject $ toGObject obj)

newtype GObject = GObject { unGObject :: JSVal }

class (ToJSVal o, FromJSVal o, Coercible o JSVal) => IsGObject o where
  -- | Given object get the GType of the type.  The actual argument
  --   passed in is ignored.
  typeGType :: o -> JSM GType

-- | Safe upcast.
toGObject :: IsGObject o => o -> GObject
toGObject = GObject . coerce

#ifndef ghcjs_HOST_OS
class PToJSVal o where
  pToJSVal :: o -> JSVal

class PFromJSVal o where
  pFromJSVal :: JSVal -> o
#endif

--class ToJSVal o where
--  toJSVal :: o -> JSM JSVal

class FromJSVal o where
    fromJSVal :: JSVal -> JSM (Maybe o)
    fromJSVal = maybeNullOrUndefined' fromJSValUnchecked

    fromJSValUnchecked :: JSVal -> JSM o
    fromJSValUnchecked v =
        fromJSVal v >>= \case
            Nothing -> error "fromJSValUnchecked"
            Just r  -> return r

fromJSArray :: FromJSVal o => JSVal -> JSM [Maybe o]
fromJSArray a = do
    l <- a ^. js "length" >>= valToNumber
    mapM (\i -> a !! i >>= fromJSVal) [0..round l - 1]

fromJSArrayUnchecked :: FromJSVal o => JSVal -> JSM [o]
fromJSArrayUnchecked a = do
    l <- a ^. js "length" >>= valToNumber
    mapM (\i -> a !! i >>= fromJSValUnchecked) [0..round l - 1]

-- newtype Nullable a = Nullable JSVal

nullableToMaybe :: FromJSVal a => JSVal -> JSM (Maybe a)
nullableToMaybe = fromJSVal
{-# INLINE nullableToMaybe #-}
--
maybeToNullable :: ToJSVal a => Maybe a -> JSM JSVal
maybeToNullable Nothing = return valNull
maybeToNullable (Just a) = toJSVal a
{-# INLINE maybeToNullable #-}

instance PToJSVal GObject where
  pToJSVal = unGObject
  {-# INLINE pToJSVal #-}

instance PFromJSVal GObject where
  pFromJSVal = GObject
  {-# INLINE pFromJSVal #-}

instance ToJSVal GObject where
  toJSVal = return . unGObject
  {-# INLINE toJSVal #-}

instance FromJSVal GObject where
  fromJSVal val = fmap GObject <$> maybeNullOrUndefined val
  {-# INLINE fromJSVal #-}

--instance IsGObject o => PToJSVal o where
--  pToJSVal = unGObject . toGObject
--  {-# INLINE pToJSVal #-}
--
--instance IsGObject o => PFromJSVal o where
--  pFromJSVal = unsafeCastGObject . GObject . castRef
--  {-# INLINE pFromJSVal #-}
--
--instance IsGObject o => ToJSVal o where
--  toJSVal = return . unGObject . toGObject
--  {-# INLINE toJSVal #-}
--
--instance IsGObject o => FromJSVal o where
--  fromJSVal = return . fmap (unsafeCastGObject . GObject . castRef) . maybeJSNullOrUndefined
--  {-# INLINE fromJSVal #-}

instance IsGObject GObject where
  typeGType _ = gTypeGObject
  {-# INLINE typeGType #-}

#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "Object" gTypeGObject :: IO GType
#else
gTypeGObject :: JSM GType
gTypeGObject = GType . Object <$> jsg "Object"
#endif

objectToString :: (IsGObject self, FromJSString result) => self -> JSM result
objectToString self = fromJSValUnchecked (unGObject $ toGObject self)

-- | Fastest string type to use when you just
--   want to take a string from the DOM then
--   give it back as is.
type DOMString = JSString

class FromJSVal s => FromJSString s where
    fromJSString :: JSString -> JSM s

fromJSStringArray :: FromJSString s => JSVal -> JSM [s]
fromJSStringArray a = do
    l <- a ^. js "length" >>= valToNumber
    mapM (\i -> a !! i >>= valToStr >>= fromJSString) [0..round l - 1]

--fromJSString :: FromJSString a => JSString -> a
--fromJSString a = pFromJSVal . pToJSVal
--{-# INLINE fromJSString #-}

toMaybeJSString :: ToJSString a => Maybe a -> JSM JSVal
toMaybeJSString Nothing = return valNull
toMaybeJSString (Just a) = toJSVal (toJSString a)
{-# INLINE toMaybeJSString #-}

fromMaybeJSString :: FromJSString a => JSVal -> JSM (Maybe a)
fromMaybeJSString = maybeNullOrUndefined' (valToStr >=> fromJSString)
{-# INLINE fromMaybeJSString #-}

instance FromJSVal JSVal where
    fromJSValUnchecked = return
instance FromJSVal Double where
    fromJSValUnchecked = valToNumber
instance FromJSVal Float where
    fromJSValUnchecked v = realToFrac <$> valToNumber v
instance FromJSVal Int where
    fromJSValUnchecked v = round <$> valToNumber v
instance FromJSVal Int32 where
    fromJSValUnchecked v = round <$> valToNumber v
instance FromJSVal Int64 where
    fromJSValUnchecked v = round <$> valToNumber v
instance FromJSVal Word where
    fromJSValUnchecked v = round <$> valToNumber v
instance FromJSVal Word32 where
    fromJSValUnchecked v = round <$> valToNumber v
instance FromJSVal Word64 where
    fromJSValUnchecked v = round <$> valToNumber v
instance FromJSVal Bool where
    fromJSValUnchecked = valToBool
instance FromJSVal T.Text where
    fromJSValUnchecked v = strToText <$> valToStr v
instance FromJSString T.Text where
    fromJSString = return . strToText
instance FromJSVal String where
    fromJSValUnchecked v = T.unpack . strToText <$> valToStr v
instance FromJSString String where
    fromJSString v = return . T.unpack $ strToText v
instance FromJSVal JSString where
    fromJSValUnchecked = valToStr
instance FromJSString JSString where
    fromJSString = return

type ToDOMString s = ToJSString s
type FromDOMString s = FromJSString s
type IsDOMString s = (ToDOMString s, FromDOMString s)

-- Callbacks
newtype Callback a = Callback Function

withCallback :: (MonadDOM m, Coercible c Function)
             => JSM c -> (c -> JSM a) -> m a
withCallback aquire f = do
    jsCtx <- askJSM
    liftIO $ bracket
        (runJSM aquire jsCtx)
        ((`runJSM` jsCtx) . freeFunction . coerce)
        (\t -> runJSM (f t) jsCtx)

newtype AudioBufferCallback = AudioBufferCallback (Callback (JSVal -> IO ()))
instance ToJSVal AudioBufferCallback where toJSVal (AudioBufferCallback (Callback r)) = toJSVal r
newtype DatabaseCallback = DatabaseCallback (Callback (JSVal -> IO ()))
instance ToJSVal DatabaseCallback where toJSVal (DatabaseCallback (Callback r)) = toJSVal r
newtype MediaQueryListListener = MediaQueryListListener (Callback (JSVal -> IO ()))
instance ToJSVal MediaQueryListListener where toJSVal (MediaQueryListListener (Callback r)) = toJSVal r
newtype MediaStreamTrackSourcesCallback = MediaStreamTrackSourcesCallback (Callback (JSVal -> IO ()))
instance ToJSVal MediaStreamTrackSourcesCallback where toJSVal (MediaStreamTrackSourcesCallback (Callback r)) = toJSVal r
newtype NavigatorUserMediaErrorCallback = NavigatorUserMediaErrorCallback (Callback (JSVal -> IO ()))
instance ToJSVal NavigatorUserMediaErrorCallback where toJSVal (NavigatorUserMediaErrorCallback (Callback r)) = toJSVal r
newtype NavigatorUserMediaSuccessCallback = NavigatorUserMediaSuccessCallback (Callback (JSVal -> IO ()))
instance ToJSVal NavigatorUserMediaSuccessCallback where toJSVal (NavigatorUserMediaSuccessCallback (Callback r)) = toJSVal r
newtype NotificationPermissionCallback permissions = NotificationPermissionCallback (Callback (JSVal -> IO ()))
instance ToJSVal (NotificationPermissionCallback permissions) where toJSVal (NotificationPermissionCallback (Callback r)) = toJSVal r
newtype PositionCallback = PositionCallback (Callback (JSVal -> IO ()))
instance ToJSVal PositionCallback where toJSVal (PositionCallback (Callback r)) = toJSVal r
newtype PositionErrorCallback = PositionErrorCallback (Callback (JSVal -> IO ()))
instance ToJSVal PositionErrorCallback where toJSVal (PositionErrorCallback (Callback r)) = toJSVal r
newtype RequestAnimationFrameCallback = RequestAnimationFrameCallback (Callback (JSVal -> IO ()))
instance ToJSVal RequestAnimationFrameCallback where toJSVal (RequestAnimationFrameCallback (Callback r)) = toJSVal r
newtype RTCPeerConnectionErrorCallback = RTCPeerConnectionErrorCallback (Callback (JSVal -> IO ()))
instance ToJSVal RTCPeerConnectionErrorCallback where toJSVal (RTCPeerConnectionErrorCallback (Callback r)) = toJSVal r
newtype RTCSessionDescriptionCallback = RTCSessionDescriptionCallback (Callback (JSVal -> IO ()))
instance ToJSVal RTCSessionDescriptionCallback where toJSVal (RTCSessionDescriptionCallback (Callback r)) = toJSVal r
newtype RTCStatsCallback = RTCStatsCallback (Callback (JSVal -> IO ()))
instance ToJSVal RTCStatsCallback where toJSVal (RTCStatsCallback (Callback r)) = toJSVal r
newtype SQLStatementCallback = SQLStatementCallback (Callback (JSVal -> JSVal -> IO ()))
instance ToJSVal SQLStatementCallback where toJSVal (SQLStatementCallback (Callback r)) = toJSVal r
newtype SQLStatementErrorCallback = SQLStatementErrorCallback (Callback (JSVal -> JSVal -> IO ()))
instance ToJSVal SQLStatementErrorCallback where toJSVal (SQLStatementErrorCallback (Callback r)) = toJSVal r
newtype SQLTransactionCallback = SQLTransactionCallback (Callback (JSVal -> IO ()))
instance ToJSVal SQLTransactionCallback where toJSVal (SQLTransactionCallback (Callback r)) = toJSVal r
newtype SQLTransactionErrorCallback = SQLTransactionErrorCallback (Callback (JSVal -> IO ()))
instance ToJSVal SQLTransactionErrorCallback where toJSVal (SQLTransactionErrorCallback (Callback r)) = toJSVal r
newtype StorageErrorCallback = StorageErrorCallback (Callback (JSVal -> IO ()))
instance ToJSVal StorageErrorCallback where toJSVal (StorageErrorCallback (Callback r)) = toJSVal r
newtype StorageQuotaCallback = StorageQuotaCallback (Callback (JSVal -> IO ()))
instance ToJSVal StorageQuotaCallback where toJSVal (StorageQuotaCallback (Callback r)) = toJSVal r
newtype StorageUsageCallback = StorageUsageCallback (Callback (JSVal -> JSVal -> IO ()))
instance ToJSVal StorageUsageCallback where toJSVal (StorageUsageCallback (Callback r)) = toJSVal r
newtype StringCallback s = StringCallback (Callback (JSVal -> IO ()))
instance ToJSVal (StringCallback s) where toJSVal (StringCallback (Callback r)) = toJSVal r
newtype VoidCallback = VoidCallback (Callback (IO ()))
instance ToJSVal VoidCallback where toJSVal (VoidCallback (Callback r)) = toJSVal r

-- Custom types
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SerializedScriptValue = SerializedScriptValue { unSerializedScriptValue :: JSVal }

instance PToJSVal SerializedScriptValue where
  pToJSVal = unSerializedScriptValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal SerializedScriptValue where
  pFromJSVal = SerializedScriptValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal SerializedScriptValue where
  toJSVal = return . unSerializedScriptValue
  {-# INLINE toJSVal #-}

instance FromJSVal SerializedScriptValue where
  fromJSVal v = fmap SerializedScriptValue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsSerializedScriptValue o
toSerializedScriptValue :: IsSerializedScriptValue o => o -> SerializedScriptValue
toSerializedScriptValue = SerializedScriptValue . coerce

instance IsSerializedScriptValue SerializedScriptValue
instance IsGObject SerializedScriptValue where
  typeGType _ = error "Unable to get the JavaScript type of SerializedScriptValue"
#else
-- TODO work out how we can support SerializedScriptValue in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype PositionOptions = PositionOptions { unPositionOptions :: JSVal }

instance PToJSVal PositionOptions where
  pToJSVal = unPositionOptions
  {-# INLINE pToJSVal #-}

instance PFromJSVal PositionOptions where
  pFromJSVal = PositionOptions
  {-# INLINE pFromJSVal #-}

instance ToJSVal PositionOptions where
  toJSVal = return . unPositionOptions
  {-# INLINE toJSVal #-}

instance FromJSVal PositionOptions where
  fromJSVal v = fmap PositionOptions <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsPositionOptions o
toPositionOptions :: IsPositionOptions o => o -> PositionOptions
toPositionOptions = PositionOptions . coerce

instance IsPositionOptions PositionOptions
instance IsGObject PositionOptions where
  typeGType _ = error "Unable to get the JavaScript type of PositionOptions"
#else
-- TODO work out how we can support PositionOptions in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Dictionary = Dictionary { unDictionary :: JSVal }

instance PToJSVal Dictionary where
  pToJSVal = unDictionary
  {-# INLINE pToJSVal #-}

instance PFromJSVal Dictionary where
  pFromJSVal = Dictionary
  {-# INLINE pFromJSVal #-}

instance ToJSVal Dictionary where
  toJSVal = return . unDictionary
  {-# INLINE toJSVal #-}

instance FromJSVal Dictionary where
  fromJSVal v = fmap Dictionary <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDictionary o
toDictionary :: IsDictionary o => o -> Dictionary
toDictionary = Dictionary . coerce

instance IsDictionary Dictionary
instance IsGObject Dictionary where
  typeGType _ = error "Unable to get the JavaScript type of Dictionary"
#else
-- TODO work out how we can support Dictionary in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype BlobPropertyBag = BlobPropertyBag { unBlobPropertyBag :: JSVal }

instance PToJSVal BlobPropertyBag where
  pToJSVal = unBlobPropertyBag
  {-# INLINE pToJSVal #-}

instance PFromJSVal BlobPropertyBag where
  pFromJSVal = BlobPropertyBag
  {-# INLINE pFromJSVal #-}

instance ToJSVal BlobPropertyBag where
  toJSVal = return . unBlobPropertyBag
  {-# INLINE toJSVal #-}

instance FromJSVal BlobPropertyBag where
  fromJSVal v = fmap BlobPropertyBag <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsBlobPropertyBag o
toBlobPropertyBag :: IsBlobPropertyBag o => o -> BlobPropertyBag
toBlobPropertyBag = BlobPropertyBag . coerce

instance IsBlobPropertyBag BlobPropertyBag
instance IsGObject BlobPropertyBag where
  typeGType _ = error "Unable to get the JavaScript type of BlobPropertyBag"
#else
-- TODO work out how we can support BlobPropertyBag in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MutationCallback = MutationCallback { unMutationCallback :: JSVal }

instance PToJSVal MutationCallback where
  pToJSVal = unMutationCallback
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationCallback where
  pFromJSVal = MutationCallback
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationCallback where
  toJSVal = return . unMutationCallback
  {-# INLINE toJSVal #-}

instance FromJSVal MutationCallback where
  fromJSVal v = fmap MutationCallback <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsMutationCallback o
toMutationCallback :: IsMutationCallback o => o -> MutationCallback
toMutationCallback = MutationCallback . coerce

instance IsMutationCallback MutationCallback
instance IsGObject MutationCallback where
  typeGType _ = error "Unable to get the JavaScript type of MutationCallback"
#else
-- TODO work out how we can support MutationCallback in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Promise = Promise { unPromise :: JSVal }

instance PToJSVal Promise where
  pToJSVal = unPromise
  {-# INLINE pToJSVal #-}

instance PFromJSVal Promise where
  pFromJSVal = Promise
  {-# INLINE pFromJSVal #-}

instance ToJSVal Promise where
  toJSVal = return . unPromise
  {-# INLINE toJSVal #-}

instance FromJSVal Promise where
  fromJSVal v = fmap Promise <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsPromise o
toPromise :: IsPromise o => o -> Promise
toPromise = Promise . coerce

instance IsPromise Promise
instance IsGObject Promise where
    typeGType _ = gTypePromise

gTypePromise :: JSM GType
gTypePromise = GType . Object <$> jsg "Promise"
#else
-- TODO work out how we can support Promise in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ArrayBuffer = ArrayBuffer { unArrayBuffer :: JSVal }

instance PToJSVal ArrayBuffer where
  pToJSVal = unArrayBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal ArrayBuffer where
  pFromJSVal = ArrayBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal ArrayBuffer where
  toJSVal = return . unArrayBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal ArrayBuffer where
  fromJSVal v = fmap ArrayBuffer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsArrayBuffer o
toArrayBuffer :: IsArrayBuffer o => o -> ArrayBuffer
toArrayBuffer = ArrayBuffer . coerce

instance IsArrayBuffer ArrayBuffer
instance IsGObject ArrayBuffer where
    typeGType _ = gTypeArrayBuffer

gTypeArrayBuffer :: JSM GType
gTypeArrayBuffer = GType . Object <$> jsg "ArrayBuffer"
#else
-- TODO work out how we can support ArrayBuffer in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Float32Array = Float32Array { unFloat32Array :: JSVal }

instance PToJSVal Float32Array where
  pToJSVal = unFloat32Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Float32Array where
  pFromJSVal = Float32Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Float32Array where
  toJSVal = return . unFloat32Array
  {-# INLINE toJSVal #-}

instance FromJSVal Float32Array where
  fromJSVal v = fmap Float32Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsFloat32Array o
toFloat32Array :: IsFloat32Array o => o -> Float32Array
toFloat32Array = Float32Array . coerce

instance IsFloat32Array Float32Array
instance IsGObject Float32Array where
        typeGType _ = gTypeFloat32Array

gTypeFloat32Array :: JSM GType
gTypeFloat32Array = GType . Object <$> jsg "Float32Array"
#else
-- TODO work out how we can support Float32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Float64Array = Float64Array { unFloat64Array :: JSVal }

instance PToJSVal Float64Array where
  pToJSVal = unFloat64Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Float64Array where
  pFromJSVal = Float64Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Float64Array where
  toJSVal = return . unFloat64Array
  {-# INLINE toJSVal #-}

instance FromJSVal Float64Array where
  fromJSVal v = fmap Float64Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsFloat64Array o
toFloat64Array :: IsFloat64Array o => o -> Float64Array
toFloat64Array = Float64Array . coerce

instance IsFloat64Array Float64Array
instance IsGObject Float64Array where
    typeGType _ = gTypeFloat64Array

gTypeFloat64Array :: JSM GType
gTypeFloat64Array = GType . Object <$> jsg "Float64Array"
#else
-- TODO work out how we can support Float64Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8Array = Uint8Array { unUint8Array :: JSVal }

instance PToJSVal Uint8Array where
  pToJSVal = unUint8Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint8Array where
  pFromJSVal = Uint8Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint8Array where
  toJSVal = return . unUint8Array
  {-# INLINE toJSVal #-}

instance FromJSVal Uint8Array where
  fromJSVal v = fmap Uint8Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint8Array o
toUint8Array :: IsUint8Array o => o -> Uint8Array
toUint8Array = Uint8Array . coerce

instance IsUint8Array Uint8Array
instance IsGObject Uint8Array where
    typeGType _ = gTypeUint8Array

gTypeUint8Array :: JSM GType
gTypeUint8Array = GType . Object <$> jsg "Uint8Array"
#else
-- TODO work out how we can support Uint8Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8ClampedArray = Uint8ClampedArray { unUint8ClampedArray :: JSVal }

instance PToJSVal Uint8ClampedArray where
  pToJSVal = unUint8ClampedArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint8ClampedArray where
  pFromJSVal = Uint8ClampedArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint8ClampedArray where
  toJSVal = return . unUint8ClampedArray
  {-# INLINE toJSVal #-}

instance FromJSVal Uint8ClampedArray where
  fromJSVal v = fmap Uint8ClampedArray <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint8ClampedArray o
toUint8ClampedArray :: IsUint8ClampedArray o => o -> Uint8ClampedArray
toUint8ClampedArray = Uint8ClampedArray . coerce

instance IsUint8ClampedArray Uint8ClampedArray
instance IsGObject Uint8ClampedArray where
    typeGType _ = gTypeUint8ClampedArray

gTypeUint8ClampedArray :: JSM GType
gTypeUint8ClampedArray = GType . Object <$> jsg "Uint8ClampedArray"
#else
-- TODO work out how we can support Uint8ClampedArray in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint16Array = Uint16Array { unUint16Array :: JSVal }

instance PToJSVal Uint16Array where
  pToJSVal = unUint16Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint16Array where
  pFromJSVal = Uint16Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint16Array where
  toJSVal = return . unUint16Array
  {-# INLINE toJSVal #-}

instance FromJSVal Uint16Array where
  fromJSVal v = fmap Uint16Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint16Array o
toUint16Array :: IsUint16Array o => o -> Uint16Array
toUint16Array = Uint16Array . coerce

instance IsUint16Array Uint16Array
instance IsGObject Uint16Array where
    typeGType _ = gTypeUint16Array

gTypeUint16Array :: JSM GType
gTypeUint16Array = GType . Object <$> jsg "Uint16Array"
#else
-- TODO work out how we can support Uint16Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint32Array = Uint32Array { unUint32Array :: JSVal }

instance PToJSVal Uint32Array where
  pToJSVal = unUint32Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint32Array where
  pFromJSVal = Uint32Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint32Array where
  toJSVal = return . unUint32Array
  {-# INLINE toJSVal #-}

instance FromJSVal Uint32Array where
  fromJSVal v = fmap Uint32Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint32Array o
toUint32Array :: IsUint32Array o => o -> Uint32Array
toUint32Array = Uint32Array . coerce

instance IsUint32Array Uint32Array
instance IsGObject Uint32Array where
    typeGType _ = gTypeUint32Array

gTypeUint32Array :: JSM GType
gTypeUint32Array = GType . Object <$> jsg "Uint32Array"
#else
-- TODO work out how we can support Uint32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int8Array = Int8Array { unInt8Array :: JSVal }

instance PToJSVal Int8Array where
  pToJSVal = unInt8Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Int8Array where
  pFromJSVal = Int8Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Int8Array where
  toJSVal = return . unInt8Array
  {-# INLINE toJSVal #-}

instance FromJSVal Int8Array where
  fromJSVal v = fmap Int8Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsInt8Array o
toInt8Array :: IsInt8Array o => o -> Int8Array
toInt8Array = Int8Array . coerce

instance IsInt8Array Int8Array
instance IsGObject Int8Array where
    typeGType _ = gTypeInt8Array

gTypeInt8Array :: JSM GType
gTypeInt8Array = GType . Object <$> jsg "Int8Array"
#else
-- TODO work out how we can support Int8Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int16Array = Int16Array { unInt16Array :: JSVal }

instance PToJSVal Int16Array where
  pToJSVal = unInt16Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Int16Array where
  pFromJSVal = Int16Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Int16Array where
  toJSVal = return . unInt16Array
  {-# INLINE toJSVal #-}

instance FromJSVal Int16Array where
  fromJSVal v = fmap Int16Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsInt16Array o
toInt16Array :: IsInt16Array o => o -> Int16Array
toInt16Array = Int16Array . coerce

instance IsInt16Array Int16Array
instance IsGObject Int16Array where
    typeGType _ = gTypeInt16Array

gTypeInt16Array :: JSM GType
gTypeInt16Array = GType . Object <$> jsg "Int16Array"
#else
-- TODO work out how we can support Int16Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int32Array = Int32Array { unInt32Array :: JSVal }

instance PToJSVal Int32Array where
  pToJSVal = unInt32Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Int32Array where
  pFromJSVal = Int32Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Int32Array where
  toJSVal = return . unInt32Array
  {-# INLINE toJSVal #-}

instance FromJSVal Int32Array where
  fromJSVal v = fmap Int32Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsInt32Array o
toInt32Array :: IsInt32Array o => o -> Int32Array
toInt32Array = Int32Array . coerce

instance IsInt32Array Int32Array
instance IsGObject Int32Array where
    typeGType _ = gTypeInt32Array

gTypeInt32Array :: JSM GType
gTypeInt32Array = GType . Object <$> jsg "Int32Array"
#else
-- TODO work out how we can support Int32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ObjectArray = ObjectArray { unObjectArray :: JSVal }

instance PToJSVal ObjectArray where
  pToJSVal = unObjectArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal ObjectArray where
  pFromJSVal = ObjectArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal ObjectArray where
  toJSVal = return . unObjectArray
  {-# INLINE toJSVal #-}

instance FromJSVal ObjectArray where
  fromJSVal v = fmap ObjectArray <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsObjectArray o
toObjectArray :: IsObjectArray o => o -> ObjectArray
toObjectArray = ObjectArray . coerce

instance IsObjectArray ObjectArray
instance IsGObject ObjectArray where
  typeGType _ = error "Unable to get the JavaScript type of ObjectArray"
#else
-- TODO work out how we can support ObjectArray in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ArrayBufferView = ArrayBufferView { unArrayBufferView :: JSVal }

instance PToJSVal ArrayBufferView where
  pToJSVal = unArrayBufferView
  {-# INLINE pToJSVal #-}

instance PFromJSVal ArrayBufferView where
  pFromJSVal = ArrayBufferView
  {-# INLINE pFromJSVal #-}

instance ToJSVal ArrayBufferView where
  toJSVal = return . unArrayBufferView
  {-# INLINE toJSVal #-}

instance FromJSVal ArrayBufferView where
  fromJSVal v = fmap ArrayBufferView <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsArrayBufferView o
toArrayBufferView :: IsArrayBufferView o => o -> ArrayBufferView
toArrayBufferView = ArrayBufferView . coerce

instance IsArrayBufferView ArrayBufferView
instance IsGObject ArrayBufferView where
  typeGType _ = error "Unable to get the JavaScript type of ArrayBufferView"
#else
-- TODO work out how we can support ArrayBufferView in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Array = Array { unArray :: JSVal }

instance PToJSVal Array where
  pToJSVal = unArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal Array where
  pFromJSVal = Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Array where
  toJSVal = return . unArray
  {-# INLINE toJSVal #-}

instance FromJSVal Array where
  fromJSVal v = fmap Array <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsArray o
toArray :: IsArray o => o -> Array
toArray = Array . coerce

instance IsArray Array
instance IsGObject Array where
    typeGType _ = gTypeArray

gTypeArray :: JSM GType
gTypeArray = GType . Object <$> jsg "Array"
#else
-- TODO work out how we can support Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Date = Date { unDate :: JSVal }

instance PToJSVal Date where
  pToJSVal = unDate
  {-# INLINE pToJSVal #-}

instance PFromJSVal Date where
  pFromJSVal = Date
  {-# INLINE pFromJSVal #-}

instance ToJSVal Date where
  toJSVal = return . unDate
  {-# INLINE toJSVal #-}

instance FromJSVal Date where
  fromJSVal v = fmap Date <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDate o
toDate :: IsDate o => o -> Date
toDate = Date . coerce

instance IsDate Date
instance IsGObject Date where
    typeGType _ = gTypeDate

gTypeDate :: JSM GType
gTypeDate = GType . Object <$> jsg "Date"
#else
-- TODO work out how we can support Date in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Acceleration = Acceleration { unAcceleration :: JSVal }

instance PToJSVal Acceleration where
  pToJSVal = unAcceleration
  {-# INLINE pToJSVal #-}

instance PFromJSVal Acceleration where
  pFromJSVal = Acceleration
  {-# INLINE pFromJSVal #-}

instance ToJSVal Acceleration where
  toJSVal = return . unAcceleration
  {-# INLINE toJSVal #-}

instance FromJSVal Acceleration where
  fromJSVal v = fmap Acceleration <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsAcceleration o
toAcceleration :: IsAcceleration o => o -> Acceleration
toAcceleration = Acceleration . coerce

instance IsAcceleration Acceleration
instance IsGObject Acceleration where
  typeGType _ = error "Unable to get the JavaScript type of Acceleration"
#else
-- TODO work out how we can support Acceleration in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype RotationRate = RotationRate { unRotationRate :: JSVal }

instance PToJSVal RotationRate where
  pToJSVal = unRotationRate
  {-# INLINE pToJSVal #-}

instance PFromJSVal RotationRate where
  pFromJSVal = RotationRate
  {-# INLINE pFromJSVal #-}

instance ToJSVal RotationRate where
  toJSVal = return . unRotationRate
  {-# INLINE toJSVal #-}

instance FromJSVal RotationRate where
  fromJSVal v = fmap RotationRate <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsRotationRate o
toRotationRate :: IsRotationRate o => o -> RotationRate
toRotationRate = RotationRate . coerce

instance IsRotationRate RotationRate
instance IsGObject RotationRate where
  typeGType _ = error "Unable to get the JavaScript type of RotationRate"
#else
-- TODO work out how we can support RotationRate in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Algorithm = Algorithm { unAlgorithm :: JSVal }

instance PToJSVal Algorithm where
  pToJSVal = unAlgorithm
  {-# INLINE pToJSVal #-}

instance PFromJSVal Algorithm where
  pFromJSVal = Algorithm
  {-# INLINE pFromJSVal #-}

instance ToJSVal Algorithm where
  toJSVal = return . unAlgorithm
  {-# INLINE toJSVal #-}

instance FromJSVal Algorithm where
  fromJSVal v = fmap Algorithm <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsAlgorithm o
toAlgorithm :: IsAlgorithm o => o -> Algorithm
toAlgorithm = Algorithm . coerce

instance IsAlgorithm Algorithm
instance IsGObject Algorithm where
  typeGType _ = error "Unable to get the JavaScript type of Algorithm"
#else
-- TODO work out how we can support Algorithm in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CryptoOperationData = CryptoOperationData { unCryptoOperationData :: JSVal }

instance PToJSVal CryptoOperationData where
  pToJSVal = unCryptoOperationData
  {-# INLINE pToJSVal #-}

instance PFromJSVal CryptoOperationData where
  pFromJSVal = CryptoOperationData
  {-# INLINE pFromJSVal #-}

instance ToJSVal CryptoOperationData where
  toJSVal = return . unCryptoOperationData
  {-# INLINE toJSVal #-}

instance FromJSVal CryptoOperationData where
  fromJSVal v = fmap CryptoOperationData <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsCryptoOperationData o
toCryptoOperationData :: IsCryptoOperationData o => o -> CryptoOperationData
toCryptoOperationData = CryptoOperationData . coerce

instance IsCryptoOperationData CryptoOperationData
instance IsGObject CryptoOperationData where
  typeGType _ = error "Unable to get the JavaScript type of CryptoOperationData"
instance IsCryptoOperationData ArrayBuffer
instance IsCryptoOperationData ArrayBufferView
#else
-- TODO work out how we can support CryptoOperationData in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CanvasStyle = CanvasStyle { unCanvasStyle :: JSVal }

instance PToJSVal CanvasStyle where
  pToJSVal = unCanvasStyle
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasStyle where
  pFromJSVal = CanvasStyle
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasStyle where
  toJSVal = return . unCanvasStyle
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasStyle where
  fromJSVal v = fmap CanvasStyle <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsCanvasStyle o
toCanvasStyle :: IsCanvasStyle o => o -> CanvasStyle
toCanvasStyle = CanvasStyle . coerce

instance IsCanvasStyle CanvasStyle
instance IsGObject CanvasStyle where
  typeGType _ = error "Unable to get the JavaScript type of CanvasStyle"
instance IsCanvasStyle CanvasGradient
instance IsCanvasStyle CanvasPattern
#else
-- TODO work out how we can support CanvasStyle in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMException = DOMException { unDOMException :: JSVal }

instance PToJSVal DOMException where
  pToJSVal = unDOMException
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMException where
  pFromJSVal = DOMException
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMException where
  toJSVal = return . unDOMException
  {-# INLINE toJSVal #-}

instance FromJSVal DOMException where
  fromJSVal v = fmap DOMException <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDOMException o
toDOMException :: IsDOMException o => o -> DOMException
toDOMException = DOMException . coerce

instance IsDOMException DOMException
instance IsGObject DOMException where
  typeGType _ = error "Unable to get the JavaScript type of DOMException"
#else
-- TODO work out how we can support DOMException in native code
#endif

type GLenum = Word32
type GLboolean = Bool
type GLbitfield = Word32
type GLbyte = Int8
type GLshort = Int16
type GLint = Int32
type GLint64 = Int64
type GLsizei = Int32
type GLintptr = Int64
type GLsizeiptr = Int64
type GLubyte = Word8
type GLushort = Word16
type GLuint = Word32
type GLuint64 = Word64
type GLfloat = Double
type GLclampf = Double

-- AUTO GENERATION STARTS HERE
-- The remainder of this file is generated from IDL files using domconv-webkit-jsffi
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ANGLEInstancedArrays".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays Mozilla ANGLEInstancedArrays documentation>
newtype ANGLEInstancedArrays = ANGLEInstancedArrays { unANGLEInstancedArrays :: JSVal }

instance PToJSVal ANGLEInstancedArrays where
  pToJSVal = unANGLEInstancedArrays
  {-# INLINE pToJSVal #-}

instance PFromJSVal ANGLEInstancedArrays where
  pFromJSVal = ANGLEInstancedArrays
  {-# INLINE pFromJSVal #-}

instance ToJSVal ANGLEInstancedArrays where
  toJSVal = return . unANGLEInstancedArrays
  {-# INLINE toJSVal #-}

instance FromJSVal ANGLEInstancedArrays where
  fromJSVal v = fmap ANGLEInstancedArrays <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ANGLEInstancedArrays where
  makeObject = makeObject . unANGLEInstancedArrays

instance IsGObject ANGLEInstancedArrays where
  typeGType _ = gTypeANGLEInstancedArrays
  {-# INLINE typeGType #-}

gTypeANGLEInstancedArrays :: JSM GType
gTypeANGLEInstancedArrays = GType . Object <$> jsg "ANGLEInstancedArrays"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AbstractView".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView Mozilla AbstractView documentation>
newtype AbstractView = AbstractView { unAbstractView :: JSVal }

instance PToJSVal AbstractView where
  pToJSVal = unAbstractView
  {-# INLINE pToJSVal #-}

instance PFromJSVal AbstractView where
  pFromJSVal = AbstractView
  {-# INLINE pFromJSVal #-}

instance ToJSVal AbstractView where
  toJSVal = return . unAbstractView
  {-# INLINE toJSVal #-}

instance FromJSVal AbstractView where
  fromJSVal v = fmap AbstractView <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AbstractView where
  makeObject = makeObject . unAbstractView

instance IsGObject AbstractView where
  typeGType _ = gTypeAbstractView
  {-# INLINE typeGType #-}

gTypeAbstractView :: JSM GType
gTypeAbstractView = GType . Object <$> jsg "AbstractView"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AbstractWorker".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AbstractWorker Mozilla AbstractWorker documentation>
newtype AbstractWorker = AbstractWorker { unAbstractWorker :: JSVal }

instance PToJSVal AbstractWorker where
  pToJSVal = unAbstractWorker
  {-# INLINE pToJSVal #-}

instance PFromJSVal AbstractWorker where
  pFromJSVal = AbstractWorker
  {-# INLINE pFromJSVal #-}

instance ToJSVal AbstractWorker where
  toJSVal = return . unAbstractWorker
  {-# INLINE toJSVal #-}

instance FromJSVal AbstractWorker where
  fromJSVal v = fmap AbstractWorker <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AbstractWorker where
  makeObject = makeObject . unAbstractWorker

instance IsGObject AbstractWorker where
  typeGType _ = gTypeAbstractWorker
  {-# INLINE typeGType #-}

gTypeAbstractWorker :: JSM GType
gTypeAbstractWorker = GType . Object <$> jsg "AbstractWorker"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AllAudioCapabilities".
-- Base interface functions are in:
--
--     * "JSDOM.MediaStreamCapabilities"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities Mozilla AllAudioCapabilities documentation>
newtype AllAudioCapabilities = AllAudioCapabilities { unAllAudioCapabilities :: JSVal }

instance PToJSVal AllAudioCapabilities where
  pToJSVal = unAllAudioCapabilities
  {-# INLINE pToJSVal #-}

instance PFromJSVal AllAudioCapabilities where
  pFromJSVal = AllAudioCapabilities
  {-# INLINE pFromJSVal #-}

instance ToJSVal AllAudioCapabilities where
  toJSVal = return . unAllAudioCapabilities
  {-# INLINE toJSVal #-}

instance FromJSVal AllAudioCapabilities where
  fromJSVal v = fmap AllAudioCapabilities <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AllAudioCapabilities where
  makeObject = makeObject . unAllAudioCapabilities

instance IsMediaStreamCapabilities AllAudioCapabilities
instance IsGObject AllAudioCapabilities where
  typeGType _ = gTypeAllAudioCapabilities
  {-# INLINE typeGType #-}

gTypeAllAudioCapabilities :: JSM GType
gTypeAllAudioCapabilities = GType . Object <$> jsg "AllAudioCapabilities"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AllVideoCapabilities".
-- Base interface functions are in:
--
--     * "JSDOM.MediaStreamCapabilities"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities Mozilla AllVideoCapabilities documentation>
newtype AllVideoCapabilities = AllVideoCapabilities { unAllVideoCapabilities :: JSVal }

instance PToJSVal AllVideoCapabilities where
  pToJSVal = unAllVideoCapabilities
  {-# INLINE pToJSVal #-}

instance PFromJSVal AllVideoCapabilities where
  pFromJSVal = AllVideoCapabilities
  {-# INLINE pFromJSVal #-}

instance ToJSVal AllVideoCapabilities where
  toJSVal = return . unAllVideoCapabilities
  {-# INLINE toJSVal #-}

instance FromJSVal AllVideoCapabilities where
  fromJSVal v = fmap AllVideoCapabilities <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AllVideoCapabilities where
  makeObject = makeObject . unAllVideoCapabilities

instance IsMediaStreamCapabilities AllVideoCapabilities
instance IsGObject AllVideoCapabilities where
  typeGType _ = gTypeAllVideoCapabilities
  {-# INLINE typeGType #-}

gTypeAllVideoCapabilities :: JSM GType
gTypeAllVideoCapabilities = GType . Object <$> jsg "AllVideoCapabilities"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AnalyserNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode Mozilla AnalyserNode documentation>
newtype AnalyserNode = AnalyserNode { unAnalyserNode :: JSVal }

instance PToJSVal AnalyserNode where
  pToJSVal = unAnalyserNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AnalyserNode where
  pFromJSVal = AnalyserNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AnalyserNode where
  toJSVal = return . unAnalyserNode
  {-# INLINE toJSVal #-}

instance FromJSVal AnalyserNode where
  fromJSVal v = fmap AnalyserNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AnalyserNode where
  makeObject = makeObject . unAnalyserNode

instance IsAudioNode AnalyserNode
instance IsEventTarget AnalyserNode
instance IsGObject AnalyserNode where
  typeGType _ = gTypeAnalyserNode
  {-# INLINE typeGType #-}

gTypeAnalyserNode :: JSM GType
gTypeAnalyserNode = GType . Object <$> jsg "AnalyserNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AnimationEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent Mozilla AnimationEvent documentation>
newtype AnimationEvent = AnimationEvent { unAnimationEvent :: JSVal }

instance PToJSVal AnimationEvent where
  pToJSVal = unAnimationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal AnimationEvent where
  pFromJSVal = AnimationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal AnimationEvent where
  toJSVal = return . unAnimationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal AnimationEvent where
  fromJSVal v = fmap AnimationEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AnimationEvent where
  makeObject = makeObject . unAnimationEvent

instance IsEvent AnimationEvent
instance IsGObject AnimationEvent where
  typeGType _ = gTypeAnimationEvent
  {-# INLINE typeGType #-}

gTypeAnimationEvent :: JSM GType
gTypeAnimationEvent = GType . Object <$> jsg "AnimationEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ApplicationCache".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache Mozilla ApplicationCache documentation>
newtype ApplicationCache = ApplicationCache { unApplicationCache :: JSVal }

instance PToJSVal ApplicationCache where
  pToJSVal = unApplicationCache
  {-# INLINE pToJSVal #-}

instance PFromJSVal ApplicationCache where
  pFromJSVal = ApplicationCache
  {-# INLINE pFromJSVal #-}

instance ToJSVal ApplicationCache where
  toJSVal = return . unApplicationCache
  {-# INLINE toJSVal #-}

instance FromJSVal ApplicationCache where
  fromJSVal v = fmap ApplicationCache <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ApplicationCache where
  makeObject = makeObject . unApplicationCache

instance IsEventTarget ApplicationCache
instance IsGObject ApplicationCache where
  typeGType _ = gTypeApplicationCache
  {-# INLINE typeGType #-}

gTypeApplicationCache :: JSM GType
gTypeApplicationCache = GType . Object <$> jsg "ApplicationCache"
#else
type IsApplicationCache o = ApplicationCacheClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Attr".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Attr Mozilla Attr documentation>
newtype Attr = Attr { unAttr :: JSVal }

instance PToJSVal Attr where
  pToJSVal = unAttr
  {-# INLINE pToJSVal #-}

instance PFromJSVal Attr where
  pFromJSVal = Attr
  {-# INLINE pFromJSVal #-}

instance ToJSVal Attr where
  toJSVal = return . unAttr
  {-# INLINE toJSVal #-}

instance FromJSVal Attr where
  fromJSVal v = fmap Attr <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Attr where
  makeObject = makeObject . unAttr

instance IsNode Attr
instance IsEventTarget Attr
instance IsGObject Attr where
  typeGType _ = gTypeAttr
  {-# INLINE typeGType #-}

gTypeAttr :: JSM GType
gTypeAttr = GType . Object <$> jsg "Attr"
#else
type IsAttr o = AttrClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioBuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer Mozilla AudioBuffer documentation>
newtype AudioBuffer = AudioBuffer { unAudioBuffer :: JSVal }

instance PToJSVal AudioBuffer where
  pToJSVal = unAudioBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioBuffer where
  pFromJSVal = AudioBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioBuffer where
  toJSVal = return . unAudioBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal AudioBuffer where
  fromJSVal v = fmap AudioBuffer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioBuffer where
  makeObject = makeObject . unAudioBuffer

instance IsGObject AudioBuffer where
  typeGType _ = gTypeAudioBuffer
  {-# INLINE typeGType #-}

gTypeAudioBuffer :: JSM GType
gTypeAudioBuffer = GType . Object <$> jsg "AudioBuffer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioBufferSourceNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode Mozilla AudioBufferSourceNode documentation>
newtype AudioBufferSourceNode = AudioBufferSourceNode { unAudioBufferSourceNode :: JSVal }

instance PToJSVal AudioBufferSourceNode where
  pToJSVal = unAudioBufferSourceNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioBufferSourceNode where
  pFromJSVal = AudioBufferSourceNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioBufferSourceNode where
  toJSVal = return . unAudioBufferSourceNode
  {-# INLINE toJSVal #-}

instance FromJSVal AudioBufferSourceNode where
  fromJSVal v = fmap AudioBufferSourceNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioBufferSourceNode where
  makeObject = makeObject . unAudioBufferSourceNode

instance IsAudioNode AudioBufferSourceNode
instance IsEventTarget AudioBufferSourceNode
instance IsGObject AudioBufferSourceNode where
  typeGType _ = gTypeAudioBufferSourceNode
  {-# INLINE typeGType #-}

gTypeAudioBufferSourceNode :: JSM GType
gTypeAudioBufferSourceNode = GType . Object <$> jsg "AudioBufferSourceNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioContext".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation>
newtype AudioContext = AudioContext { unAudioContext :: JSVal }

instance PToJSVal AudioContext where
  pToJSVal = unAudioContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioContext where
  pFromJSVal = AudioContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioContext where
  toJSVal = return . unAudioContext
  {-# INLINE toJSVal #-}

instance FromJSVal AudioContext where
  fromJSVal v = fmap AudioContext <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioContext where
  makeObject = makeObject . unAudioContext

class IsEventTarget o => IsAudioContext o
toAudioContext :: IsAudioContext o => o -> AudioContext
toAudioContext = AudioContext . coerce

instance IsAudioContext AudioContext
instance IsEventTarget AudioContext
instance IsGObject AudioContext where
  typeGType _ = gTypeAudioContext
  {-# INLINE typeGType #-}

gTypeAudioContext :: JSM GType
gTypeAudioContext = GType . Object <$> jsg "AudioContext"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioDestinationNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioDestinationNode Mozilla AudioDestinationNode documentation>
newtype AudioDestinationNode = AudioDestinationNode { unAudioDestinationNode :: JSVal }

instance PToJSVal AudioDestinationNode where
  pToJSVal = unAudioDestinationNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioDestinationNode where
  pFromJSVal = AudioDestinationNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioDestinationNode where
  toJSVal = return . unAudioDestinationNode
  {-# INLINE toJSVal #-}

instance FromJSVal AudioDestinationNode where
  fromJSVal v = fmap AudioDestinationNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioDestinationNode where
  makeObject = makeObject . unAudioDestinationNode

instance IsAudioNode AudioDestinationNode
instance IsEventTarget AudioDestinationNode
instance IsGObject AudioDestinationNode where
  typeGType _ = gTypeAudioDestinationNode
  {-# INLINE typeGType #-}

gTypeAudioDestinationNode :: JSM GType
gTypeAudioDestinationNode = GType . Object <$> jsg "AudioDestinationNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener Mozilla AudioListener documentation>
newtype AudioListener = AudioListener { unAudioListener :: JSVal }

instance PToJSVal AudioListener where
  pToJSVal = unAudioListener
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioListener where
  pFromJSVal = AudioListener
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioListener where
  toJSVal = return . unAudioListener
  {-# INLINE toJSVal #-}

instance FromJSVal AudioListener where
  fromJSVal v = fmap AudioListener <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioListener where
  makeObject = makeObject . unAudioListener

instance IsGObject AudioListener where
  typeGType _ = gTypeAudioListener
  {-# INLINE typeGType #-}

gTypeAudioListener :: JSM GType
gTypeAudioListener = GType . Object <$> jsg "AudioListener"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioNode".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode Mozilla AudioNode documentation>
newtype AudioNode = AudioNode { unAudioNode :: JSVal }

instance PToJSVal AudioNode where
  pToJSVal = unAudioNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioNode where
  pFromJSVal = AudioNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioNode where
  toJSVal = return . unAudioNode
  {-# INLINE toJSVal #-}

instance FromJSVal AudioNode where
  fromJSVal v = fmap AudioNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioNode where
  makeObject = makeObject . unAudioNode

class IsEventTarget o => IsAudioNode o
toAudioNode :: IsAudioNode o => o -> AudioNode
toAudioNode = AudioNode . coerce

instance IsAudioNode AudioNode
instance IsEventTarget AudioNode
instance IsGObject AudioNode where
  typeGType _ = gTypeAudioNode
  {-# INLINE typeGType #-}

gTypeAudioNode :: JSM GType
gTypeAudioNode = GType . Object <$> jsg "AudioNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioParam".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam Mozilla AudioParam documentation>
newtype AudioParam = AudioParam { unAudioParam :: JSVal }

instance PToJSVal AudioParam where
  pToJSVal = unAudioParam
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioParam where
  pFromJSVal = AudioParam
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioParam where
  toJSVal = return . unAudioParam
  {-# INLINE toJSVal #-}

instance FromJSVal AudioParam where
  fromJSVal v = fmap AudioParam <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioParam where
  makeObject = makeObject . unAudioParam

instance IsGObject AudioParam where
  typeGType _ = gTypeAudioParam
  {-# INLINE typeGType #-}

gTypeAudioParam :: JSM GType
gTypeAudioParam = GType . Object <$> jsg "AudioParam"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioProcessingEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent Mozilla AudioProcessingEvent documentation>
newtype AudioProcessingEvent = AudioProcessingEvent { unAudioProcessingEvent :: JSVal }

instance PToJSVal AudioProcessingEvent where
  pToJSVal = unAudioProcessingEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioProcessingEvent where
  pFromJSVal = AudioProcessingEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioProcessingEvent where
  toJSVal = return . unAudioProcessingEvent
  {-# INLINE toJSVal #-}

instance FromJSVal AudioProcessingEvent where
  fromJSVal v = fmap AudioProcessingEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioProcessingEvent where
  makeObject = makeObject . unAudioProcessingEvent

instance IsEvent AudioProcessingEvent
instance IsGObject AudioProcessingEvent where
  typeGType _ = gTypeAudioProcessingEvent
  {-# INLINE typeGType #-}

gTypeAudioProcessingEvent :: JSM GType
gTypeAudioProcessingEvent = GType . Object <$> jsg "AudioProcessingEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioStreamTrack".
-- Base interface functions are in:
--
--     * "JSDOM.MediaStreamTrack"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioStreamTrack Mozilla AudioStreamTrack documentation>
newtype AudioStreamTrack = AudioStreamTrack { unAudioStreamTrack :: JSVal }

instance PToJSVal AudioStreamTrack where
  pToJSVal = unAudioStreamTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioStreamTrack where
  pFromJSVal = AudioStreamTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioStreamTrack where
  toJSVal = return . unAudioStreamTrack
  {-# INLINE toJSVal #-}

instance FromJSVal AudioStreamTrack where
  fromJSVal v = fmap AudioStreamTrack <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioStreamTrack where
  makeObject = makeObject . unAudioStreamTrack

instance IsMediaStreamTrack AudioStreamTrack
instance IsEventTarget AudioStreamTrack
instance IsGObject AudioStreamTrack where
  typeGType _ = gTypeAudioStreamTrack
  {-# INLINE typeGType #-}

gTypeAudioStreamTrack :: JSM GType
gTypeAudioStreamTrack = GType . Object <$> jsg "AudioStreamTrack"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack Mozilla AudioTrack documentation>
newtype AudioTrack = AudioTrack { unAudioTrack :: JSVal }

instance PToJSVal AudioTrack where
  pToJSVal = unAudioTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioTrack where
  pFromJSVal = AudioTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioTrack where
  toJSVal = return . unAudioTrack
  {-# INLINE toJSVal #-}

instance FromJSVal AudioTrack where
  fromJSVal v = fmap AudioTrack <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioTrack where
  makeObject = makeObject . unAudioTrack

instance IsGObject AudioTrack where
  typeGType _ = gTypeAudioTrack
  {-# INLINE typeGType #-}

gTypeAudioTrack :: JSM GType
gTypeAudioTrack = GType . Object <$> jsg "AudioTrack"
#else
#ifndef USE_OLD_WEBKIT
type IsAudioTrack o = AudioTrackClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AudioTrackList".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList Mozilla AudioTrackList documentation>
newtype AudioTrackList = AudioTrackList { unAudioTrackList :: JSVal }

instance PToJSVal AudioTrackList where
  pToJSVal = unAudioTrackList
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioTrackList where
  pFromJSVal = AudioTrackList
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioTrackList where
  toJSVal = return . unAudioTrackList
  {-# INLINE toJSVal #-}

instance FromJSVal AudioTrackList where
  fromJSVal v = fmap AudioTrackList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AudioTrackList where
  makeObject = makeObject . unAudioTrackList

instance IsEventTarget AudioTrackList
instance IsGObject AudioTrackList where
  typeGType _ = gTypeAudioTrackList
  {-# INLINE typeGType #-}

gTypeAudioTrackList :: JSM GType
gTypeAudioTrackList = GType . Object <$> jsg "AudioTrackList"
#else
#ifndef USE_OLD_WEBKIT
type IsAudioTrackList o = AudioTrackListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.AutocompleteErrorEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent Mozilla AutocompleteErrorEvent documentation>
newtype AutocompleteErrorEvent = AutocompleteErrorEvent { unAutocompleteErrorEvent :: JSVal }

instance PToJSVal AutocompleteErrorEvent where
  pToJSVal = unAutocompleteErrorEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal AutocompleteErrorEvent where
  pFromJSVal = AutocompleteErrorEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal AutocompleteErrorEvent where
  toJSVal = return . unAutocompleteErrorEvent
  {-# INLINE toJSVal #-}

instance FromJSVal AutocompleteErrorEvent where
  fromJSVal v = fmap AutocompleteErrorEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject AutocompleteErrorEvent where
  makeObject = makeObject . unAutocompleteErrorEvent

instance IsEvent AutocompleteErrorEvent
instance IsGObject AutocompleteErrorEvent where
  typeGType _ = gTypeAutocompleteErrorEvent
  {-# INLINE typeGType #-}

gTypeAutocompleteErrorEvent :: JSM GType
gTypeAutocompleteErrorEvent = GType . Object <$> jsg "AutocompleteErrorEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.BarProp".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BarProp Mozilla BarProp documentation>
newtype BarProp = BarProp { unBarProp :: JSVal }

instance PToJSVal BarProp where
  pToJSVal = unBarProp
  {-# INLINE pToJSVal #-}

instance PFromJSVal BarProp where
  pFromJSVal = BarProp
  {-# INLINE pFromJSVal #-}

instance ToJSVal BarProp where
  toJSVal = return . unBarProp
  {-# INLINE toJSVal #-}

instance FromJSVal BarProp where
  fromJSVal v = fmap BarProp <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject BarProp where
  makeObject = makeObject . unBarProp

instance IsGObject BarProp where
  typeGType _ = gTypeBarProp
  {-# INLINE typeGType #-}

gTypeBarProp :: JSM GType
gTypeBarProp = GType . Object <$> jsg "BarProp"
#else
#ifndef USE_OLD_WEBKIT
type IsBarProp o = BarPropClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.BatteryManager".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager Mozilla BatteryManager documentation>
newtype BatteryManager = BatteryManager { unBatteryManager :: JSVal }

instance PToJSVal BatteryManager where
  pToJSVal = unBatteryManager
  {-# INLINE pToJSVal #-}

instance PFromJSVal BatteryManager where
  pFromJSVal = BatteryManager
  {-# INLINE pFromJSVal #-}

instance ToJSVal BatteryManager where
  toJSVal = return . unBatteryManager
  {-# INLINE toJSVal #-}

instance FromJSVal BatteryManager where
  fromJSVal v = fmap BatteryManager <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject BatteryManager where
  makeObject = makeObject . unBatteryManager

instance IsEventTarget BatteryManager
instance IsGObject BatteryManager where
  typeGType _ = gTypeBatteryManager
  {-# INLINE typeGType #-}

gTypeBatteryManager :: JSM GType
gTypeBatteryManager = GType . Object <$> jsg "BatteryManager"
#else
#ifndef USE_OLD_WEBKIT
type IsBatteryManager o = BatteryManagerClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.BeforeLoadEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BeforeLoadEvent Mozilla BeforeLoadEvent documentation>
newtype BeforeLoadEvent = BeforeLoadEvent { unBeforeLoadEvent :: JSVal }

instance PToJSVal BeforeLoadEvent where
  pToJSVal = unBeforeLoadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal BeforeLoadEvent where
  pFromJSVal = BeforeLoadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal BeforeLoadEvent where
  toJSVal = return . unBeforeLoadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal BeforeLoadEvent where
  fromJSVal v = fmap BeforeLoadEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject BeforeLoadEvent where
  makeObject = makeObject . unBeforeLoadEvent

instance IsEvent BeforeLoadEvent
instance IsGObject BeforeLoadEvent where
  typeGType _ = gTypeBeforeLoadEvent
  {-# INLINE typeGType #-}

gTypeBeforeLoadEvent :: JSM GType
gTypeBeforeLoadEvent = GType . Object <$> jsg "BeforeLoadEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.BeforeUnloadEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent Mozilla BeforeUnloadEvent documentation>
newtype BeforeUnloadEvent = BeforeUnloadEvent { unBeforeUnloadEvent :: JSVal }

instance PToJSVal BeforeUnloadEvent where
  pToJSVal = unBeforeUnloadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal BeforeUnloadEvent where
  pFromJSVal = BeforeUnloadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal BeforeUnloadEvent where
  toJSVal = return . unBeforeUnloadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal BeforeUnloadEvent where
  fromJSVal v = fmap BeforeUnloadEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject BeforeUnloadEvent where
  makeObject = makeObject . unBeforeUnloadEvent

instance IsEvent BeforeUnloadEvent
instance IsGObject BeforeUnloadEvent where
  typeGType _ = gTypeBeforeUnloadEvent
  {-# INLINE typeGType #-}

gTypeBeforeUnloadEvent :: JSM GType
gTypeBeforeUnloadEvent = GType . Object <$> jsg "BeforeUnloadEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.BiquadFilterNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode Mozilla BiquadFilterNode documentation>
newtype BiquadFilterNode = BiquadFilterNode { unBiquadFilterNode :: JSVal }

instance PToJSVal BiquadFilterNode where
  pToJSVal = unBiquadFilterNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal BiquadFilterNode where
  pFromJSVal = BiquadFilterNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal BiquadFilterNode where
  toJSVal = return . unBiquadFilterNode
  {-# INLINE toJSVal #-}

instance FromJSVal BiquadFilterNode where
  fromJSVal v = fmap BiquadFilterNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject BiquadFilterNode where
  makeObject = makeObject . unBiquadFilterNode

instance IsAudioNode BiquadFilterNode
instance IsEventTarget BiquadFilterNode
instance IsGObject BiquadFilterNode where
  typeGType _ = gTypeBiquadFilterNode
  {-# INLINE typeGType #-}

gTypeBiquadFilterNode :: JSM GType
gTypeBiquadFilterNode = GType . Object <$> jsg "BiquadFilterNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Blob".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation>
newtype Blob = Blob { unBlob :: JSVal }

instance PToJSVal Blob where
  pToJSVal = unBlob
  {-# INLINE pToJSVal #-}

instance PFromJSVal Blob where
  pFromJSVal = Blob
  {-# INLINE pFromJSVal #-}

instance ToJSVal Blob where
  toJSVal = return . unBlob
  {-# INLINE toJSVal #-}

instance FromJSVal Blob where
  fromJSVal v = fmap Blob <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Blob where
  makeObject = makeObject . unBlob

class IsGObject o => IsBlob o
toBlob :: IsBlob o => o -> Blob
toBlob = Blob . coerce

instance IsBlob Blob
instance IsGObject Blob where
  typeGType _ = gTypeBlob
  {-# INLINE typeGType #-}

gTypeBlob :: JSM GType
gTypeBlob = GType . Object <$> jsg "Blob"
#else
type IsBlob o = BlobClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CDATASection".
-- Base interface functions are in:
--
--     * "JSDOM.Text"
--     * "JSDOM.CharacterData"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CDATASection Mozilla CDATASection documentation>
newtype CDATASection = CDATASection { unCDATASection :: JSVal }

instance PToJSVal CDATASection where
  pToJSVal = unCDATASection
  {-# INLINE pToJSVal #-}

instance PFromJSVal CDATASection where
  pFromJSVal = CDATASection
  {-# INLINE pFromJSVal #-}

instance ToJSVal CDATASection where
  toJSVal = return . unCDATASection
  {-# INLINE toJSVal #-}

instance FromJSVal CDATASection where
  fromJSVal v = fmap CDATASection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CDATASection where
  makeObject = makeObject . unCDATASection

instance IsText CDATASection
instance IsCharacterData CDATASection
instance IsNode CDATASection
instance IsEventTarget CDATASection
instance IsGObject CDATASection where
  typeGType _ = gTypeCDATASection
  {-# INLINE typeGType #-}

gTypeCDATASection :: JSM GType
gTypeCDATASection = GType . Object <$> jsg "CDATASection"
#else
type IsCDATASection o = CDATASectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSS".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSS Mozilla CSS documentation>
newtype CSS = CSS { unCSS :: JSVal }

instance PToJSVal CSS where
  pToJSVal = unCSS
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSS where
  pFromJSVal = CSS
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSS where
  toJSVal = return . unCSS
  {-# INLINE toJSVal #-}

instance FromJSVal CSS where
  fromJSVal v = fmap CSS <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSS where
  makeObject = makeObject . unCSS

instance IsGObject CSS where
  typeGType _ = gTypeCSS
  {-# INLINE typeGType #-}

gTypeCSS :: JSM GType
gTypeCSS = GType . Object <$> jsg "CSS"
#else
#ifndef USE_OLD_WEBKIT
type IsCSS o = CSSClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSCharsetRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule Mozilla CSSCharsetRule documentation>
newtype CSSCharsetRule = CSSCharsetRule { unCSSCharsetRule :: JSVal }

instance PToJSVal CSSCharsetRule where
  pToJSVal = unCSSCharsetRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSCharsetRule where
  pFromJSVal = CSSCharsetRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSCharsetRule where
  toJSVal = return . unCSSCharsetRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSCharsetRule where
  fromJSVal v = fmap CSSCharsetRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSCharsetRule where
  makeObject = makeObject . unCSSCharsetRule

instance IsCSSRule CSSCharsetRule
instance IsGObject CSSCharsetRule where
  typeGType _ = gTypeCSSCharsetRule
  {-# INLINE typeGType #-}

gTypeCSSCharsetRule :: JSM GType
gTypeCSSCharsetRule = GType . Object <$> jsg "CSSCharsetRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSFontFaceLoadEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent Mozilla CSSFontFaceLoadEvent documentation>
newtype CSSFontFaceLoadEvent = CSSFontFaceLoadEvent { unCSSFontFaceLoadEvent :: JSVal }

instance PToJSVal CSSFontFaceLoadEvent where
  pToJSVal = unCSSFontFaceLoadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSFontFaceLoadEvent where
  pFromJSVal = CSSFontFaceLoadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSFontFaceLoadEvent where
  toJSVal = return . unCSSFontFaceLoadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CSSFontFaceLoadEvent where
  fromJSVal v = fmap CSSFontFaceLoadEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSFontFaceLoadEvent where
  makeObject = makeObject . unCSSFontFaceLoadEvent

instance IsEvent CSSFontFaceLoadEvent
instance IsGObject CSSFontFaceLoadEvent where
  typeGType _ = gTypeCSSFontFaceLoadEvent
  {-# INLINE typeGType #-}

gTypeCSSFontFaceLoadEvent :: JSM GType
gTypeCSSFontFaceLoadEvent = GType . Object <$> jsg "CSSFontFaceLoadEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSFontFaceRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceRule Mozilla CSSFontFaceRule documentation>
newtype CSSFontFaceRule = CSSFontFaceRule { unCSSFontFaceRule :: JSVal }

instance PToJSVal CSSFontFaceRule where
  pToJSVal = unCSSFontFaceRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSFontFaceRule where
  pFromJSVal = CSSFontFaceRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSFontFaceRule where
  toJSVal = return . unCSSFontFaceRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSFontFaceRule where
  fromJSVal v = fmap CSSFontFaceRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSFontFaceRule where
  makeObject = makeObject . unCSSFontFaceRule

instance IsCSSRule CSSFontFaceRule
instance IsGObject CSSFontFaceRule where
  typeGType _ = gTypeCSSFontFaceRule
  {-# INLINE typeGType #-}

gTypeCSSFontFaceRule :: JSM GType
gTypeCSSFontFaceRule = GType . Object <$> jsg "CSSFontFaceRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSImportRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule Mozilla CSSImportRule documentation>
newtype CSSImportRule = CSSImportRule { unCSSImportRule :: JSVal }

instance PToJSVal CSSImportRule where
  pToJSVal = unCSSImportRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSImportRule where
  pFromJSVal = CSSImportRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSImportRule where
  toJSVal = return . unCSSImportRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSImportRule where
  fromJSVal v = fmap CSSImportRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSImportRule where
  makeObject = makeObject . unCSSImportRule

instance IsCSSRule CSSImportRule
instance IsGObject CSSImportRule where
  typeGType _ = gTypeCSSImportRule
  {-# INLINE typeGType #-}

gTypeCSSImportRule :: JSM GType
gTypeCSSImportRule = GType . Object <$> jsg "CSSImportRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSKeyframeRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule Mozilla CSSKeyframeRule documentation>
newtype CSSKeyframeRule = CSSKeyframeRule { unCSSKeyframeRule :: JSVal }

instance PToJSVal CSSKeyframeRule where
  pToJSVal = unCSSKeyframeRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSKeyframeRule where
  pFromJSVal = CSSKeyframeRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSKeyframeRule where
  toJSVal = return . unCSSKeyframeRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSKeyframeRule where
  fromJSVal v = fmap CSSKeyframeRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSKeyframeRule where
  makeObject = makeObject . unCSSKeyframeRule

instance IsCSSRule CSSKeyframeRule
instance IsGObject CSSKeyframeRule where
  typeGType _ = gTypeCSSKeyframeRule
  {-# INLINE typeGType #-}

gTypeCSSKeyframeRule :: JSM GType
gTypeCSSKeyframeRule = GType . Object <$> jsg "CSSKeyframeRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSKeyframesRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule Mozilla CSSKeyframesRule documentation>
newtype CSSKeyframesRule = CSSKeyframesRule { unCSSKeyframesRule :: JSVal }

instance PToJSVal CSSKeyframesRule where
  pToJSVal = unCSSKeyframesRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSKeyframesRule where
  pFromJSVal = CSSKeyframesRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSKeyframesRule where
  toJSVal = return . unCSSKeyframesRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSKeyframesRule where
  fromJSVal v = fmap CSSKeyframesRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSKeyframesRule where
  makeObject = makeObject . unCSSKeyframesRule

instance IsCSSRule CSSKeyframesRule
instance IsGObject CSSKeyframesRule where
  typeGType _ = gTypeCSSKeyframesRule
  {-# INLINE typeGType #-}

gTypeCSSKeyframesRule :: JSM GType
gTypeCSSKeyframesRule = GType . Object <$> jsg "CSSKeyframesRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSMediaRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule Mozilla CSSMediaRule documentation>
newtype CSSMediaRule = CSSMediaRule { unCSSMediaRule :: JSVal }

instance PToJSVal CSSMediaRule where
  pToJSVal = unCSSMediaRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSMediaRule where
  pFromJSVal = CSSMediaRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSMediaRule where
  toJSVal = return . unCSSMediaRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSMediaRule where
  fromJSVal v = fmap CSSMediaRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSMediaRule where
  makeObject = makeObject . unCSSMediaRule

instance IsCSSRule CSSMediaRule
instance IsGObject CSSMediaRule where
  typeGType _ = gTypeCSSMediaRule
  {-# INLINE typeGType #-}

gTypeCSSMediaRule :: JSM GType
gTypeCSSMediaRule = GType . Object <$> jsg "CSSMediaRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSPageRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule Mozilla CSSPageRule documentation>
newtype CSSPageRule = CSSPageRule { unCSSPageRule :: JSVal }

instance PToJSVal CSSPageRule where
  pToJSVal = unCSSPageRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSPageRule where
  pFromJSVal = CSSPageRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSPageRule where
  toJSVal = return . unCSSPageRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSPageRule where
  fromJSVal v = fmap CSSPageRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSPageRule where
  makeObject = makeObject . unCSSPageRule

instance IsCSSRule CSSPageRule
instance IsGObject CSSPageRule where
  typeGType _ = gTypeCSSPageRule
  {-# INLINE typeGType #-}

gTypeCSSPageRule :: JSM GType
gTypeCSSPageRule = GType . Object <$> jsg "CSSPageRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSPrimitiveValue".
-- Base interface functions are in:
--
--     * "JSDOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue Mozilla CSSPrimitiveValue documentation>
newtype CSSPrimitiveValue = CSSPrimitiveValue { unCSSPrimitiveValue :: JSVal }

instance PToJSVal CSSPrimitiveValue where
  pToJSVal = unCSSPrimitiveValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSPrimitiveValue where
  pFromJSVal = CSSPrimitiveValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSPrimitiveValue where
  toJSVal = return . unCSSPrimitiveValue
  {-# INLINE toJSVal #-}

instance FromJSVal CSSPrimitiveValue where
  fromJSVal v = fmap CSSPrimitiveValue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSPrimitiveValue where
  makeObject = makeObject . unCSSPrimitiveValue

instance IsCSSValue CSSPrimitiveValue
instance IsGObject CSSPrimitiveValue where
  typeGType _ = gTypeCSSPrimitiveValue
  {-# INLINE typeGType #-}

gTypeCSSPrimitiveValue :: JSM GType
gTypeCSSPrimitiveValue = GType . Object <$> jsg "CSSPrimitiveValue"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSRule".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule Mozilla CSSRule documentation>
newtype CSSRule = CSSRule { unCSSRule :: JSVal }

instance PToJSVal CSSRule where
  pToJSVal = unCSSRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSRule where
  pFromJSVal = CSSRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSRule where
  toJSVal = return . unCSSRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSRule where
  fromJSVal v = fmap CSSRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSRule where
  makeObject = makeObject . unCSSRule

class IsGObject o => IsCSSRule o
toCSSRule :: IsCSSRule o => o -> CSSRule
toCSSRule = CSSRule . coerce

instance IsCSSRule CSSRule
instance IsGObject CSSRule where
  typeGType _ = gTypeCSSRule
  {-# INLINE typeGType #-}

gTypeCSSRule :: JSM GType
gTypeCSSRule = GType . Object <$> jsg "CSSRule"
#else
type IsCSSRule o = CSSRuleClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSRuleList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList Mozilla CSSRuleList documentation>
newtype CSSRuleList = CSSRuleList { unCSSRuleList :: JSVal }

instance PToJSVal CSSRuleList where
  pToJSVal = unCSSRuleList
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSRuleList where
  pFromJSVal = CSSRuleList
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSRuleList where
  toJSVal = return . unCSSRuleList
  {-# INLINE toJSVal #-}

instance FromJSVal CSSRuleList where
  fromJSVal v = fmap CSSRuleList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSRuleList where
  makeObject = makeObject . unCSSRuleList

instance IsGObject CSSRuleList where
  typeGType _ = gTypeCSSRuleList
  {-# INLINE typeGType #-}

gTypeCSSRuleList :: JSM GType
gTypeCSSRuleList = GType . Object <$> jsg "CSSRuleList"
#else
type IsCSSRuleList o = CSSRuleListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSStyleDeclaration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration Mozilla CSSStyleDeclaration documentation>
newtype CSSStyleDeclaration = CSSStyleDeclaration { unCSSStyleDeclaration :: JSVal }

instance PToJSVal CSSStyleDeclaration where
  pToJSVal = unCSSStyleDeclaration
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSStyleDeclaration where
  pFromJSVal = CSSStyleDeclaration
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSStyleDeclaration where
  toJSVal = return . unCSSStyleDeclaration
  {-# INLINE toJSVal #-}

instance FromJSVal CSSStyleDeclaration where
  fromJSVal v = fmap CSSStyleDeclaration <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSStyleDeclaration where
  makeObject = makeObject . unCSSStyleDeclaration

instance IsGObject CSSStyleDeclaration where
  typeGType _ = gTypeCSSStyleDeclaration
  {-# INLINE typeGType #-}

gTypeCSSStyleDeclaration :: JSM GType
gTypeCSSStyleDeclaration = GType . Object <$> jsg "CSSStyleDeclaration"
#else
type IsCSSStyleDeclaration o = CSSStyleDeclarationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSStyleRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule Mozilla CSSStyleRule documentation>
newtype CSSStyleRule = CSSStyleRule { unCSSStyleRule :: JSVal }

instance PToJSVal CSSStyleRule where
  pToJSVal = unCSSStyleRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSStyleRule where
  pFromJSVal = CSSStyleRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSStyleRule where
  toJSVal = return . unCSSStyleRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSStyleRule where
  fromJSVal v = fmap CSSStyleRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSStyleRule where
  makeObject = makeObject . unCSSStyleRule

instance IsCSSRule CSSStyleRule
instance IsGObject CSSStyleRule where
  typeGType _ = gTypeCSSStyleRule
  {-# INLINE typeGType #-}

gTypeCSSStyleRule :: JSM GType
gTypeCSSStyleRule = GType . Object <$> jsg "CSSStyleRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSStyleSheet".
-- Base interface functions are in:
--
--     * "JSDOM.StyleSheet"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet Mozilla CSSStyleSheet documentation>
newtype CSSStyleSheet = CSSStyleSheet { unCSSStyleSheet :: JSVal }

instance PToJSVal CSSStyleSheet where
  pToJSVal = unCSSStyleSheet
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSStyleSheet where
  pFromJSVal = CSSStyleSheet
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSStyleSheet where
  toJSVal = return . unCSSStyleSheet
  {-# INLINE toJSVal #-}

instance FromJSVal CSSStyleSheet where
  fromJSVal v = fmap CSSStyleSheet <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSStyleSheet where
  makeObject = makeObject . unCSSStyleSheet

instance IsStyleSheet CSSStyleSheet
instance IsGObject CSSStyleSheet where
  typeGType _ = gTypeCSSStyleSheet
  {-# INLINE typeGType #-}

gTypeCSSStyleSheet :: JSM GType
gTypeCSSStyleSheet = GType . Object <$> jsg "CSSStyleSheet"
#else
type IsCSSStyleSheet o = CSSStyleSheetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSSupportsRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule Mozilla CSSSupportsRule documentation>
newtype CSSSupportsRule = CSSSupportsRule { unCSSSupportsRule :: JSVal }

instance PToJSVal CSSSupportsRule where
  pToJSVal = unCSSSupportsRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSSupportsRule where
  pFromJSVal = CSSSupportsRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSSupportsRule where
  toJSVal = return . unCSSSupportsRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSSupportsRule where
  fromJSVal v = fmap CSSSupportsRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSSupportsRule where
  makeObject = makeObject . unCSSSupportsRule

instance IsCSSRule CSSSupportsRule
instance IsGObject CSSSupportsRule where
  typeGType _ = gTypeCSSSupportsRule
  {-# INLINE typeGType #-}

gTypeCSSSupportsRule :: JSM GType
gTypeCSSSupportsRule = GType . Object <$> jsg "CSSSupportsRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSUnknownRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSUnknownRule Mozilla CSSUnknownRule documentation>
newtype CSSUnknownRule = CSSUnknownRule { unCSSUnknownRule :: JSVal }

instance PToJSVal CSSUnknownRule where
  pToJSVal = unCSSUnknownRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSUnknownRule where
  pFromJSVal = CSSUnknownRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSUnknownRule where
  toJSVal = return . unCSSUnknownRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSUnknownRule where
  fromJSVal v = fmap CSSUnknownRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSUnknownRule where
  makeObject = makeObject . unCSSUnknownRule

instance IsCSSRule CSSUnknownRule
instance IsGObject CSSUnknownRule where
  typeGType _ = gTypeCSSUnknownRule
  {-# INLINE typeGType #-}

gTypeCSSUnknownRule :: JSM GType
gTypeCSSUnknownRule = GType . Object <$> jsg "CSSUnknownRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSValue".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue Mozilla CSSValue documentation>
newtype CSSValue = CSSValue { unCSSValue :: JSVal }

instance PToJSVal CSSValue where
  pToJSVal = unCSSValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSValue where
  pFromJSVal = CSSValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSValue where
  toJSVal = return . unCSSValue
  {-# INLINE toJSVal #-}

instance FromJSVal CSSValue where
  fromJSVal v = fmap CSSValue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSValue where
  makeObject = makeObject . unCSSValue

class IsGObject o => IsCSSValue o
toCSSValue :: IsCSSValue o => o -> CSSValue
toCSSValue = CSSValue . coerce

instance IsCSSValue CSSValue
instance IsGObject CSSValue where
  typeGType _ = gTypeCSSValue
  {-# INLINE typeGType #-}

gTypeCSSValue :: JSM GType
gTypeCSSValue = GType . Object <$> jsg "CSSValue"
#else
type IsCSSValue o = CSSValueClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CSSValueList".
-- Base interface functions are in:
--
--     * "JSDOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList Mozilla CSSValueList documentation>
newtype CSSValueList = CSSValueList { unCSSValueList :: JSVal }

instance PToJSVal CSSValueList where
  pToJSVal = unCSSValueList
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSValueList where
  pFromJSVal = CSSValueList
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSValueList where
  toJSVal = return . unCSSValueList
  {-# INLINE toJSVal #-}

instance FromJSVal CSSValueList where
  fromJSVal v = fmap CSSValueList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CSSValueList where
  makeObject = makeObject . unCSSValueList

class IsCSSValue o => IsCSSValueList o
toCSSValueList :: IsCSSValueList o => o -> CSSValueList
toCSSValueList = CSSValueList . coerce

instance IsCSSValueList CSSValueList
instance IsCSSValue CSSValueList
instance IsGObject CSSValueList where
  typeGType _ = gTypeCSSValueList
  {-# INLINE typeGType #-}

gTypeCSSValueList :: JSM GType
gTypeCSSValueList = GType . Object <$> jsg "CSSValueList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CanvasGradient".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient Mozilla CanvasGradient documentation>
newtype CanvasGradient = CanvasGradient { unCanvasGradient :: JSVal }

instance PToJSVal CanvasGradient where
  pToJSVal = unCanvasGradient
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasGradient where
  pFromJSVal = CanvasGradient
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasGradient where
  toJSVal = return . unCanvasGradient
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasGradient where
  fromJSVal v = fmap CanvasGradient <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CanvasGradient where
  makeObject = makeObject . unCanvasGradient

instance IsGObject CanvasGradient where
  typeGType _ = gTypeCanvasGradient
  {-# INLINE typeGType #-}

gTypeCanvasGradient :: JSM GType
gTypeCanvasGradient = GType . Object <$> jsg "CanvasGradient"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CanvasPattern".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPattern Mozilla CanvasPattern documentation>
newtype CanvasPattern = CanvasPattern { unCanvasPattern :: JSVal }

instance PToJSVal CanvasPattern where
  pToJSVal = unCanvasPattern
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasPattern where
  pFromJSVal = CanvasPattern
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasPattern where
  toJSVal = return . unCanvasPattern
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasPattern where
  fromJSVal v = fmap CanvasPattern <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CanvasPattern where
  makeObject = makeObject . unCanvasPattern

instance IsGObject CanvasPattern where
  typeGType _ = gTypeCanvasPattern
  {-# INLINE typeGType #-}

gTypeCanvasPattern :: JSM GType
gTypeCanvasPattern = GType . Object <$> jsg "CanvasPattern"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CanvasProxy".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasProxy Mozilla CanvasProxy documentation>
newtype CanvasProxy = CanvasProxy { unCanvasProxy :: JSVal }

instance PToJSVal CanvasProxy where
  pToJSVal = unCanvasProxy
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasProxy where
  pFromJSVal = CanvasProxy
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasProxy where
  toJSVal = return . unCanvasProxy
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasProxy where
  fromJSVal v = fmap CanvasProxy <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CanvasProxy where
  makeObject = makeObject . unCanvasProxy

instance IsGObject CanvasProxy where
  typeGType _ = gTypeCanvasProxy
  {-# INLINE typeGType #-}

gTypeCanvasProxy :: JSM GType
gTypeCanvasProxy = GType . Object <$> jsg "CanvasProxy"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CanvasRenderingContext".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext Mozilla CanvasRenderingContext documentation>
newtype CanvasRenderingContext = CanvasRenderingContext { unCanvasRenderingContext :: JSVal }

instance PToJSVal CanvasRenderingContext where
  pToJSVal = unCanvasRenderingContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasRenderingContext where
  pFromJSVal = CanvasRenderingContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasRenderingContext where
  toJSVal = return . unCanvasRenderingContext
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasRenderingContext where
  fromJSVal v = fmap CanvasRenderingContext <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CanvasRenderingContext where
  makeObject = makeObject . unCanvasRenderingContext

class IsGObject o => IsCanvasRenderingContext o
toCanvasRenderingContext :: IsCanvasRenderingContext o => o -> CanvasRenderingContext
toCanvasRenderingContext = CanvasRenderingContext . coerce

instance IsCanvasRenderingContext CanvasRenderingContext
instance IsGObject CanvasRenderingContext where
  typeGType _ = gTypeCanvasRenderingContext
  {-# INLINE typeGType #-}

gTypeCanvasRenderingContext :: JSM GType
gTypeCanvasRenderingContext = GType . Object <$> jsg "CanvasRenderingContext"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CanvasRenderingContext2D".
-- Base interface functions are in:
--
--     * "JSDOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D Mozilla CanvasRenderingContext2D documentation>
newtype CanvasRenderingContext2D = CanvasRenderingContext2D { unCanvasRenderingContext2D :: JSVal }

instance PToJSVal CanvasRenderingContext2D where
  pToJSVal = unCanvasRenderingContext2D
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasRenderingContext2D where
  pFromJSVal = CanvasRenderingContext2D
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasRenderingContext2D where
  toJSVal = return . unCanvasRenderingContext2D
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasRenderingContext2D where
  fromJSVal v = fmap CanvasRenderingContext2D <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CanvasRenderingContext2D where
  makeObject = makeObject . unCanvasRenderingContext2D

instance IsCanvasRenderingContext CanvasRenderingContext2D
instance IsGObject CanvasRenderingContext2D where
  typeGType _ = gTypeCanvasRenderingContext2D
  {-# INLINE typeGType #-}

gTypeCanvasRenderingContext2D :: JSM GType
gTypeCanvasRenderingContext2D = GType . Object <$> jsg "CanvasRenderingContext2D"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CapabilityRange".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange Mozilla CapabilityRange documentation>
newtype CapabilityRange = CapabilityRange { unCapabilityRange :: JSVal }

instance PToJSVal CapabilityRange where
  pToJSVal = unCapabilityRange
  {-# INLINE pToJSVal #-}

instance PFromJSVal CapabilityRange where
  pFromJSVal = CapabilityRange
  {-# INLINE pFromJSVal #-}

instance ToJSVal CapabilityRange where
  toJSVal = return . unCapabilityRange
  {-# INLINE toJSVal #-}

instance FromJSVal CapabilityRange where
  fromJSVal v = fmap CapabilityRange <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CapabilityRange where
  makeObject = makeObject . unCapabilityRange

instance IsGObject CapabilityRange where
  typeGType _ = gTypeCapabilityRange
  {-# INLINE typeGType #-}

gTypeCapabilityRange :: JSM GType
gTypeCapabilityRange = GType . Object <$> jsg "CapabilityRange"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ChannelMergerNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChannelMergerNode Mozilla ChannelMergerNode documentation>
newtype ChannelMergerNode = ChannelMergerNode { unChannelMergerNode :: JSVal }

instance PToJSVal ChannelMergerNode where
  pToJSVal = unChannelMergerNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ChannelMergerNode where
  pFromJSVal = ChannelMergerNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ChannelMergerNode where
  toJSVal = return . unChannelMergerNode
  {-# INLINE toJSVal #-}

instance FromJSVal ChannelMergerNode where
  fromJSVal v = fmap ChannelMergerNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ChannelMergerNode where
  makeObject = makeObject . unChannelMergerNode

instance IsAudioNode ChannelMergerNode
instance IsEventTarget ChannelMergerNode
instance IsGObject ChannelMergerNode where
  typeGType _ = gTypeChannelMergerNode
  {-# INLINE typeGType #-}

gTypeChannelMergerNode :: JSM GType
gTypeChannelMergerNode = GType . Object <$> jsg "ChannelMergerNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ChannelSplitterNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChannelSplitterNode Mozilla ChannelSplitterNode documentation>
newtype ChannelSplitterNode = ChannelSplitterNode { unChannelSplitterNode :: JSVal }

instance PToJSVal ChannelSplitterNode where
  pToJSVal = unChannelSplitterNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ChannelSplitterNode where
  pFromJSVal = ChannelSplitterNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ChannelSplitterNode where
  toJSVal = return . unChannelSplitterNode
  {-# INLINE toJSVal #-}

instance FromJSVal ChannelSplitterNode where
  fromJSVal v = fmap ChannelSplitterNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ChannelSplitterNode where
  makeObject = makeObject . unChannelSplitterNode

instance IsAudioNode ChannelSplitterNode
instance IsEventTarget ChannelSplitterNode
instance IsGObject ChannelSplitterNode where
  typeGType _ = gTypeChannelSplitterNode
  {-# INLINE typeGType #-}

gTypeChannelSplitterNode :: JSM GType
gTypeChannelSplitterNode = GType . Object <$> jsg "ChannelSplitterNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CharacterData".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData Mozilla CharacterData documentation>
newtype CharacterData = CharacterData { unCharacterData :: JSVal }

instance PToJSVal CharacterData where
  pToJSVal = unCharacterData
  {-# INLINE pToJSVal #-}

instance PFromJSVal CharacterData where
  pFromJSVal = CharacterData
  {-# INLINE pFromJSVal #-}

instance ToJSVal CharacterData where
  toJSVal = return . unCharacterData
  {-# INLINE toJSVal #-}

instance FromJSVal CharacterData where
  fromJSVal v = fmap CharacterData <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CharacterData where
  makeObject = makeObject . unCharacterData

class IsNode o => IsCharacterData o
toCharacterData :: IsCharacterData o => o -> CharacterData
toCharacterData = CharacterData . coerce

instance IsCharacterData CharacterData
instance IsNode CharacterData
instance IsEventTarget CharacterData
instance IsGObject CharacterData where
  typeGType _ = gTypeCharacterData
  {-# INLINE typeGType #-}

gTypeCharacterData :: JSM GType
gTypeCharacterData = GType . Object <$> jsg "CharacterData"
#else
type IsCharacterData o = CharacterDataClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ChildNode".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode Mozilla ChildNode documentation>
newtype ChildNode = ChildNode { unChildNode :: JSVal }

instance PToJSVal ChildNode where
  pToJSVal = unChildNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ChildNode where
  pFromJSVal = ChildNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ChildNode where
  toJSVal = return . unChildNode
  {-# INLINE toJSVal #-}

instance FromJSVal ChildNode where
  fromJSVal v = fmap ChildNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ChildNode where
  makeObject = makeObject . unChildNode

instance IsGObject ChildNode where
  typeGType _ = gTypeChildNode
  {-# INLINE typeGType #-}

gTypeChildNode :: JSM GType
gTypeChildNode = GType . Object <$> jsg "ChildNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ClientRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect Mozilla ClientRect documentation>
newtype ClientRect = ClientRect { unClientRect :: JSVal }

instance PToJSVal ClientRect where
  pToJSVal = unClientRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal ClientRect where
  pFromJSVal = ClientRect
  {-# INLINE pFromJSVal #-}

instance ToJSVal ClientRect where
  toJSVal = return . unClientRect
  {-# INLINE toJSVal #-}

instance FromJSVal ClientRect where
  fromJSVal v = fmap ClientRect <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ClientRect where
  makeObject = makeObject . unClientRect

instance IsGObject ClientRect where
  typeGType _ = gTypeClientRect
  {-# INLINE typeGType #-}

gTypeClientRect :: JSM GType
gTypeClientRect = GType . Object <$> jsg "ClientRect"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ClientRectList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList Mozilla ClientRectList documentation>
newtype ClientRectList = ClientRectList { unClientRectList :: JSVal }

instance PToJSVal ClientRectList where
  pToJSVal = unClientRectList
  {-# INLINE pToJSVal #-}

instance PFromJSVal ClientRectList where
  pFromJSVal = ClientRectList
  {-# INLINE pFromJSVal #-}

instance ToJSVal ClientRectList where
  toJSVal = return . unClientRectList
  {-# INLINE toJSVal #-}

instance FromJSVal ClientRectList where
  fromJSVal v = fmap ClientRectList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ClientRectList where
  makeObject = makeObject . unClientRectList

instance IsGObject ClientRectList where
  typeGType _ = gTypeClientRectList
  {-# INLINE typeGType #-}

gTypeClientRectList :: JSM GType
gTypeClientRectList = GType . Object <$> jsg "ClientRectList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CloseEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent Mozilla CloseEvent documentation>
newtype CloseEvent = CloseEvent { unCloseEvent :: JSVal }

instance PToJSVal CloseEvent where
  pToJSVal = unCloseEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CloseEvent where
  pFromJSVal = CloseEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CloseEvent where
  toJSVal = return . unCloseEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CloseEvent where
  fromJSVal v = fmap CloseEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CloseEvent where
  makeObject = makeObject . unCloseEvent

instance IsEvent CloseEvent
instance IsGObject CloseEvent where
  typeGType _ = gTypeCloseEvent
  {-# INLINE typeGType #-}

gTypeCloseEvent :: JSM GType
gTypeCloseEvent = GType . Object <$> jsg "CloseEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CommandLineAPIHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost Mozilla CommandLineAPIHost documentation>
newtype CommandLineAPIHost = CommandLineAPIHost { unCommandLineAPIHost :: JSVal }

instance PToJSVal CommandLineAPIHost where
  pToJSVal = unCommandLineAPIHost
  {-# INLINE pToJSVal #-}

instance PFromJSVal CommandLineAPIHost where
  pFromJSVal = CommandLineAPIHost
  {-# INLINE pFromJSVal #-}

instance ToJSVal CommandLineAPIHost where
  toJSVal = return . unCommandLineAPIHost
  {-# INLINE toJSVal #-}

instance FromJSVal CommandLineAPIHost where
  fromJSVal v = fmap CommandLineAPIHost <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CommandLineAPIHost where
  makeObject = makeObject . unCommandLineAPIHost

instance IsGObject CommandLineAPIHost where
  typeGType _ = gTypeCommandLineAPIHost
  {-# INLINE typeGType #-}

gTypeCommandLineAPIHost :: JSM GType
gTypeCommandLineAPIHost = GType . Object <$> jsg "CommandLineAPIHost"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Comment".
-- Base interface functions are in:
--
--     * "JSDOM.CharacterData"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Comment Mozilla Comment documentation>
newtype Comment = Comment { unComment :: JSVal }

instance PToJSVal Comment where
  pToJSVal = unComment
  {-# INLINE pToJSVal #-}

instance PFromJSVal Comment where
  pFromJSVal = Comment
  {-# INLINE pFromJSVal #-}

instance ToJSVal Comment where
  toJSVal = return . unComment
  {-# INLINE toJSVal #-}

instance FromJSVal Comment where
  fromJSVal v = fmap Comment <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Comment where
  makeObject = makeObject . unComment

instance IsCharacterData Comment
instance IsNode Comment
instance IsEventTarget Comment
instance IsGObject Comment where
  typeGType _ = gTypeComment
  {-# INLINE typeGType #-}

gTypeComment :: JSM GType
gTypeComment = GType . Object <$> jsg "Comment"
#else
type IsComment o = CommentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CompositionEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent Mozilla CompositionEvent documentation>
newtype CompositionEvent = CompositionEvent { unCompositionEvent :: JSVal }

instance PToJSVal CompositionEvent where
  pToJSVal = unCompositionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CompositionEvent where
  pFromJSVal = CompositionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CompositionEvent where
  toJSVal = return . unCompositionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CompositionEvent where
  fromJSVal v = fmap CompositionEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CompositionEvent where
  makeObject = makeObject . unCompositionEvent

instance IsUIEvent CompositionEvent
instance IsEvent CompositionEvent
instance IsGObject CompositionEvent where
  typeGType _ = gTypeCompositionEvent
  {-# INLINE typeGType #-}

gTypeCompositionEvent :: JSM GType
gTypeCompositionEvent = GType . Object <$> jsg "CompositionEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ConvolverNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode Mozilla ConvolverNode documentation>
newtype ConvolverNode = ConvolverNode { unConvolverNode :: JSVal }

instance PToJSVal ConvolverNode where
  pToJSVal = unConvolverNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ConvolverNode where
  pFromJSVal = ConvolverNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ConvolverNode where
  toJSVal = return . unConvolverNode
  {-# INLINE toJSVal #-}

instance FromJSVal ConvolverNode where
  fromJSVal v = fmap ConvolverNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ConvolverNode where
  makeObject = makeObject . unConvolverNode

instance IsAudioNode ConvolverNode
instance IsEventTarget ConvolverNode
instance IsGObject ConvolverNode where
  typeGType _ = gTypeConvolverNode
  {-# INLINE typeGType #-}

gTypeConvolverNode :: JSM GType
gTypeConvolverNode = GType . Object <$> jsg "ConvolverNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Coordinates".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates Mozilla Coordinates documentation>
newtype Coordinates = Coordinates { unCoordinates :: JSVal }

instance PToJSVal Coordinates where
  pToJSVal = unCoordinates
  {-# INLINE pToJSVal #-}

instance PFromJSVal Coordinates where
  pFromJSVal = Coordinates
  {-# INLINE pFromJSVal #-}

instance ToJSVal Coordinates where
  toJSVal = return . unCoordinates
  {-# INLINE toJSVal #-}

instance FromJSVal Coordinates where
  fromJSVal v = fmap Coordinates <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Coordinates where
  makeObject = makeObject . unCoordinates

instance IsGObject Coordinates where
  typeGType _ = gTypeCoordinates
  {-# INLINE typeGType #-}

gTypeCoordinates :: JSM GType
gTypeCoordinates = GType . Object <$> jsg "Coordinates"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Counter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Counter Mozilla Counter documentation>
newtype Counter = Counter { unCounter :: JSVal }

instance PToJSVal Counter where
  pToJSVal = unCounter
  {-# INLINE pToJSVal #-}

instance PFromJSVal Counter where
  pFromJSVal = Counter
  {-# INLINE pFromJSVal #-}

instance ToJSVal Counter where
  toJSVal = return . unCounter
  {-# INLINE toJSVal #-}

instance FromJSVal Counter where
  fromJSVal v = fmap Counter <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Counter where
  makeObject = makeObject . unCounter

instance IsGObject Counter where
  typeGType _ = gTypeCounter
  {-# INLINE typeGType #-}

gTypeCounter :: JSM GType
gTypeCounter = GType . Object <$> jsg "Counter"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Crypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Crypto Mozilla Crypto documentation>
newtype Crypto = Crypto { unCrypto :: JSVal }

instance PToJSVal Crypto where
  pToJSVal = unCrypto
  {-# INLINE pToJSVal #-}

instance PFromJSVal Crypto where
  pFromJSVal = Crypto
  {-# INLINE pFromJSVal #-}

instance ToJSVal Crypto where
  toJSVal = return . unCrypto
  {-# INLINE toJSVal #-}

instance FromJSVal Crypto where
  fromJSVal v = fmap Crypto <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Crypto where
  makeObject = makeObject . unCrypto

instance IsGObject Crypto where
  typeGType _ = gTypeCrypto
  {-# INLINE typeGType #-}

gTypeCrypto :: JSM GType
gTypeCrypto = GType . Object <$> jsg "Crypto"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CryptoKey".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey Mozilla CryptoKey documentation>
newtype CryptoKey = CryptoKey { unCryptoKey :: JSVal }

instance PToJSVal CryptoKey where
  pToJSVal = unCryptoKey
  {-# INLINE pToJSVal #-}

instance PFromJSVal CryptoKey where
  pFromJSVal = CryptoKey
  {-# INLINE pFromJSVal #-}

instance ToJSVal CryptoKey where
  toJSVal = return . unCryptoKey
  {-# INLINE toJSVal #-}

instance FromJSVal CryptoKey where
  fromJSVal v = fmap CryptoKey <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CryptoKey where
  makeObject = makeObject . unCryptoKey

instance IsGObject CryptoKey where
  typeGType _ = gTypeCryptoKey
  {-# INLINE typeGType #-}

gTypeCryptoKey :: JSM GType
gTypeCryptoKey = GType . Object <$> jsg "CryptoKey"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CryptoKeyPair".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair Mozilla CryptoKeyPair documentation>
newtype CryptoKeyPair = CryptoKeyPair { unCryptoKeyPair :: JSVal }

instance PToJSVal CryptoKeyPair where
  pToJSVal = unCryptoKeyPair
  {-# INLINE pToJSVal #-}

instance PFromJSVal CryptoKeyPair where
  pFromJSVal = CryptoKeyPair
  {-# INLINE pFromJSVal #-}

instance ToJSVal CryptoKeyPair where
  toJSVal = return . unCryptoKeyPair
  {-# INLINE toJSVal #-}

instance FromJSVal CryptoKeyPair where
  fromJSVal v = fmap CryptoKeyPair <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CryptoKeyPair where
  makeObject = makeObject . unCryptoKeyPair

instance IsGObject CryptoKeyPair where
  typeGType _ = gTypeCryptoKeyPair
  {-# INLINE typeGType #-}

gTypeCryptoKeyPair :: JSM GType
gTypeCryptoKeyPair = GType . Object <$> jsg "CryptoKeyPair"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.CustomEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent Mozilla CustomEvent documentation>
newtype CustomEvent = CustomEvent { unCustomEvent :: JSVal }

instance PToJSVal CustomEvent where
  pToJSVal = unCustomEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CustomEvent where
  pFromJSVal = CustomEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CustomEvent where
  toJSVal = return . unCustomEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CustomEvent where
  fromJSVal v = fmap CustomEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject CustomEvent where
  makeObject = makeObject . unCustomEvent

instance IsEvent CustomEvent
instance IsGObject CustomEvent where
  typeGType _ = gTypeCustomEvent
  {-# INLINE typeGType #-}

gTypeCustomEvent :: JSM GType
gTypeCustomEvent = GType . Object <$> jsg "CustomEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMError Mozilla DOMError documentation>
newtype DOMError = DOMError { unDOMError :: JSVal }

instance PToJSVal DOMError where
  pToJSVal = unDOMError
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMError where
  pFromJSVal = DOMError
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMError where
  toJSVal = return . unDOMError
  {-# INLINE toJSVal #-}

instance FromJSVal DOMError where
  fromJSVal v = fmap DOMError <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMError where
  makeObject = makeObject . unDOMError

class IsGObject o => IsDOMError o
toDOMError :: IsDOMError o => o -> DOMError
toDOMError = DOMError . coerce

instance IsDOMError DOMError
instance IsGObject DOMError where
  typeGType _ = gTypeDOMError
  {-# INLINE typeGType #-}

gTypeDOMError :: JSM GType
gTypeDOMError = GType . Object <$> jsg "DOMError"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMImplementation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation Mozilla DOMImplementation documentation>
newtype DOMImplementation = DOMImplementation { unDOMImplementation :: JSVal }

instance PToJSVal DOMImplementation where
  pToJSVal = unDOMImplementation
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMImplementation where
  pFromJSVal = DOMImplementation
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMImplementation where
  toJSVal = return . unDOMImplementation
  {-# INLINE toJSVal #-}

instance FromJSVal DOMImplementation where
  fromJSVal v = fmap DOMImplementation <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMImplementation where
  makeObject = makeObject . unDOMImplementation

instance IsGObject DOMImplementation where
  typeGType _ = gTypeDOMImplementation
  {-# INLINE typeGType #-}

gTypeDOMImplementation :: JSM GType
gTypeDOMImplementation = GType . Object <$> jsg "DOMImplementation"
#else
type IsDOMImplementation o = DOMImplementationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMNamedFlowCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection Mozilla WebKitNamedFlowCollection documentation>
newtype DOMNamedFlowCollection = DOMNamedFlowCollection { unDOMNamedFlowCollection :: JSVal }

instance PToJSVal DOMNamedFlowCollection where
  pToJSVal = unDOMNamedFlowCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMNamedFlowCollection where
  pFromJSVal = DOMNamedFlowCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMNamedFlowCollection where
  toJSVal = return . unDOMNamedFlowCollection
  {-# INLINE toJSVal #-}

instance FromJSVal DOMNamedFlowCollection where
  fromJSVal v = fmap DOMNamedFlowCollection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMNamedFlowCollection where
  makeObject = makeObject . unDOMNamedFlowCollection

instance IsGObject DOMNamedFlowCollection where
  typeGType _ = gTypeDOMNamedFlowCollection
  {-# INLINE typeGType #-}

gTypeDOMNamedFlowCollection :: JSM GType
gTypeDOMNamedFlowCollection = GType . Object <$> jsg "WebKitNamedFlowCollection"
#else
#ifndef USE_OLD_WEBKIT
type IsDOMNamedFlowCollection o = DOMNamedFlowCollectionClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMParser".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser Mozilla DOMParser documentation>
newtype DOMParser = DOMParser { unDOMParser :: JSVal }

instance PToJSVal DOMParser where
  pToJSVal = unDOMParser
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMParser where
  pFromJSVal = DOMParser
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMParser where
  toJSVal = return . unDOMParser
  {-# INLINE toJSVal #-}

instance FromJSVal DOMParser where
  fromJSVal v = fmap DOMParser <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMParser where
  makeObject = makeObject . unDOMParser

instance IsGObject DOMParser where
  typeGType _ = gTypeDOMParser
  {-# INLINE typeGType #-}

gTypeDOMParser :: JSM GType
gTypeDOMParser = GType . Object <$> jsg "DOMParser"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMSettableTokenList".
-- Base interface functions are in:
--
--     * "JSDOM.DOMTokenList"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList Mozilla DOMSettableTokenList documentation>
newtype DOMSettableTokenList = DOMSettableTokenList { unDOMSettableTokenList :: JSVal }

instance PToJSVal DOMSettableTokenList where
  pToJSVal = unDOMSettableTokenList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMSettableTokenList where
  pFromJSVal = DOMSettableTokenList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMSettableTokenList where
  toJSVal = return . unDOMSettableTokenList
  {-# INLINE toJSVal #-}

instance FromJSVal DOMSettableTokenList where
  fromJSVal v = fmap DOMSettableTokenList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMSettableTokenList where
  makeObject = makeObject . unDOMSettableTokenList

instance IsDOMTokenList DOMSettableTokenList
instance IsGObject DOMSettableTokenList where
  typeGType _ = gTypeDOMSettableTokenList
  {-# INLINE typeGType #-}

gTypeDOMSettableTokenList :: JSM GType
gTypeDOMSettableTokenList = GType . Object <$> jsg "DOMSettableTokenList"
#else
type IsDOMSettableTokenList o = DOMSettableTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMStringList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList Mozilla DOMStringList documentation>
newtype DOMStringList = DOMStringList { unDOMStringList :: JSVal }

instance PToJSVal DOMStringList where
  pToJSVal = unDOMStringList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMStringList where
  pFromJSVal = DOMStringList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMStringList where
  toJSVal = return . unDOMStringList
  {-# INLINE toJSVal #-}

instance FromJSVal DOMStringList where
  fromJSVal v = fmap DOMStringList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMStringList where
  makeObject = makeObject . unDOMStringList

instance IsGObject DOMStringList where
  typeGType _ = gTypeDOMStringList
  {-# INLINE typeGType #-}

gTypeDOMStringList :: JSM GType
gTypeDOMStringList = GType . Object <$> jsg "DOMStringList"
#else
type IsDOMStringList o = DOMStringListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMStringMap".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap Mozilla DOMStringMap documentation>
newtype DOMStringMap = DOMStringMap { unDOMStringMap :: JSVal }

instance PToJSVal DOMStringMap where
  pToJSVal = unDOMStringMap
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMStringMap where
  pFromJSVal = DOMStringMap
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMStringMap where
  toJSVal = return . unDOMStringMap
  {-# INLINE toJSVal #-}

instance FromJSVal DOMStringMap where
  fromJSVal v = fmap DOMStringMap <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMStringMap where
  makeObject = makeObject . unDOMStringMap

instance IsGObject DOMStringMap where
  typeGType _ = gTypeDOMStringMap
  {-# INLINE typeGType #-}

gTypeDOMStringMap :: JSM GType
gTypeDOMStringMap = GType . Object <$> jsg "DOMStringMap"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DOMTokenList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList Mozilla DOMTokenList documentation>
newtype DOMTokenList = DOMTokenList { unDOMTokenList :: JSVal }

instance PToJSVal DOMTokenList where
  pToJSVal = unDOMTokenList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMTokenList where
  pFromJSVal = DOMTokenList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMTokenList where
  toJSVal = return . unDOMTokenList
  {-# INLINE toJSVal #-}

instance FromJSVal DOMTokenList where
  fromJSVal v = fmap DOMTokenList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DOMTokenList where
  makeObject = makeObject . unDOMTokenList

class IsGObject o => IsDOMTokenList o
toDOMTokenList :: IsDOMTokenList o => o -> DOMTokenList
toDOMTokenList = DOMTokenList . coerce

instance IsDOMTokenList DOMTokenList
instance IsGObject DOMTokenList where
  typeGType _ = gTypeDOMTokenList
  {-# INLINE typeGType #-}

gTypeDOMTokenList :: JSM GType
gTypeDOMTokenList = GType . Object <$> jsg "DOMTokenList"
#else
type IsDOMTokenList o = DOMTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DataCue".
-- Base interface functions are in:
--
--     * "JSDOM.TextTrackCue"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation>
newtype DataCue = DataCue { unDataCue :: JSVal }

instance PToJSVal DataCue where
  pToJSVal = unDataCue
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataCue where
  pFromJSVal = DataCue
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataCue where
  toJSVal = return . unDataCue
  {-# INLINE toJSVal #-}

instance FromJSVal DataCue where
  fromJSVal v = fmap DataCue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DataCue where
  makeObject = makeObject . unDataCue

instance IsTextTrackCue DataCue
instance IsEventTarget DataCue
instance IsGObject DataCue where
  typeGType _ = gTypeDataCue
  {-# INLINE typeGType #-}

gTypeDataCue :: JSM GType
gTypeDataCue = GType . Object <$> jsg "WebKitDataCue"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DataTransfer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer Mozilla DataTransfer documentation>
newtype DataTransfer = DataTransfer { unDataTransfer :: JSVal }

instance PToJSVal DataTransfer where
  pToJSVal = unDataTransfer
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataTransfer where
  pFromJSVal = DataTransfer
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataTransfer where
  toJSVal = return . unDataTransfer
  {-# INLINE toJSVal #-}

instance FromJSVal DataTransfer where
  fromJSVal v = fmap DataTransfer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DataTransfer where
  makeObject = makeObject . unDataTransfer

instance IsGObject DataTransfer where
  typeGType _ = gTypeDataTransfer
  {-# INLINE typeGType #-}

gTypeDataTransfer :: JSM GType
gTypeDataTransfer = GType . Object <$> jsg "DataTransfer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DataTransferItem".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem Mozilla DataTransferItem documentation>
newtype DataTransferItem = DataTransferItem { unDataTransferItem :: JSVal }

instance PToJSVal DataTransferItem where
  pToJSVal = unDataTransferItem
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataTransferItem where
  pFromJSVal = DataTransferItem
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataTransferItem where
  toJSVal = return . unDataTransferItem
  {-# INLINE toJSVal #-}

instance FromJSVal DataTransferItem where
  fromJSVal v = fmap DataTransferItem <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DataTransferItem where
  makeObject = makeObject . unDataTransferItem

instance IsGObject DataTransferItem where
  typeGType _ = gTypeDataTransferItem
  {-# INLINE typeGType #-}

gTypeDataTransferItem :: JSM GType
gTypeDataTransferItem = GType . Object <$> jsg "DataTransferItem"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DataTransferItemList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList Mozilla DataTransferItemList documentation>
newtype DataTransferItemList = DataTransferItemList { unDataTransferItemList :: JSVal }

instance PToJSVal DataTransferItemList where
  pToJSVal = unDataTransferItemList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataTransferItemList where
  pFromJSVal = DataTransferItemList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataTransferItemList where
  toJSVal = return . unDataTransferItemList
  {-# INLINE toJSVal #-}

instance FromJSVal DataTransferItemList where
  fromJSVal v = fmap DataTransferItemList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DataTransferItemList where
  makeObject = makeObject . unDataTransferItemList

instance IsGObject DataTransferItemList where
  typeGType _ = gTypeDataTransferItemList
  {-# INLINE typeGType #-}

gTypeDataTransferItemList :: JSM GType
gTypeDataTransferItemList = GType . Object <$> jsg "DataTransferItemList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Database".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Database Mozilla Database documentation>
newtype Database = Database { unDatabase :: JSVal }

instance PToJSVal Database where
  pToJSVal = unDatabase
  {-# INLINE pToJSVal #-}

instance PFromJSVal Database where
  pFromJSVal = Database
  {-# INLINE pFromJSVal #-}

instance ToJSVal Database where
  toJSVal = return . unDatabase
  {-# INLINE toJSVal #-}

instance FromJSVal Database where
  fromJSVal v = fmap Database <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Database where
  makeObject = makeObject . unDatabase

instance IsGObject Database where
  typeGType _ = gTypeDatabase
  {-# INLINE typeGType #-}

gTypeDatabase :: JSM GType
gTypeDatabase = GType . Object <$> jsg "Database"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DedicatedWorkerGlobalScope".
-- Base interface functions are in:
--
--     * "JSDOM.WorkerGlobalScope"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope Mozilla DedicatedWorkerGlobalScope documentation>
newtype DedicatedWorkerGlobalScope = DedicatedWorkerGlobalScope { unDedicatedWorkerGlobalScope :: JSVal }

instance PToJSVal DedicatedWorkerGlobalScope where
  pToJSVal = unDedicatedWorkerGlobalScope
  {-# INLINE pToJSVal #-}

instance PFromJSVal DedicatedWorkerGlobalScope where
  pFromJSVal = DedicatedWorkerGlobalScope
  {-# INLINE pFromJSVal #-}

instance ToJSVal DedicatedWorkerGlobalScope where
  toJSVal = return . unDedicatedWorkerGlobalScope
  {-# INLINE toJSVal #-}

instance FromJSVal DedicatedWorkerGlobalScope where
  fromJSVal v = fmap DedicatedWorkerGlobalScope <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DedicatedWorkerGlobalScope where
  makeObject = makeObject . unDedicatedWorkerGlobalScope

instance IsWorkerGlobalScope DedicatedWorkerGlobalScope
instance IsEventTarget DedicatedWorkerGlobalScope
instance IsGObject DedicatedWorkerGlobalScope where
  typeGType _ = gTypeDedicatedWorkerGlobalScope
  {-# INLINE typeGType #-}

gTypeDedicatedWorkerGlobalScope :: JSM GType
gTypeDedicatedWorkerGlobalScope = GType . Object <$> jsg "DedicatedWorkerGlobalScope"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DelayNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode Mozilla DelayNode documentation>
newtype DelayNode = DelayNode { unDelayNode :: JSVal }

instance PToJSVal DelayNode where
  pToJSVal = unDelayNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal DelayNode where
  pFromJSVal = DelayNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal DelayNode where
  toJSVal = return . unDelayNode
  {-# INLINE toJSVal #-}

instance FromJSVal DelayNode where
  fromJSVal v = fmap DelayNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DelayNode where
  makeObject = makeObject . unDelayNode

instance IsAudioNode DelayNode
instance IsEventTarget DelayNode
instance IsGObject DelayNode where
  typeGType _ = gTypeDelayNode
  {-# INLINE typeGType #-}

gTypeDelayNode :: JSM GType
gTypeDelayNode = GType . Object <$> jsg "DelayNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DeviceMotionEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent Mozilla DeviceMotionEvent documentation>
newtype DeviceMotionEvent = DeviceMotionEvent { unDeviceMotionEvent :: JSVal }

instance PToJSVal DeviceMotionEvent where
  pToJSVal = unDeviceMotionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal DeviceMotionEvent where
  pFromJSVal = DeviceMotionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal DeviceMotionEvent where
  toJSVal = return . unDeviceMotionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal DeviceMotionEvent where
  fromJSVal v = fmap DeviceMotionEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DeviceMotionEvent where
  makeObject = makeObject . unDeviceMotionEvent

instance IsEvent DeviceMotionEvent
instance IsGObject DeviceMotionEvent where
  typeGType _ = gTypeDeviceMotionEvent
  {-# INLINE typeGType #-}

gTypeDeviceMotionEvent :: JSM GType
gTypeDeviceMotionEvent = GType . Object <$> jsg "DeviceMotionEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DeviceOrientationEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent Mozilla DeviceOrientationEvent documentation>
newtype DeviceOrientationEvent = DeviceOrientationEvent { unDeviceOrientationEvent :: JSVal }

instance PToJSVal DeviceOrientationEvent where
  pToJSVal = unDeviceOrientationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal DeviceOrientationEvent where
  pFromJSVal = DeviceOrientationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal DeviceOrientationEvent where
  toJSVal = return . unDeviceOrientationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal DeviceOrientationEvent where
  fromJSVal v = fmap DeviceOrientationEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DeviceOrientationEvent where
  makeObject = makeObject . unDeviceOrientationEvent

instance IsEvent DeviceOrientationEvent
instance IsGObject DeviceOrientationEvent where
  typeGType _ = gTypeDeviceOrientationEvent
  {-# INLINE typeGType #-}

gTypeDeviceOrientationEvent :: JSM GType
gTypeDeviceOrientationEvent = GType . Object <$> jsg "DeviceOrientationEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DeviceProximityEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent Mozilla DeviceProximityEvent documentation>
newtype DeviceProximityEvent = DeviceProximityEvent { unDeviceProximityEvent :: JSVal }

instance PToJSVal DeviceProximityEvent where
  pToJSVal = unDeviceProximityEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal DeviceProximityEvent where
  pFromJSVal = DeviceProximityEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal DeviceProximityEvent where
  toJSVal = return . unDeviceProximityEvent
  {-# INLINE toJSVal #-}

instance FromJSVal DeviceProximityEvent where
  fromJSVal v = fmap DeviceProximityEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DeviceProximityEvent where
  makeObject = makeObject . unDeviceProximityEvent

instance IsEvent DeviceProximityEvent
instance IsGObject DeviceProximityEvent where
  typeGType _ = gTypeDeviceProximityEvent
  {-# INLINE typeGType #-}

gTypeDeviceProximityEvent :: JSM GType
gTypeDeviceProximityEvent = GType . Object <$> jsg "DeviceProximityEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Document".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation>
newtype Document = Document { unDocument :: JSVal }

instance PToJSVal Document where
  pToJSVal = unDocument
  {-# INLINE pToJSVal #-}

instance PFromJSVal Document where
  pFromJSVal = Document
  {-# INLINE pFromJSVal #-}

instance ToJSVal Document where
  toJSVal = return . unDocument
  {-# INLINE toJSVal #-}

instance FromJSVal Document where
  fromJSVal v = fmap Document <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Document where
  makeObject = makeObject . unDocument

class IsNode o => IsDocument o
toDocument :: IsDocument o => o -> Document
toDocument = Document . coerce

instance IsDocument Document
instance IsNode Document
instance IsEventTarget Document
instance IsGObject Document where
  typeGType _ = gTypeDocument
  {-# INLINE typeGType #-}

gTypeDocument :: JSM GType
gTypeDocument = GType . Object <$> jsg "Document"
#else
type IsDocument o = DocumentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DocumentFragment".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation>
newtype DocumentFragment = DocumentFragment { unDocumentFragment :: JSVal }

instance PToJSVal DocumentFragment where
  pToJSVal = unDocumentFragment
  {-# INLINE pToJSVal #-}

instance PFromJSVal DocumentFragment where
  pFromJSVal = DocumentFragment
  {-# INLINE pFromJSVal #-}

instance ToJSVal DocumentFragment where
  toJSVal = return . unDocumentFragment
  {-# INLINE toJSVal #-}

instance FromJSVal DocumentFragment where
  fromJSVal v = fmap DocumentFragment <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DocumentFragment where
  makeObject = makeObject . unDocumentFragment

instance IsNode DocumentFragment
instance IsEventTarget DocumentFragment
instance IsGObject DocumentFragment where
  typeGType _ = gTypeDocumentFragment
  {-# INLINE typeGType #-}

gTypeDocumentFragment :: JSM GType
gTypeDocumentFragment = GType . Object <$> jsg "DocumentFragment"
#else
type IsDocumentFragment o = DocumentFragmentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DocumentType".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType Mozilla DocumentType documentation>
newtype DocumentType = DocumentType { unDocumentType :: JSVal }

instance PToJSVal DocumentType where
  pToJSVal = unDocumentType
  {-# INLINE pToJSVal #-}

instance PFromJSVal DocumentType where
  pFromJSVal = DocumentType
  {-# INLINE pFromJSVal #-}

instance ToJSVal DocumentType where
  toJSVal = return . unDocumentType
  {-# INLINE toJSVal #-}

instance FromJSVal DocumentType where
  fromJSVal v = fmap DocumentType <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DocumentType where
  makeObject = makeObject . unDocumentType

instance IsNode DocumentType
instance IsEventTarget DocumentType
instance IsGObject DocumentType where
  typeGType _ = gTypeDocumentType
  {-# INLINE typeGType #-}

gTypeDocumentType :: JSM GType
gTypeDocumentType = GType . Object <$> jsg "DocumentType"
#else
type IsDocumentType o = DocumentTypeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.DynamicsCompressorNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode Mozilla DynamicsCompressorNode documentation>
newtype DynamicsCompressorNode = DynamicsCompressorNode { unDynamicsCompressorNode :: JSVal }

instance PToJSVal DynamicsCompressorNode where
  pToJSVal = unDynamicsCompressorNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal DynamicsCompressorNode where
  pFromJSVal = DynamicsCompressorNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal DynamicsCompressorNode where
  toJSVal = return . unDynamicsCompressorNode
  {-# INLINE toJSVal #-}

instance FromJSVal DynamicsCompressorNode where
  fromJSVal v = fmap DynamicsCompressorNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject DynamicsCompressorNode where
  makeObject = makeObject . unDynamicsCompressorNode

instance IsAudioNode DynamicsCompressorNode
instance IsEventTarget DynamicsCompressorNode
instance IsGObject DynamicsCompressorNode where
  typeGType _ = gTypeDynamicsCompressorNode
  {-# INLINE typeGType #-}

gTypeDynamicsCompressorNode :: JSM GType
gTypeDynamicsCompressorNode = GType . Object <$> jsg "DynamicsCompressorNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EXTBlendMinMax".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTBlendMinMax Mozilla EXTBlendMinMax documentation>
newtype EXTBlendMinMax = EXTBlendMinMax { unEXTBlendMinMax :: JSVal }

instance PToJSVal EXTBlendMinMax where
  pToJSVal = unEXTBlendMinMax
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTBlendMinMax where
  pFromJSVal = EXTBlendMinMax
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTBlendMinMax where
  toJSVal = return . unEXTBlendMinMax
  {-# INLINE toJSVal #-}

instance FromJSVal EXTBlendMinMax where
  fromJSVal v = fmap EXTBlendMinMax <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EXTBlendMinMax where
  makeObject = makeObject . unEXTBlendMinMax

instance IsGObject EXTBlendMinMax where
  typeGType _ = gTypeEXTBlendMinMax
  {-# INLINE typeGType #-}

gTypeEXTBlendMinMax :: JSM GType
gTypeEXTBlendMinMax = GType . Object <$> jsg "EXTBlendMinMax"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EXTFragDepth".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTFragDepth Mozilla EXTFragDepth documentation>
newtype EXTFragDepth = EXTFragDepth { unEXTFragDepth :: JSVal }

instance PToJSVal EXTFragDepth where
  pToJSVal = unEXTFragDepth
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTFragDepth where
  pFromJSVal = EXTFragDepth
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTFragDepth where
  toJSVal = return . unEXTFragDepth
  {-# INLINE toJSVal #-}

instance FromJSVal EXTFragDepth where
  fromJSVal v = fmap EXTFragDepth <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EXTFragDepth where
  makeObject = makeObject . unEXTFragDepth

instance IsGObject EXTFragDepth where
  typeGType _ = gTypeEXTFragDepth
  {-# INLINE typeGType #-}

gTypeEXTFragDepth :: JSM GType
gTypeEXTFragDepth = GType . Object <$> jsg "EXTFragDepth"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EXTShaderTextureLOD".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTShaderTextureLOD Mozilla EXTShaderTextureLOD documentation>
newtype EXTShaderTextureLOD = EXTShaderTextureLOD { unEXTShaderTextureLOD :: JSVal }

instance PToJSVal EXTShaderTextureLOD where
  pToJSVal = unEXTShaderTextureLOD
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTShaderTextureLOD where
  pFromJSVal = EXTShaderTextureLOD
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTShaderTextureLOD where
  toJSVal = return . unEXTShaderTextureLOD
  {-# INLINE toJSVal #-}

instance FromJSVal EXTShaderTextureLOD where
  fromJSVal v = fmap EXTShaderTextureLOD <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EXTShaderTextureLOD where
  makeObject = makeObject . unEXTShaderTextureLOD

instance IsGObject EXTShaderTextureLOD where
  typeGType _ = gTypeEXTShaderTextureLOD
  {-# INLINE typeGType #-}

gTypeEXTShaderTextureLOD :: JSM GType
gTypeEXTShaderTextureLOD = GType . Object <$> jsg "EXTShaderTextureLOD"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EXTTextureFilterAnisotropic".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTTextureFilterAnisotropic Mozilla EXTTextureFilterAnisotropic documentation>
newtype EXTTextureFilterAnisotropic = EXTTextureFilterAnisotropic { unEXTTextureFilterAnisotropic :: JSVal }

instance PToJSVal EXTTextureFilterAnisotropic where
  pToJSVal = unEXTTextureFilterAnisotropic
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTTextureFilterAnisotropic where
  pFromJSVal = EXTTextureFilterAnisotropic
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTTextureFilterAnisotropic where
  toJSVal = return . unEXTTextureFilterAnisotropic
  {-# INLINE toJSVal #-}

instance FromJSVal EXTTextureFilterAnisotropic where
  fromJSVal v = fmap EXTTextureFilterAnisotropic <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EXTTextureFilterAnisotropic where
  makeObject = makeObject . unEXTTextureFilterAnisotropic

instance IsGObject EXTTextureFilterAnisotropic where
  typeGType _ = gTypeEXTTextureFilterAnisotropic
  {-# INLINE typeGType #-}

gTypeEXTTextureFilterAnisotropic :: JSM GType
gTypeEXTTextureFilterAnisotropic = GType . Object <$> jsg "EXTTextureFilterAnisotropic"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EXTsRGB".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTsRGB Mozilla EXTsRGB documentation>
newtype EXTsRGB = EXTsRGB { unEXTsRGB :: JSVal }

instance PToJSVal EXTsRGB where
  pToJSVal = unEXTsRGB
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTsRGB where
  pFromJSVal = EXTsRGB
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTsRGB where
  toJSVal = return . unEXTsRGB
  {-# INLINE toJSVal #-}

instance FromJSVal EXTsRGB where
  fromJSVal v = fmap EXTsRGB <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EXTsRGB where
  makeObject = makeObject . unEXTsRGB

instance IsGObject EXTsRGB where
  typeGType _ = gTypeEXTsRGB
  {-# INLINE typeGType #-}

gTypeEXTsRGB :: JSM GType
gTypeEXTsRGB = GType . Object <$> jsg "EXTsRGB"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Element".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Element Mozilla Element documentation>
newtype Element = Element { unElement :: JSVal }

instance PToJSVal Element where
  pToJSVal = unElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal Element where
  pFromJSVal = Element
  {-# INLINE pFromJSVal #-}

instance ToJSVal Element where
  toJSVal = return . unElement
  {-# INLINE toJSVal #-}

instance FromJSVal Element where
  fromJSVal v = fmap Element <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Element where
  makeObject = makeObject . unElement

class IsNode o => IsElement o
toElement :: IsElement o => o -> Element
toElement = Element . coerce

instance IsElement Element
instance IsNode Element
instance IsEventTarget Element
instance IsGObject Element where
  typeGType _ = gTypeElement
  {-# INLINE typeGType #-}

gTypeElement :: JSM GType
gTypeElement = GType . Object <$> jsg "Element"
#else
type IsElement o = ElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Entity".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Entity Mozilla Entity documentation>
newtype Entity = Entity { unEntity :: JSVal }

instance PToJSVal Entity where
  pToJSVal = unEntity
  {-# INLINE pToJSVal #-}

instance PFromJSVal Entity where
  pFromJSVal = Entity
  {-# INLINE pFromJSVal #-}

instance ToJSVal Entity where
  toJSVal = return . unEntity
  {-# INLINE toJSVal #-}

instance FromJSVal Entity where
  fromJSVal v = fmap Entity <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Entity where
  makeObject = makeObject . unEntity

instance IsNode Entity
instance IsEventTarget Entity
instance IsGObject Entity where
  typeGType _ = gTypeEntity
  {-# INLINE typeGType #-}

gTypeEntity :: JSM GType
gTypeEntity = GType . Object <$> jsg "Entity"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EntityReference".
-- Base interface functions are in:
--
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EntityReference Mozilla EntityReference documentation>
newtype EntityReference = EntityReference { unEntityReference :: JSVal }

instance PToJSVal EntityReference where
  pToJSVal = unEntityReference
  {-# INLINE pToJSVal #-}

instance PFromJSVal EntityReference where
  pFromJSVal = EntityReference
  {-# INLINE pFromJSVal #-}

instance ToJSVal EntityReference where
  toJSVal = return . unEntityReference
  {-# INLINE toJSVal #-}

instance FromJSVal EntityReference where
  fromJSVal v = fmap EntityReference <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EntityReference where
  makeObject = makeObject . unEntityReference

instance IsNode EntityReference
instance IsEventTarget EntityReference
instance IsGObject EntityReference where
  typeGType _ = gTypeEntityReference
  {-# INLINE typeGType #-}

gTypeEntityReference :: JSM GType
gTypeEntityReference = GType . Object <$> jsg "EntityReference"
#else
type IsEntityReference o = EntityReferenceClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ErrorEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent Mozilla ErrorEvent documentation>
newtype ErrorEvent = ErrorEvent { unErrorEvent :: JSVal }

instance PToJSVal ErrorEvent where
  pToJSVal = unErrorEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal ErrorEvent where
  pFromJSVal = ErrorEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal ErrorEvent where
  toJSVal = return . unErrorEvent
  {-# INLINE toJSVal #-}

instance FromJSVal ErrorEvent where
  fromJSVal v = fmap ErrorEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ErrorEvent where
  makeObject = makeObject . unErrorEvent

instance IsEvent ErrorEvent
instance IsGObject ErrorEvent where
  typeGType _ = gTypeErrorEvent
  {-# INLINE typeGType #-}

gTypeErrorEvent :: JSM GType
gTypeErrorEvent = GType . Object <$> jsg "ErrorEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Event".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Event Mozilla Event documentation>
newtype Event = Event { unEvent :: JSVal }

instance PToJSVal Event where
  pToJSVal = unEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal Event where
  pFromJSVal = Event
  {-# INLINE pFromJSVal #-}

instance ToJSVal Event where
  toJSVal = return . unEvent
  {-# INLINE toJSVal #-}

instance FromJSVal Event where
  fromJSVal v = fmap Event <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Event where
  makeObject = makeObject . unEvent

class IsGObject o => IsEvent o
toEvent :: IsEvent o => o -> Event
toEvent = Event . coerce

instance IsEvent Event
instance IsGObject Event where
  typeGType _ = gTypeEvent
  {-# INLINE typeGType #-}

gTypeEvent :: JSM GType
gTypeEvent = GType . Object <$> jsg "Event"
#else
type IsEvent o = EventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EventListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventListener Mozilla EventListener documentation>
newtype EventListener = EventListener { unEventListener :: JSVal }

instance PToJSVal EventListener where
  pToJSVal = unEventListener
  {-# INLINE pToJSVal #-}

instance PFromJSVal EventListener where
  pFromJSVal = EventListener
  {-# INLINE pFromJSVal #-}

instance ToJSVal EventListener where
  toJSVal = return . unEventListener
  {-# INLINE toJSVal #-}

instance FromJSVal EventListener where
  fromJSVal v = fmap EventListener <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EventListener where
  makeObject = makeObject . unEventListener

instance IsGObject EventListener where
  typeGType _ = gTypeEventListener
  {-# INLINE typeGType #-}

gTypeEventListener :: JSM GType
gTypeEventListener = GType . Object <$> jsg "EventListener"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EventSource".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation>
newtype EventSource = EventSource { unEventSource :: JSVal }

instance PToJSVal EventSource where
  pToJSVal = unEventSource
  {-# INLINE pToJSVal #-}

instance PFromJSVal EventSource where
  pFromJSVal = EventSource
  {-# INLINE pFromJSVal #-}

instance ToJSVal EventSource where
  toJSVal = return . unEventSource
  {-# INLINE toJSVal #-}

instance FromJSVal EventSource where
  fromJSVal v = fmap EventSource <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EventSource where
  makeObject = makeObject . unEventSource

instance IsEventTarget EventSource
instance IsGObject EventSource where
  typeGType _ = gTypeEventSource
  {-# INLINE typeGType #-}

gTypeEventSource :: JSM GType
gTypeEventSource = GType . Object <$> jsg "EventSource"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.EventTarget".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget Mozilla EventTarget documentation>
newtype EventTarget = EventTarget { unEventTarget :: JSVal }

instance PToJSVal EventTarget where
  pToJSVal = unEventTarget
  {-# INLINE pToJSVal #-}

instance PFromJSVal EventTarget where
  pFromJSVal = EventTarget
  {-# INLINE pFromJSVal #-}

instance ToJSVal EventTarget where
  toJSVal = return . unEventTarget
  {-# INLINE toJSVal #-}

instance FromJSVal EventTarget where
  fromJSVal v = fmap EventTarget <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject EventTarget where
  makeObject = makeObject . unEventTarget

class IsGObject o => IsEventTarget o
toEventTarget :: IsEventTarget o => o -> EventTarget
toEventTarget = EventTarget . coerce

instance IsEventTarget EventTarget
instance IsGObject EventTarget where
  typeGType _ = gTypeEventTarget
  {-# INLINE typeGType #-}

gTypeEventTarget :: JSM GType
gTypeEventTarget = GType . Object <$> jsg "EventTarget"
#else
type IsEventTarget o = EventTargetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.File".
-- Base interface functions are in:
--
--     * "JSDOM.Blob"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/File Mozilla File documentation>
newtype File = File { unFile :: JSVal }

instance PToJSVal File where
  pToJSVal = unFile
  {-# INLINE pToJSVal #-}

instance PFromJSVal File where
  pFromJSVal = File
  {-# INLINE pFromJSVal #-}

instance ToJSVal File where
  toJSVal = return . unFile
  {-# INLINE toJSVal #-}

instance FromJSVal File where
  fromJSVal v = fmap File <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject File where
  makeObject = makeObject . unFile

instance IsBlob File
instance IsGObject File where
  typeGType _ = gTypeFile
  {-# INLINE typeGType #-}

gTypeFile :: JSM GType
gTypeFile = GType . Object <$> jsg "File"
#else
type IsFile o = FileClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.FileError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileError Mozilla FileError documentation>
newtype FileError = FileError { unFileError :: JSVal }

instance PToJSVal FileError where
  pToJSVal = unFileError
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileError where
  pFromJSVal = FileError
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileError where
  toJSVal = return . unFileError
  {-# INLINE toJSVal #-}

instance FromJSVal FileError where
  fromJSVal v = fmap FileError <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject FileError where
  makeObject = makeObject . unFileError

instance IsGObject FileError where
  typeGType _ = gTypeFileError
  {-# INLINE typeGType #-}

gTypeFileError :: JSM GType
gTypeFileError = GType . Object <$> jsg "FileError"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.FileList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileList Mozilla FileList documentation>
newtype FileList = FileList { unFileList :: JSVal }

instance PToJSVal FileList where
  pToJSVal = unFileList
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileList where
  pFromJSVal = FileList
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileList where
  toJSVal = return . unFileList
  {-# INLINE toJSVal #-}

instance FromJSVal FileList where
  fromJSVal v = fmap FileList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject FileList where
  makeObject = makeObject . unFileList

instance IsGObject FileList where
  typeGType _ = gTypeFileList
  {-# INLINE typeGType #-}

gTypeFileList :: JSM GType
gTypeFileList = GType . Object <$> jsg "FileList"
#else
type IsFileList o = FileListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.FileReader".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileReader Mozilla FileReader documentation>
newtype FileReader = FileReader { unFileReader :: JSVal }

instance PToJSVal FileReader where
  pToJSVal = unFileReader
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileReader where
  pFromJSVal = FileReader
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileReader where
  toJSVal = return . unFileReader
  {-# INLINE toJSVal #-}

instance FromJSVal FileReader where
  fromJSVal v = fmap FileReader <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject FileReader where
  makeObject = makeObject . unFileReader

instance IsEventTarget FileReader
instance IsGObject FileReader where
  typeGType _ = gTypeFileReader
  {-# INLINE typeGType #-}

gTypeFileReader :: JSM GType
gTypeFileReader = GType . Object <$> jsg "FileReader"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.FileReaderSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation>
newtype FileReaderSync = FileReaderSync { unFileReaderSync :: JSVal }

instance PToJSVal FileReaderSync where
  pToJSVal = unFileReaderSync
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileReaderSync where
  pFromJSVal = FileReaderSync
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileReaderSync where
  toJSVal = return . unFileReaderSync
  {-# INLINE toJSVal #-}

instance FromJSVal FileReaderSync where
  fromJSVal v = fmap FileReaderSync <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject FileReaderSync where
  makeObject = makeObject . unFileReaderSync

instance IsGObject FileReaderSync where
  typeGType _ = gTypeFileReaderSync
  {-# INLINE typeGType #-}

gTypeFileReaderSync :: JSM GType
gTypeFileReaderSync = GType . Object <$> jsg "FileReaderSync"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.FocusEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent Mozilla FocusEvent documentation>
newtype FocusEvent = FocusEvent { unFocusEvent :: JSVal }

instance PToJSVal FocusEvent where
  pToJSVal = unFocusEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal FocusEvent where
  pFromJSVal = FocusEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal FocusEvent where
  toJSVal = return . unFocusEvent
  {-# INLINE toJSVal #-}

instance FromJSVal FocusEvent where
  fromJSVal v = fmap FocusEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject FocusEvent where
  makeObject = makeObject . unFocusEvent

instance IsUIEvent FocusEvent
instance IsEvent FocusEvent
instance IsGObject FocusEvent where
  typeGType _ = gTypeFocusEvent
  {-# INLINE typeGType #-}

gTypeFocusEvent :: JSM GType
gTypeFocusEvent = GType . Object <$> jsg "FocusEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.FontLoader".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader Mozilla FontLoader documentation>
newtype FontLoader = FontLoader { unFontLoader :: JSVal }

instance PToJSVal FontLoader where
  pToJSVal = unFontLoader
  {-# INLINE pToJSVal #-}

instance PFromJSVal FontLoader where
  pFromJSVal = FontLoader
  {-# INLINE pFromJSVal #-}

instance ToJSVal FontLoader where
  toJSVal = return . unFontLoader
  {-# INLINE toJSVal #-}

instance FromJSVal FontLoader where
  fromJSVal v = fmap FontLoader <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject FontLoader where
  makeObject = makeObject . unFontLoader

instance IsEventTarget FontLoader
instance IsGObject FontLoader where
  typeGType _ = gTypeFontLoader
  {-# INLINE typeGType #-}

gTypeFontLoader :: JSM GType
gTypeFontLoader = GType . Object <$> jsg "FontLoader"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.FormData".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation>
newtype FormData = FormData { unFormData :: JSVal }

instance PToJSVal FormData where
  pToJSVal = unFormData
  {-# INLINE pToJSVal #-}

instance PFromJSVal FormData where
  pFromJSVal = FormData
  {-# INLINE pFromJSVal #-}

instance ToJSVal FormData where
  toJSVal = return . unFormData
  {-# INLINE toJSVal #-}

instance FromJSVal FormData where
  fromJSVal v = fmap FormData <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject FormData where
  makeObject = makeObject . unFormData

instance IsGObject FormData where
  typeGType _ = gTypeFormData
  {-# INLINE typeGType #-}

gTypeFormData :: JSM GType
gTypeFormData = GType . Object <$> jsg "FormData"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.GainNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GainNode Mozilla GainNode documentation>
newtype GainNode = GainNode { unGainNode :: JSVal }

instance PToJSVal GainNode where
  pToJSVal = unGainNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal GainNode where
  pFromJSVal = GainNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal GainNode where
  toJSVal = return . unGainNode
  {-# INLINE toJSVal #-}

instance FromJSVal GainNode where
  fromJSVal v = fmap GainNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject GainNode where
  makeObject = makeObject . unGainNode

instance IsAudioNode GainNode
instance IsEventTarget GainNode
instance IsGObject GainNode where
  typeGType _ = gTypeGainNode
  {-# INLINE typeGType #-}

gTypeGainNode :: JSM GType
gTypeGainNode = GType . Object <$> jsg "GainNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Gamepad".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad Mozilla Gamepad documentation>
newtype Gamepad = Gamepad { unGamepad :: JSVal }

instance PToJSVal Gamepad where
  pToJSVal = unGamepad
  {-# INLINE pToJSVal #-}

instance PFromJSVal Gamepad where
  pFromJSVal = Gamepad
  {-# INLINE pFromJSVal #-}

instance ToJSVal Gamepad where
  toJSVal = return . unGamepad
  {-# INLINE toJSVal #-}

instance FromJSVal Gamepad where
  fromJSVal v = fmap Gamepad <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Gamepad where
  makeObject = makeObject . unGamepad

instance IsGObject Gamepad where
  typeGType _ = gTypeGamepad
  {-# INLINE typeGType #-}

gTypeGamepad :: JSM GType
gTypeGamepad = GType . Object <$> jsg "Gamepad"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.GamepadButton".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton Mozilla GamepadButton documentation>
newtype GamepadButton = GamepadButton { unGamepadButton :: JSVal }

instance PToJSVal GamepadButton where
  pToJSVal = unGamepadButton
  {-# INLINE pToJSVal #-}

instance PFromJSVal GamepadButton where
  pFromJSVal = GamepadButton
  {-# INLINE pFromJSVal #-}

instance ToJSVal GamepadButton where
  toJSVal = return . unGamepadButton
  {-# INLINE toJSVal #-}

instance FromJSVal GamepadButton where
  fromJSVal v = fmap GamepadButton <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject GamepadButton where
  makeObject = makeObject . unGamepadButton

instance IsGObject GamepadButton where
  typeGType _ = gTypeGamepadButton
  {-# INLINE typeGType #-}

gTypeGamepadButton :: JSM GType
gTypeGamepadButton = GType . Object <$> jsg "GamepadButton"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.GamepadEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent Mozilla GamepadEvent documentation>
newtype GamepadEvent = GamepadEvent { unGamepadEvent :: JSVal }

instance PToJSVal GamepadEvent where
  pToJSVal = unGamepadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal GamepadEvent where
  pFromJSVal = GamepadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal GamepadEvent where
  toJSVal = return . unGamepadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal GamepadEvent where
  fromJSVal v = fmap GamepadEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject GamepadEvent where
  makeObject = makeObject . unGamepadEvent

instance IsEvent GamepadEvent
instance IsGObject GamepadEvent where
  typeGType _ = gTypeGamepadEvent
  {-# INLINE typeGType #-}

gTypeGamepadEvent :: JSM GType
gTypeGamepadEvent = GType . Object <$> jsg "GamepadEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Geolocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation Mozilla Geolocation documentation>
newtype Geolocation = Geolocation { unGeolocation :: JSVal }

instance PToJSVal Geolocation where
  pToJSVal = unGeolocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal Geolocation where
  pFromJSVal = Geolocation
  {-# INLINE pFromJSVal #-}

instance ToJSVal Geolocation where
  toJSVal = return . unGeolocation
  {-# INLINE toJSVal #-}

instance FromJSVal Geolocation where
  fromJSVal v = fmap Geolocation <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Geolocation where
  makeObject = makeObject . unGeolocation

instance IsGObject Geolocation where
  typeGType _ = gTypeGeolocation
  {-# INLINE typeGType #-}

gTypeGeolocation :: JSM GType
gTypeGeolocation = GType . Object <$> jsg "Geolocation"
#else
type IsGeolocation o = GeolocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Geoposition".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition Mozilla Geoposition documentation>
newtype Geoposition = Geoposition { unGeoposition :: JSVal }

instance PToJSVal Geoposition where
  pToJSVal = unGeoposition
  {-# INLINE pToJSVal #-}

instance PFromJSVal Geoposition where
  pFromJSVal = Geoposition
  {-# INLINE pFromJSVal #-}

instance ToJSVal Geoposition where
  toJSVal = return . unGeoposition
  {-# INLINE toJSVal #-}

instance FromJSVal Geoposition where
  fromJSVal v = fmap Geoposition <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Geoposition where
  makeObject = makeObject . unGeoposition

instance IsGObject Geoposition where
  typeGType _ = gTypeGeoposition
  {-# INLINE typeGType #-}

gTypeGeoposition :: JSM GType
gTypeGeoposition = GType . Object <$> jsg "Geoposition"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLAllCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection Mozilla HTMLAllCollection documentation>
newtype HTMLAllCollection = HTMLAllCollection { unHTMLAllCollection :: JSVal }

instance PToJSVal HTMLAllCollection where
  pToJSVal = unHTMLAllCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAllCollection where
  pFromJSVal = HTMLAllCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAllCollection where
  toJSVal = return . unHTMLAllCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAllCollection where
  fromJSVal v = fmap HTMLAllCollection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLAllCollection where
  makeObject = makeObject . unHTMLAllCollection

instance IsGObject HTMLAllCollection where
  typeGType _ = gTypeHTMLAllCollection
  {-# INLINE typeGType #-}

gTypeHTMLAllCollection :: JSM GType
gTypeHTMLAllCollection = GType . Object <$> jsg "HTMLAllCollection"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLAnchorElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement Mozilla HTMLAnchorElement documentation>
newtype HTMLAnchorElement = HTMLAnchorElement { unHTMLAnchorElement :: JSVal }

instance PToJSVal HTMLAnchorElement where
  pToJSVal = unHTMLAnchorElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAnchorElement where
  pFromJSVal = HTMLAnchorElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAnchorElement where
  toJSVal = return . unHTMLAnchorElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAnchorElement where
  fromJSVal v = fmap HTMLAnchorElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLAnchorElement where
  makeObject = makeObject . unHTMLAnchorElement

instance IsHTMLElement HTMLAnchorElement
instance IsElement HTMLAnchorElement
instance IsNode HTMLAnchorElement
instance IsEventTarget HTMLAnchorElement
instance IsGObject HTMLAnchorElement where
  typeGType _ = gTypeHTMLAnchorElement
  {-# INLINE typeGType #-}

gTypeHTMLAnchorElement :: JSM GType
gTypeHTMLAnchorElement = GType . Object <$> jsg "HTMLAnchorElement"
#else
type IsHTMLAnchorElement o = HTMLAnchorElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLAppletElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement Mozilla HTMLAppletElement documentation>
newtype HTMLAppletElement = HTMLAppletElement { unHTMLAppletElement :: JSVal }

instance PToJSVal HTMLAppletElement where
  pToJSVal = unHTMLAppletElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAppletElement where
  pFromJSVal = HTMLAppletElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAppletElement where
  toJSVal = return . unHTMLAppletElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAppletElement where
  fromJSVal v = fmap HTMLAppletElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLAppletElement where
  makeObject = makeObject . unHTMLAppletElement

instance IsHTMLElement HTMLAppletElement
instance IsElement HTMLAppletElement
instance IsNode HTMLAppletElement
instance IsEventTarget HTMLAppletElement
instance IsGObject HTMLAppletElement where
  typeGType _ = gTypeHTMLAppletElement
  {-# INLINE typeGType #-}

gTypeHTMLAppletElement :: JSM GType
gTypeHTMLAppletElement = GType . Object <$> jsg "HTMLAppletElement"
#else
type IsHTMLAppletElement o = HTMLAppletElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLAreaElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement Mozilla HTMLAreaElement documentation>
newtype HTMLAreaElement = HTMLAreaElement { unHTMLAreaElement :: JSVal }

instance PToJSVal HTMLAreaElement where
  pToJSVal = unHTMLAreaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAreaElement where
  pFromJSVal = HTMLAreaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAreaElement where
  toJSVal = return . unHTMLAreaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAreaElement where
  fromJSVal v = fmap HTMLAreaElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLAreaElement where
  makeObject = makeObject . unHTMLAreaElement

instance IsHTMLElement HTMLAreaElement
instance IsElement HTMLAreaElement
instance IsNode HTMLAreaElement
instance IsEventTarget HTMLAreaElement
instance IsGObject HTMLAreaElement where
  typeGType _ = gTypeHTMLAreaElement
  {-# INLINE typeGType #-}

gTypeHTMLAreaElement :: JSM GType
gTypeHTMLAreaElement = GType . Object <$> jsg "HTMLAreaElement"
#else
type IsHTMLAreaElement o = HTMLAreaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLAudioElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLMediaElement"
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement Mozilla HTMLAudioElement documentation>
newtype HTMLAudioElement = HTMLAudioElement { unHTMLAudioElement :: JSVal }

instance PToJSVal HTMLAudioElement where
  pToJSVal = unHTMLAudioElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAudioElement where
  pFromJSVal = HTMLAudioElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAudioElement where
  toJSVal = return . unHTMLAudioElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAudioElement where
  fromJSVal v = fmap HTMLAudioElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLAudioElement where
  makeObject = makeObject . unHTMLAudioElement

instance IsHTMLMediaElement HTMLAudioElement
instance IsHTMLElement HTMLAudioElement
instance IsElement HTMLAudioElement
instance IsNode HTMLAudioElement
instance IsEventTarget HTMLAudioElement
instance IsGObject HTMLAudioElement where
  typeGType _ = gTypeHTMLAudioElement
  {-# INLINE typeGType #-}

gTypeHTMLAudioElement :: JSM GType
gTypeHTMLAudioElement = GType . Object <$> jsg "HTMLAudioElement"
#else
type IsHTMLAudioElement o = HTMLAudioElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLBRElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement Mozilla HTMLBRElement documentation>
newtype HTMLBRElement = HTMLBRElement { unHTMLBRElement :: JSVal }

instance PToJSVal HTMLBRElement where
  pToJSVal = unHTMLBRElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBRElement where
  pFromJSVal = HTMLBRElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBRElement where
  toJSVal = return . unHTMLBRElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBRElement where
  fromJSVal v = fmap HTMLBRElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLBRElement where
  makeObject = makeObject . unHTMLBRElement

instance IsHTMLElement HTMLBRElement
instance IsElement HTMLBRElement
instance IsNode HTMLBRElement
instance IsEventTarget HTMLBRElement
instance IsGObject HTMLBRElement where
  typeGType _ = gTypeHTMLBRElement
  {-# INLINE typeGType #-}

gTypeHTMLBRElement :: JSM GType
gTypeHTMLBRElement = GType . Object <$> jsg "HTMLBRElement"
#else
type IsHTMLBRElement o = HTMLBRElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLBaseElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement Mozilla HTMLBaseElement documentation>
newtype HTMLBaseElement = HTMLBaseElement { unHTMLBaseElement :: JSVal }

instance PToJSVal HTMLBaseElement where
  pToJSVal = unHTMLBaseElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBaseElement where
  pFromJSVal = HTMLBaseElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBaseElement where
  toJSVal = return . unHTMLBaseElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBaseElement where
  fromJSVal v = fmap HTMLBaseElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLBaseElement where
  makeObject = makeObject . unHTMLBaseElement

instance IsHTMLElement HTMLBaseElement
instance IsElement HTMLBaseElement
instance IsNode HTMLBaseElement
instance IsEventTarget HTMLBaseElement
instance IsGObject HTMLBaseElement where
  typeGType _ = gTypeHTMLBaseElement
  {-# INLINE typeGType #-}

gTypeHTMLBaseElement :: JSM GType
gTypeHTMLBaseElement = GType . Object <$> jsg "HTMLBaseElement"
#else
type IsHTMLBaseElement o = HTMLBaseElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLBaseFontElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement Mozilla HTMLBaseFontElement documentation>
newtype HTMLBaseFontElement = HTMLBaseFontElement { unHTMLBaseFontElement :: JSVal }

instance PToJSVal HTMLBaseFontElement where
  pToJSVal = unHTMLBaseFontElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBaseFontElement where
  pFromJSVal = HTMLBaseFontElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBaseFontElement where
  toJSVal = return . unHTMLBaseFontElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBaseFontElement where
  fromJSVal v = fmap HTMLBaseFontElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLBaseFontElement where
  makeObject = makeObject . unHTMLBaseFontElement

instance IsHTMLElement HTMLBaseFontElement
instance IsElement HTMLBaseFontElement
instance IsNode HTMLBaseFontElement
instance IsEventTarget HTMLBaseFontElement
instance IsGObject HTMLBaseFontElement where
  typeGType _ = gTypeHTMLBaseFontElement
  {-# INLINE typeGType #-}

gTypeHTMLBaseFontElement :: JSM GType
gTypeHTMLBaseFontElement = GType . Object <$> jsg "HTMLBaseFontElement"
#else
type IsHTMLBaseFontElement o = HTMLBaseFontElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLBodyElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement Mozilla HTMLBodyElement documentation>
newtype HTMLBodyElement = HTMLBodyElement { unHTMLBodyElement :: JSVal }

instance PToJSVal HTMLBodyElement where
  pToJSVal = unHTMLBodyElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBodyElement where
  pFromJSVal = HTMLBodyElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBodyElement where
  toJSVal = return . unHTMLBodyElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBodyElement where
  fromJSVal v = fmap HTMLBodyElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLBodyElement where
  makeObject = makeObject . unHTMLBodyElement

instance IsHTMLElement HTMLBodyElement
instance IsElement HTMLBodyElement
instance IsNode HTMLBodyElement
instance IsEventTarget HTMLBodyElement
instance IsGObject HTMLBodyElement where
  typeGType _ = gTypeHTMLBodyElement
  {-# INLINE typeGType #-}

gTypeHTMLBodyElement :: JSM GType
gTypeHTMLBodyElement = GType . Object <$> jsg "HTMLBodyElement"
#else
type IsHTMLBodyElement o = HTMLBodyElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLButtonElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement Mozilla HTMLButtonElement documentation>
newtype HTMLButtonElement = HTMLButtonElement { unHTMLButtonElement :: JSVal }

instance PToJSVal HTMLButtonElement where
  pToJSVal = unHTMLButtonElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLButtonElement where
  pFromJSVal = HTMLButtonElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLButtonElement where
  toJSVal = return . unHTMLButtonElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLButtonElement where
  fromJSVal v = fmap HTMLButtonElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLButtonElement where
  makeObject = makeObject . unHTMLButtonElement

instance IsHTMLElement HTMLButtonElement
instance IsElement HTMLButtonElement
instance IsNode HTMLButtonElement
instance IsEventTarget HTMLButtonElement
instance IsGObject HTMLButtonElement where
  typeGType _ = gTypeHTMLButtonElement
  {-# INLINE typeGType #-}

gTypeHTMLButtonElement :: JSM GType
gTypeHTMLButtonElement = GType . Object <$> jsg "HTMLButtonElement"
#else
type IsHTMLButtonElement o = HTMLButtonElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLCanvasElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement Mozilla HTMLCanvasElement documentation>
newtype HTMLCanvasElement = HTMLCanvasElement { unHTMLCanvasElement :: JSVal }

instance PToJSVal HTMLCanvasElement where
  pToJSVal = unHTMLCanvasElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLCanvasElement where
  pFromJSVal = HTMLCanvasElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLCanvasElement where
  toJSVal = return . unHTMLCanvasElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLCanvasElement where
  fromJSVal v = fmap HTMLCanvasElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLCanvasElement where
  makeObject = makeObject . unHTMLCanvasElement

instance IsHTMLElement HTMLCanvasElement
instance IsElement HTMLCanvasElement
instance IsNode HTMLCanvasElement
instance IsEventTarget HTMLCanvasElement
instance IsGObject HTMLCanvasElement where
  typeGType _ = gTypeHTMLCanvasElement
  {-# INLINE typeGType #-}

gTypeHTMLCanvasElement :: JSM GType
gTypeHTMLCanvasElement = GType . Object <$> jsg "HTMLCanvasElement"
#else
type IsHTMLCanvasElement o = HTMLCanvasElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection Mozilla HTMLCollection documentation>
newtype HTMLCollection = HTMLCollection { unHTMLCollection :: JSVal }

instance PToJSVal HTMLCollection where
  pToJSVal = unHTMLCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLCollection where
  pFromJSVal = HTMLCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLCollection where
  toJSVal = return . unHTMLCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLCollection where
  fromJSVal v = fmap HTMLCollection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLCollection where
  makeObject = makeObject . unHTMLCollection

class IsGObject o => IsHTMLCollection o
toHTMLCollection :: IsHTMLCollection o => o -> HTMLCollection
toHTMLCollection = HTMLCollection . coerce

instance IsHTMLCollection HTMLCollection
instance IsGObject HTMLCollection where
  typeGType _ = gTypeHTMLCollection
  {-# INLINE typeGType #-}

gTypeHTMLCollection :: JSM GType
gTypeHTMLCollection = GType . Object <$> jsg "HTMLCollection"
#else
type IsHTMLCollection o = HTMLCollectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLDListElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement Mozilla HTMLDListElement documentation>
newtype HTMLDListElement = HTMLDListElement { unHTMLDListElement :: JSVal }

instance PToJSVal HTMLDListElement where
  pToJSVal = unHTMLDListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDListElement where
  pFromJSVal = HTMLDListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDListElement where
  toJSVal = return . unHTMLDListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDListElement where
  fromJSVal v = fmap HTMLDListElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLDListElement where
  makeObject = makeObject . unHTMLDListElement

instance IsHTMLElement HTMLDListElement
instance IsElement HTMLDListElement
instance IsNode HTMLDListElement
instance IsEventTarget HTMLDListElement
instance IsGObject HTMLDListElement where
  typeGType _ = gTypeHTMLDListElement
  {-# INLINE typeGType #-}

gTypeHTMLDListElement :: JSM GType
gTypeHTMLDListElement = GType . Object <$> jsg "HTMLDListElement"
#else
type IsHTMLDListElement o = HTMLDListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLDataListElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement Mozilla HTMLDataListElement documentation>
newtype HTMLDataListElement = HTMLDataListElement { unHTMLDataListElement :: JSVal }

instance PToJSVal HTMLDataListElement where
  pToJSVal = unHTMLDataListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDataListElement where
  pFromJSVal = HTMLDataListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDataListElement where
  toJSVal = return . unHTMLDataListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDataListElement where
  fromJSVal v = fmap HTMLDataListElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLDataListElement where
  makeObject = makeObject . unHTMLDataListElement

instance IsHTMLElement HTMLDataListElement
instance IsElement HTMLDataListElement
instance IsNode HTMLDataListElement
instance IsEventTarget HTMLDataListElement
instance IsGObject HTMLDataListElement where
  typeGType _ = gTypeHTMLDataListElement
  {-# INLINE typeGType #-}

gTypeHTMLDataListElement :: JSM GType
gTypeHTMLDataListElement = GType . Object <$> jsg "HTMLDataListElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLDetailsElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement Mozilla HTMLDetailsElement documentation>
newtype HTMLDetailsElement = HTMLDetailsElement { unHTMLDetailsElement :: JSVal }

instance PToJSVal HTMLDetailsElement where
  pToJSVal = unHTMLDetailsElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDetailsElement where
  pFromJSVal = HTMLDetailsElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDetailsElement where
  toJSVal = return . unHTMLDetailsElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDetailsElement where
  fromJSVal v = fmap HTMLDetailsElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLDetailsElement where
  makeObject = makeObject . unHTMLDetailsElement

instance IsHTMLElement HTMLDetailsElement
instance IsElement HTMLDetailsElement
instance IsNode HTMLDetailsElement
instance IsEventTarget HTMLDetailsElement
instance IsGObject HTMLDetailsElement where
  typeGType _ = gTypeHTMLDetailsElement
  {-# INLINE typeGType #-}

gTypeHTMLDetailsElement :: JSM GType
gTypeHTMLDetailsElement = GType . Object <$> jsg "HTMLDetailsElement"
#else
type IsHTMLDetailsElement o = HTMLDetailsElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLDirectoryElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement Mozilla HTMLDirectoryElement documentation>
newtype HTMLDirectoryElement = HTMLDirectoryElement { unHTMLDirectoryElement :: JSVal }

instance PToJSVal HTMLDirectoryElement where
  pToJSVal = unHTMLDirectoryElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDirectoryElement where
  pFromJSVal = HTMLDirectoryElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDirectoryElement where
  toJSVal = return . unHTMLDirectoryElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDirectoryElement where
  fromJSVal v = fmap HTMLDirectoryElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLDirectoryElement where
  makeObject = makeObject . unHTMLDirectoryElement

instance IsHTMLElement HTMLDirectoryElement
instance IsElement HTMLDirectoryElement
instance IsNode HTMLDirectoryElement
instance IsEventTarget HTMLDirectoryElement
instance IsGObject HTMLDirectoryElement where
  typeGType _ = gTypeHTMLDirectoryElement
  {-# INLINE typeGType #-}

gTypeHTMLDirectoryElement :: JSM GType
gTypeHTMLDirectoryElement = GType . Object <$> jsg "HTMLDirectoryElement"
#else
type IsHTMLDirectoryElement o = HTMLDirectoryElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLDivElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement Mozilla HTMLDivElement documentation>
newtype HTMLDivElement = HTMLDivElement { unHTMLDivElement :: JSVal }

instance PToJSVal HTMLDivElement where
  pToJSVal = unHTMLDivElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDivElement where
  pFromJSVal = HTMLDivElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDivElement where
  toJSVal = return . unHTMLDivElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDivElement where
  fromJSVal v = fmap HTMLDivElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLDivElement where
  makeObject = makeObject . unHTMLDivElement

instance IsHTMLElement HTMLDivElement
instance IsElement HTMLDivElement
instance IsNode HTMLDivElement
instance IsEventTarget HTMLDivElement
instance IsGObject HTMLDivElement where
  typeGType _ = gTypeHTMLDivElement
  {-# INLINE typeGType #-}

gTypeHTMLDivElement :: JSM GType
gTypeHTMLDivElement = GType . Object <$> jsg "HTMLDivElement"
#else
type IsHTMLDivElement o = HTMLDivElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLDocument".
-- Base interface functions are in:
--
--     * "JSDOM.Document"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument Mozilla HTMLDocument documentation>
newtype HTMLDocument = HTMLDocument { unHTMLDocument :: JSVal }

instance PToJSVal HTMLDocument where
  pToJSVal = unHTMLDocument
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDocument where
  pFromJSVal = HTMLDocument
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDocument where
  toJSVal = return . unHTMLDocument
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDocument where
  fromJSVal v = fmap HTMLDocument <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLDocument where
  makeObject = makeObject . unHTMLDocument

instance IsDocument HTMLDocument
instance IsNode HTMLDocument
instance IsEventTarget HTMLDocument
instance IsGObject HTMLDocument where
  typeGType _ = gTypeHTMLDocument
  {-# INLINE typeGType #-}

gTypeHTMLDocument :: JSM GType
gTypeHTMLDocument = GType . Object <$> jsg "HTMLDocument"
#else
type IsHTMLDocument o = HTMLDocumentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLElement".
-- Base interface functions are in:
--
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement Mozilla HTMLElement documentation>
newtype HTMLElement = HTMLElement { unHTMLElement :: JSVal }

instance PToJSVal HTMLElement where
  pToJSVal = unHTMLElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLElement where
  pFromJSVal = HTMLElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLElement where
  toJSVal = return . unHTMLElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLElement where
  fromJSVal v = fmap HTMLElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLElement where
  makeObject = makeObject . unHTMLElement

class IsElement o => IsHTMLElement o
toHTMLElement :: IsHTMLElement o => o -> HTMLElement
toHTMLElement = HTMLElement . coerce

instance IsHTMLElement HTMLElement
instance IsElement HTMLElement
instance IsNode HTMLElement
instance IsEventTarget HTMLElement
instance IsGObject HTMLElement where
  typeGType _ = gTypeHTMLElement
  {-# INLINE typeGType #-}

gTypeHTMLElement :: JSM GType
gTypeHTMLElement = GType . Object <$> jsg "HTMLElement"
#else
type IsHTMLElement o = HTMLElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLEmbedElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement Mozilla HTMLEmbedElement documentation>
newtype HTMLEmbedElement = HTMLEmbedElement { unHTMLEmbedElement :: JSVal }

instance PToJSVal HTMLEmbedElement where
  pToJSVal = unHTMLEmbedElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLEmbedElement where
  pFromJSVal = HTMLEmbedElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLEmbedElement where
  toJSVal = return . unHTMLEmbedElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLEmbedElement where
  fromJSVal v = fmap HTMLEmbedElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLEmbedElement where
  makeObject = makeObject . unHTMLEmbedElement

instance IsHTMLElement HTMLEmbedElement
instance IsElement HTMLEmbedElement
instance IsNode HTMLEmbedElement
instance IsEventTarget HTMLEmbedElement
instance IsGObject HTMLEmbedElement where
  typeGType _ = gTypeHTMLEmbedElement
  {-# INLINE typeGType #-}

gTypeHTMLEmbedElement :: JSM GType
gTypeHTMLEmbedElement = GType . Object <$> jsg "HTMLEmbedElement"
#else
type IsHTMLEmbedElement o = HTMLEmbedElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLFieldSetElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement Mozilla HTMLFieldSetElement documentation>
newtype HTMLFieldSetElement = HTMLFieldSetElement { unHTMLFieldSetElement :: JSVal }

instance PToJSVal HTMLFieldSetElement where
  pToJSVal = unHTMLFieldSetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFieldSetElement where
  pFromJSVal = HTMLFieldSetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFieldSetElement where
  toJSVal = return . unHTMLFieldSetElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFieldSetElement where
  fromJSVal v = fmap HTMLFieldSetElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLFieldSetElement where
  makeObject = makeObject . unHTMLFieldSetElement

instance IsHTMLElement HTMLFieldSetElement
instance IsElement HTMLFieldSetElement
instance IsNode HTMLFieldSetElement
instance IsEventTarget HTMLFieldSetElement
instance IsGObject HTMLFieldSetElement where
  typeGType _ = gTypeHTMLFieldSetElement
  {-# INLINE typeGType #-}

gTypeHTMLFieldSetElement :: JSM GType
gTypeHTMLFieldSetElement = GType . Object <$> jsg "HTMLFieldSetElement"
#else
type IsHTMLFieldSetElement o = HTMLFieldSetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLFontElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement Mozilla HTMLFontElement documentation>
newtype HTMLFontElement = HTMLFontElement { unHTMLFontElement :: JSVal }

instance PToJSVal HTMLFontElement where
  pToJSVal = unHTMLFontElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFontElement where
  pFromJSVal = HTMLFontElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFontElement where
  toJSVal = return . unHTMLFontElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFontElement where
  fromJSVal v = fmap HTMLFontElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLFontElement where
  makeObject = makeObject . unHTMLFontElement

instance IsHTMLElement HTMLFontElement
instance IsElement HTMLFontElement
instance IsNode HTMLFontElement
instance IsEventTarget HTMLFontElement
instance IsGObject HTMLFontElement where
  typeGType _ = gTypeHTMLFontElement
  {-# INLINE typeGType #-}

gTypeHTMLFontElement :: JSM GType
gTypeHTMLFontElement = GType . Object <$> jsg "HTMLFontElement"
#else
type IsHTMLFontElement o = HTMLFontElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLFormControlsCollection".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLCollection"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection Mozilla HTMLFormControlsCollection documentation>
newtype HTMLFormControlsCollection = HTMLFormControlsCollection { unHTMLFormControlsCollection :: JSVal }

instance PToJSVal HTMLFormControlsCollection where
  pToJSVal = unHTMLFormControlsCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFormControlsCollection where
  pFromJSVal = HTMLFormControlsCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFormControlsCollection where
  toJSVal = return . unHTMLFormControlsCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFormControlsCollection where
  fromJSVal v = fmap HTMLFormControlsCollection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLFormControlsCollection where
  makeObject = makeObject . unHTMLFormControlsCollection

instance IsHTMLCollection HTMLFormControlsCollection
instance IsGObject HTMLFormControlsCollection where
  typeGType _ = gTypeHTMLFormControlsCollection
  {-# INLINE typeGType #-}

gTypeHTMLFormControlsCollection :: JSM GType
gTypeHTMLFormControlsCollection = GType . Object <$> jsg "HTMLFormControlsCollection"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLFormElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement Mozilla HTMLFormElement documentation>
newtype HTMLFormElement = HTMLFormElement { unHTMLFormElement :: JSVal }

instance PToJSVal HTMLFormElement where
  pToJSVal = unHTMLFormElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFormElement where
  pFromJSVal = HTMLFormElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFormElement where
  toJSVal = return . unHTMLFormElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFormElement where
  fromJSVal v = fmap HTMLFormElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLFormElement where
  makeObject = makeObject . unHTMLFormElement

instance IsHTMLElement HTMLFormElement
instance IsElement HTMLFormElement
instance IsNode HTMLFormElement
instance IsEventTarget HTMLFormElement
instance IsGObject HTMLFormElement where
  typeGType _ = gTypeHTMLFormElement
  {-# INLINE typeGType #-}

gTypeHTMLFormElement :: JSM GType
gTypeHTMLFormElement = GType . Object <$> jsg "HTMLFormElement"
#else
type IsHTMLFormElement o = HTMLFormElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLFrameElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement Mozilla HTMLFrameElement documentation>
newtype HTMLFrameElement = HTMLFrameElement { unHTMLFrameElement :: JSVal }

instance PToJSVal HTMLFrameElement where
  pToJSVal = unHTMLFrameElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFrameElement where
  pFromJSVal = HTMLFrameElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFrameElement where
  toJSVal = return . unHTMLFrameElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFrameElement where
  fromJSVal v = fmap HTMLFrameElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLFrameElement where
  makeObject = makeObject . unHTMLFrameElement

instance IsHTMLElement HTMLFrameElement
instance IsElement HTMLFrameElement
instance IsNode HTMLFrameElement
instance IsEventTarget HTMLFrameElement
instance IsGObject HTMLFrameElement where
  typeGType _ = gTypeHTMLFrameElement
  {-# INLINE typeGType #-}

gTypeHTMLFrameElement :: JSM GType
gTypeHTMLFrameElement = GType . Object <$> jsg "HTMLFrameElement"
#else
type IsHTMLFrameElement o = HTMLFrameElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLFrameSetElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement Mozilla HTMLFrameSetElement documentation>
newtype HTMLFrameSetElement = HTMLFrameSetElement { unHTMLFrameSetElement :: JSVal }

instance PToJSVal HTMLFrameSetElement where
  pToJSVal = unHTMLFrameSetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFrameSetElement where
  pFromJSVal = HTMLFrameSetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFrameSetElement where
  toJSVal = return . unHTMLFrameSetElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFrameSetElement where
  fromJSVal v = fmap HTMLFrameSetElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLFrameSetElement where
  makeObject = makeObject . unHTMLFrameSetElement

instance IsHTMLElement HTMLFrameSetElement
instance IsElement HTMLFrameSetElement
instance IsNode HTMLFrameSetElement
instance IsEventTarget HTMLFrameSetElement
instance IsGObject HTMLFrameSetElement where
  typeGType _ = gTypeHTMLFrameSetElement
  {-# INLINE typeGType #-}

gTypeHTMLFrameSetElement :: JSM GType
gTypeHTMLFrameSetElement = GType . Object <$> jsg "HTMLFrameSetElement"
#else
type IsHTMLFrameSetElement o = HTMLFrameSetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLHRElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement Mozilla HTMLHRElement documentation>
newtype HTMLHRElement = HTMLHRElement { unHTMLHRElement :: JSVal }

instance PToJSVal HTMLHRElement where
  pToJSVal = unHTMLHRElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHRElement where
  pFromJSVal = HTMLHRElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHRElement where
  toJSVal = return . unHTMLHRElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHRElement where
  fromJSVal v = fmap HTMLHRElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLHRElement where
  makeObject = makeObject . unHTMLHRElement

instance IsHTMLElement HTMLHRElement
instance IsElement HTMLHRElement
instance IsNode HTMLHRElement
instance IsEventTarget HTMLHRElement
instance IsGObject HTMLHRElement where
  typeGType _ = gTypeHTMLHRElement
  {-# INLINE typeGType #-}

gTypeHTMLHRElement :: JSM GType
gTypeHTMLHRElement = GType . Object <$> jsg "HTMLHRElement"
#else
type IsHTMLHRElement o = HTMLHRElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLHeadElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement Mozilla HTMLHeadElement documentation>
newtype HTMLHeadElement = HTMLHeadElement { unHTMLHeadElement :: JSVal }

instance PToJSVal HTMLHeadElement where
  pToJSVal = unHTMLHeadElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHeadElement where
  pFromJSVal = HTMLHeadElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHeadElement where
  toJSVal = return . unHTMLHeadElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHeadElement where
  fromJSVal v = fmap HTMLHeadElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLHeadElement where
  makeObject = makeObject . unHTMLHeadElement

instance IsHTMLElement HTMLHeadElement
instance IsElement HTMLHeadElement
instance IsNode HTMLHeadElement
instance IsEventTarget HTMLHeadElement
instance IsGObject HTMLHeadElement where
  typeGType _ = gTypeHTMLHeadElement
  {-# INLINE typeGType #-}

gTypeHTMLHeadElement :: JSM GType
gTypeHTMLHeadElement = GType . Object <$> jsg "HTMLHeadElement"
#else
type IsHTMLHeadElement o = HTMLHeadElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLHeadingElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement Mozilla HTMLHeadingElement documentation>
newtype HTMLHeadingElement = HTMLHeadingElement { unHTMLHeadingElement :: JSVal }

instance PToJSVal HTMLHeadingElement where
  pToJSVal = unHTMLHeadingElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHeadingElement where
  pFromJSVal = HTMLHeadingElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHeadingElement where
  toJSVal = return . unHTMLHeadingElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHeadingElement where
  fromJSVal v = fmap HTMLHeadingElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLHeadingElement where
  makeObject = makeObject . unHTMLHeadingElement

instance IsHTMLElement HTMLHeadingElement
instance IsElement HTMLHeadingElement
instance IsNode HTMLHeadingElement
instance IsEventTarget HTMLHeadingElement
instance IsGObject HTMLHeadingElement where
  typeGType _ = gTypeHTMLHeadingElement
  {-# INLINE typeGType #-}

gTypeHTMLHeadingElement :: JSM GType
gTypeHTMLHeadingElement = GType . Object <$> jsg "HTMLHeadingElement"
#else
type IsHTMLHeadingElement o = HTMLHeadingElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLHtmlElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement Mozilla HTMLHtmlElement documentation>
newtype HTMLHtmlElement = HTMLHtmlElement { unHTMLHtmlElement :: JSVal }

instance PToJSVal HTMLHtmlElement where
  pToJSVal = unHTMLHtmlElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHtmlElement where
  pFromJSVal = HTMLHtmlElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHtmlElement where
  toJSVal = return . unHTMLHtmlElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHtmlElement where
  fromJSVal v = fmap HTMLHtmlElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLHtmlElement where
  makeObject = makeObject . unHTMLHtmlElement

instance IsHTMLElement HTMLHtmlElement
instance IsElement HTMLHtmlElement
instance IsNode HTMLHtmlElement
instance IsEventTarget HTMLHtmlElement
instance IsGObject HTMLHtmlElement where
  typeGType _ = gTypeHTMLHtmlElement
  {-# INLINE typeGType #-}

gTypeHTMLHtmlElement :: JSM GType
gTypeHTMLHtmlElement = GType . Object <$> jsg "HTMLHtmlElement"
#else
type IsHTMLHtmlElement o = HTMLHtmlElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLIFrameElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement Mozilla HTMLIFrameElement documentation>
newtype HTMLIFrameElement = HTMLIFrameElement { unHTMLIFrameElement :: JSVal }

instance PToJSVal HTMLIFrameElement where
  pToJSVal = unHTMLIFrameElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLIFrameElement where
  pFromJSVal = HTMLIFrameElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLIFrameElement where
  toJSVal = return . unHTMLIFrameElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLIFrameElement where
  fromJSVal v = fmap HTMLIFrameElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLIFrameElement where
  makeObject = makeObject . unHTMLIFrameElement

instance IsHTMLElement HTMLIFrameElement
instance IsElement HTMLIFrameElement
instance IsNode HTMLIFrameElement
instance IsEventTarget HTMLIFrameElement
instance IsGObject HTMLIFrameElement where
  typeGType _ = gTypeHTMLIFrameElement
  {-# INLINE typeGType #-}

gTypeHTMLIFrameElement :: JSM GType
gTypeHTMLIFrameElement = GType . Object <$> jsg "HTMLIFrameElement"
#else
type IsHTMLIFrameElement o = HTMLIFrameElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLImageElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement Mozilla HTMLImageElement documentation>
newtype HTMLImageElement = HTMLImageElement { unHTMLImageElement :: JSVal }

instance PToJSVal HTMLImageElement where
  pToJSVal = unHTMLImageElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLImageElement where
  pFromJSVal = HTMLImageElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLImageElement where
  toJSVal = return . unHTMLImageElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLImageElement where
  fromJSVal v = fmap HTMLImageElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLImageElement where
  makeObject = makeObject . unHTMLImageElement

instance IsHTMLElement HTMLImageElement
instance IsElement HTMLImageElement
instance IsNode HTMLImageElement
instance IsEventTarget HTMLImageElement
instance IsGObject HTMLImageElement where
  typeGType _ = gTypeHTMLImageElement
  {-# INLINE typeGType #-}

gTypeHTMLImageElement :: JSM GType
gTypeHTMLImageElement = GType . Object <$> jsg "HTMLImageElement"
#else
type IsHTMLImageElement o = HTMLImageElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLInputElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement Mozilla HTMLInputElement documentation>
newtype HTMLInputElement = HTMLInputElement { unHTMLInputElement :: JSVal }

instance PToJSVal HTMLInputElement where
  pToJSVal = unHTMLInputElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLInputElement where
  pFromJSVal = HTMLInputElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLInputElement where
  toJSVal = return . unHTMLInputElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLInputElement where
  fromJSVal v = fmap HTMLInputElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLInputElement where
  makeObject = makeObject . unHTMLInputElement

instance IsHTMLElement HTMLInputElement
instance IsElement HTMLInputElement
instance IsNode HTMLInputElement
instance IsEventTarget HTMLInputElement
instance IsGObject HTMLInputElement where
  typeGType _ = gTypeHTMLInputElement
  {-# INLINE typeGType #-}

gTypeHTMLInputElement :: JSM GType
gTypeHTMLInputElement = GType . Object <$> jsg "HTMLInputElement"
#else
type IsHTMLInputElement o = HTMLInputElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLKeygenElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement Mozilla HTMLKeygenElement documentation>
newtype HTMLKeygenElement = HTMLKeygenElement { unHTMLKeygenElement :: JSVal }

instance PToJSVal HTMLKeygenElement where
  pToJSVal = unHTMLKeygenElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLKeygenElement where
  pFromJSVal = HTMLKeygenElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLKeygenElement where
  toJSVal = return . unHTMLKeygenElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLKeygenElement where
  fromJSVal v = fmap HTMLKeygenElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLKeygenElement where
  makeObject = makeObject . unHTMLKeygenElement

instance IsHTMLElement HTMLKeygenElement
instance IsElement HTMLKeygenElement
instance IsNode HTMLKeygenElement
instance IsEventTarget HTMLKeygenElement
instance IsGObject HTMLKeygenElement where
  typeGType _ = gTypeHTMLKeygenElement
  {-# INLINE typeGType #-}

gTypeHTMLKeygenElement :: JSM GType
gTypeHTMLKeygenElement = GType . Object <$> jsg "HTMLKeygenElement"
#else
type IsHTMLKeygenElement o = HTMLKeygenElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLLIElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement Mozilla HTMLLIElement documentation>
newtype HTMLLIElement = HTMLLIElement { unHTMLLIElement :: JSVal }

instance PToJSVal HTMLLIElement where
  pToJSVal = unHTMLLIElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLIElement where
  pFromJSVal = HTMLLIElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLIElement where
  toJSVal = return . unHTMLLIElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLIElement where
  fromJSVal v = fmap HTMLLIElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLLIElement where
  makeObject = makeObject . unHTMLLIElement

instance IsHTMLElement HTMLLIElement
instance IsElement HTMLLIElement
instance IsNode HTMLLIElement
instance IsEventTarget HTMLLIElement
instance IsGObject HTMLLIElement where
  typeGType _ = gTypeHTMLLIElement
  {-# INLINE typeGType #-}

gTypeHTMLLIElement :: JSM GType
gTypeHTMLLIElement = GType . Object <$> jsg "HTMLLIElement"
#else
type IsHTMLLIElement o = HTMLLIElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLLabelElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement Mozilla HTMLLabelElement documentation>
newtype HTMLLabelElement = HTMLLabelElement { unHTMLLabelElement :: JSVal }

instance PToJSVal HTMLLabelElement where
  pToJSVal = unHTMLLabelElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLabelElement where
  pFromJSVal = HTMLLabelElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLabelElement where
  toJSVal = return . unHTMLLabelElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLabelElement where
  fromJSVal v = fmap HTMLLabelElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLLabelElement where
  makeObject = makeObject . unHTMLLabelElement

instance IsHTMLElement HTMLLabelElement
instance IsElement HTMLLabelElement
instance IsNode HTMLLabelElement
instance IsEventTarget HTMLLabelElement
instance IsGObject HTMLLabelElement where
  typeGType _ = gTypeHTMLLabelElement
  {-# INLINE typeGType #-}

gTypeHTMLLabelElement :: JSM GType
gTypeHTMLLabelElement = GType . Object <$> jsg "HTMLLabelElement"
#else
type IsHTMLLabelElement o = HTMLLabelElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLLegendElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement Mozilla HTMLLegendElement documentation>
newtype HTMLLegendElement = HTMLLegendElement { unHTMLLegendElement :: JSVal }

instance PToJSVal HTMLLegendElement where
  pToJSVal = unHTMLLegendElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLegendElement where
  pFromJSVal = HTMLLegendElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLegendElement where
  toJSVal = return . unHTMLLegendElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLegendElement where
  fromJSVal v = fmap HTMLLegendElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLLegendElement where
  makeObject = makeObject . unHTMLLegendElement

instance IsHTMLElement HTMLLegendElement
instance IsElement HTMLLegendElement
instance IsNode HTMLLegendElement
instance IsEventTarget HTMLLegendElement
instance IsGObject HTMLLegendElement where
  typeGType _ = gTypeHTMLLegendElement
  {-# INLINE typeGType #-}

gTypeHTMLLegendElement :: JSM GType
gTypeHTMLLegendElement = GType . Object <$> jsg "HTMLLegendElement"
#else
type IsHTMLLegendElement o = HTMLLegendElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLLinkElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement Mozilla HTMLLinkElement documentation>
newtype HTMLLinkElement = HTMLLinkElement { unHTMLLinkElement :: JSVal }

instance PToJSVal HTMLLinkElement where
  pToJSVal = unHTMLLinkElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLinkElement where
  pFromJSVal = HTMLLinkElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLinkElement where
  toJSVal = return . unHTMLLinkElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLinkElement where
  fromJSVal v = fmap HTMLLinkElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLLinkElement where
  makeObject = makeObject . unHTMLLinkElement

instance IsHTMLElement HTMLLinkElement
instance IsElement HTMLLinkElement
instance IsNode HTMLLinkElement
instance IsEventTarget HTMLLinkElement
instance IsGObject HTMLLinkElement where
  typeGType _ = gTypeHTMLLinkElement
  {-# INLINE typeGType #-}

gTypeHTMLLinkElement :: JSM GType
gTypeHTMLLinkElement = GType . Object <$> jsg "HTMLLinkElement"
#else
type IsHTMLLinkElement o = HTMLLinkElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLMapElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement Mozilla HTMLMapElement documentation>
newtype HTMLMapElement = HTMLMapElement { unHTMLMapElement :: JSVal }

instance PToJSVal HTMLMapElement where
  pToJSVal = unHTMLMapElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMapElement where
  pFromJSVal = HTMLMapElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMapElement where
  toJSVal = return . unHTMLMapElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMapElement where
  fromJSVal v = fmap HTMLMapElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLMapElement where
  makeObject = makeObject . unHTMLMapElement

instance IsHTMLElement HTMLMapElement
instance IsElement HTMLMapElement
instance IsNode HTMLMapElement
instance IsEventTarget HTMLMapElement
instance IsGObject HTMLMapElement where
  typeGType _ = gTypeHTMLMapElement
  {-# INLINE typeGType #-}

gTypeHTMLMapElement :: JSM GType
gTypeHTMLMapElement = GType . Object <$> jsg "HTMLMapElement"
#else
type IsHTMLMapElement o = HTMLMapElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLMarqueeElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement Mozilla HTMLMarqueeElement documentation>
newtype HTMLMarqueeElement = HTMLMarqueeElement { unHTMLMarqueeElement :: JSVal }

instance PToJSVal HTMLMarqueeElement where
  pToJSVal = unHTMLMarqueeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMarqueeElement where
  pFromJSVal = HTMLMarqueeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMarqueeElement where
  toJSVal = return . unHTMLMarqueeElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMarqueeElement where
  fromJSVal v = fmap HTMLMarqueeElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLMarqueeElement where
  makeObject = makeObject . unHTMLMarqueeElement

instance IsHTMLElement HTMLMarqueeElement
instance IsElement HTMLMarqueeElement
instance IsNode HTMLMarqueeElement
instance IsEventTarget HTMLMarqueeElement
instance IsGObject HTMLMarqueeElement where
  typeGType _ = gTypeHTMLMarqueeElement
  {-# INLINE typeGType #-}

gTypeHTMLMarqueeElement :: JSM GType
gTypeHTMLMarqueeElement = GType . Object <$> jsg "HTMLMarqueeElement"
#else
type IsHTMLMarqueeElement o = HTMLMarqueeElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLMediaElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement Mozilla HTMLMediaElement documentation>
newtype HTMLMediaElement = HTMLMediaElement { unHTMLMediaElement :: JSVal }

instance PToJSVal HTMLMediaElement where
  pToJSVal = unHTMLMediaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMediaElement where
  pFromJSVal = HTMLMediaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMediaElement where
  toJSVal = return . unHTMLMediaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMediaElement where
  fromJSVal v = fmap HTMLMediaElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLMediaElement where
  makeObject = makeObject . unHTMLMediaElement

class IsHTMLElement o => IsHTMLMediaElement o
toHTMLMediaElement :: IsHTMLMediaElement o => o -> HTMLMediaElement
toHTMLMediaElement = HTMLMediaElement . coerce

instance IsHTMLMediaElement HTMLMediaElement
instance IsHTMLElement HTMLMediaElement
instance IsElement HTMLMediaElement
instance IsNode HTMLMediaElement
instance IsEventTarget HTMLMediaElement
instance IsGObject HTMLMediaElement where
  typeGType _ = gTypeHTMLMediaElement
  {-# INLINE typeGType #-}

gTypeHTMLMediaElement :: JSM GType
gTypeHTMLMediaElement = GType . Object <$> jsg "HTMLMediaElement"
#else
type IsHTMLMediaElement o = HTMLMediaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLMenuElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement Mozilla HTMLMenuElement documentation>
newtype HTMLMenuElement = HTMLMenuElement { unHTMLMenuElement :: JSVal }

instance PToJSVal HTMLMenuElement where
  pToJSVal = unHTMLMenuElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMenuElement where
  pFromJSVal = HTMLMenuElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMenuElement where
  toJSVal = return . unHTMLMenuElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMenuElement where
  fromJSVal v = fmap HTMLMenuElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLMenuElement where
  makeObject = makeObject . unHTMLMenuElement

instance IsHTMLElement HTMLMenuElement
instance IsElement HTMLMenuElement
instance IsNode HTMLMenuElement
instance IsEventTarget HTMLMenuElement
instance IsGObject HTMLMenuElement where
  typeGType _ = gTypeHTMLMenuElement
  {-# INLINE typeGType #-}

gTypeHTMLMenuElement :: JSM GType
gTypeHTMLMenuElement = GType . Object <$> jsg "HTMLMenuElement"
#else
type IsHTMLMenuElement o = HTMLMenuElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLMetaElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement Mozilla HTMLMetaElement documentation>
newtype HTMLMetaElement = HTMLMetaElement { unHTMLMetaElement :: JSVal }

instance PToJSVal HTMLMetaElement where
  pToJSVal = unHTMLMetaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMetaElement where
  pFromJSVal = HTMLMetaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMetaElement where
  toJSVal = return . unHTMLMetaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMetaElement where
  fromJSVal v = fmap HTMLMetaElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLMetaElement where
  makeObject = makeObject . unHTMLMetaElement

instance IsHTMLElement HTMLMetaElement
instance IsElement HTMLMetaElement
instance IsNode HTMLMetaElement
instance IsEventTarget HTMLMetaElement
instance IsGObject HTMLMetaElement where
  typeGType _ = gTypeHTMLMetaElement
  {-# INLINE typeGType #-}

gTypeHTMLMetaElement :: JSM GType
gTypeHTMLMetaElement = GType . Object <$> jsg "HTMLMetaElement"
#else
type IsHTMLMetaElement o = HTMLMetaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLMeterElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement Mozilla HTMLMeterElement documentation>
newtype HTMLMeterElement = HTMLMeterElement { unHTMLMeterElement :: JSVal }

instance PToJSVal HTMLMeterElement where
  pToJSVal = unHTMLMeterElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMeterElement where
  pFromJSVal = HTMLMeterElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMeterElement where
  toJSVal = return . unHTMLMeterElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMeterElement where
  fromJSVal v = fmap HTMLMeterElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLMeterElement where
  makeObject = makeObject . unHTMLMeterElement

instance IsHTMLElement HTMLMeterElement
instance IsElement HTMLMeterElement
instance IsNode HTMLMeterElement
instance IsEventTarget HTMLMeterElement
instance IsGObject HTMLMeterElement where
  typeGType _ = gTypeHTMLMeterElement
  {-# INLINE typeGType #-}

gTypeHTMLMeterElement :: JSM GType
gTypeHTMLMeterElement = GType . Object <$> jsg "HTMLMeterElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLModElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement Mozilla HTMLModElement documentation>
newtype HTMLModElement = HTMLModElement { unHTMLModElement :: JSVal }

instance PToJSVal HTMLModElement where
  pToJSVal = unHTMLModElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLModElement where
  pFromJSVal = HTMLModElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLModElement where
  toJSVal = return . unHTMLModElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLModElement where
  fromJSVal v = fmap HTMLModElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLModElement where
  makeObject = makeObject . unHTMLModElement

instance IsHTMLElement HTMLModElement
instance IsElement HTMLModElement
instance IsNode HTMLModElement
instance IsEventTarget HTMLModElement
instance IsGObject HTMLModElement where
  typeGType _ = gTypeHTMLModElement
  {-# INLINE typeGType #-}

gTypeHTMLModElement :: JSM GType
gTypeHTMLModElement = GType . Object <$> jsg "HTMLModElement"
#else
type IsHTMLModElement o = HTMLModElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLOListElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement Mozilla HTMLOListElement documentation>
newtype HTMLOListElement = HTMLOListElement { unHTMLOListElement :: JSVal }

instance PToJSVal HTMLOListElement where
  pToJSVal = unHTMLOListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOListElement where
  pFromJSVal = HTMLOListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOListElement where
  toJSVal = return . unHTMLOListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOListElement where
  fromJSVal v = fmap HTMLOListElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLOListElement where
  makeObject = makeObject . unHTMLOListElement

instance IsHTMLElement HTMLOListElement
instance IsElement HTMLOListElement
instance IsNode HTMLOListElement
instance IsEventTarget HTMLOListElement
instance IsGObject HTMLOListElement where
  typeGType _ = gTypeHTMLOListElement
  {-# INLINE typeGType #-}

gTypeHTMLOListElement :: JSM GType
gTypeHTMLOListElement = GType . Object <$> jsg "HTMLOListElement"
#else
type IsHTMLOListElement o = HTMLOListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLObjectElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement Mozilla HTMLObjectElement documentation>
newtype HTMLObjectElement = HTMLObjectElement { unHTMLObjectElement :: JSVal }

instance PToJSVal HTMLObjectElement where
  pToJSVal = unHTMLObjectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLObjectElement where
  pFromJSVal = HTMLObjectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLObjectElement where
  toJSVal = return . unHTMLObjectElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLObjectElement where
  fromJSVal v = fmap HTMLObjectElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLObjectElement where
  makeObject = makeObject . unHTMLObjectElement

instance IsHTMLElement HTMLObjectElement
instance IsElement HTMLObjectElement
instance IsNode HTMLObjectElement
instance IsEventTarget HTMLObjectElement
instance IsGObject HTMLObjectElement where
  typeGType _ = gTypeHTMLObjectElement
  {-# INLINE typeGType #-}

gTypeHTMLObjectElement :: JSM GType
gTypeHTMLObjectElement = GType . Object <$> jsg "HTMLObjectElement"
#else
type IsHTMLObjectElement o = HTMLObjectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLOptGroupElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement Mozilla HTMLOptGroupElement documentation>
newtype HTMLOptGroupElement = HTMLOptGroupElement { unHTMLOptGroupElement :: JSVal }

instance PToJSVal HTMLOptGroupElement where
  pToJSVal = unHTMLOptGroupElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOptGroupElement where
  pFromJSVal = HTMLOptGroupElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOptGroupElement where
  toJSVal = return . unHTMLOptGroupElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOptGroupElement where
  fromJSVal v = fmap HTMLOptGroupElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLOptGroupElement where
  makeObject = makeObject . unHTMLOptGroupElement

instance IsHTMLElement HTMLOptGroupElement
instance IsElement HTMLOptGroupElement
instance IsNode HTMLOptGroupElement
instance IsEventTarget HTMLOptGroupElement
instance IsGObject HTMLOptGroupElement where
  typeGType _ = gTypeHTMLOptGroupElement
  {-# INLINE typeGType #-}

gTypeHTMLOptGroupElement :: JSM GType
gTypeHTMLOptGroupElement = GType . Object <$> jsg "HTMLOptGroupElement"
#else
type IsHTMLOptGroupElement o = HTMLOptGroupElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLOptionElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement Mozilla HTMLOptionElement documentation>
newtype HTMLOptionElement = HTMLOptionElement { unHTMLOptionElement :: JSVal }

instance PToJSVal HTMLOptionElement where
  pToJSVal = unHTMLOptionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOptionElement where
  pFromJSVal = HTMLOptionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOptionElement where
  toJSVal = return . unHTMLOptionElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOptionElement where
  fromJSVal v = fmap HTMLOptionElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLOptionElement where
  makeObject = makeObject . unHTMLOptionElement

instance IsHTMLElement HTMLOptionElement
instance IsElement HTMLOptionElement
instance IsNode HTMLOptionElement
instance IsEventTarget HTMLOptionElement
instance IsGObject HTMLOptionElement where
  typeGType _ = gTypeHTMLOptionElement
  {-# INLINE typeGType #-}

gTypeHTMLOptionElement :: JSM GType
gTypeHTMLOptionElement = GType . Object <$> jsg "HTMLOptionElement"
#else
type IsHTMLOptionElement o = HTMLOptionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLOptionsCollection".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLCollection"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection Mozilla HTMLOptionsCollection documentation>
newtype HTMLOptionsCollection = HTMLOptionsCollection { unHTMLOptionsCollection :: JSVal }

instance PToJSVal HTMLOptionsCollection where
  pToJSVal = unHTMLOptionsCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOptionsCollection where
  pFromJSVal = HTMLOptionsCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOptionsCollection where
  toJSVal = return . unHTMLOptionsCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOptionsCollection where
  fromJSVal v = fmap HTMLOptionsCollection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLOptionsCollection where
  makeObject = makeObject . unHTMLOptionsCollection

instance IsHTMLCollection HTMLOptionsCollection
instance IsGObject HTMLOptionsCollection where
  typeGType _ = gTypeHTMLOptionsCollection
  {-# INLINE typeGType #-}

gTypeHTMLOptionsCollection :: JSM GType
gTypeHTMLOptionsCollection = GType . Object <$> jsg "HTMLOptionsCollection"
#else
type IsHTMLOptionsCollection o = HTMLOptionsCollectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLOutputElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement Mozilla HTMLOutputElement documentation>
newtype HTMLOutputElement = HTMLOutputElement { unHTMLOutputElement :: JSVal }

instance PToJSVal HTMLOutputElement where
  pToJSVal = unHTMLOutputElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOutputElement where
  pFromJSVal = HTMLOutputElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOutputElement where
  toJSVal = return . unHTMLOutputElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOutputElement where
  fromJSVal v = fmap HTMLOutputElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLOutputElement where
  makeObject = makeObject . unHTMLOutputElement

instance IsHTMLElement HTMLOutputElement
instance IsElement HTMLOutputElement
instance IsNode HTMLOutputElement
instance IsEventTarget HTMLOutputElement
instance IsGObject HTMLOutputElement where
  typeGType _ = gTypeHTMLOutputElement
  {-# INLINE typeGType #-}

gTypeHTMLOutputElement :: JSM GType
gTypeHTMLOutputElement = GType . Object <$> jsg "HTMLOutputElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLParagraphElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement Mozilla HTMLParagraphElement documentation>
newtype HTMLParagraphElement = HTMLParagraphElement { unHTMLParagraphElement :: JSVal }

instance PToJSVal HTMLParagraphElement where
  pToJSVal = unHTMLParagraphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLParagraphElement where
  pFromJSVal = HTMLParagraphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLParagraphElement where
  toJSVal = return . unHTMLParagraphElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLParagraphElement where
  fromJSVal v = fmap HTMLParagraphElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLParagraphElement where
  makeObject = makeObject . unHTMLParagraphElement

instance IsHTMLElement HTMLParagraphElement
instance IsElement HTMLParagraphElement
instance IsNode HTMLParagraphElement
instance IsEventTarget HTMLParagraphElement
instance IsGObject HTMLParagraphElement where
  typeGType _ = gTypeHTMLParagraphElement
  {-# INLINE typeGType #-}

gTypeHTMLParagraphElement :: JSM GType
gTypeHTMLParagraphElement = GType . Object <$> jsg "HTMLParagraphElement"
#else
type IsHTMLParagraphElement o = HTMLParagraphElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLParamElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement Mozilla HTMLParamElement documentation>
newtype HTMLParamElement = HTMLParamElement { unHTMLParamElement :: JSVal }

instance PToJSVal HTMLParamElement where
  pToJSVal = unHTMLParamElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLParamElement where
  pFromJSVal = HTMLParamElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLParamElement where
  toJSVal = return . unHTMLParamElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLParamElement where
  fromJSVal v = fmap HTMLParamElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLParamElement where
  makeObject = makeObject . unHTMLParamElement

instance IsHTMLElement HTMLParamElement
instance IsElement HTMLParamElement
instance IsNode HTMLParamElement
instance IsEventTarget HTMLParamElement
instance IsGObject HTMLParamElement where
  typeGType _ = gTypeHTMLParamElement
  {-# INLINE typeGType #-}

gTypeHTMLParamElement :: JSM GType
gTypeHTMLParamElement = GType . Object <$> jsg "HTMLParamElement"
#else
type IsHTMLParamElement o = HTMLParamElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLPreElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement Mozilla HTMLPreElement documentation>
newtype HTMLPreElement = HTMLPreElement { unHTMLPreElement :: JSVal }

instance PToJSVal HTMLPreElement where
  pToJSVal = unHTMLPreElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLPreElement where
  pFromJSVal = HTMLPreElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLPreElement where
  toJSVal = return . unHTMLPreElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLPreElement where
  fromJSVal v = fmap HTMLPreElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLPreElement where
  makeObject = makeObject . unHTMLPreElement

instance IsHTMLElement HTMLPreElement
instance IsElement HTMLPreElement
instance IsNode HTMLPreElement
instance IsEventTarget HTMLPreElement
instance IsGObject HTMLPreElement where
  typeGType _ = gTypeHTMLPreElement
  {-# INLINE typeGType #-}

gTypeHTMLPreElement :: JSM GType
gTypeHTMLPreElement = GType . Object <$> jsg "HTMLPreElement"
#else
type IsHTMLPreElement o = HTMLPreElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLProgressElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement Mozilla HTMLProgressElement documentation>
newtype HTMLProgressElement = HTMLProgressElement { unHTMLProgressElement :: JSVal }

instance PToJSVal HTMLProgressElement where
  pToJSVal = unHTMLProgressElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLProgressElement where
  pFromJSVal = HTMLProgressElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLProgressElement where
  toJSVal = return . unHTMLProgressElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLProgressElement where
  fromJSVal v = fmap HTMLProgressElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLProgressElement where
  makeObject = makeObject . unHTMLProgressElement

instance IsHTMLElement HTMLProgressElement
instance IsElement HTMLProgressElement
instance IsNode HTMLProgressElement
instance IsEventTarget HTMLProgressElement
instance IsGObject HTMLProgressElement where
  typeGType _ = gTypeHTMLProgressElement
  {-# INLINE typeGType #-}

gTypeHTMLProgressElement :: JSM GType
gTypeHTMLProgressElement = GType . Object <$> jsg "HTMLProgressElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLQuoteElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement Mozilla HTMLQuoteElement documentation>
newtype HTMLQuoteElement = HTMLQuoteElement { unHTMLQuoteElement :: JSVal }

instance PToJSVal HTMLQuoteElement where
  pToJSVal = unHTMLQuoteElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLQuoteElement where
  pFromJSVal = HTMLQuoteElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLQuoteElement where
  toJSVal = return . unHTMLQuoteElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLQuoteElement where
  fromJSVal v = fmap HTMLQuoteElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLQuoteElement where
  makeObject = makeObject . unHTMLQuoteElement

instance IsHTMLElement HTMLQuoteElement
instance IsElement HTMLQuoteElement
instance IsNode HTMLQuoteElement
instance IsEventTarget HTMLQuoteElement
instance IsGObject HTMLQuoteElement where
  typeGType _ = gTypeHTMLQuoteElement
  {-# INLINE typeGType #-}

gTypeHTMLQuoteElement :: JSM GType
gTypeHTMLQuoteElement = GType . Object <$> jsg "HTMLQuoteElement"
#else
type IsHTMLQuoteElement o = HTMLQuoteElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLScriptElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement Mozilla HTMLScriptElement documentation>
newtype HTMLScriptElement = HTMLScriptElement { unHTMLScriptElement :: JSVal }

instance PToJSVal HTMLScriptElement where
  pToJSVal = unHTMLScriptElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLScriptElement where
  pFromJSVal = HTMLScriptElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLScriptElement where
  toJSVal = return . unHTMLScriptElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLScriptElement where
  fromJSVal v = fmap HTMLScriptElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLScriptElement where
  makeObject = makeObject . unHTMLScriptElement

instance IsHTMLElement HTMLScriptElement
instance IsElement HTMLScriptElement
instance IsNode HTMLScriptElement
instance IsEventTarget HTMLScriptElement
instance IsGObject HTMLScriptElement where
  typeGType _ = gTypeHTMLScriptElement
  {-# INLINE typeGType #-}

gTypeHTMLScriptElement :: JSM GType
gTypeHTMLScriptElement = GType . Object <$> jsg "HTMLScriptElement"
#else
type IsHTMLScriptElement o = HTMLScriptElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLSelectElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement Mozilla HTMLSelectElement documentation>
newtype HTMLSelectElement = HTMLSelectElement { unHTMLSelectElement :: JSVal }

instance PToJSVal HTMLSelectElement where
  pToJSVal = unHTMLSelectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLSelectElement where
  pFromJSVal = HTMLSelectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLSelectElement where
  toJSVal = return . unHTMLSelectElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLSelectElement where
  fromJSVal v = fmap HTMLSelectElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLSelectElement where
  makeObject = makeObject . unHTMLSelectElement

instance IsHTMLElement HTMLSelectElement
instance IsElement HTMLSelectElement
instance IsNode HTMLSelectElement
instance IsEventTarget HTMLSelectElement
instance IsGObject HTMLSelectElement where
  typeGType _ = gTypeHTMLSelectElement
  {-# INLINE typeGType #-}

gTypeHTMLSelectElement :: JSM GType
gTypeHTMLSelectElement = GType . Object <$> jsg "HTMLSelectElement"
#else
type IsHTMLSelectElement o = HTMLSelectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLSourceElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement Mozilla HTMLSourceElement documentation>
newtype HTMLSourceElement = HTMLSourceElement { unHTMLSourceElement :: JSVal }

instance PToJSVal HTMLSourceElement where
  pToJSVal = unHTMLSourceElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLSourceElement where
  pFromJSVal = HTMLSourceElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLSourceElement where
  toJSVal = return . unHTMLSourceElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLSourceElement where
  fromJSVal v = fmap HTMLSourceElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLSourceElement where
  makeObject = makeObject . unHTMLSourceElement

instance IsHTMLElement HTMLSourceElement
instance IsElement HTMLSourceElement
instance IsNode HTMLSourceElement
instance IsEventTarget HTMLSourceElement
instance IsGObject HTMLSourceElement where
  typeGType _ = gTypeHTMLSourceElement
  {-# INLINE typeGType #-}

gTypeHTMLSourceElement :: JSM GType
gTypeHTMLSourceElement = GType . Object <$> jsg "HTMLSourceElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLSpanElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSpanElement Mozilla HTMLSpanElement documentation>
newtype HTMLSpanElement = HTMLSpanElement { unHTMLSpanElement :: JSVal }

instance PToJSVal HTMLSpanElement where
  pToJSVal = unHTMLSpanElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLSpanElement where
  pFromJSVal = HTMLSpanElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLSpanElement where
  toJSVal = return . unHTMLSpanElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLSpanElement where
  fromJSVal v = fmap HTMLSpanElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLSpanElement where
  makeObject = makeObject . unHTMLSpanElement

instance IsHTMLElement HTMLSpanElement
instance IsElement HTMLSpanElement
instance IsNode HTMLSpanElement
instance IsEventTarget HTMLSpanElement
instance IsGObject HTMLSpanElement where
  typeGType _ = gTypeHTMLSpanElement
  {-# INLINE typeGType #-}

gTypeHTMLSpanElement :: JSM GType
gTypeHTMLSpanElement = GType . Object <$> jsg "HTMLSpanElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLStyleElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement Mozilla HTMLStyleElement documentation>
newtype HTMLStyleElement = HTMLStyleElement { unHTMLStyleElement :: JSVal }

instance PToJSVal HTMLStyleElement where
  pToJSVal = unHTMLStyleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLStyleElement where
  pFromJSVal = HTMLStyleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLStyleElement where
  toJSVal = return . unHTMLStyleElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLStyleElement where
  fromJSVal v = fmap HTMLStyleElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLStyleElement where
  makeObject = makeObject . unHTMLStyleElement

instance IsHTMLElement HTMLStyleElement
instance IsElement HTMLStyleElement
instance IsNode HTMLStyleElement
instance IsEventTarget HTMLStyleElement
instance IsGObject HTMLStyleElement where
  typeGType _ = gTypeHTMLStyleElement
  {-# INLINE typeGType #-}

gTypeHTMLStyleElement :: JSM GType
gTypeHTMLStyleElement = GType . Object <$> jsg "HTMLStyleElement"
#else
type IsHTMLStyleElement o = HTMLStyleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTableCaptionElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement Mozilla HTMLTableCaptionElement documentation>
newtype HTMLTableCaptionElement = HTMLTableCaptionElement { unHTMLTableCaptionElement :: JSVal }

instance PToJSVal HTMLTableCaptionElement where
  pToJSVal = unHTMLTableCaptionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableCaptionElement where
  pFromJSVal = HTMLTableCaptionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableCaptionElement where
  toJSVal = return . unHTMLTableCaptionElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableCaptionElement where
  fromJSVal v = fmap HTMLTableCaptionElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTableCaptionElement where
  makeObject = makeObject . unHTMLTableCaptionElement

instance IsHTMLElement HTMLTableCaptionElement
instance IsElement HTMLTableCaptionElement
instance IsNode HTMLTableCaptionElement
instance IsEventTarget HTMLTableCaptionElement
instance IsGObject HTMLTableCaptionElement where
  typeGType _ = gTypeHTMLTableCaptionElement
  {-# INLINE typeGType #-}

gTypeHTMLTableCaptionElement :: JSM GType
gTypeHTMLTableCaptionElement = GType . Object <$> jsg "HTMLTableCaptionElement"
#else
type IsHTMLTableCaptionElement o = HTMLTableCaptionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTableCellElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement Mozilla HTMLTableCellElement documentation>
newtype HTMLTableCellElement = HTMLTableCellElement { unHTMLTableCellElement :: JSVal }

instance PToJSVal HTMLTableCellElement where
  pToJSVal = unHTMLTableCellElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableCellElement where
  pFromJSVal = HTMLTableCellElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableCellElement where
  toJSVal = return . unHTMLTableCellElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableCellElement where
  fromJSVal v = fmap HTMLTableCellElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTableCellElement where
  makeObject = makeObject . unHTMLTableCellElement

instance IsHTMLElement HTMLTableCellElement
instance IsElement HTMLTableCellElement
instance IsNode HTMLTableCellElement
instance IsEventTarget HTMLTableCellElement
instance IsGObject HTMLTableCellElement where
  typeGType _ = gTypeHTMLTableCellElement
  {-# INLINE typeGType #-}

gTypeHTMLTableCellElement :: JSM GType
gTypeHTMLTableCellElement = GType . Object <$> jsg "HTMLTableCellElement"
#else
type IsHTMLTableCellElement o = HTMLTableCellElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTableColElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement Mozilla HTMLTableColElement documentation>
newtype HTMLTableColElement = HTMLTableColElement { unHTMLTableColElement :: JSVal }

instance PToJSVal HTMLTableColElement where
  pToJSVal = unHTMLTableColElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableColElement where
  pFromJSVal = HTMLTableColElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableColElement where
  toJSVal = return . unHTMLTableColElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableColElement where
  fromJSVal v = fmap HTMLTableColElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTableColElement where
  makeObject = makeObject . unHTMLTableColElement

instance IsHTMLElement HTMLTableColElement
instance IsElement HTMLTableColElement
instance IsNode HTMLTableColElement
instance IsEventTarget HTMLTableColElement
instance IsGObject HTMLTableColElement where
  typeGType _ = gTypeHTMLTableColElement
  {-# INLINE typeGType #-}

gTypeHTMLTableColElement :: JSM GType
gTypeHTMLTableColElement = GType . Object <$> jsg "HTMLTableColElement"
#else
type IsHTMLTableColElement o = HTMLTableColElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTableElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement Mozilla HTMLTableElement documentation>
newtype HTMLTableElement = HTMLTableElement { unHTMLTableElement :: JSVal }

instance PToJSVal HTMLTableElement where
  pToJSVal = unHTMLTableElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableElement where
  pFromJSVal = HTMLTableElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableElement where
  toJSVal = return . unHTMLTableElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableElement where
  fromJSVal v = fmap HTMLTableElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTableElement where
  makeObject = makeObject . unHTMLTableElement

instance IsHTMLElement HTMLTableElement
instance IsElement HTMLTableElement
instance IsNode HTMLTableElement
instance IsEventTarget HTMLTableElement
instance IsGObject HTMLTableElement where
  typeGType _ = gTypeHTMLTableElement
  {-# INLINE typeGType #-}

gTypeHTMLTableElement :: JSM GType
gTypeHTMLTableElement = GType . Object <$> jsg "HTMLTableElement"
#else
type IsHTMLTableElement o = HTMLTableElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTableRowElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement Mozilla HTMLTableRowElement documentation>
newtype HTMLTableRowElement = HTMLTableRowElement { unHTMLTableRowElement :: JSVal }

instance PToJSVal HTMLTableRowElement where
  pToJSVal = unHTMLTableRowElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableRowElement where
  pFromJSVal = HTMLTableRowElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableRowElement where
  toJSVal = return . unHTMLTableRowElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableRowElement where
  fromJSVal v = fmap HTMLTableRowElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTableRowElement where
  makeObject = makeObject . unHTMLTableRowElement

instance IsHTMLElement HTMLTableRowElement
instance IsElement HTMLTableRowElement
instance IsNode HTMLTableRowElement
instance IsEventTarget HTMLTableRowElement
instance IsGObject HTMLTableRowElement where
  typeGType _ = gTypeHTMLTableRowElement
  {-# INLINE typeGType #-}

gTypeHTMLTableRowElement :: JSM GType
gTypeHTMLTableRowElement = GType . Object <$> jsg "HTMLTableRowElement"
#else
type IsHTMLTableRowElement o = HTMLTableRowElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTableSectionElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement Mozilla HTMLTableSectionElement documentation>
newtype HTMLTableSectionElement = HTMLTableSectionElement { unHTMLTableSectionElement :: JSVal }

instance PToJSVal HTMLTableSectionElement where
  pToJSVal = unHTMLTableSectionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableSectionElement where
  pFromJSVal = HTMLTableSectionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableSectionElement where
  toJSVal = return . unHTMLTableSectionElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableSectionElement where
  fromJSVal v = fmap HTMLTableSectionElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTableSectionElement where
  makeObject = makeObject . unHTMLTableSectionElement

instance IsHTMLElement HTMLTableSectionElement
instance IsElement HTMLTableSectionElement
instance IsNode HTMLTableSectionElement
instance IsEventTarget HTMLTableSectionElement
instance IsGObject HTMLTableSectionElement where
  typeGType _ = gTypeHTMLTableSectionElement
  {-# INLINE typeGType #-}

gTypeHTMLTableSectionElement :: JSM GType
gTypeHTMLTableSectionElement = GType . Object <$> jsg "HTMLTableSectionElement"
#else
type IsHTMLTableSectionElement o = HTMLTableSectionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTemplateElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement Mozilla HTMLTemplateElement documentation>
newtype HTMLTemplateElement = HTMLTemplateElement { unHTMLTemplateElement :: JSVal }

instance PToJSVal HTMLTemplateElement where
  pToJSVal = unHTMLTemplateElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTemplateElement where
  pFromJSVal = HTMLTemplateElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTemplateElement where
  toJSVal = return . unHTMLTemplateElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTemplateElement where
  fromJSVal v = fmap HTMLTemplateElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTemplateElement where
  makeObject = makeObject . unHTMLTemplateElement

instance IsHTMLElement HTMLTemplateElement
instance IsElement HTMLTemplateElement
instance IsNode HTMLTemplateElement
instance IsEventTarget HTMLTemplateElement
instance IsGObject HTMLTemplateElement where
  typeGType _ = gTypeHTMLTemplateElement
  {-# INLINE typeGType #-}

gTypeHTMLTemplateElement :: JSM GType
gTypeHTMLTemplateElement = GType . Object <$> jsg "HTMLTemplateElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTextAreaElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement Mozilla HTMLTextAreaElement documentation>
newtype HTMLTextAreaElement = HTMLTextAreaElement { unHTMLTextAreaElement :: JSVal }

instance PToJSVal HTMLTextAreaElement where
  pToJSVal = unHTMLTextAreaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTextAreaElement where
  pFromJSVal = HTMLTextAreaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTextAreaElement where
  toJSVal = return . unHTMLTextAreaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTextAreaElement where
  fromJSVal v = fmap HTMLTextAreaElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTextAreaElement where
  makeObject = makeObject . unHTMLTextAreaElement

instance IsHTMLElement HTMLTextAreaElement
instance IsElement HTMLTextAreaElement
instance IsNode HTMLTextAreaElement
instance IsEventTarget HTMLTextAreaElement
instance IsGObject HTMLTextAreaElement where
  typeGType _ = gTypeHTMLTextAreaElement
  {-# INLINE typeGType #-}

gTypeHTMLTextAreaElement :: JSM GType
gTypeHTMLTextAreaElement = GType . Object <$> jsg "HTMLTextAreaElement"
#else
type IsHTMLTextAreaElement o = HTMLTextAreaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTitleElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement Mozilla HTMLTitleElement documentation>
newtype HTMLTitleElement = HTMLTitleElement { unHTMLTitleElement :: JSVal }

instance PToJSVal HTMLTitleElement where
  pToJSVal = unHTMLTitleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTitleElement where
  pFromJSVal = HTMLTitleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTitleElement where
  toJSVal = return . unHTMLTitleElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTitleElement where
  fromJSVal v = fmap HTMLTitleElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTitleElement where
  makeObject = makeObject . unHTMLTitleElement

instance IsHTMLElement HTMLTitleElement
instance IsElement HTMLTitleElement
instance IsNode HTMLTitleElement
instance IsEventTarget HTMLTitleElement
instance IsGObject HTMLTitleElement where
  typeGType _ = gTypeHTMLTitleElement
  {-# INLINE typeGType #-}

gTypeHTMLTitleElement :: JSM GType
gTypeHTMLTitleElement = GType . Object <$> jsg "HTMLTitleElement"
#else
type IsHTMLTitleElement o = HTMLTitleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLTrackElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement Mozilla HTMLTrackElement documentation>
newtype HTMLTrackElement = HTMLTrackElement { unHTMLTrackElement :: JSVal }

instance PToJSVal HTMLTrackElement where
  pToJSVal = unHTMLTrackElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTrackElement where
  pFromJSVal = HTMLTrackElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTrackElement where
  toJSVal = return . unHTMLTrackElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTrackElement where
  fromJSVal v = fmap HTMLTrackElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLTrackElement where
  makeObject = makeObject . unHTMLTrackElement

instance IsHTMLElement HTMLTrackElement
instance IsElement HTMLTrackElement
instance IsNode HTMLTrackElement
instance IsEventTarget HTMLTrackElement
instance IsGObject HTMLTrackElement where
  typeGType _ = gTypeHTMLTrackElement
  {-# INLINE typeGType #-}

gTypeHTMLTrackElement :: JSM GType
gTypeHTMLTrackElement = GType . Object <$> jsg "HTMLTrackElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLUListElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement Mozilla HTMLUListElement documentation>
newtype HTMLUListElement = HTMLUListElement { unHTMLUListElement :: JSVal }

instance PToJSVal HTMLUListElement where
  pToJSVal = unHTMLUListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLUListElement where
  pFromJSVal = HTMLUListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLUListElement where
  toJSVal = return . unHTMLUListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLUListElement where
  fromJSVal v = fmap HTMLUListElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLUListElement where
  makeObject = makeObject . unHTMLUListElement

instance IsHTMLElement HTMLUListElement
instance IsElement HTMLUListElement
instance IsNode HTMLUListElement
instance IsEventTarget HTMLUListElement
instance IsGObject HTMLUListElement where
  typeGType _ = gTypeHTMLUListElement
  {-# INLINE typeGType #-}

gTypeHTMLUListElement :: JSM GType
gTypeHTMLUListElement = GType . Object <$> jsg "HTMLUListElement"
#else
type IsHTMLUListElement o = HTMLUListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLUnknownElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUnknownElement Mozilla HTMLUnknownElement documentation>
newtype HTMLUnknownElement = HTMLUnknownElement { unHTMLUnknownElement :: JSVal }

instance PToJSVal HTMLUnknownElement where
  pToJSVal = unHTMLUnknownElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLUnknownElement where
  pFromJSVal = HTMLUnknownElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLUnknownElement where
  toJSVal = return . unHTMLUnknownElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLUnknownElement where
  fromJSVal v = fmap HTMLUnknownElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLUnknownElement where
  makeObject = makeObject . unHTMLUnknownElement

instance IsHTMLElement HTMLUnknownElement
instance IsElement HTMLUnknownElement
instance IsNode HTMLUnknownElement
instance IsEventTarget HTMLUnknownElement
instance IsGObject HTMLUnknownElement where
  typeGType _ = gTypeHTMLUnknownElement
  {-# INLINE typeGType #-}

gTypeHTMLUnknownElement :: JSM GType
gTypeHTMLUnknownElement = GType . Object <$> jsg "HTMLUnknownElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HTMLVideoElement".
-- Base interface functions are in:
--
--     * "JSDOM.HTMLMediaElement"
--     * "JSDOM.HTMLElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement Mozilla HTMLVideoElement documentation>
newtype HTMLVideoElement = HTMLVideoElement { unHTMLVideoElement :: JSVal }

instance PToJSVal HTMLVideoElement where
  pToJSVal = unHTMLVideoElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLVideoElement where
  pFromJSVal = HTMLVideoElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLVideoElement where
  toJSVal = return . unHTMLVideoElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLVideoElement where
  fromJSVal v = fmap HTMLVideoElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HTMLVideoElement where
  makeObject = makeObject . unHTMLVideoElement

instance IsHTMLMediaElement HTMLVideoElement
instance IsHTMLElement HTMLVideoElement
instance IsElement HTMLVideoElement
instance IsNode HTMLVideoElement
instance IsEventTarget HTMLVideoElement
instance IsGObject HTMLVideoElement where
  typeGType _ = gTypeHTMLVideoElement
  {-# INLINE typeGType #-}

gTypeHTMLVideoElement :: JSM GType
gTypeHTMLVideoElement = GType . Object <$> jsg "HTMLVideoElement"
#else
type IsHTMLVideoElement o = HTMLVideoElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.HashChangeEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent Mozilla HashChangeEvent documentation>
newtype HashChangeEvent = HashChangeEvent { unHashChangeEvent :: JSVal }

instance PToJSVal HashChangeEvent where
  pToJSVal = unHashChangeEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal HashChangeEvent where
  pFromJSVal = HashChangeEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal HashChangeEvent where
  toJSVal = return . unHashChangeEvent
  {-# INLINE toJSVal #-}

instance FromJSVal HashChangeEvent where
  fromJSVal v = fmap HashChangeEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject HashChangeEvent where
  makeObject = makeObject . unHashChangeEvent

instance IsEvent HashChangeEvent
instance IsGObject HashChangeEvent where
  typeGType _ = gTypeHashChangeEvent
  {-# INLINE typeGType #-}

gTypeHashChangeEvent :: JSM GType
gTypeHashChangeEvent = GType . Object <$> jsg "HashChangeEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.History".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/History Mozilla History documentation>
newtype History = History { unHistory :: JSVal }

instance PToJSVal History where
  pToJSVal = unHistory
  {-# INLINE pToJSVal #-}

instance PFromJSVal History where
  pFromJSVal = History
  {-# INLINE pFromJSVal #-}

instance ToJSVal History where
  toJSVal = return . unHistory
  {-# INLINE toJSVal #-}

instance FromJSVal History where
  fromJSVal v = fmap History <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject History where
  makeObject = makeObject . unHistory

instance IsGObject History where
  typeGType _ = gTypeHistory
  {-# INLINE typeGType #-}

gTypeHistory :: JSM GType
gTypeHistory = GType . Object <$> jsg "History"
#else
type IsHistory o = HistoryClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBAny".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBAny Mozilla IDBAny documentation>
newtype IDBAny = IDBAny { unIDBAny :: JSVal }

instance PToJSVal IDBAny where
  pToJSVal = unIDBAny
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBAny where
  pFromJSVal = IDBAny
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBAny where
  toJSVal = return . unIDBAny
  {-# INLINE toJSVal #-}

instance FromJSVal IDBAny where
  fromJSVal v = fmap IDBAny <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBAny where
  makeObject = makeObject . unIDBAny

instance IsGObject IDBAny where
  typeGType _ = gTypeIDBAny
  {-# INLINE typeGType #-}

gTypeIDBAny :: JSM GType
gTypeIDBAny = GType . Object <$> jsg "IDBAny"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBCursor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor Mozilla IDBCursor documentation>
newtype IDBCursor = IDBCursor { unIDBCursor :: JSVal }

instance PToJSVal IDBCursor where
  pToJSVal = unIDBCursor
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBCursor where
  pFromJSVal = IDBCursor
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBCursor where
  toJSVal = return . unIDBCursor
  {-# INLINE toJSVal #-}

instance FromJSVal IDBCursor where
  fromJSVal v = fmap IDBCursor <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBCursor where
  makeObject = makeObject . unIDBCursor

class IsGObject o => IsIDBCursor o
toIDBCursor :: IsIDBCursor o => o -> IDBCursor
toIDBCursor = IDBCursor . coerce

instance IsIDBCursor IDBCursor
instance IsGObject IDBCursor where
  typeGType _ = gTypeIDBCursor
  {-# INLINE typeGType #-}

gTypeIDBCursor :: JSM GType
gTypeIDBCursor = GType . Object <$> jsg "IDBCursor"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBCursorWithValue".
-- Base interface functions are in:
--
--     * "JSDOM.IDBCursor"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue Mozilla IDBCursorWithValue documentation>
newtype IDBCursorWithValue = IDBCursorWithValue { unIDBCursorWithValue :: JSVal }

instance PToJSVal IDBCursorWithValue where
  pToJSVal = unIDBCursorWithValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBCursorWithValue where
  pFromJSVal = IDBCursorWithValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBCursorWithValue where
  toJSVal = return . unIDBCursorWithValue
  {-# INLINE toJSVal #-}

instance FromJSVal IDBCursorWithValue where
  fromJSVal v = fmap IDBCursorWithValue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBCursorWithValue where
  makeObject = makeObject . unIDBCursorWithValue

instance IsIDBCursor IDBCursorWithValue
instance IsGObject IDBCursorWithValue where
  typeGType _ = gTypeIDBCursorWithValue
  {-# INLINE typeGType #-}

gTypeIDBCursorWithValue :: JSM GType
gTypeIDBCursorWithValue = GType . Object <$> jsg "IDBCursorWithValue"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBDatabase".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase Mozilla IDBDatabase documentation>
newtype IDBDatabase = IDBDatabase { unIDBDatabase :: JSVal }

instance PToJSVal IDBDatabase where
  pToJSVal = unIDBDatabase
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBDatabase where
  pFromJSVal = IDBDatabase
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBDatabase where
  toJSVal = return . unIDBDatabase
  {-# INLINE toJSVal #-}

instance FromJSVal IDBDatabase where
  fromJSVal v = fmap IDBDatabase <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBDatabase where
  makeObject = makeObject . unIDBDatabase

instance IsEventTarget IDBDatabase
instance IsGObject IDBDatabase where
  typeGType _ = gTypeIDBDatabase
  {-# INLINE typeGType #-}

gTypeIDBDatabase :: JSM GType
gTypeIDBDatabase = GType . Object <$> jsg "IDBDatabase"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBFactory".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory Mozilla IDBFactory documentation>
newtype IDBFactory = IDBFactory { unIDBFactory :: JSVal }

instance PToJSVal IDBFactory where
  pToJSVal = unIDBFactory
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBFactory where
  pFromJSVal = IDBFactory
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBFactory where
  toJSVal = return . unIDBFactory
  {-# INLINE toJSVal #-}

instance FromJSVal IDBFactory where
  fromJSVal v = fmap IDBFactory <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBFactory where
  makeObject = makeObject . unIDBFactory

instance IsGObject IDBFactory where
  typeGType _ = gTypeIDBFactory
  {-# INLINE typeGType #-}

gTypeIDBFactory :: JSM GType
gTypeIDBFactory = GType . Object <$> jsg "IDBFactory"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBIndex".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex Mozilla IDBIndex documentation>
newtype IDBIndex = IDBIndex { unIDBIndex :: JSVal }

instance PToJSVal IDBIndex where
  pToJSVal = unIDBIndex
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBIndex where
  pFromJSVal = IDBIndex
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBIndex where
  toJSVal = return . unIDBIndex
  {-# INLINE toJSVal #-}

instance FromJSVal IDBIndex where
  fromJSVal v = fmap IDBIndex <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBIndex where
  makeObject = makeObject . unIDBIndex

instance IsGObject IDBIndex where
  typeGType _ = gTypeIDBIndex
  {-# INLINE typeGType #-}

gTypeIDBIndex :: JSM GType
gTypeIDBIndex = GType . Object <$> jsg "IDBIndex"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBKeyRange".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange Mozilla IDBKeyRange documentation>
newtype IDBKeyRange = IDBKeyRange { unIDBKeyRange :: JSVal }

instance PToJSVal IDBKeyRange where
  pToJSVal = unIDBKeyRange
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBKeyRange where
  pFromJSVal = IDBKeyRange
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBKeyRange where
  toJSVal = return . unIDBKeyRange
  {-# INLINE toJSVal #-}

instance FromJSVal IDBKeyRange where
  fromJSVal v = fmap IDBKeyRange <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBKeyRange where
  makeObject = makeObject . unIDBKeyRange

instance IsGObject IDBKeyRange where
  typeGType _ = gTypeIDBKeyRange
  {-# INLINE typeGType #-}

gTypeIDBKeyRange :: JSM GType
gTypeIDBKeyRange = GType . Object <$> jsg "IDBKeyRange"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBObjectStore".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore Mozilla IDBObjectStore documentation>
newtype IDBObjectStore = IDBObjectStore { unIDBObjectStore :: JSVal }

instance PToJSVal IDBObjectStore where
  pToJSVal = unIDBObjectStore
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBObjectStore where
  pFromJSVal = IDBObjectStore
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBObjectStore where
  toJSVal = return . unIDBObjectStore
  {-# INLINE toJSVal #-}

instance FromJSVal IDBObjectStore where
  fromJSVal v = fmap IDBObjectStore <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBObjectStore where
  makeObject = makeObject . unIDBObjectStore

instance IsGObject IDBObjectStore where
  typeGType _ = gTypeIDBObjectStore
  {-# INLINE typeGType #-}

gTypeIDBObjectStore :: JSM GType
gTypeIDBObjectStore = GType . Object <$> jsg "IDBObjectStore"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBOpenDBRequest".
-- Base interface functions are in:
--
--     * "JSDOM.IDBRequest"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest Mozilla IDBOpenDBRequest documentation>
newtype IDBOpenDBRequest = IDBOpenDBRequest { unIDBOpenDBRequest :: JSVal }

instance PToJSVal IDBOpenDBRequest where
  pToJSVal = unIDBOpenDBRequest
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBOpenDBRequest where
  pFromJSVal = IDBOpenDBRequest
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBOpenDBRequest where
  toJSVal = return . unIDBOpenDBRequest
  {-# INLINE toJSVal #-}

instance FromJSVal IDBOpenDBRequest where
  fromJSVal v = fmap IDBOpenDBRequest <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBOpenDBRequest where
  makeObject = makeObject . unIDBOpenDBRequest

instance IsIDBRequest IDBOpenDBRequest
instance IsEventTarget IDBOpenDBRequest
instance IsGObject IDBOpenDBRequest where
  typeGType _ = gTypeIDBOpenDBRequest
  {-# INLINE typeGType #-}

gTypeIDBOpenDBRequest :: JSM GType
gTypeIDBOpenDBRequest = GType . Object <$> jsg "IDBOpenDBRequest"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBRequest".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest Mozilla IDBRequest documentation>
newtype IDBRequest = IDBRequest { unIDBRequest :: JSVal }

instance PToJSVal IDBRequest where
  pToJSVal = unIDBRequest
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBRequest where
  pFromJSVal = IDBRequest
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBRequest where
  toJSVal = return . unIDBRequest
  {-# INLINE toJSVal #-}

instance FromJSVal IDBRequest where
  fromJSVal v = fmap IDBRequest <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBRequest where
  makeObject = makeObject . unIDBRequest

class IsEventTarget o => IsIDBRequest o
toIDBRequest :: IsIDBRequest o => o -> IDBRequest
toIDBRequest = IDBRequest . coerce

instance IsIDBRequest IDBRequest
instance IsEventTarget IDBRequest
instance IsGObject IDBRequest where
  typeGType _ = gTypeIDBRequest
  {-# INLINE typeGType #-}

gTypeIDBRequest :: JSM GType
gTypeIDBRequest = GType . Object <$> jsg "IDBRequest"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBTransaction".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction Mozilla IDBTransaction documentation>
newtype IDBTransaction = IDBTransaction { unIDBTransaction :: JSVal }

instance PToJSVal IDBTransaction where
  pToJSVal = unIDBTransaction
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBTransaction where
  pFromJSVal = IDBTransaction
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBTransaction where
  toJSVal = return . unIDBTransaction
  {-# INLINE toJSVal #-}

instance FromJSVal IDBTransaction where
  fromJSVal v = fmap IDBTransaction <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBTransaction where
  makeObject = makeObject . unIDBTransaction

instance IsEventTarget IDBTransaction
instance IsGObject IDBTransaction where
  typeGType _ = gTypeIDBTransaction
  {-# INLINE typeGType #-}

gTypeIDBTransaction :: JSM GType
gTypeIDBTransaction = GType . Object <$> jsg "IDBTransaction"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.IDBVersionChangeEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent Mozilla IDBVersionChangeEvent documentation>
newtype IDBVersionChangeEvent = IDBVersionChangeEvent { unIDBVersionChangeEvent :: JSVal }

instance PToJSVal IDBVersionChangeEvent where
  pToJSVal = unIDBVersionChangeEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBVersionChangeEvent where
  pFromJSVal = IDBVersionChangeEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBVersionChangeEvent where
  toJSVal = return . unIDBVersionChangeEvent
  {-# INLINE toJSVal #-}

instance FromJSVal IDBVersionChangeEvent where
  fromJSVal v = fmap IDBVersionChangeEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject IDBVersionChangeEvent where
  makeObject = makeObject . unIDBVersionChangeEvent

instance IsEvent IDBVersionChangeEvent
instance IsGObject IDBVersionChangeEvent where
  typeGType _ = gTypeIDBVersionChangeEvent
  {-# INLINE typeGType #-}

gTypeIDBVersionChangeEvent :: JSM GType
gTypeIDBVersionChangeEvent = GType . Object <$> jsg "IDBVersionChangeEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ImageData".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation>
newtype ImageData = ImageData { unImageData :: JSVal }

instance PToJSVal ImageData where
  pToJSVal = unImageData
  {-# INLINE pToJSVal #-}

instance PFromJSVal ImageData where
  pFromJSVal = ImageData
  {-# INLINE pFromJSVal #-}

instance ToJSVal ImageData where
  toJSVal = return . unImageData
  {-# INLINE toJSVal #-}

instance FromJSVal ImageData where
  fromJSVal v = fmap ImageData <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ImageData where
  makeObject = makeObject . unImageData

instance IsGObject ImageData where
  typeGType _ = gTypeImageData
  {-# INLINE typeGType #-}

gTypeImageData :: JSM GType
gTypeImageData = GType . Object <$> jsg "ImageData"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.InspectorFrontendHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost Mozilla InspectorFrontendHost documentation>
newtype InspectorFrontendHost = InspectorFrontendHost { unInspectorFrontendHost :: JSVal }

instance PToJSVal InspectorFrontendHost where
  pToJSVal = unInspectorFrontendHost
  {-# INLINE pToJSVal #-}

instance PFromJSVal InspectorFrontendHost where
  pFromJSVal = InspectorFrontendHost
  {-# INLINE pFromJSVal #-}

instance ToJSVal InspectorFrontendHost where
  toJSVal = return . unInspectorFrontendHost
  {-# INLINE toJSVal #-}

instance FromJSVal InspectorFrontendHost where
  fromJSVal v = fmap InspectorFrontendHost <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject InspectorFrontendHost where
  makeObject = makeObject . unInspectorFrontendHost

instance IsGObject InspectorFrontendHost where
  typeGType _ = gTypeInspectorFrontendHost
  {-# INLINE typeGType #-}

gTypeInspectorFrontendHost :: JSM GType
gTypeInspectorFrontendHost = GType . Object <$> jsg "InspectorFrontendHost"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.InternalSettings".
-- Base interface functions are in:
--
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings Mozilla InternalSettings documentation>
newtype InternalSettings = InternalSettings { unInternalSettings :: JSVal }

instance PToJSVal InternalSettings where
  pToJSVal = unInternalSettings
  {-# INLINE pToJSVal #-}

instance PFromJSVal InternalSettings where
  pFromJSVal = InternalSettings
  {-# INLINE pFromJSVal #-}

instance ToJSVal InternalSettings where
  toJSVal = return . unInternalSettings
  {-# INLINE toJSVal #-}

instance FromJSVal InternalSettings where
  fromJSVal v = fmap InternalSettings <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject InternalSettings where
  makeObject = makeObject . unInternalSettings

instance IsGObject InternalSettings where
  typeGType _ = gTypeInternalSettings
  {-# INLINE typeGType #-}

gTypeInternalSettings :: JSM GType
gTypeInternalSettings = GType . Object <$> jsg "InternalSettings"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Internals".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Internals Mozilla Internals documentation>
newtype Internals = Internals { unInternals :: JSVal }

instance PToJSVal Internals where
  pToJSVal = unInternals
  {-# INLINE pToJSVal #-}

instance PFromJSVal Internals where
  pFromJSVal = Internals
  {-# INLINE pFromJSVal #-}

instance ToJSVal Internals where
  toJSVal = return . unInternals
  {-# INLINE toJSVal #-}

instance FromJSVal Internals where
  fromJSVal v = fmap Internals <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Internals where
  makeObject = makeObject . unInternals

instance IsGObject Internals where
  typeGType _ = gTypeInternals
  {-# INLINE typeGType #-}

gTypeInternals :: JSM GType
gTypeInternals = GType . Object <$> jsg "Internals"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.KeyboardEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent Mozilla KeyboardEvent documentation>
newtype KeyboardEvent = KeyboardEvent { unKeyboardEvent :: JSVal }

instance PToJSVal KeyboardEvent where
  pToJSVal = unKeyboardEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal KeyboardEvent where
  pFromJSVal = KeyboardEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal KeyboardEvent where
  toJSVal = return . unKeyboardEvent
  {-# INLINE toJSVal #-}

instance FromJSVal KeyboardEvent where
  fromJSVal v = fmap KeyboardEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject KeyboardEvent where
  makeObject = makeObject . unKeyboardEvent

instance IsUIEvent KeyboardEvent
instance IsEvent KeyboardEvent
instance IsGObject KeyboardEvent where
  typeGType _ = gTypeKeyboardEvent
  {-# INLINE typeGType #-}

gTypeKeyboardEvent :: JSM GType
gTypeKeyboardEvent = GType . Object <$> jsg "KeyboardEvent"
#else
#ifndef USE_OLD_WEBKIT
type IsKeyboardEvent o = KeyboardEventClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Location".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Location Mozilla Location documentation>
newtype Location = Location { unLocation :: JSVal }

instance PToJSVal Location where
  pToJSVal = unLocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal Location where
  pFromJSVal = Location
  {-# INLINE pFromJSVal #-}

instance ToJSVal Location where
  toJSVal = return . unLocation
  {-# INLINE toJSVal #-}

instance FromJSVal Location where
  fromJSVal v = fmap Location <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Location where
  makeObject = makeObject . unLocation

instance IsGObject Location where
  typeGType _ = gTypeLocation
  {-# INLINE typeGType #-}

gTypeLocation :: JSM GType
gTypeLocation = GType . Object <$> jsg "Location"
#else
type IsLocation o = LocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MallocStatistics".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics Mozilla MallocStatistics documentation>
newtype MallocStatistics = MallocStatistics { unMallocStatistics :: JSVal }

instance PToJSVal MallocStatistics where
  pToJSVal = unMallocStatistics
  {-# INLINE pToJSVal #-}

instance PFromJSVal MallocStatistics where
  pFromJSVal = MallocStatistics
  {-# INLINE pFromJSVal #-}

instance ToJSVal MallocStatistics where
  toJSVal = return . unMallocStatistics
  {-# INLINE toJSVal #-}

instance FromJSVal MallocStatistics where
  fromJSVal v = fmap MallocStatistics <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MallocStatistics where
  makeObject = makeObject . unMallocStatistics

instance IsGObject MallocStatistics where
  typeGType _ = gTypeMallocStatistics
  {-# INLINE typeGType #-}

gTypeMallocStatistics :: JSM GType
gTypeMallocStatistics = GType . Object <$> jsg "MallocStatistics"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaController".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaController Mozilla MediaController documentation>
newtype MediaController = MediaController { unMediaController :: JSVal }

instance PToJSVal MediaController where
  pToJSVal = unMediaController
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaController where
  pFromJSVal = MediaController
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaController where
  toJSVal = return . unMediaController
  {-# INLINE toJSVal #-}

instance FromJSVal MediaController where
  fromJSVal v = fmap MediaController <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaController where
  makeObject = makeObject . unMediaController

instance IsEventTarget MediaController
instance IsGObject MediaController where
  typeGType _ = gTypeMediaController
  {-# INLINE typeGType #-}

gTypeMediaController :: JSM GType
gTypeMediaController = GType . Object <$> jsg "MediaController"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaControlsHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost Mozilla MediaControlsHost documentation>
newtype MediaControlsHost = MediaControlsHost { unMediaControlsHost :: JSVal }

instance PToJSVal MediaControlsHost where
  pToJSVal = unMediaControlsHost
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaControlsHost where
  pFromJSVal = MediaControlsHost
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaControlsHost where
  toJSVal = return . unMediaControlsHost
  {-# INLINE toJSVal #-}

instance FromJSVal MediaControlsHost where
  fromJSVal v = fmap MediaControlsHost <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaControlsHost where
  makeObject = makeObject . unMediaControlsHost

instance IsGObject MediaControlsHost where
  typeGType _ = gTypeMediaControlsHost
  {-# INLINE typeGType #-}

gTypeMediaControlsHost :: JSM GType
gTypeMediaControlsHost = GType . Object <$> jsg "MediaControlsHost"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaElementAudioSourceNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode Mozilla MediaElementAudioSourceNode documentation>
newtype MediaElementAudioSourceNode = MediaElementAudioSourceNode { unMediaElementAudioSourceNode :: JSVal }

instance PToJSVal MediaElementAudioSourceNode where
  pToJSVal = unMediaElementAudioSourceNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaElementAudioSourceNode where
  pFromJSVal = MediaElementAudioSourceNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaElementAudioSourceNode where
  toJSVal = return . unMediaElementAudioSourceNode
  {-# INLINE toJSVal #-}

instance FromJSVal MediaElementAudioSourceNode where
  fromJSVal v = fmap MediaElementAudioSourceNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaElementAudioSourceNode where
  makeObject = makeObject . unMediaElementAudioSourceNode

instance IsAudioNode MediaElementAudioSourceNode
instance IsEventTarget MediaElementAudioSourceNode
instance IsGObject MediaElementAudioSourceNode where
  typeGType _ = gTypeMediaElementAudioSourceNode
  {-# INLINE typeGType #-}

gTypeMediaElementAudioSourceNode :: JSM GType
gTypeMediaElementAudioSourceNode = GType . Object <$> jsg "MediaElementAudioSourceNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaError Mozilla MediaError documentation>
newtype MediaError = MediaError { unMediaError :: JSVal }

instance PToJSVal MediaError where
  pToJSVal = unMediaError
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaError where
  pFromJSVal = MediaError
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaError where
  toJSVal = return . unMediaError
  {-# INLINE toJSVal #-}

instance FromJSVal MediaError where
  fromJSVal v = fmap MediaError <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaError where
  makeObject = makeObject . unMediaError

instance IsGObject MediaError where
  typeGType _ = gTypeMediaError
  {-# INLINE typeGType #-}

gTypeMediaError :: JSM GType
gTypeMediaError = GType . Object <$> jsg "MediaError"
#else
type IsMediaError o = MediaErrorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaKeyError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError Mozilla WebKitMediaKeyError documentation>
newtype MediaKeyError = MediaKeyError { unMediaKeyError :: JSVal }

instance PToJSVal MediaKeyError where
  pToJSVal = unMediaKeyError
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyError where
  pFromJSVal = MediaKeyError
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyError where
  toJSVal = return . unMediaKeyError
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyError where
  fromJSVal v = fmap MediaKeyError <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaKeyError where
  makeObject = makeObject . unMediaKeyError

instance IsGObject MediaKeyError where
  typeGType _ = gTypeMediaKeyError
  {-# INLINE typeGType #-}

gTypeMediaKeyError :: JSM GType
gTypeMediaKeyError = GType . Object <$> jsg "WebKitMediaKeyError"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaKeyEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent Mozilla MediaKeyEvent documentation>
newtype MediaKeyEvent = MediaKeyEvent { unMediaKeyEvent :: JSVal }

instance PToJSVal MediaKeyEvent where
  pToJSVal = unMediaKeyEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyEvent where
  pFromJSVal = MediaKeyEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyEvent where
  toJSVal = return . unMediaKeyEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyEvent where
  fromJSVal v = fmap MediaKeyEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaKeyEvent where
  makeObject = makeObject . unMediaKeyEvent

instance IsEvent MediaKeyEvent
instance IsGObject MediaKeyEvent where
  typeGType _ = gTypeMediaKeyEvent
  {-# INLINE typeGType #-}

gTypeMediaKeyEvent :: JSM GType
gTypeMediaKeyEvent = GType . Object <$> jsg "MediaKeyEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaKeyMessageEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent Mozilla WebKitMediaKeyMessageEvent documentation>
newtype MediaKeyMessageEvent = MediaKeyMessageEvent { unMediaKeyMessageEvent :: JSVal }

instance PToJSVal MediaKeyMessageEvent where
  pToJSVal = unMediaKeyMessageEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyMessageEvent where
  pFromJSVal = MediaKeyMessageEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyMessageEvent where
  toJSVal = return . unMediaKeyMessageEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyMessageEvent where
  fromJSVal v = fmap MediaKeyMessageEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaKeyMessageEvent where
  makeObject = makeObject . unMediaKeyMessageEvent

instance IsEvent MediaKeyMessageEvent
instance IsGObject MediaKeyMessageEvent where
  typeGType _ = gTypeMediaKeyMessageEvent
  {-# INLINE typeGType #-}

gTypeMediaKeyMessageEvent :: JSM GType
gTypeMediaKeyMessageEvent = GType . Object <$> jsg "WebKitMediaKeyMessageEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaKeyNeededEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent Mozilla MediaKeyNeededEvent documentation>
newtype MediaKeyNeededEvent = MediaKeyNeededEvent { unMediaKeyNeededEvent :: JSVal }

instance PToJSVal MediaKeyNeededEvent where
  pToJSVal = unMediaKeyNeededEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyNeededEvent where
  pFromJSVal = MediaKeyNeededEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyNeededEvent where
  toJSVal = return . unMediaKeyNeededEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyNeededEvent where
  fromJSVal v = fmap MediaKeyNeededEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaKeyNeededEvent where
  makeObject = makeObject . unMediaKeyNeededEvent

instance IsEvent MediaKeyNeededEvent
instance IsGObject MediaKeyNeededEvent where
  typeGType _ = gTypeMediaKeyNeededEvent
  {-# INLINE typeGType #-}

gTypeMediaKeyNeededEvent :: JSM GType
gTypeMediaKeyNeededEvent = GType . Object <$> jsg "MediaKeyNeededEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaKeySession".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession Mozilla WebKitMediaKeySession documentation>
newtype MediaKeySession = MediaKeySession { unMediaKeySession :: JSVal }

instance PToJSVal MediaKeySession where
  pToJSVal = unMediaKeySession
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeySession where
  pFromJSVal = MediaKeySession
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeySession where
  toJSVal = return . unMediaKeySession
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeySession where
  fromJSVal v = fmap MediaKeySession <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaKeySession where
  makeObject = makeObject . unMediaKeySession

instance IsEventTarget MediaKeySession
instance IsGObject MediaKeySession where
  typeGType _ = gTypeMediaKeySession
  {-# INLINE typeGType #-}

gTypeMediaKeySession :: JSM GType
gTypeMediaKeySession = GType . Object <$> jsg "WebKitMediaKeySession"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaKeys".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation>
newtype MediaKeys = MediaKeys { unMediaKeys :: JSVal }

instance PToJSVal MediaKeys where
  pToJSVal = unMediaKeys
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeys where
  pFromJSVal = MediaKeys
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeys where
  toJSVal = return . unMediaKeys
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeys where
  fromJSVal v = fmap MediaKeys <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaKeys where
  makeObject = makeObject . unMediaKeys

instance IsGObject MediaKeys where
  typeGType _ = gTypeMediaKeys
  {-# INLINE typeGType #-}

gTypeMediaKeys :: JSM GType
gTypeMediaKeys = GType . Object <$> jsg "WebKitMediaKeys"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaList Mozilla MediaList documentation>
newtype MediaList = MediaList { unMediaList :: JSVal }

instance PToJSVal MediaList where
  pToJSVal = unMediaList
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaList where
  pFromJSVal = MediaList
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaList where
  toJSVal = return . unMediaList
  {-# INLINE toJSVal #-}

instance FromJSVal MediaList where
  fromJSVal v = fmap MediaList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaList where
  makeObject = makeObject . unMediaList

instance IsGObject MediaList where
  typeGType _ = gTypeMediaList
  {-# INLINE typeGType #-}

gTypeMediaList :: JSM GType
gTypeMediaList = GType . Object <$> jsg "MediaList"
#else
type IsMediaList o = MediaListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaQueryList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList Mozilla MediaQueryList documentation>
newtype MediaQueryList = MediaQueryList { unMediaQueryList :: JSVal }

instance PToJSVal MediaQueryList where
  pToJSVal = unMediaQueryList
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaQueryList where
  pFromJSVal = MediaQueryList
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaQueryList where
  toJSVal = return . unMediaQueryList
  {-# INLINE toJSVal #-}

instance FromJSVal MediaQueryList where
  fromJSVal v = fmap MediaQueryList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaQueryList where
  makeObject = makeObject . unMediaQueryList

instance IsGObject MediaQueryList where
  typeGType _ = gTypeMediaQueryList
  {-# INLINE typeGType #-}

gTypeMediaQueryList :: JSM GType
gTypeMediaQueryList = GType . Object <$> jsg "MediaQueryList"
#else
type IsMediaQueryList o = MediaQueryListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaSource".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation>
newtype MediaSource = MediaSource { unMediaSource :: JSVal }

instance PToJSVal MediaSource where
  pToJSVal = unMediaSource
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaSource where
  pFromJSVal = MediaSource
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaSource where
  toJSVal = return . unMediaSource
  {-# INLINE toJSVal #-}

instance FromJSVal MediaSource where
  fromJSVal v = fmap MediaSource <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaSource where
  makeObject = makeObject . unMediaSource

instance IsEventTarget MediaSource
instance IsGObject MediaSource where
  typeGType _ = gTypeMediaSource
  {-# INLINE typeGType #-}

gTypeMediaSource :: JSM GType
gTypeMediaSource = GType . Object <$> jsg "MediaSource"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaSourceStates".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates Mozilla MediaSourceStates documentation>
newtype MediaSourceStates = MediaSourceStates { unMediaSourceStates :: JSVal }

instance PToJSVal MediaSourceStates where
  pToJSVal = unMediaSourceStates
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaSourceStates where
  pFromJSVal = MediaSourceStates
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaSourceStates where
  toJSVal = return . unMediaSourceStates
  {-# INLINE toJSVal #-}

instance FromJSVal MediaSourceStates where
  fromJSVal v = fmap MediaSourceStates <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaSourceStates where
  makeObject = makeObject . unMediaSourceStates

instance IsGObject MediaSourceStates where
  typeGType _ = gTypeMediaSourceStates
  {-# INLINE typeGType #-}

gTypeMediaSourceStates :: JSM GType
gTypeMediaSourceStates = GType . Object <$> jsg "MediaSourceStates"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaStream".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation>
newtype MediaStream = MediaStream { unMediaStream :: JSVal }

instance PToJSVal MediaStream where
  pToJSVal = unMediaStream
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStream where
  pFromJSVal = MediaStream
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStream where
  toJSVal = return . unMediaStream
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStream where
  fromJSVal v = fmap MediaStream <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaStream where
  makeObject = makeObject . unMediaStream

instance IsEventTarget MediaStream
instance IsGObject MediaStream where
  typeGType _ = gTypeMediaStream
  {-# INLINE typeGType #-}

gTypeMediaStream :: JSM GType
gTypeMediaStream = GType . Object <$> jsg "webkitMediaStream"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaStreamAudioDestinationNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioDestinationNode Mozilla MediaStreamAudioDestinationNode documentation>
newtype MediaStreamAudioDestinationNode = MediaStreamAudioDestinationNode { unMediaStreamAudioDestinationNode :: JSVal }

instance PToJSVal MediaStreamAudioDestinationNode where
  pToJSVal = unMediaStreamAudioDestinationNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamAudioDestinationNode where
  pFromJSVal = MediaStreamAudioDestinationNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamAudioDestinationNode where
  toJSVal = return . unMediaStreamAudioDestinationNode
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamAudioDestinationNode where
  fromJSVal v = fmap MediaStreamAudioDestinationNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaStreamAudioDestinationNode where
  makeObject = makeObject . unMediaStreamAudioDestinationNode

instance IsAudioNode MediaStreamAudioDestinationNode
instance IsEventTarget MediaStreamAudioDestinationNode
instance IsGObject MediaStreamAudioDestinationNode where
  typeGType _ = gTypeMediaStreamAudioDestinationNode
  {-# INLINE typeGType #-}

gTypeMediaStreamAudioDestinationNode :: JSM GType
gTypeMediaStreamAudioDestinationNode = GType . Object <$> jsg "MediaStreamAudioDestinationNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaStreamAudioSourceNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode Mozilla MediaStreamAudioSourceNode documentation>
newtype MediaStreamAudioSourceNode = MediaStreamAudioSourceNode { unMediaStreamAudioSourceNode :: JSVal }

instance PToJSVal MediaStreamAudioSourceNode where
  pToJSVal = unMediaStreamAudioSourceNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamAudioSourceNode where
  pFromJSVal = MediaStreamAudioSourceNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamAudioSourceNode where
  toJSVal = return . unMediaStreamAudioSourceNode
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamAudioSourceNode where
  fromJSVal v = fmap MediaStreamAudioSourceNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaStreamAudioSourceNode where
  makeObject = makeObject . unMediaStreamAudioSourceNode

instance IsAudioNode MediaStreamAudioSourceNode
instance IsEventTarget MediaStreamAudioSourceNode
instance IsGObject MediaStreamAudioSourceNode where
  typeGType _ = gTypeMediaStreamAudioSourceNode
  {-# INLINE typeGType #-}

gTypeMediaStreamAudioSourceNode :: JSM GType
gTypeMediaStreamAudioSourceNode = GType . Object <$> jsg "MediaStreamAudioSourceNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaStreamCapabilities".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamCapabilities Mozilla MediaStreamCapabilities documentation>
newtype MediaStreamCapabilities = MediaStreamCapabilities { unMediaStreamCapabilities :: JSVal }

instance PToJSVal MediaStreamCapabilities where
  pToJSVal = unMediaStreamCapabilities
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamCapabilities where
  pFromJSVal = MediaStreamCapabilities
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamCapabilities where
  toJSVal = return . unMediaStreamCapabilities
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamCapabilities where
  fromJSVal v = fmap MediaStreamCapabilities <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaStreamCapabilities where
  makeObject = makeObject . unMediaStreamCapabilities

class IsGObject o => IsMediaStreamCapabilities o
toMediaStreamCapabilities :: IsMediaStreamCapabilities o => o -> MediaStreamCapabilities
toMediaStreamCapabilities = MediaStreamCapabilities . coerce

instance IsMediaStreamCapabilities MediaStreamCapabilities
instance IsGObject MediaStreamCapabilities where
  typeGType _ = gTypeMediaStreamCapabilities
  {-# INLINE typeGType #-}

gTypeMediaStreamCapabilities :: JSM GType
gTypeMediaStreamCapabilities = GType . Object <$> jsg "MediaStreamCapabilities"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaStreamEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent Mozilla MediaStreamEvent documentation>
newtype MediaStreamEvent = MediaStreamEvent { unMediaStreamEvent :: JSVal }

instance PToJSVal MediaStreamEvent where
  pToJSVal = unMediaStreamEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamEvent where
  pFromJSVal = MediaStreamEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamEvent where
  toJSVal = return . unMediaStreamEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamEvent where
  fromJSVal v = fmap MediaStreamEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaStreamEvent where
  makeObject = makeObject . unMediaStreamEvent

instance IsEvent MediaStreamEvent
instance IsGObject MediaStreamEvent where
  typeGType _ = gTypeMediaStreamEvent
  {-# INLINE typeGType #-}

gTypeMediaStreamEvent :: JSM GType
gTypeMediaStreamEvent = GType . Object <$> jsg "MediaStreamEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaStreamTrack".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack Mozilla MediaStreamTrack documentation>
newtype MediaStreamTrack = MediaStreamTrack { unMediaStreamTrack :: JSVal }

instance PToJSVal MediaStreamTrack where
  pToJSVal = unMediaStreamTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamTrack where
  pFromJSVal = MediaStreamTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamTrack where
  toJSVal = return . unMediaStreamTrack
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamTrack where
  fromJSVal v = fmap MediaStreamTrack <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaStreamTrack where
  makeObject = makeObject . unMediaStreamTrack

class IsEventTarget o => IsMediaStreamTrack o
toMediaStreamTrack :: IsMediaStreamTrack o => o -> MediaStreamTrack
toMediaStreamTrack = MediaStreamTrack . coerce

instance IsMediaStreamTrack MediaStreamTrack
instance IsEventTarget MediaStreamTrack
instance IsGObject MediaStreamTrack where
  typeGType _ = gTypeMediaStreamTrack
  {-# INLINE typeGType #-}

gTypeMediaStreamTrack :: JSM GType
gTypeMediaStreamTrack = GType . Object <$> jsg "MediaStreamTrack"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaStreamTrackEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent Mozilla MediaStreamTrackEvent documentation>
newtype MediaStreamTrackEvent = MediaStreamTrackEvent { unMediaStreamTrackEvent :: JSVal }

instance PToJSVal MediaStreamTrackEvent where
  pToJSVal = unMediaStreamTrackEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamTrackEvent where
  pFromJSVal = MediaStreamTrackEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamTrackEvent where
  toJSVal = return . unMediaStreamTrackEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamTrackEvent where
  fromJSVal v = fmap MediaStreamTrackEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaStreamTrackEvent where
  makeObject = makeObject . unMediaStreamTrackEvent

instance IsEvent MediaStreamTrackEvent
instance IsGObject MediaStreamTrackEvent where
  typeGType _ = gTypeMediaStreamTrackEvent
  {-# INLINE typeGType #-}

gTypeMediaStreamTrackEvent :: JSM GType
gTypeMediaStreamTrackEvent = GType . Object <$> jsg "MediaStreamTrackEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaTrackConstraint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraint Mozilla MediaTrackConstraint documentation>
newtype MediaTrackConstraint = MediaTrackConstraint { unMediaTrackConstraint :: JSVal }

instance PToJSVal MediaTrackConstraint where
  pToJSVal = unMediaTrackConstraint
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaTrackConstraint where
  pFromJSVal = MediaTrackConstraint
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaTrackConstraint where
  toJSVal = return . unMediaTrackConstraint
  {-# INLINE toJSVal #-}

instance FromJSVal MediaTrackConstraint where
  fromJSVal v = fmap MediaTrackConstraint <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaTrackConstraint where
  makeObject = makeObject . unMediaTrackConstraint

instance IsGObject MediaTrackConstraint where
  typeGType _ = gTypeMediaTrackConstraint
  {-# INLINE typeGType #-}

gTypeMediaTrackConstraint :: JSM GType
gTypeMediaTrackConstraint = GType . Object <$> jsg "MediaTrackConstraint"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaTrackConstraintSet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraintSet Mozilla MediaTrackConstraintSet documentation>
newtype MediaTrackConstraintSet = MediaTrackConstraintSet { unMediaTrackConstraintSet :: JSVal }

instance PToJSVal MediaTrackConstraintSet where
  pToJSVal = unMediaTrackConstraintSet
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaTrackConstraintSet where
  pFromJSVal = MediaTrackConstraintSet
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaTrackConstraintSet where
  toJSVal = return . unMediaTrackConstraintSet
  {-# INLINE toJSVal #-}

instance FromJSVal MediaTrackConstraintSet where
  fromJSVal v = fmap MediaTrackConstraintSet <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaTrackConstraintSet where
  makeObject = makeObject . unMediaTrackConstraintSet

instance IsGObject MediaTrackConstraintSet where
  typeGType _ = gTypeMediaTrackConstraintSet
  {-# INLINE typeGType #-}

gTypeMediaTrackConstraintSet :: JSM GType
gTypeMediaTrackConstraintSet = GType . Object <$> jsg "MediaTrackConstraintSet"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MediaTrackConstraints".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints Mozilla MediaTrackConstraints documentation>
newtype MediaTrackConstraints = MediaTrackConstraints { unMediaTrackConstraints :: JSVal }

instance PToJSVal MediaTrackConstraints where
  pToJSVal = unMediaTrackConstraints
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaTrackConstraints where
  pFromJSVal = MediaTrackConstraints
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaTrackConstraints where
  toJSVal = return . unMediaTrackConstraints
  {-# INLINE toJSVal #-}

instance FromJSVal MediaTrackConstraints where
  fromJSVal v = fmap MediaTrackConstraints <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MediaTrackConstraints where
  makeObject = makeObject . unMediaTrackConstraints

instance IsGObject MediaTrackConstraints where
  typeGType _ = gTypeMediaTrackConstraints
  {-# INLINE typeGType #-}

gTypeMediaTrackConstraints :: JSM GType
gTypeMediaTrackConstraints = GType . Object <$> jsg "MediaTrackConstraints"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MemoryInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo Mozilla MemoryInfo documentation>
newtype MemoryInfo = MemoryInfo { unMemoryInfo :: JSVal }

instance PToJSVal MemoryInfo where
  pToJSVal = unMemoryInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal MemoryInfo where
  pFromJSVal = MemoryInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal MemoryInfo where
  toJSVal = return . unMemoryInfo
  {-# INLINE toJSVal #-}

instance FromJSVal MemoryInfo where
  fromJSVal v = fmap MemoryInfo <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MemoryInfo where
  makeObject = makeObject . unMemoryInfo

instance IsGObject MemoryInfo where
  typeGType _ = gTypeMemoryInfo
  {-# INLINE typeGType #-}

gTypeMemoryInfo :: JSM GType
gTypeMemoryInfo = GType . Object <$> jsg "MemoryInfo"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MessageChannel".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel Mozilla MessageChannel documentation>
newtype MessageChannel = MessageChannel { unMessageChannel :: JSVal }

instance PToJSVal MessageChannel where
  pToJSVal = unMessageChannel
  {-# INLINE pToJSVal #-}

instance PFromJSVal MessageChannel where
  pFromJSVal = MessageChannel
  {-# INLINE pFromJSVal #-}

instance ToJSVal MessageChannel where
  toJSVal = return . unMessageChannel
  {-# INLINE toJSVal #-}

instance FromJSVal MessageChannel where
  fromJSVal v = fmap MessageChannel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MessageChannel where
  makeObject = makeObject . unMessageChannel

instance IsGObject MessageChannel where
  typeGType _ = gTypeMessageChannel
  {-# INLINE typeGType #-}

gTypeMessageChannel :: JSM GType
gTypeMessageChannel = GType . Object <$> jsg "MessageChannel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MessageEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent Mozilla MessageEvent documentation>
newtype MessageEvent = MessageEvent { unMessageEvent :: JSVal }

instance PToJSVal MessageEvent where
  pToJSVal = unMessageEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MessageEvent where
  pFromJSVal = MessageEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MessageEvent where
  toJSVal = return . unMessageEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MessageEvent where
  fromJSVal v = fmap MessageEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MessageEvent where
  makeObject = makeObject . unMessageEvent

instance IsEvent MessageEvent
instance IsGObject MessageEvent where
  typeGType _ = gTypeMessageEvent
  {-# INLINE typeGType #-}

gTypeMessageEvent :: JSM GType
gTypeMessageEvent = GType . Object <$> jsg "MessageEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MessagePort".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort Mozilla MessagePort documentation>
newtype MessagePort = MessagePort { unMessagePort :: JSVal }

instance PToJSVal MessagePort where
  pToJSVal = unMessagePort
  {-# INLINE pToJSVal #-}

instance PFromJSVal MessagePort where
  pFromJSVal = MessagePort
  {-# INLINE pFromJSVal #-}

instance ToJSVal MessagePort where
  toJSVal = return . unMessagePort
  {-# INLINE toJSVal #-}

instance FromJSVal MessagePort where
  fromJSVal v = fmap MessagePort <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MessagePort where
  makeObject = makeObject . unMessagePort

instance IsEventTarget MessagePort
instance IsGObject MessagePort where
  typeGType _ = gTypeMessagePort
  {-# INLINE typeGType #-}

gTypeMessagePort :: JSM GType
gTypeMessagePort = GType . Object <$> jsg "MessagePort"
#else
type IsMessagePort o = MessagePortClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MimeType".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MimeType Mozilla MimeType documentation>
newtype MimeType = MimeType { unMimeType :: JSVal }

instance PToJSVal MimeType where
  pToJSVal = unMimeType
  {-# INLINE pToJSVal #-}

instance PFromJSVal MimeType where
  pFromJSVal = MimeType
  {-# INLINE pFromJSVal #-}

instance ToJSVal MimeType where
  toJSVal = return . unMimeType
  {-# INLINE toJSVal #-}

instance FromJSVal MimeType where
  fromJSVal v = fmap MimeType <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MimeType where
  makeObject = makeObject . unMimeType

instance IsGObject MimeType where
  typeGType _ = gTypeMimeType
  {-# INLINE typeGType #-}

gTypeMimeType :: JSM GType
gTypeMimeType = GType . Object <$> jsg "MimeType"
#else
type IsMimeType o = MimeTypeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MimeTypeArray".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray Mozilla MimeTypeArray documentation>
newtype MimeTypeArray = MimeTypeArray { unMimeTypeArray :: JSVal }

instance PToJSVal MimeTypeArray where
  pToJSVal = unMimeTypeArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal MimeTypeArray where
  pFromJSVal = MimeTypeArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal MimeTypeArray where
  toJSVal = return . unMimeTypeArray
  {-# INLINE toJSVal #-}

instance FromJSVal MimeTypeArray where
  fromJSVal v = fmap MimeTypeArray <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MimeTypeArray where
  makeObject = makeObject . unMimeTypeArray

instance IsGObject MimeTypeArray where
  typeGType _ = gTypeMimeTypeArray
  {-# INLINE typeGType #-}

gTypeMimeTypeArray :: JSM GType
gTypeMimeTypeArray = GType . Object <$> jsg "MimeTypeArray"
#else
type IsMimeTypeArray o = MimeTypeArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MouseEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent Mozilla MouseEvent documentation>
newtype MouseEvent = MouseEvent { unMouseEvent :: JSVal }

instance PToJSVal MouseEvent where
  pToJSVal = unMouseEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MouseEvent where
  pFromJSVal = MouseEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MouseEvent where
  toJSVal = return . unMouseEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MouseEvent where
  fromJSVal v = fmap MouseEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MouseEvent where
  makeObject = makeObject . unMouseEvent

class IsUIEvent o => IsMouseEvent o
toMouseEvent :: IsMouseEvent o => o -> MouseEvent
toMouseEvent = MouseEvent . coerce

instance IsMouseEvent MouseEvent
instance IsUIEvent MouseEvent
instance IsEvent MouseEvent
instance IsGObject MouseEvent where
  typeGType _ = gTypeMouseEvent
  {-# INLINE typeGType #-}

gTypeMouseEvent :: JSM GType
gTypeMouseEvent = GType . Object <$> jsg "MouseEvent"
#else
type IsMouseEvent o = MouseEventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MutationEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent Mozilla MutationEvent documentation>
newtype MutationEvent = MutationEvent { unMutationEvent :: JSVal }

instance PToJSVal MutationEvent where
  pToJSVal = unMutationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationEvent where
  pFromJSVal = MutationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationEvent where
  toJSVal = return . unMutationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MutationEvent where
  fromJSVal v = fmap MutationEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MutationEvent where
  makeObject = makeObject . unMutationEvent

instance IsEvent MutationEvent
instance IsGObject MutationEvent where
  typeGType _ = gTypeMutationEvent
  {-# INLINE typeGType #-}

gTypeMutationEvent :: JSM GType
gTypeMutationEvent = GType . Object <$> jsg "MutationEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MutationObserver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation>
newtype MutationObserver = MutationObserver { unMutationObserver :: JSVal }

instance PToJSVal MutationObserver where
  pToJSVal = unMutationObserver
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationObserver where
  pFromJSVal = MutationObserver
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationObserver where
  toJSVal = return . unMutationObserver
  {-# INLINE toJSVal #-}

instance FromJSVal MutationObserver where
  fromJSVal v = fmap MutationObserver <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MutationObserver where
  makeObject = makeObject . unMutationObserver

instance IsGObject MutationObserver where
  typeGType _ = gTypeMutationObserver
  {-# INLINE typeGType #-}

gTypeMutationObserver :: JSM GType
gTypeMutationObserver = GType . Object <$> jsg "MutationObserver"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.MutationRecord".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord Mozilla MutationRecord documentation>
newtype MutationRecord = MutationRecord { unMutationRecord :: JSVal }

instance PToJSVal MutationRecord where
  pToJSVal = unMutationRecord
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationRecord where
  pFromJSVal = MutationRecord
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationRecord where
  toJSVal = return . unMutationRecord
  {-# INLINE toJSVal #-}

instance FromJSVal MutationRecord where
  fromJSVal v = fmap MutationRecord <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject MutationRecord where
  makeObject = makeObject . unMutationRecord

instance IsGObject MutationRecord where
  typeGType _ = gTypeMutationRecord
  {-# INLINE typeGType #-}

gTypeMutationRecord :: JSM GType
gTypeMutationRecord = GType . Object <$> jsg "MutationRecord"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.NamedNodeMap".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap Mozilla NamedNodeMap documentation>
newtype NamedNodeMap = NamedNodeMap { unNamedNodeMap :: JSVal }

instance PToJSVal NamedNodeMap where
  pToJSVal = unNamedNodeMap
  {-# INLINE pToJSVal #-}

instance PFromJSVal NamedNodeMap where
  pFromJSVal = NamedNodeMap
  {-# INLINE pFromJSVal #-}

instance ToJSVal NamedNodeMap where
  toJSVal = return . unNamedNodeMap
  {-# INLINE toJSVal #-}

instance FromJSVal NamedNodeMap where
  fromJSVal v = fmap NamedNodeMap <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject NamedNodeMap where
  makeObject = makeObject . unNamedNodeMap

instance IsGObject NamedNodeMap where
  typeGType _ = gTypeNamedNodeMap
  {-# INLINE typeGType #-}

gTypeNamedNodeMap :: JSM GType
gTypeNamedNodeMap = GType . Object <$> jsg "NamedNodeMap"
#else
type IsNamedNodeMap o = NamedNodeMapClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Navigator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Navigator Mozilla Navigator documentation>
newtype Navigator = Navigator { unNavigator :: JSVal }

instance PToJSVal Navigator where
  pToJSVal = unNavigator
  {-# INLINE pToJSVal #-}

instance PFromJSVal Navigator where
  pFromJSVal = Navigator
  {-# INLINE pFromJSVal #-}

instance ToJSVal Navigator where
  toJSVal = return . unNavigator
  {-# INLINE toJSVal #-}

instance FromJSVal Navigator where
  fromJSVal v = fmap Navigator <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Navigator where
  makeObject = makeObject . unNavigator

instance IsGObject Navigator where
  typeGType _ = gTypeNavigator
  {-# INLINE typeGType #-}

gTypeNavigator :: JSM GType
gTypeNavigator = GType . Object <$> jsg "Navigator"
#else
type IsNavigator o = NavigatorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.NavigatorUserMediaError".
-- Base interface functions are in:
--
--     * "JSDOM.DOMError"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaError Mozilla NavigatorUserMediaError documentation>
newtype NavigatorUserMediaError = NavigatorUserMediaError { unNavigatorUserMediaError :: JSVal }

instance PToJSVal NavigatorUserMediaError where
  pToJSVal = unNavigatorUserMediaError
  {-# INLINE pToJSVal #-}

instance PFromJSVal NavigatorUserMediaError where
  pFromJSVal = NavigatorUserMediaError
  {-# INLINE pFromJSVal #-}

instance ToJSVal NavigatorUserMediaError where
  toJSVal = return . unNavigatorUserMediaError
  {-# INLINE toJSVal #-}

instance FromJSVal NavigatorUserMediaError where
  fromJSVal v = fmap NavigatorUserMediaError <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject NavigatorUserMediaError where
  makeObject = makeObject . unNavigatorUserMediaError

instance IsDOMError NavigatorUserMediaError
instance IsGObject NavigatorUserMediaError where
  typeGType _ = gTypeNavigatorUserMediaError
  {-# INLINE typeGType #-}

gTypeNavigatorUserMediaError :: JSM GType
gTypeNavigatorUserMediaError = GType . Object <$> jsg "NavigatorUserMediaError"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Node".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Node Mozilla Node documentation>
newtype Node = Node { unNode :: JSVal }

instance PToJSVal Node where
  pToJSVal = unNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal Node where
  pFromJSVal = Node
  {-# INLINE pFromJSVal #-}

instance ToJSVal Node where
  toJSVal = return . unNode
  {-# INLINE toJSVal #-}

instance FromJSVal Node where
  fromJSVal v = fmap Node <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Node where
  makeObject = makeObject . unNode

class IsEventTarget o => IsNode o
toNode :: IsNode o => o -> Node
toNode = Node . coerce

instance IsNode Node
instance IsEventTarget Node
instance IsGObject Node where
  typeGType _ = gTypeNode
  {-# INLINE typeGType #-}

gTypeNode :: JSM GType
gTypeNode = GType . Object <$> jsg "Node"
#else
type IsNode o = NodeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.NodeFilter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation>
newtype NodeFilter = NodeFilter { unNodeFilter :: JSVal }

instance PToJSVal NodeFilter where
  pToJSVal = unNodeFilter
  {-# INLINE pToJSVal #-}

instance PFromJSVal NodeFilter where
  pFromJSVal = NodeFilter
  {-# INLINE pFromJSVal #-}

instance ToJSVal NodeFilter where
  toJSVal = return . unNodeFilter
  {-# INLINE toJSVal #-}

instance FromJSVal NodeFilter where
  fromJSVal v = fmap NodeFilter <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject NodeFilter where
  makeObject = makeObject . unNodeFilter

instance IsGObject NodeFilter where
  typeGType _ = gTypeNodeFilter
  {-# INLINE typeGType #-}

gTypeNodeFilter :: JSM GType
gTypeNodeFilter = GType . Object <$> jsg "NodeFilter"
#else
type IsNodeFilter o = NodeFilterClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.NodeIterator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator Mozilla NodeIterator documentation>
newtype NodeIterator = NodeIterator { unNodeIterator :: JSVal }

instance PToJSVal NodeIterator where
  pToJSVal = unNodeIterator
  {-# INLINE pToJSVal #-}

instance PFromJSVal NodeIterator where
  pFromJSVal = NodeIterator
  {-# INLINE pFromJSVal #-}

instance ToJSVal NodeIterator where
  toJSVal = return . unNodeIterator
  {-# INLINE toJSVal #-}

instance FromJSVal NodeIterator where
  fromJSVal v = fmap NodeIterator <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject NodeIterator where
  makeObject = makeObject . unNodeIterator

instance IsGObject NodeIterator where
  typeGType _ = gTypeNodeIterator
  {-# INLINE typeGType #-}

gTypeNodeIterator :: JSM GType
gTypeNodeIterator = GType . Object <$> jsg "NodeIterator"
#else
type IsNodeIterator o = NodeIteratorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.NodeList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeList Mozilla NodeList documentation>
newtype NodeList = NodeList { unNodeList :: JSVal }

instance PToJSVal NodeList where
  pToJSVal = unNodeList
  {-# INLINE pToJSVal #-}

instance PFromJSVal NodeList where
  pFromJSVal = NodeList
  {-# INLINE pFromJSVal #-}

instance ToJSVal NodeList where
  toJSVal = return . unNodeList
  {-# INLINE toJSVal #-}

instance FromJSVal NodeList where
  fromJSVal v = fmap NodeList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject NodeList where
  makeObject = makeObject . unNodeList

class IsGObject o => IsNodeList o
toNodeList :: IsNodeList o => o -> NodeList
toNodeList = NodeList . coerce

instance IsNodeList NodeList
instance IsGObject NodeList where
  typeGType _ = gTypeNodeList
  {-# INLINE typeGType #-}

gTypeNodeList :: JSM GType
gTypeNodeList = GType . Object <$> jsg "NodeList"
#else
type IsNodeList o = NodeListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Notification".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Notification Mozilla Notification documentation>
newtype Notification = Notification { unNotification :: JSVal }

instance PToJSVal Notification where
  pToJSVal = unNotification
  {-# INLINE pToJSVal #-}

instance PFromJSVal Notification where
  pFromJSVal = Notification
  {-# INLINE pFromJSVal #-}

instance ToJSVal Notification where
  toJSVal = return . unNotification
  {-# INLINE toJSVal #-}

instance FromJSVal Notification where
  fromJSVal v = fmap Notification <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Notification where
  makeObject = makeObject . unNotification

instance IsEventTarget Notification
instance IsGObject Notification where
  typeGType _ = gTypeNotification
  {-# INLINE typeGType #-}

gTypeNotification :: JSM GType
gTypeNotification = GType . Object <$> jsg "Notification"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.NotificationCenter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter Mozilla NotificationCenter documentation>
newtype NotificationCenter = NotificationCenter { unNotificationCenter :: JSVal }

instance PToJSVal NotificationCenter where
  pToJSVal = unNotificationCenter
  {-# INLINE pToJSVal #-}

instance PFromJSVal NotificationCenter where
  pFromJSVal = NotificationCenter
  {-# INLINE pFromJSVal #-}

instance ToJSVal NotificationCenter where
  toJSVal = return . unNotificationCenter
  {-# INLINE toJSVal #-}

instance FromJSVal NotificationCenter where
  fromJSVal v = fmap NotificationCenter <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject NotificationCenter where
  makeObject = makeObject . unNotificationCenter

instance IsGObject NotificationCenter where
  typeGType _ = gTypeNotificationCenter
  {-# INLINE typeGType #-}

gTypeNotificationCenter :: JSM GType
gTypeNotificationCenter = GType . Object <$> jsg "NotificationCenter"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OESElementIndexUint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESElementIndexUint Mozilla OESElementIndexUint documentation>
newtype OESElementIndexUint = OESElementIndexUint { unOESElementIndexUint :: JSVal }

instance PToJSVal OESElementIndexUint where
  pToJSVal = unOESElementIndexUint
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESElementIndexUint where
  pFromJSVal = OESElementIndexUint
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESElementIndexUint where
  toJSVal = return . unOESElementIndexUint
  {-# INLINE toJSVal #-}

instance FromJSVal OESElementIndexUint where
  fromJSVal v = fmap OESElementIndexUint <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OESElementIndexUint where
  makeObject = makeObject . unOESElementIndexUint

instance IsGObject OESElementIndexUint where
  typeGType _ = gTypeOESElementIndexUint
  {-# INLINE typeGType #-}

gTypeOESElementIndexUint :: JSM GType
gTypeOESElementIndexUint = GType . Object <$> jsg "OESElementIndexUint"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OESStandardDerivatives".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESStandardDerivatives Mozilla OESStandardDerivatives documentation>
newtype OESStandardDerivatives = OESStandardDerivatives { unOESStandardDerivatives :: JSVal }

instance PToJSVal OESStandardDerivatives where
  pToJSVal = unOESStandardDerivatives
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESStandardDerivatives where
  pFromJSVal = OESStandardDerivatives
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESStandardDerivatives where
  toJSVal = return . unOESStandardDerivatives
  {-# INLINE toJSVal #-}

instance FromJSVal OESStandardDerivatives where
  fromJSVal v = fmap OESStandardDerivatives <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OESStandardDerivatives where
  makeObject = makeObject . unOESStandardDerivatives

instance IsGObject OESStandardDerivatives where
  typeGType _ = gTypeOESStandardDerivatives
  {-# INLINE typeGType #-}

gTypeOESStandardDerivatives :: JSM GType
gTypeOESStandardDerivatives = GType . Object <$> jsg "OESStandardDerivatives"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OESTextureFloat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureFloat Mozilla OESTextureFloat documentation>
newtype OESTextureFloat = OESTextureFloat { unOESTextureFloat :: JSVal }

instance PToJSVal OESTextureFloat where
  pToJSVal = unOESTextureFloat
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureFloat where
  pFromJSVal = OESTextureFloat
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureFloat where
  toJSVal = return . unOESTextureFloat
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureFloat where
  fromJSVal v = fmap OESTextureFloat <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OESTextureFloat where
  makeObject = makeObject . unOESTextureFloat

instance IsGObject OESTextureFloat where
  typeGType _ = gTypeOESTextureFloat
  {-# INLINE typeGType #-}

gTypeOESTextureFloat :: JSM GType
gTypeOESTextureFloat = GType . Object <$> jsg "OESTextureFloat"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OESTextureFloatLinear".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureFloatLinear Mozilla OESTextureFloatLinear documentation>
newtype OESTextureFloatLinear = OESTextureFloatLinear { unOESTextureFloatLinear :: JSVal }

instance PToJSVal OESTextureFloatLinear where
  pToJSVal = unOESTextureFloatLinear
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureFloatLinear where
  pFromJSVal = OESTextureFloatLinear
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureFloatLinear where
  toJSVal = return . unOESTextureFloatLinear
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureFloatLinear where
  fromJSVal v = fmap OESTextureFloatLinear <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OESTextureFloatLinear where
  makeObject = makeObject . unOESTextureFloatLinear

instance IsGObject OESTextureFloatLinear where
  typeGType _ = gTypeOESTextureFloatLinear
  {-# INLINE typeGType #-}

gTypeOESTextureFloatLinear :: JSM GType
gTypeOESTextureFloatLinear = GType . Object <$> jsg "OESTextureFloatLinear"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OESTextureHalfFloat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureHalfFloat Mozilla OESTextureHalfFloat documentation>
newtype OESTextureHalfFloat = OESTextureHalfFloat { unOESTextureHalfFloat :: JSVal }

instance PToJSVal OESTextureHalfFloat where
  pToJSVal = unOESTextureHalfFloat
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureHalfFloat where
  pFromJSVal = OESTextureHalfFloat
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureHalfFloat where
  toJSVal = return . unOESTextureHalfFloat
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureHalfFloat where
  fromJSVal v = fmap OESTextureHalfFloat <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OESTextureHalfFloat where
  makeObject = makeObject . unOESTextureHalfFloat

instance IsGObject OESTextureHalfFloat where
  typeGType _ = gTypeOESTextureHalfFloat
  {-# INLINE typeGType #-}

gTypeOESTextureHalfFloat :: JSM GType
gTypeOESTextureHalfFloat = GType . Object <$> jsg "OESTextureHalfFloat"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OESTextureHalfFloatLinear".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureHalfFloatLinear Mozilla OESTextureHalfFloatLinear documentation>
newtype OESTextureHalfFloatLinear = OESTextureHalfFloatLinear { unOESTextureHalfFloatLinear :: JSVal }

instance PToJSVal OESTextureHalfFloatLinear where
  pToJSVal = unOESTextureHalfFloatLinear
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureHalfFloatLinear where
  pFromJSVal = OESTextureHalfFloatLinear
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureHalfFloatLinear where
  toJSVal = return . unOESTextureHalfFloatLinear
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureHalfFloatLinear where
  fromJSVal v = fmap OESTextureHalfFloatLinear <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OESTextureHalfFloatLinear where
  makeObject = makeObject . unOESTextureHalfFloatLinear

instance IsGObject OESTextureHalfFloatLinear where
  typeGType _ = gTypeOESTextureHalfFloatLinear
  {-# INLINE typeGType #-}

gTypeOESTextureHalfFloatLinear :: JSM GType
gTypeOESTextureHalfFloatLinear = GType . Object <$> jsg "OESTextureHalfFloatLinear"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OESVertexArrayObject".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject Mozilla OESVertexArrayObject documentation>
newtype OESVertexArrayObject = OESVertexArrayObject { unOESVertexArrayObject :: JSVal }

instance PToJSVal OESVertexArrayObject where
  pToJSVal = unOESVertexArrayObject
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESVertexArrayObject where
  pFromJSVal = OESVertexArrayObject
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESVertexArrayObject where
  toJSVal = return . unOESVertexArrayObject
  {-# INLINE toJSVal #-}

instance FromJSVal OESVertexArrayObject where
  fromJSVal v = fmap OESVertexArrayObject <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OESVertexArrayObject where
  makeObject = makeObject . unOESVertexArrayObject

instance IsGObject OESVertexArrayObject where
  typeGType _ = gTypeOESVertexArrayObject
  {-# INLINE typeGType #-}

gTypeOESVertexArrayObject :: JSM GType
gTypeOESVertexArrayObject = GType . Object <$> jsg "OESVertexArrayObject"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OfflineAudioCompletionEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioCompletionEvent Mozilla OfflineAudioCompletionEvent documentation>
newtype OfflineAudioCompletionEvent = OfflineAudioCompletionEvent { unOfflineAudioCompletionEvent :: JSVal }

instance PToJSVal OfflineAudioCompletionEvent where
  pToJSVal = unOfflineAudioCompletionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal OfflineAudioCompletionEvent where
  pFromJSVal = OfflineAudioCompletionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal OfflineAudioCompletionEvent where
  toJSVal = return . unOfflineAudioCompletionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal OfflineAudioCompletionEvent where
  fromJSVal v = fmap OfflineAudioCompletionEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OfflineAudioCompletionEvent where
  makeObject = makeObject . unOfflineAudioCompletionEvent

instance IsEvent OfflineAudioCompletionEvent
instance IsGObject OfflineAudioCompletionEvent where
  typeGType _ = gTypeOfflineAudioCompletionEvent
  {-# INLINE typeGType #-}

gTypeOfflineAudioCompletionEvent :: JSM GType
gTypeOfflineAudioCompletionEvent = GType . Object <$> jsg "OfflineAudioCompletionEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OfflineAudioContext".
-- Base interface functions are in:
--
--     * "JSDOM.AudioContext"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioContext Mozilla OfflineAudioContext documentation>
newtype OfflineAudioContext = OfflineAudioContext { unOfflineAudioContext :: JSVal }

instance PToJSVal OfflineAudioContext where
  pToJSVal = unOfflineAudioContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal OfflineAudioContext where
  pFromJSVal = OfflineAudioContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal OfflineAudioContext where
  toJSVal = return . unOfflineAudioContext
  {-# INLINE toJSVal #-}

instance FromJSVal OfflineAudioContext where
  fromJSVal v = fmap OfflineAudioContext <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OfflineAudioContext where
  makeObject = makeObject . unOfflineAudioContext

instance IsAudioContext OfflineAudioContext
instance IsEventTarget OfflineAudioContext
instance IsGObject OfflineAudioContext where
  typeGType _ = gTypeOfflineAudioContext
  {-# INLINE typeGType #-}

gTypeOfflineAudioContext :: JSM GType
gTypeOfflineAudioContext = GType . Object <$> jsg "OfflineAudioContext"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OscillatorNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode Mozilla OscillatorNode documentation>
newtype OscillatorNode = OscillatorNode { unOscillatorNode :: JSVal }

instance PToJSVal OscillatorNode where
  pToJSVal = unOscillatorNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal OscillatorNode where
  pFromJSVal = OscillatorNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal OscillatorNode where
  toJSVal = return . unOscillatorNode
  {-# INLINE toJSVal #-}

instance FromJSVal OscillatorNode where
  fromJSVal v = fmap OscillatorNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OscillatorNode where
  makeObject = makeObject . unOscillatorNode

instance IsAudioNode OscillatorNode
instance IsEventTarget OscillatorNode
instance IsGObject OscillatorNode where
  typeGType _ = gTypeOscillatorNode
  {-# INLINE typeGType #-}

gTypeOscillatorNode :: JSM GType
gTypeOscillatorNode = GType . Object <$> jsg "OscillatorNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.OverflowEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent Mozilla OverflowEvent documentation>
newtype OverflowEvent = OverflowEvent { unOverflowEvent :: JSVal }

instance PToJSVal OverflowEvent where
  pToJSVal = unOverflowEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal OverflowEvent where
  pFromJSVal = OverflowEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal OverflowEvent where
  toJSVal = return . unOverflowEvent
  {-# INLINE toJSVal #-}

instance FromJSVal OverflowEvent where
  fromJSVal v = fmap OverflowEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject OverflowEvent where
  makeObject = makeObject . unOverflowEvent

instance IsEvent OverflowEvent
instance IsGObject OverflowEvent where
  typeGType _ = gTypeOverflowEvent
  {-# INLINE typeGType #-}

gTypeOverflowEvent :: JSM GType
gTypeOverflowEvent = GType . Object <$> jsg "OverflowEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PageTransitionEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent Mozilla PageTransitionEvent documentation>
newtype PageTransitionEvent = PageTransitionEvent { unPageTransitionEvent :: JSVal }

instance PToJSVal PageTransitionEvent where
  pToJSVal = unPageTransitionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal PageTransitionEvent where
  pFromJSVal = PageTransitionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal PageTransitionEvent where
  toJSVal = return . unPageTransitionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal PageTransitionEvent where
  fromJSVal v = fmap PageTransitionEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PageTransitionEvent where
  makeObject = makeObject . unPageTransitionEvent

instance IsEvent PageTransitionEvent
instance IsGObject PageTransitionEvent where
  typeGType _ = gTypePageTransitionEvent
  {-# INLINE typeGType #-}

gTypePageTransitionEvent :: JSM GType
gTypePageTransitionEvent = GType . Object <$> jsg "PageTransitionEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PannerNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode Mozilla webkitAudioPannerNode documentation>
newtype PannerNode = PannerNode { unPannerNode :: JSVal }

instance PToJSVal PannerNode where
  pToJSVal = unPannerNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal PannerNode where
  pFromJSVal = PannerNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal PannerNode where
  toJSVal = return . unPannerNode
  {-# INLINE toJSVal #-}

instance FromJSVal PannerNode where
  fromJSVal v = fmap PannerNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PannerNode where
  makeObject = makeObject . unPannerNode

instance IsAudioNode PannerNode
instance IsEventTarget PannerNode
instance IsGObject PannerNode where
  typeGType _ = gTypePannerNode
  {-# INLINE typeGType #-}

gTypePannerNode :: JSM GType
gTypePannerNode = GType . Object <$> jsg "webkitAudioPannerNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Path2D".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation>
newtype Path2D = Path2D { unPath2D :: JSVal }

instance PToJSVal Path2D where
  pToJSVal = unPath2D
  {-# INLINE pToJSVal #-}

instance PFromJSVal Path2D where
  pFromJSVal = Path2D
  {-# INLINE pFromJSVal #-}

instance ToJSVal Path2D where
  toJSVal = return . unPath2D
  {-# INLINE toJSVal #-}

instance FromJSVal Path2D where
  fromJSVal v = fmap Path2D <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Path2D where
  makeObject = makeObject . unPath2D

instance IsGObject Path2D where
  typeGType _ = gTypePath2D
  {-# INLINE typeGType #-}

gTypePath2D :: JSM GType
gTypePath2D = GType . Object <$> jsg "Path2D"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Performance".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Performance Mozilla Performance documentation>
newtype Performance = Performance { unPerformance :: JSVal }

instance PToJSVal Performance where
  pToJSVal = unPerformance
  {-# INLINE pToJSVal #-}

instance PFromJSVal Performance where
  pFromJSVal = Performance
  {-# INLINE pFromJSVal #-}

instance ToJSVal Performance where
  toJSVal = return . unPerformance
  {-# INLINE toJSVal #-}

instance FromJSVal Performance where
  fromJSVal v = fmap Performance <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Performance where
  makeObject = makeObject . unPerformance

instance IsEventTarget Performance
instance IsGObject Performance where
  typeGType _ = gTypePerformance
  {-# INLINE typeGType #-}

gTypePerformance :: JSM GType
gTypePerformance = GType . Object <$> jsg "Performance"
#else
#ifndef USE_OLD_WEBKIT
type IsPerformance o = PerformanceClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PerformanceEntry".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry Mozilla PerformanceEntry documentation>
newtype PerformanceEntry = PerformanceEntry { unPerformanceEntry :: JSVal }

instance PToJSVal PerformanceEntry where
  pToJSVal = unPerformanceEntry
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceEntry where
  pFromJSVal = PerformanceEntry
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceEntry where
  toJSVal = return . unPerformanceEntry
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceEntry where
  fromJSVal v = fmap PerformanceEntry <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PerformanceEntry where
  makeObject = makeObject . unPerformanceEntry

class IsGObject o => IsPerformanceEntry o
toPerformanceEntry :: IsPerformanceEntry o => o -> PerformanceEntry
toPerformanceEntry = PerformanceEntry . coerce

instance IsPerformanceEntry PerformanceEntry
instance IsGObject PerformanceEntry where
  typeGType _ = gTypePerformanceEntry
  {-# INLINE typeGType #-}

gTypePerformanceEntry :: JSM GType
gTypePerformanceEntry = GType . Object <$> jsg "PerformanceEntry"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PerformanceEntryList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList Mozilla PerformanceEntryList documentation>
newtype PerformanceEntryList = PerformanceEntryList { unPerformanceEntryList :: JSVal }

instance PToJSVal PerformanceEntryList where
  pToJSVal = unPerformanceEntryList
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceEntryList where
  pFromJSVal = PerformanceEntryList
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceEntryList where
  toJSVal = return . unPerformanceEntryList
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceEntryList where
  fromJSVal v = fmap PerformanceEntryList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PerformanceEntryList where
  makeObject = makeObject . unPerformanceEntryList

instance IsGObject PerformanceEntryList where
  typeGType _ = gTypePerformanceEntryList
  {-# INLINE typeGType #-}

gTypePerformanceEntryList :: JSM GType
gTypePerformanceEntryList = GType . Object <$> jsg "PerformanceEntryList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PerformanceMark".
-- Base interface functions are in:
--
--     * "JSDOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMark Mozilla PerformanceMark documentation>
newtype PerformanceMark = PerformanceMark { unPerformanceMark :: JSVal }

instance PToJSVal PerformanceMark where
  pToJSVal = unPerformanceMark
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceMark where
  pFromJSVal = PerformanceMark
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceMark where
  toJSVal = return . unPerformanceMark
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceMark where
  fromJSVal v = fmap PerformanceMark <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PerformanceMark where
  makeObject = makeObject . unPerformanceMark

instance IsPerformanceEntry PerformanceMark
instance IsGObject PerformanceMark where
  typeGType _ = gTypePerformanceMark
  {-# INLINE typeGType #-}

gTypePerformanceMark :: JSM GType
gTypePerformanceMark = GType . Object <$> jsg "PerformanceMark"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PerformanceMeasure".
-- Base interface functions are in:
--
--     * "JSDOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMeasure Mozilla PerformanceMeasure documentation>
newtype PerformanceMeasure = PerformanceMeasure { unPerformanceMeasure :: JSVal }

instance PToJSVal PerformanceMeasure where
  pToJSVal = unPerformanceMeasure
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceMeasure where
  pFromJSVal = PerformanceMeasure
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceMeasure where
  toJSVal = return . unPerformanceMeasure
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceMeasure where
  fromJSVal v = fmap PerformanceMeasure <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PerformanceMeasure where
  makeObject = makeObject . unPerformanceMeasure

instance IsPerformanceEntry PerformanceMeasure
instance IsGObject PerformanceMeasure where
  typeGType _ = gTypePerformanceMeasure
  {-# INLINE typeGType #-}

gTypePerformanceMeasure :: JSM GType
gTypePerformanceMeasure = GType . Object <$> jsg "PerformanceMeasure"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PerformanceNavigation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigation Mozilla PerformanceNavigation documentation>
newtype PerformanceNavigation = PerformanceNavigation { unPerformanceNavigation :: JSVal }

instance PToJSVal PerformanceNavigation where
  pToJSVal = unPerformanceNavigation
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceNavigation where
  pFromJSVal = PerformanceNavigation
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceNavigation where
  toJSVal = return . unPerformanceNavigation
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceNavigation where
  fromJSVal v = fmap PerformanceNavigation <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PerformanceNavigation where
  makeObject = makeObject . unPerformanceNavigation

instance IsGObject PerformanceNavigation where
  typeGType _ = gTypePerformanceNavigation
  {-# INLINE typeGType #-}

gTypePerformanceNavigation :: JSM GType
gTypePerformanceNavigation = GType . Object <$> jsg "PerformanceNavigation"
#else
#ifndef USE_OLD_WEBKIT
type IsPerformanceNavigation o = PerformanceNavigationClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PerformanceResourceTiming".
-- Base interface functions are in:
--
--     * "JSDOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming Mozilla PerformanceResourceTiming documentation>
newtype PerformanceResourceTiming = PerformanceResourceTiming { unPerformanceResourceTiming :: JSVal }

instance PToJSVal PerformanceResourceTiming where
  pToJSVal = unPerformanceResourceTiming
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceResourceTiming where
  pFromJSVal = PerformanceResourceTiming
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceResourceTiming where
  toJSVal = return . unPerformanceResourceTiming
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceResourceTiming where
  fromJSVal v = fmap PerformanceResourceTiming <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PerformanceResourceTiming where
  makeObject = makeObject . unPerformanceResourceTiming

instance IsPerformanceEntry PerformanceResourceTiming
instance IsGObject PerformanceResourceTiming where
  typeGType _ = gTypePerformanceResourceTiming
  {-# INLINE typeGType #-}

gTypePerformanceResourceTiming :: JSM GType
gTypePerformanceResourceTiming = GType . Object <$> jsg "PerformanceResourceTiming"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PerformanceTiming".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming Mozilla PerformanceTiming documentation>
newtype PerformanceTiming = PerformanceTiming { unPerformanceTiming :: JSVal }

instance PToJSVal PerformanceTiming where
  pToJSVal = unPerformanceTiming
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceTiming where
  pFromJSVal = PerformanceTiming
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceTiming where
  toJSVal = return . unPerformanceTiming
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceTiming where
  fromJSVal v = fmap PerformanceTiming <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PerformanceTiming where
  makeObject = makeObject . unPerformanceTiming

instance IsGObject PerformanceTiming where
  typeGType _ = gTypePerformanceTiming
  {-# INLINE typeGType #-}

gTypePerformanceTiming :: JSM GType
gTypePerformanceTiming = GType . Object <$> jsg "PerformanceTiming"
#else
#ifndef USE_OLD_WEBKIT
type IsPerformanceTiming o = PerformanceTimingClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PeriodicWave".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PeriodicWave Mozilla PeriodicWave documentation>
newtype PeriodicWave = PeriodicWave { unPeriodicWave :: JSVal }

instance PToJSVal PeriodicWave where
  pToJSVal = unPeriodicWave
  {-# INLINE pToJSVal #-}

instance PFromJSVal PeriodicWave where
  pFromJSVal = PeriodicWave
  {-# INLINE pFromJSVal #-}

instance ToJSVal PeriodicWave where
  toJSVal = return . unPeriodicWave
  {-# INLINE toJSVal #-}

instance FromJSVal PeriodicWave where
  fromJSVal v = fmap PeriodicWave <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PeriodicWave where
  makeObject = makeObject . unPeriodicWave

instance IsGObject PeriodicWave where
  typeGType _ = gTypePeriodicWave
  {-# INLINE typeGType #-}

gTypePeriodicWave :: JSM GType
gTypePeriodicWave = GType . Object <$> jsg "PeriodicWave"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Plugin".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Plugin Mozilla Plugin documentation>
newtype Plugin = Plugin { unPlugin :: JSVal }

instance PToJSVal Plugin where
  pToJSVal = unPlugin
  {-# INLINE pToJSVal #-}

instance PFromJSVal Plugin where
  pFromJSVal = Plugin
  {-# INLINE pFromJSVal #-}

instance ToJSVal Plugin where
  toJSVal = return . unPlugin
  {-# INLINE toJSVal #-}

instance FromJSVal Plugin where
  fromJSVal v = fmap Plugin <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Plugin where
  makeObject = makeObject . unPlugin

instance IsGObject Plugin where
  typeGType _ = gTypePlugin
  {-# INLINE typeGType #-}

gTypePlugin :: JSM GType
gTypePlugin = GType . Object <$> jsg "Plugin"
#else
type IsPlugin o = PluginClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PluginArray".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray Mozilla PluginArray documentation>
newtype PluginArray = PluginArray { unPluginArray :: JSVal }

instance PToJSVal PluginArray where
  pToJSVal = unPluginArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal PluginArray where
  pFromJSVal = PluginArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal PluginArray where
  toJSVal = return . unPluginArray
  {-# INLINE toJSVal #-}

instance FromJSVal PluginArray where
  fromJSVal v = fmap PluginArray <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PluginArray where
  makeObject = makeObject . unPluginArray

instance IsGObject PluginArray where
  typeGType _ = gTypePluginArray
  {-# INLINE typeGType #-}

gTypePluginArray :: JSM GType
gTypePluginArray = GType . Object <$> jsg "PluginArray"
#else
type IsPluginArray o = PluginArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PopStateEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent Mozilla PopStateEvent documentation>
newtype PopStateEvent = PopStateEvent { unPopStateEvent :: JSVal }

instance PToJSVal PopStateEvent where
  pToJSVal = unPopStateEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal PopStateEvent where
  pFromJSVal = PopStateEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal PopStateEvent where
  toJSVal = return . unPopStateEvent
  {-# INLINE toJSVal #-}

instance FromJSVal PopStateEvent where
  fromJSVal v = fmap PopStateEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PopStateEvent where
  makeObject = makeObject . unPopStateEvent

instance IsEvent PopStateEvent
instance IsGObject PopStateEvent where
  typeGType _ = gTypePopStateEvent
  {-# INLINE typeGType #-}

gTypePopStateEvent :: JSM GType
gTypePopStateEvent = GType . Object <$> jsg "PopStateEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.PositionError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PositionError Mozilla PositionError documentation>
newtype PositionError = PositionError { unPositionError :: JSVal }

instance PToJSVal PositionError where
  pToJSVal = unPositionError
  {-# INLINE pToJSVal #-}

instance PFromJSVal PositionError where
  pFromJSVal = PositionError
  {-# INLINE pFromJSVal #-}

instance ToJSVal PositionError where
  toJSVal = return . unPositionError
  {-# INLINE toJSVal #-}

instance FromJSVal PositionError where
  fromJSVal v = fmap PositionError <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject PositionError where
  makeObject = makeObject . unPositionError

instance IsGObject PositionError where
  typeGType _ = gTypePositionError
  {-# INLINE typeGType #-}

gTypePositionError :: JSM GType
gTypePositionError = GType . Object <$> jsg "PositionError"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ProcessingInstruction".
-- Base interface functions are in:
--
--     * "JSDOM.CharacterData"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction Mozilla ProcessingInstruction documentation>
newtype ProcessingInstruction = ProcessingInstruction { unProcessingInstruction :: JSVal }

instance PToJSVal ProcessingInstruction where
  pToJSVal = unProcessingInstruction
  {-# INLINE pToJSVal #-}

instance PFromJSVal ProcessingInstruction where
  pFromJSVal = ProcessingInstruction
  {-# INLINE pFromJSVal #-}

instance ToJSVal ProcessingInstruction where
  toJSVal = return . unProcessingInstruction
  {-# INLINE toJSVal #-}

instance FromJSVal ProcessingInstruction where
  fromJSVal v = fmap ProcessingInstruction <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ProcessingInstruction where
  makeObject = makeObject . unProcessingInstruction

instance IsCharacterData ProcessingInstruction
instance IsNode ProcessingInstruction
instance IsEventTarget ProcessingInstruction
instance IsGObject ProcessingInstruction where
  typeGType _ = gTypeProcessingInstruction
  {-# INLINE typeGType #-}

gTypeProcessingInstruction :: JSM GType
gTypeProcessingInstruction = GType . Object <$> jsg "ProcessingInstruction"
#else
type IsProcessingInstruction o = ProcessingInstructionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ProgressEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent Mozilla ProgressEvent documentation>
newtype ProgressEvent = ProgressEvent { unProgressEvent :: JSVal }

instance PToJSVal ProgressEvent where
  pToJSVal = unProgressEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal ProgressEvent where
  pFromJSVal = ProgressEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal ProgressEvent where
  toJSVal = return . unProgressEvent
  {-# INLINE toJSVal #-}

instance FromJSVal ProgressEvent where
  fromJSVal v = fmap ProgressEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ProgressEvent where
  makeObject = makeObject . unProgressEvent

class IsEvent o => IsProgressEvent o
toProgressEvent :: IsProgressEvent o => o -> ProgressEvent
toProgressEvent = ProgressEvent . coerce

instance IsProgressEvent ProgressEvent
instance IsEvent ProgressEvent
instance IsGObject ProgressEvent where
  typeGType _ = gTypeProgressEvent
  {-# INLINE typeGType #-}

gTypeProgressEvent :: JSM GType
gTypeProgressEvent = GType . Object <$> jsg "ProgressEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.QuickTimePluginReplacement".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement Mozilla QuickTimePluginReplacement documentation>
newtype QuickTimePluginReplacement = QuickTimePluginReplacement { unQuickTimePluginReplacement :: JSVal }

instance PToJSVal QuickTimePluginReplacement where
  pToJSVal = unQuickTimePluginReplacement
  {-# INLINE pToJSVal #-}

instance PFromJSVal QuickTimePluginReplacement where
  pFromJSVal = QuickTimePluginReplacement
  {-# INLINE pFromJSVal #-}

instance ToJSVal QuickTimePluginReplacement where
  toJSVal = return . unQuickTimePluginReplacement
  {-# INLINE toJSVal #-}

instance FromJSVal QuickTimePluginReplacement where
  fromJSVal v = fmap QuickTimePluginReplacement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject QuickTimePluginReplacement where
  makeObject = makeObject . unQuickTimePluginReplacement

instance IsGObject QuickTimePluginReplacement where
  typeGType _ = gTypeQuickTimePluginReplacement
  {-# INLINE typeGType #-}

gTypeQuickTimePluginReplacement :: JSM GType
gTypeQuickTimePluginReplacement = GType . Object <$> jsg "QuickTimePluginReplacement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RGBColor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor Mozilla RGBColor documentation>
newtype RGBColor = RGBColor { unRGBColor :: JSVal }

instance PToJSVal RGBColor where
  pToJSVal = unRGBColor
  {-# INLINE pToJSVal #-}

instance PFromJSVal RGBColor where
  pFromJSVal = RGBColor
  {-# INLINE pFromJSVal #-}

instance ToJSVal RGBColor where
  toJSVal = return . unRGBColor
  {-# INLINE toJSVal #-}

instance FromJSVal RGBColor where
  fromJSVal v = fmap RGBColor <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RGBColor where
  makeObject = makeObject . unRGBColor

instance IsGObject RGBColor where
  typeGType _ = gTypeRGBColor
  {-# INLINE typeGType #-}

gTypeRGBColor :: JSM GType
gTypeRGBColor = GType . Object <$> jsg "RGBColor"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCConfiguration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration Mozilla RTCConfiguration documentation>
newtype RTCConfiguration = RTCConfiguration { unRTCConfiguration :: JSVal }

instance PToJSVal RTCConfiguration where
  pToJSVal = unRTCConfiguration
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCConfiguration where
  pFromJSVal = RTCConfiguration
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCConfiguration where
  toJSVal = return . unRTCConfiguration
  {-# INLINE toJSVal #-}

instance FromJSVal RTCConfiguration where
  fromJSVal v = fmap RTCConfiguration <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCConfiguration where
  makeObject = makeObject . unRTCConfiguration

instance IsGObject RTCConfiguration where
  typeGType _ = gTypeRTCConfiguration
  {-# INLINE typeGType #-}

gTypeRTCConfiguration :: JSM GType
gTypeRTCConfiguration = GType . Object <$> jsg "RTCConfiguration"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCDTMFSender".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender Mozilla RTCDTMFSender documentation>
newtype RTCDTMFSender = RTCDTMFSender { unRTCDTMFSender :: JSVal }

instance PToJSVal RTCDTMFSender where
  pToJSVal = unRTCDTMFSender
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDTMFSender where
  pFromJSVal = RTCDTMFSender
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDTMFSender where
  toJSVal = return . unRTCDTMFSender
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDTMFSender where
  fromJSVal v = fmap RTCDTMFSender <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCDTMFSender where
  makeObject = makeObject . unRTCDTMFSender

instance IsEventTarget RTCDTMFSender
instance IsGObject RTCDTMFSender where
  typeGType _ = gTypeRTCDTMFSender
  {-# INLINE typeGType #-}

gTypeRTCDTMFSender :: JSM GType
gTypeRTCDTMFSender = GType . Object <$> jsg "RTCDTMFSender"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCDTMFToneChangeEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent Mozilla RTCDTMFToneChangeEvent documentation>
newtype RTCDTMFToneChangeEvent = RTCDTMFToneChangeEvent { unRTCDTMFToneChangeEvent :: JSVal }

instance PToJSVal RTCDTMFToneChangeEvent where
  pToJSVal = unRTCDTMFToneChangeEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDTMFToneChangeEvent where
  pFromJSVal = RTCDTMFToneChangeEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDTMFToneChangeEvent where
  toJSVal = return . unRTCDTMFToneChangeEvent
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDTMFToneChangeEvent where
  fromJSVal v = fmap RTCDTMFToneChangeEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCDTMFToneChangeEvent where
  makeObject = makeObject . unRTCDTMFToneChangeEvent

instance IsEvent RTCDTMFToneChangeEvent
instance IsGObject RTCDTMFToneChangeEvent where
  typeGType _ = gTypeRTCDTMFToneChangeEvent
  {-# INLINE typeGType #-}

gTypeRTCDTMFToneChangeEvent :: JSM GType
gTypeRTCDTMFToneChangeEvent = GType . Object <$> jsg "RTCDTMFToneChangeEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCDataChannel".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel Mozilla RTCDataChannel documentation>
newtype RTCDataChannel = RTCDataChannel { unRTCDataChannel :: JSVal }

instance PToJSVal RTCDataChannel where
  pToJSVal = unRTCDataChannel
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDataChannel where
  pFromJSVal = RTCDataChannel
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDataChannel where
  toJSVal = return . unRTCDataChannel
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDataChannel where
  fromJSVal v = fmap RTCDataChannel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCDataChannel where
  makeObject = makeObject . unRTCDataChannel

instance IsEventTarget RTCDataChannel
instance IsGObject RTCDataChannel where
  typeGType _ = gTypeRTCDataChannel
  {-# INLINE typeGType #-}

gTypeRTCDataChannel :: JSM GType
gTypeRTCDataChannel = GType . Object <$> jsg "RTCDataChannel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCDataChannelEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent Mozilla RTCDataChannelEvent documentation>
newtype RTCDataChannelEvent = RTCDataChannelEvent { unRTCDataChannelEvent :: JSVal }

instance PToJSVal RTCDataChannelEvent where
  pToJSVal = unRTCDataChannelEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDataChannelEvent where
  pFromJSVal = RTCDataChannelEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDataChannelEvent where
  toJSVal = return . unRTCDataChannelEvent
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDataChannelEvent where
  fromJSVal v = fmap RTCDataChannelEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCDataChannelEvent where
  makeObject = makeObject . unRTCDataChannelEvent

instance IsEvent RTCDataChannelEvent
instance IsGObject RTCDataChannelEvent where
  typeGType _ = gTypeRTCDataChannelEvent
  {-# INLINE typeGType #-}

gTypeRTCDataChannelEvent :: JSM GType
gTypeRTCDataChannelEvent = GType . Object <$> jsg "RTCDataChannelEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCIceCandidate".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation>
newtype RTCIceCandidate = RTCIceCandidate { unRTCIceCandidate :: JSVal }

instance PToJSVal RTCIceCandidate where
  pToJSVal = unRTCIceCandidate
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCIceCandidate where
  pFromJSVal = RTCIceCandidate
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCIceCandidate where
  toJSVal = return . unRTCIceCandidate
  {-# INLINE toJSVal #-}

instance FromJSVal RTCIceCandidate where
  fromJSVal v = fmap RTCIceCandidate <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCIceCandidate where
  makeObject = makeObject . unRTCIceCandidate

instance IsGObject RTCIceCandidate where
  typeGType _ = gTypeRTCIceCandidate
  {-# INLINE typeGType #-}

gTypeRTCIceCandidate :: JSM GType
gTypeRTCIceCandidate = GType . Object <$> jsg "RTCIceCandidate"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCIceCandidateEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidateEvent Mozilla RTCIceCandidateEvent documentation>
newtype RTCIceCandidateEvent = RTCIceCandidateEvent { unRTCIceCandidateEvent :: JSVal }

instance PToJSVal RTCIceCandidateEvent where
  pToJSVal = unRTCIceCandidateEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCIceCandidateEvent where
  pFromJSVal = RTCIceCandidateEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCIceCandidateEvent where
  toJSVal = return . unRTCIceCandidateEvent
  {-# INLINE toJSVal #-}

instance FromJSVal RTCIceCandidateEvent where
  fromJSVal v = fmap RTCIceCandidateEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCIceCandidateEvent where
  makeObject = makeObject . unRTCIceCandidateEvent

instance IsEvent RTCIceCandidateEvent
instance IsGObject RTCIceCandidateEvent where
  typeGType _ = gTypeRTCIceCandidateEvent
  {-# INLINE typeGType #-}

gTypeRTCIceCandidateEvent :: JSM GType
gTypeRTCIceCandidateEvent = GType . Object <$> jsg "RTCIceCandidateEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCIceServer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer Mozilla RTCIceServer documentation>
newtype RTCIceServer = RTCIceServer { unRTCIceServer :: JSVal }

instance PToJSVal RTCIceServer where
  pToJSVal = unRTCIceServer
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCIceServer where
  pFromJSVal = RTCIceServer
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCIceServer where
  toJSVal = return . unRTCIceServer
  {-# INLINE toJSVal #-}

instance FromJSVal RTCIceServer where
  fromJSVal v = fmap RTCIceServer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCIceServer where
  makeObject = makeObject . unRTCIceServer

instance IsGObject RTCIceServer where
  typeGType _ = gTypeRTCIceServer
  {-# INLINE typeGType #-}

gTypeRTCIceServer :: JSM GType
gTypeRTCIceServer = GType . Object <$> jsg "RTCIceServer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCPeerConnection".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation>
newtype RTCPeerConnection = RTCPeerConnection { unRTCPeerConnection :: JSVal }

instance PToJSVal RTCPeerConnection where
  pToJSVal = unRTCPeerConnection
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCPeerConnection where
  pFromJSVal = RTCPeerConnection
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCPeerConnection where
  toJSVal = return . unRTCPeerConnection
  {-# INLINE toJSVal #-}

instance FromJSVal RTCPeerConnection where
  fromJSVal v = fmap RTCPeerConnection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCPeerConnection where
  makeObject = makeObject . unRTCPeerConnection

instance IsEventTarget RTCPeerConnection
instance IsGObject RTCPeerConnection where
  typeGType _ = gTypeRTCPeerConnection
  {-# INLINE typeGType #-}

gTypeRTCPeerConnection :: JSM GType
gTypeRTCPeerConnection = GType . Object <$> jsg "webkitRTCPeerConnection"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCSessionDescription".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation>
newtype RTCSessionDescription = RTCSessionDescription { unRTCSessionDescription :: JSVal }

instance PToJSVal RTCSessionDescription where
  pToJSVal = unRTCSessionDescription
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCSessionDescription where
  pFromJSVal = RTCSessionDescription
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCSessionDescription where
  toJSVal = return . unRTCSessionDescription
  {-# INLINE toJSVal #-}

instance FromJSVal RTCSessionDescription where
  fromJSVal v = fmap RTCSessionDescription <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCSessionDescription where
  makeObject = makeObject . unRTCSessionDescription

instance IsGObject RTCSessionDescription where
  typeGType _ = gTypeRTCSessionDescription
  {-# INLINE typeGType #-}

gTypeRTCSessionDescription :: JSM GType
gTypeRTCSessionDescription = GType . Object <$> jsg "RTCSessionDescription"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCStatsReport".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport Mozilla RTCStatsReport documentation>
newtype RTCStatsReport = RTCStatsReport { unRTCStatsReport :: JSVal }

instance PToJSVal RTCStatsReport where
  pToJSVal = unRTCStatsReport
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCStatsReport where
  pFromJSVal = RTCStatsReport
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCStatsReport where
  toJSVal = return . unRTCStatsReport
  {-# INLINE toJSVal #-}

instance FromJSVal RTCStatsReport where
  fromJSVal v = fmap RTCStatsReport <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCStatsReport where
  makeObject = makeObject . unRTCStatsReport

instance IsGObject RTCStatsReport where
  typeGType _ = gTypeRTCStatsReport
  {-# INLINE typeGType #-}

gTypeRTCStatsReport :: JSM GType
gTypeRTCStatsReport = GType . Object <$> jsg "RTCStatsReport"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RTCStatsResponse".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse Mozilla RTCStatsResponse documentation>
newtype RTCStatsResponse = RTCStatsResponse { unRTCStatsResponse :: JSVal }

instance PToJSVal RTCStatsResponse where
  pToJSVal = unRTCStatsResponse
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCStatsResponse where
  pFromJSVal = RTCStatsResponse
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCStatsResponse where
  toJSVal = return . unRTCStatsResponse
  {-# INLINE toJSVal #-}

instance FromJSVal RTCStatsResponse where
  fromJSVal v = fmap RTCStatsResponse <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RTCStatsResponse where
  makeObject = makeObject . unRTCStatsResponse

instance IsGObject RTCStatsResponse where
  typeGType _ = gTypeRTCStatsResponse
  {-# INLINE typeGType #-}

gTypeRTCStatsResponse :: JSM GType
gTypeRTCStatsResponse = GType . Object <$> jsg "RTCStatsResponse"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.RadioNodeList".
-- Base interface functions are in:
--
--     * "JSDOM.NodeList"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList Mozilla RadioNodeList documentation>
newtype RadioNodeList = RadioNodeList { unRadioNodeList :: JSVal }

instance PToJSVal RadioNodeList where
  pToJSVal = unRadioNodeList
  {-# INLINE pToJSVal #-}

instance PFromJSVal RadioNodeList where
  pFromJSVal = RadioNodeList
  {-# INLINE pFromJSVal #-}

instance ToJSVal RadioNodeList where
  toJSVal = return . unRadioNodeList
  {-# INLINE toJSVal #-}

instance FromJSVal RadioNodeList where
  fromJSVal v = fmap RadioNodeList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject RadioNodeList where
  makeObject = makeObject . unRadioNodeList

instance IsNodeList RadioNodeList
instance IsGObject RadioNodeList where
  typeGType _ = gTypeRadioNodeList
  {-# INLINE typeGType #-}

gTypeRadioNodeList :: JSM GType
gTypeRadioNodeList = GType . Object <$> jsg "RadioNodeList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Range".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Range Mozilla Range documentation>
newtype Range = Range { unRange :: JSVal }

instance PToJSVal Range where
  pToJSVal = unRange
  {-# INLINE pToJSVal #-}

instance PFromJSVal Range where
  pFromJSVal = Range
  {-# INLINE pFromJSVal #-}

instance ToJSVal Range where
  toJSVal = return . unRange
  {-# INLINE toJSVal #-}

instance FromJSVal Range where
  fromJSVal v = fmap Range <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Range where
  makeObject = makeObject . unRange

instance IsGObject Range where
  typeGType _ = gTypeRange
  {-# INLINE typeGType #-}

gTypeRange :: JSM GType
gTypeRange = GType . Object <$> jsg "Range"
#else
type IsRange o = RangeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ReadableStream".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation>
newtype ReadableStream = ReadableStream { unReadableStream :: JSVal }

instance PToJSVal ReadableStream where
  pToJSVal = unReadableStream
  {-# INLINE pToJSVal #-}

instance PFromJSVal ReadableStream where
  pFromJSVal = ReadableStream
  {-# INLINE pFromJSVal #-}

instance ToJSVal ReadableStream where
  toJSVal = return . unReadableStream
  {-# INLINE toJSVal #-}

instance FromJSVal ReadableStream where
  fromJSVal v = fmap ReadableStream <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ReadableStream where
  makeObject = makeObject . unReadableStream

instance IsGObject ReadableStream where
  typeGType _ = gTypeReadableStream
  {-# INLINE typeGType #-}

gTypeReadableStream :: JSM GType
gTypeReadableStream = GType . Object <$> jsg "ReadableStream"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Rect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Rect Mozilla Rect documentation>
newtype Rect = Rect { unRect :: JSVal }

instance PToJSVal Rect where
  pToJSVal = unRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal Rect where
  pFromJSVal = Rect
  {-# INLINE pFromJSVal #-}

instance ToJSVal Rect where
  toJSVal = return . unRect
  {-# INLINE toJSVal #-}

instance FromJSVal Rect where
  fromJSVal v = fmap Rect <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Rect where
  makeObject = makeObject . unRect

instance IsGObject Rect where
  typeGType _ = gTypeRect
  {-# INLINE typeGType #-}

gTypeRect :: JSM GType
gTypeRect = GType . Object <$> jsg "Rect"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SQLError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLError Mozilla SQLError documentation>
newtype SQLError = SQLError { unSQLError :: JSVal }

instance PToJSVal SQLError where
  pToJSVal = unSQLError
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLError where
  pFromJSVal = SQLError
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLError where
  toJSVal = return . unSQLError
  {-# INLINE toJSVal #-}

instance FromJSVal SQLError where
  fromJSVal v = fmap SQLError <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SQLError where
  makeObject = makeObject . unSQLError

instance IsGObject SQLError where
  typeGType _ = gTypeSQLError
  {-# INLINE typeGType #-}

gTypeSQLError :: JSM GType
gTypeSQLError = GType . Object <$> jsg "SQLError"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SQLResultSet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet Mozilla SQLResultSet documentation>
newtype SQLResultSet = SQLResultSet { unSQLResultSet :: JSVal }

instance PToJSVal SQLResultSet where
  pToJSVal = unSQLResultSet
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLResultSet where
  pFromJSVal = SQLResultSet
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLResultSet where
  toJSVal = return . unSQLResultSet
  {-# INLINE toJSVal #-}

instance FromJSVal SQLResultSet where
  fromJSVal v = fmap SQLResultSet <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SQLResultSet where
  makeObject = makeObject . unSQLResultSet

instance IsGObject SQLResultSet where
  typeGType _ = gTypeSQLResultSet
  {-# INLINE typeGType #-}

gTypeSQLResultSet :: JSM GType
gTypeSQLResultSet = GType . Object <$> jsg "SQLResultSet"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SQLResultSetRowList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList Mozilla SQLResultSetRowList documentation>
newtype SQLResultSetRowList = SQLResultSetRowList { unSQLResultSetRowList :: JSVal }

instance PToJSVal SQLResultSetRowList where
  pToJSVal = unSQLResultSetRowList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLResultSetRowList where
  pFromJSVal = SQLResultSetRowList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLResultSetRowList where
  toJSVal = return . unSQLResultSetRowList
  {-# INLINE toJSVal #-}

instance FromJSVal SQLResultSetRowList where
  fromJSVal v = fmap SQLResultSetRowList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SQLResultSetRowList where
  makeObject = makeObject . unSQLResultSetRowList

instance IsGObject SQLResultSetRowList where
  typeGType _ = gTypeSQLResultSetRowList
  {-# INLINE typeGType #-}

gTypeSQLResultSetRowList :: JSM GType
gTypeSQLResultSetRowList = GType . Object <$> jsg "SQLResultSetRowList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SQLTransaction".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransaction Mozilla SQLTransaction documentation>
newtype SQLTransaction = SQLTransaction { unSQLTransaction :: JSVal }

instance PToJSVal SQLTransaction where
  pToJSVal = unSQLTransaction
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLTransaction where
  pFromJSVal = SQLTransaction
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLTransaction where
  toJSVal = return . unSQLTransaction
  {-# INLINE toJSVal #-}

instance FromJSVal SQLTransaction where
  fromJSVal v = fmap SQLTransaction <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SQLTransaction where
  makeObject = makeObject . unSQLTransaction

instance IsGObject SQLTransaction where
  typeGType _ = gTypeSQLTransaction
  {-# INLINE typeGType #-}

gTypeSQLTransaction :: JSM GType
gTypeSQLTransaction = GType . Object <$> jsg "SQLTransaction"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement Mozilla SVGAElement documentation>
newtype SVGAElement = SVGAElement { unSVGAElement :: JSVal }

instance PToJSVal SVGAElement where
  pToJSVal = unSVGAElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAElement where
  pFromJSVal = SVGAElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAElement where
  toJSVal = return . unSVGAElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAElement where
  fromJSVal v = fmap SVGAElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAElement where
  makeObject = makeObject . unSVGAElement

instance IsSVGGraphicsElement SVGAElement
instance IsSVGElement SVGAElement
instance IsElement SVGAElement
instance IsNode SVGAElement
instance IsEventTarget SVGAElement
instance IsGObject SVGAElement where
  typeGType _ = gTypeSVGAElement
  {-# INLINE typeGType #-}

gTypeSVGAElement :: JSM GType
gTypeSVGAElement = GType . Object <$> jsg "SVGAElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAltGlyphDefElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphDefElement Mozilla SVGAltGlyphDefElement documentation>
newtype SVGAltGlyphDefElement = SVGAltGlyphDefElement { unSVGAltGlyphDefElement :: JSVal }

instance PToJSVal SVGAltGlyphDefElement where
  pToJSVal = unSVGAltGlyphDefElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAltGlyphDefElement where
  pFromJSVal = SVGAltGlyphDefElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAltGlyphDefElement where
  toJSVal = return . unSVGAltGlyphDefElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAltGlyphDefElement where
  fromJSVal v = fmap SVGAltGlyphDefElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAltGlyphDefElement where
  makeObject = makeObject . unSVGAltGlyphDefElement

instance IsSVGElement SVGAltGlyphDefElement
instance IsElement SVGAltGlyphDefElement
instance IsNode SVGAltGlyphDefElement
instance IsEventTarget SVGAltGlyphDefElement
instance IsGObject SVGAltGlyphDefElement where
  typeGType _ = gTypeSVGAltGlyphDefElement
  {-# INLINE typeGType #-}

gTypeSVGAltGlyphDefElement :: JSM GType
gTypeSVGAltGlyphDefElement = GType . Object <$> jsg "SVGAltGlyphDefElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAltGlyphElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGTextPositioningElement"
--     * "JSDOM.SVGTextContentElement"
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement Mozilla SVGAltGlyphElement documentation>
newtype SVGAltGlyphElement = SVGAltGlyphElement { unSVGAltGlyphElement :: JSVal }

instance PToJSVal SVGAltGlyphElement where
  pToJSVal = unSVGAltGlyphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAltGlyphElement where
  pFromJSVal = SVGAltGlyphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAltGlyphElement where
  toJSVal = return . unSVGAltGlyphElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAltGlyphElement where
  fromJSVal v = fmap SVGAltGlyphElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAltGlyphElement where
  makeObject = makeObject . unSVGAltGlyphElement

instance IsSVGTextPositioningElement SVGAltGlyphElement
instance IsSVGTextContentElement SVGAltGlyphElement
instance IsSVGGraphicsElement SVGAltGlyphElement
instance IsSVGElement SVGAltGlyphElement
instance IsElement SVGAltGlyphElement
instance IsNode SVGAltGlyphElement
instance IsEventTarget SVGAltGlyphElement
instance IsGObject SVGAltGlyphElement where
  typeGType _ = gTypeSVGAltGlyphElement
  {-# INLINE typeGType #-}

gTypeSVGAltGlyphElement :: JSM GType
gTypeSVGAltGlyphElement = GType . Object <$> jsg "SVGAltGlyphElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAltGlyphItemElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphItemElement Mozilla SVGAltGlyphItemElement documentation>
newtype SVGAltGlyphItemElement = SVGAltGlyphItemElement { unSVGAltGlyphItemElement :: JSVal }

instance PToJSVal SVGAltGlyphItemElement where
  pToJSVal = unSVGAltGlyphItemElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAltGlyphItemElement where
  pFromJSVal = SVGAltGlyphItemElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAltGlyphItemElement where
  toJSVal = return . unSVGAltGlyphItemElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAltGlyphItemElement where
  fromJSVal v = fmap SVGAltGlyphItemElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAltGlyphItemElement where
  makeObject = makeObject . unSVGAltGlyphItemElement

instance IsSVGElement SVGAltGlyphItemElement
instance IsElement SVGAltGlyphItemElement
instance IsNode SVGAltGlyphItemElement
instance IsEventTarget SVGAltGlyphItemElement
instance IsGObject SVGAltGlyphItemElement where
  typeGType _ = gTypeSVGAltGlyphItemElement
  {-# INLINE typeGType #-}

gTypeSVGAltGlyphItemElement :: JSM GType
gTypeSVGAltGlyphItemElement = GType . Object <$> jsg "SVGAltGlyphItemElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAngle".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle Mozilla SVGAngle documentation>
newtype SVGAngle = SVGAngle { unSVGAngle :: JSVal }

instance PToJSVal SVGAngle where
  pToJSVal = unSVGAngle
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAngle where
  pFromJSVal = SVGAngle
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAngle where
  toJSVal = return . unSVGAngle
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAngle where
  fromJSVal v = fmap SVGAngle <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAngle where
  makeObject = makeObject . unSVGAngle

instance IsGObject SVGAngle where
  typeGType _ = gTypeSVGAngle
  {-# INLINE typeGType #-}

gTypeSVGAngle :: JSM GType
gTypeSVGAngle = GType . Object <$> jsg "SVGAngle"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimateColorElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGAnimationElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateColorElement Mozilla SVGAnimateColorElement documentation>
newtype SVGAnimateColorElement = SVGAnimateColorElement { unSVGAnimateColorElement :: JSVal }

instance PToJSVal SVGAnimateColorElement where
  pToJSVal = unSVGAnimateColorElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateColorElement where
  pFromJSVal = SVGAnimateColorElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateColorElement where
  toJSVal = return . unSVGAnimateColorElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateColorElement where
  fromJSVal v = fmap SVGAnimateColorElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimateColorElement where
  makeObject = makeObject . unSVGAnimateColorElement

instance IsSVGAnimationElement SVGAnimateColorElement
instance IsSVGElement SVGAnimateColorElement
instance IsElement SVGAnimateColorElement
instance IsNode SVGAnimateColorElement
instance IsEventTarget SVGAnimateColorElement
instance IsGObject SVGAnimateColorElement where
  typeGType _ = gTypeSVGAnimateColorElement
  {-# INLINE typeGType #-}

gTypeSVGAnimateColorElement :: JSM GType
gTypeSVGAnimateColorElement = GType . Object <$> jsg "SVGAnimateColorElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimateElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGAnimationElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateElement Mozilla SVGAnimateElement documentation>
newtype SVGAnimateElement = SVGAnimateElement { unSVGAnimateElement :: JSVal }

instance PToJSVal SVGAnimateElement where
  pToJSVal = unSVGAnimateElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateElement where
  pFromJSVal = SVGAnimateElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateElement where
  toJSVal = return . unSVGAnimateElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateElement where
  fromJSVal v = fmap SVGAnimateElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimateElement where
  makeObject = makeObject . unSVGAnimateElement

instance IsSVGAnimationElement SVGAnimateElement
instance IsSVGElement SVGAnimateElement
instance IsElement SVGAnimateElement
instance IsNode SVGAnimateElement
instance IsEventTarget SVGAnimateElement
instance IsGObject SVGAnimateElement where
  typeGType _ = gTypeSVGAnimateElement
  {-# INLINE typeGType #-}

gTypeSVGAnimateElement :: JSM GType
gTypeSVGAnimateElement = GType . Object <$> jsg "SVGAnimateElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimateMotionElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGAnimationElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateMotionElement Mozilla SVGAnimateMotionElement documentation>
newtype SVGAnimateMotionElement = SVGAnimateMotionElement { unSVGAnimateMotionElement :: JSVal }

instance PToJSVal SVGAnimateMotionElement where
  pToJSVal = unSVGAnimateMotionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateMotionElement where
  pFromJSVal = SVGAnimateMotionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateMotionElement where
  toJSVal = return . unSVGAnimateMotionElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateMotionElement where
  fromJSVal v = fmap SVGAnimateMotionElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimateMotionElement where
  makeObject = makeObject . unSVGAnimateMotionElement

instance IsSVGAnimationElement SVGAnimateMotionElement
instance IsSVGElement SVGAnimateMotionElement
instance IsElement SVGAnimateMotionElement
instance IsNode SVGAnimateMotionElement
instance IsEventTarget SVGAnimateMotionElement
instance IsGObject SVGAnimateMotionElement where
  typeGType _ = gTypeSVGAnimateMotionElement
  {-# INLINE typeGType #-}

gTypeSVGAnimateMotionElement :: JSM GType
gTypeSVGAnimateMotionElement = GType . Object <$> jsg "SVGAnimateMotionElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimateTransformElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGAnimationElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateTransformElement Mozilla SVGAnimateTransformElement documentation>
newtype SVGAnimateTransformElement = SVGAnimateTransformElement { unSVGAnimateTransformElement :: JSVal }

instance PToJSVal SVGAnimateTransformElement where
  pToJSVal = unSVGAnimateTransformElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateTransformElement where
  pFromJSVal = SVGAnimateTransformElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateTransformElement where
  toJSVal = return . unSVGAnimateTransformElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateTransformElement where
  fromJSVal v = fmap SVGAnimateTransformElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimateTransformElement where
  makeObject = makeObject . unSVGAnimateTransformElement

instance IsSVGAnimationElement SVGAnimateTransformElement
instance IsSVGElement SVGAnimateTransformElement
instance IsElement SVGAnimateTransformElement
instance IsNode SVGAnimateTransformElement
instance IsEventTarget SVGAnimateTransformElement
instance IsGObject SVGAnimateTransformElement where
  typeGType _ = gTypeSVGAnimateTransformElement
  {-# INLINE typeGType #-}

gTypeSVGAnimateTransformElement :: JSM GType
gTypeSVGAnimateTransformElement = GType . Object <$> jsg "SVGAnimateTransformElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedAngle".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle Mozilla SVGAnimatedAngle documentation>
newtype SVGAnimatedAngle = SVGAnimatedAngle { unSVGAnimatedAngle :: JSVal }

instance PToJSVal SVGAnimatedAngle where
  pToJSVal = unSVGAnimatedAngle
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedAngle where
  pFromJSVal = SVGAnimatedAngle
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedAngle where
  toJSVal = return . unSVGAnimatedAngle
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedAngle where
  fromJSVal v = fmap SVGAnimatedAngle <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedAngle where
  makeObject = makeObject . unSVGAnimatedAngle

instance IsGObject SVGAnimatedAngle where
  typeGType _ = gTypeSVGAnimatedAngle
  {-# INLINE typeGType #-}

gTypeSVGAnimatedAngle :: JSM GType
gTypeSVGAnimatedAngle = GType . Object <$> jsg "SVGAnimatedAngle"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedBoolean".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean Mozilla SVGAnimatedBoolean documentation>
newtype SVGAnimatedBoolean = SVGAnimatedBoolean { unSVGAnimatedBoolean :: JSVal }

instance PToJSVal SVGAnimatedBoolean where
  pToJSVal = unSVGAnimatedBoolean
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedBoolean where
  pFromJSVal = SVGAnimatedBoolean
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedBoolean where
  toJSVal = return . unSVGAnimatedBoolean
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedBoolean where
  fromJSVal v = fmap SVGAnimatedBoolean <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedBoolean where
  makeObject = makeObject . unSVGAnimatedBoolean

instance IsGObject SVGAnimatedBoolean where
  typeGType _ = gTypeSVGAnimatedBoolean
  {-# INLINE typeGType #-}

gTypeSVGAnimatedBoolean :: JSM GType
gTypeSVGAnimatedBoolean = GType . Object <$> jsg "SVGAnimatedBoolean"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedEnumeration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration Mozilla SVGAnimatedEnumeration documentation>
newtype SVGAnimatedEnumeration = SVGAnimatedEnumeration { unSVGAnimatedEnumeration :: JSVal }

instance PToJSVal SVGAnimatedEnumeration where
  pToJSVal = unSVGAnimatedEnumeration
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedEnumeration where
  pFromJSVal = SVGAnimatedEnumeration
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedEnumeration where
  toJSVal = return . unSVGAnimatedEnumeration
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedEnumeration where
  fromJSVal v = fmap SVGAnimatedEnumeration <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedEnumeration where
  makeObject = makeObject . unSVGAnimatedEnumeration

instance IsGObject SVGAnimatedEnumeration where
  typeGType _ = gTypeSVGAnimatedEnumeration
  {-# INLINE typeGType #-}

gTypeSVGAnimatedEnumeration :: JSM GType
gTypeSVGAnimatedEnumeration = GType . Object <$> jsg "SVGAnimatedEnumeration"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedInteger".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger Mozilla SVGAnimatedInteger documentation>
newtype SVGAnimatedInteger = SVGAnimatedInteger { unSVGAnimatedInteger :: JSVal }

instance PToJSVal SVGAnimatedInteger where
  pToJSVal = unSVGAnimatedInteger
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedInteger where
  pFromJSVal = SVGAnimatedInteger
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedInteger where
  toJSVal = return . unSVGAnimatedInteger
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedInteger where
  fromJSVal v = fmap SVGAnimatedInteger <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedInteger where
  makeObject = makeObject . unSVGAnimatedInteger

instance IsGObject SVGAnimatedInteger where
  typeGType _ = gTypeSVGAnimatedInteger
  {-# INLINE typeGType #-}

gTypeSVGAnimatedInteger :: JSM GType
gTypeSVGAnimatedInteger = GType . Object <$> jsg "SVGAnimatedInteger"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedLength".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength Mozilla SVGAnimatedLength documentation>
newtype SVGAnimatedLength = SVGAnimatedLength { unSVGAnimatedLength :: JSVal }

instance PToJSVal SVGAnimatedLength where
  pToJSVal = unSVGAnimatedLength
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedLength where
  pFromJSVal = SVGAnimatedLength
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedLength where
  toJSVal = return . unSVGAnimatedLength
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedLength where
  fromJSVal v = fmap SVGAnimatedLength <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedLength where
  makeObject = makeObject . unSVGAnimatedLength

instance IsGObject SVGAnimatedLength where
  typeGType _ = gTypeSVGAnimatedLength
  {-# INLINE typeGType #-}

gTypeSVGAnimatedLength :: JSM GType
gTypeSVGAnimatedLength = GType . Object <$> jsg "SVGAnimatedLength"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedLengthList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList Mozilla SVGAnimatedLengthList documentation>
newtype SVGAnimatedLengthList = SVGAnimatedLengthList { unSVGAnimatedLengthList :: JSVal }

instance PToJSVal SVGAnimatedLengthList where
  pToJSVal = unSVGAnimatedLengthList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedLengthList where
  pFromJSVal = SVGAnimatedLengthList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedLengthList where
  toJSVal = return . unSVGAnimatedLengthList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedLengthList where
  fromJSVal v = fmap SVGAnimatedLengthList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedLengthList where
  makeObject = makeObject . unSVGAnimatedLengthList

instance IsGObject SVGAnimatedLengthList where
  typeGType _ = gTypeSVGAnimatedLengthList
  {-# INLINE typeGType #-}

gTypeSVGAnimatedLengthList :: JSM GType
gTypeSVGAnimatedLengthList = GType . Object <$> jsg "SVGAnimatedLengthList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedNumber".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber Mozilla SVGAnimatedNumber documentation>
newtype SVGAnimatedNumber = SVGAnimatedNumber { unSVGAnimatedNumber :: JSVal }

instance PToJSVal SVGAnimatedNumber where
  pToJSVal = unSVGAnimatedNumber
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedNumber where
  pFromJSVal = SVGAnimatedNumber
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedNumber where
  toJSVal = return . unSVGAnimatedNumber
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedNumber where
  fromJSVal v = fmap SVGAnimatedNumber <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedNumber where
  makeObject = makeObject . unSVGAnimatedNumber

instance IsGObject SVGAnimatedNumber where
  typeGType _ = gTypeSVGAnimatedNumber
  {-# INLINE typeGType #-}

gTypeSVGAnimatedNumber :: JSM GType
gTypeSVGAnimatedNumber = GType . Object <$> jsg "SVGAnimatedNumber"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedNumberList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList Mozilla SVGAnimatedNumberList documentation>
newtype SVGAnimatedNumberList = SVGAnimatedNumberList { unSVGAnimatedNumberList :: JSVal }

instance PToJSVal SVGAnimatedNumberList where
  pToJSVal = unSVGAnimatedNumberList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedNumberList where
  pFromJSVal = SVGAnimatedNumberList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedNumberList where
  toJSVal = return . unSVGAnimatedNumberList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedNumberList where
  fromJSVal v = fmap SVGAnimatedNumberList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedNumberList where
  makeObject = makeObject . unSVGAnimatedNumberList

instance IsGObject SVGAnimatedNumberList where
  typeGType _ = gTypeSVGAnimatedNumberList
  {-# INLINE typeGType #-}

gTypeSVGAnimatedNumberList :: JSM GType
gTypeSVGAnimatedNumberList = GType . Object <$> jsg "SVGAnimatedNumberList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedPreserveAspectRatio".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio Mozilla SVGAnimatedPreserveAspectRatio documentation>
newtype SVGAnimatedPreserveAspectRatio = SVGAnimatedPreserveAspectRatio { unSVGAnimatedPreserveAspectRatio :: JSVal }

instance PToJSVal SVGAnimatedPreserveAspectRatio where
  pToJSVal = unSVGAnimatedPreserveAspectRatio
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedPreserveAspectRatio where
  pFromJSVal = SVGAnimatedPreserveAspectRatio
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedPreserveAspectRatio where
  toJSVal = return . unSVGAnimatedPreserveAspectRatio
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedPreserveAspectRatio where
  fromJSVal v = fmap SVGAnimatedPreserveAspectRatio <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedPreserveAspectRatio where
  makeObject = makeObject . unSVGAnimatedPreserveAspectRatio

instance IsGObject SVGAnimatedPreserveAspectRatio where
  typeGType _ = gTypeSVGAnimatedPreserveAspectRatio
  {-# INLINE typeGType #-}

gTypeSVGAnimatedPreserveAspectRatio :: JSM GType
gTypeSVGAnimatedPreserveAspectRatio = GType . Object <$> jsg "SVGAnimatedPreserveAspectRatio"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect Mozilla SVGAnimatedRect documentation>
newtype SVGAnimatedRect = SVGAnimatedRect { unSVGAnimatedRect :: JSVal }

instance PToJSVal SVGAnimatedRect where
  pToJSVal = unSVGAnimatedRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedRect where
  pFromJSVal = SVGAnimatedRect
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedRect where
  toJSVal = return . unSVGAnimatedRect
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedRect where
  fromJSVal v = fmap SVGAnimatedRect <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedRect where
  makeObject = makeObject . unSVGAnimatedRect

instance IsGObject SVGAnimatedRect where
  typeGType _ = gTypeSVGAnimatedRect
  {-# INLINE typeGType #-}

gTypeSVGAnimatedRect :: JSM GType
gTypeSVGAnimatedRect = GType . Object <$> jsg "SVGAnimatedRect"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedString".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString Mozilla SVGAnimatedString documentation>
newtype SVGAnimatedString = SVGAnimatedString { unSVGAnimatedString :: JSVal }

instance PToJSVal SVGAnimatedString where
  pToJSVal = unSVGAnimatedString
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedString where
  pFromJSVal = SVGAnimatedString
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedString where
  toJSVal = return . unSVGAnimatedString
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedString where
  fromJSVal v = fmap SVGAnimatedString <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedString where
  makeObject = makeObject . unSVGAnimatedString

instance IsGObject SVGAnimatedString where
  typeGType _ = gTypeSVGAnimatedString
  {-# INLINE typeGType #-}

gTypeSVGAnimatedString :: JSM GType
gTypeSVGAnimatedString = GType . Object <$> jsg "SVGAnimatedString"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimatedTransformList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList Mozilla SVGAnimatedTransformList documentation>
newtype SVGAnimatedTransformList = SVGAnimatedTransformList { unSVGAnimatedTransformList :: JSVal }

instance PToJSVal SVGAnimatedTransformList where
  pToJSVal = unSVGAnimatedTransformList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedTransformList where
  pFromJSVal = SVGAnimatedTransformList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedTransformList where
  toJSVal = return . unSVGAnimatedTransformList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedTransformList where
  fromJSVal v = fmap SVGAnimatedTransformList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimatedTransformList where
  makeObject = makeObject . unSVGAnimatedTransformList

instance IsGObject SVGAnimatedTransformList where
  typeGType _ = gTypeSVGAnimatedTransformList
  {-# INLINE typeGType #-}

gTypeSVGAnimatedTransformList :: JSM GType
gTypeSVGAnimatedTransformList = GType . Object <$> jsg "SVGAnimatedTransformList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGAnimationElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement Mozilla SVGAnimationElement documentation>
newtype SVGAnimationElement = SVGAnimationElement { unSVGAnimationElement :: JSVal }

instance PToJSVal SVGAnimationElement where
  pToJSVal = unSVGAnimationElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimationElement where
  pFromJSVal = SVGAnimationElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimationElement where
  toJSVal = return . unSVGAnimationElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimationElement where
  fromJSVal v = fmap SVGAnimationElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGAnimationElement where
  makeObject = makeObject . unSVGAnimationElement

class IsSVGElement o => IsSVGAnimationElement o
toSVGAnimationElement :: IsSVGAnimationElement o => o -> SVGAnimationElement
toSVGAnimationElement = SVGAnimationElement . coerce

instance IsSVGAnimationElement SVGAnimationElement
instance IsSVGElement SVGAnimationElement
instance IsElement SVGAnimationElement
instance IsNode SVGAnimationElement
instance IsEventTarget SVGAnimationElement
instance IsGObject SVGAnimationElement where
  typeGType _ = gTypeSVGAnimationElement
  {-# INLINE typeGType #-}

gTypeSVGAnimationElement :: JSM GType
gTypeSVGAnimationElement = GType . Object <$> jsg "SVGAnimationElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGCircleElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement Mozilla SVGCircleElement documentation>
newtype SVGCircleElement = SVGCircleElement { unSVGCircleElement :: JSVal }

instance PToJSVal SVGCircleElement where
  pToJSVal = unSVGCircleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGCircleElement where
  pFromJSVal = SVGCircleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGCircleElement where
  toJSVal = return . unSVGCircleElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGCircleElement where
  fromJSVal v = fmap SVGCircleElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGCircleElement where
  makeObject = makeObject . unSVGCircleElement

instance IsSVGGraphicsElement SVGCircleElement
instance IsSVGElement SVGCircleElement
instance IsElement SVGCircleElement
instance IsNode SVGCircleElement
instance IsEventTarget SVGCircleElement
instance IsGObject SVGCircleElement where
  typeGType _ = gTypeSVGCircleElement
  {-# INLINE typeGType #-}

gTypeSVGCircleElement :: JSM GType
gTypeSVGCircleElement = GType . Object <$> jsg "SVGCircleElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGClipPathElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement Mozilla SVGClipPathElement documentation>
newtype SVGClipPathElement = SVGClipPathElement { unSVGClipPathElement :: JSVal }

instance PToJSVal SVGClipPathElement where
  pToJSVal = unSVGClipPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGClipPathElement where
  pFromJSVal = SVGClipPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGClipPathElement where
  toJSVal = return . unSVGClipPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGClipPathElement where
  fromJSVal v = fmap SVGClipPathElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGClipPathElement where
  makeObject = makeObject . unSVGClipPathElement

instance IsSVGGraphicsElement SVGClipPathElement
instance IsSVGElement SVGClipPathElement
instance IsElement SVGClipPathElement
instance IsNode SVGClipPathElement
instance IsEventTarget SVGClipPathElement
instance IsGObject SVGClipPathElement where
  typeGType _ = gTypeSVGClipPathElement
  {-# INLINE typeGType #-}

gTypeSVGClipPathElement :: JSM GType
gTypeSVGClipPathElement = GType . Object <$> jsg "SVGClipPathElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGColor".
-- Base interface functions are in:
--
--     * "JSDOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor Mozilla SVGColor documentation>
newtype SVGColor = SVGColor { unSVGColor :: JSVal }

instance PToJSVal SVGColor where
  pToJSVal = unSVGColor
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGColor where
  pFromJSVal = SVGColor
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGColor where
  toJSVal = return . unSVGColor
  {-# INLINE toJSVal #-}

instance FromJSVal SVGColor where
  fromJSVal v = fmap SVGColor <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGColor where
  makeObject = makeObject . unSVGColor

class IsCSSValue o => IsSVGColor o
toSVGColor :: IsSVGColor o => o -> SVGColor
toSVGColor = SVGColor . coerce

instance IsSVGColor SVGColor
instance IsCSSValue SVGColor
instance IsGObject SVGColor where
  typeGType _ = gTypeSVGColor
  {-# INLINE typeGType #-}

gTypeSVGColor :: JSM GType
gTypeSVGColor = GType . Object <$> jsg "SVGColor"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGComponentTransferFunctionElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement Mozilla SVGComponentTransferFunctionElement documentation>
newtype SVGComponentTransferFunctionElement = SVGComponentTransferFunctionElement { unSVGComponentTransferFunctionElement :: JSVal }

instance PToJSVal SVGComponentTransferFunctionElement where
  pToJSVal = unSVGComponentTransferFunctionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGComponentTransferFunctionElement where
  pFromJSVal = SVGComponentTransferFunctionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGComponentTransferFunctionElement where
  toJSVal = return . unSVGComponentTransferFunctionElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGComponentTransferFunctionElement where
  fromJSVal v = fmap SVGComponentTransferFunctionElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGComponentTransferFunctionElement where
  makeObject = makeObject . unSVGComponentTransferFunctionElement

class IsSVGElement o => IsSVGComponentTransferFunctionElement o
toSVGComponentTransferFunctionElement :: IsSVGComponentTransferFunctionElement o => o -> SVGComponentTransferFunctionElement
toSVGComponentTransferFunctionElement = SVGComponentTransferFunctionElement . coerce

instance IsSVGComponentTransferFunctionElement SVGComponentTransferFunctionElement
instance IsSVGElement SVGComponentTransferFunctionElement
instance IsElement SVGComponentTransferFunctionElement
instance IsNode SVGComponentTransferFunctionElement
instance IsEventTarget SVGComponentTransferFunctionElement
instance IsGObject SVGComponentTransferFunctionElement where
  typeGType _ = gTypeSVGComponentTransferFunctionElement
  {-# INLINE typeGType #-}

gTypeSVGComponentTransferFunctionElement :: JSM GType
gTypeSVGComponentTransferFunctionElement = GType . Object <$> jsg "SVGComponentTransferFunctionElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGCursorElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement Mozilla SVGCursorElement documentation>
newtype SVGCursorElement = SVGCursorElement { unSVGCursorElement :: JSVal }

instance PToJSVal SVGCursorElement where
  pToJSVal = unSVGCursorElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGCursorElement where
  pFromJSVal = SVGCursorElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGCursorElement where
  toJSVal = return . unSVGCursorElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGCursorElement where
  fromJSVal v = fmap SVGCursorElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGCursorElement where
  makeObject = makeObject . unSVGCursorElement

instance IsSVGElement SVGCursorElement
instance IsElement SVGCursorElement
instance IsNode SVGCursorElement
instance IsEventTarget SVGCursorElement
instance IsGObject SVGCursorElement where
  typeGType _ = gTypeSVGCursorElement
  {-# INLINE typeGType #-}

gTypeSVGCursorElement :: JSM GType
gTypeSVGCursorElement = GType . Object <$> jsg "SVGCursorElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGDefsElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDefsElement Mozilla SVGDefsElement documentation>
newtype SVGDefsElement = SVGDefsElement { unSVGDefsElement :: JSVal }

instance PToJSVal SVGDefsElement where
  pToJSVal = unSVGDefsElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGDefsElement where
  pFromJSVal = SVGDefsElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGDefsElement where
  toJSVal = return . unSVGDefsElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGDefsElement where
  fromJSVal v = fmap SVGDefsElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGDefsElement where
  makeObject = makeObject . unSVGDefsElement

instance IsSVGGraphicsElement SVGDefsElement
instance IsSVGElement SVGDefsElement
instance IsElement SVGDefsElement
instance IsNode SVGDefsElement
instance IsEventTarget SVGDefsElement
instance IsGObject SVGDefsElement where
  typeGType _ = gTypeSVGDefsElement
  {-# INLINE typeGType #-}

gTypeSVGDefsElement :: JSM GType
gTypeSVGDefsElement = GType . Object <$> jsg "SVGDefsElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGDescElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDescElement Mozilla SVGDescElement documentation>
newtype SVGDescElement = SVGDescElement { unSVGDescElement :: JSVal }

instance PToJSVal SVGDescElement where
  pToJSVal = unSVGDescElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGDescElement where
  pFromJSVal = SVGDescElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGDescElement where
  toJSVal = return . unSVGDescElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGDescElement where
  fromJSVal v = fmap SVGDescElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGDescElement where
  makeObject = makeObject . unSVGDescElement

instance IsSVGElement SVGDescElement
instance IsElement SVGDescElement
instance IsNode SVGDescElement
instance IsEventTarget SVGDescElement
instance IsGObject SVGDescElement where
  typeGType _ = gTypeSVGDescElement
  {-# INLINE typeGType #-}

gTypeSVGDescElement :: JSM GType
gTypeSVGDescElement = GType . Object <$> jsg "SVGDescElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGDocument".
-- Base interface functions are in:
--
--     * "JSDOM.Document"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument Mozilla SVGDocument documentation>
newtype SVGDocument = SVGDocument { unSVGDocument :: JSVal }

instance PToJSVal SVGDocument where
  pToJSVal = unSVGDocument
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGDocument where
  pFromJSVal = SVGDocument
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGDocument where
  toJSVal = return . unSVGDocument
  {-# INLINE toJSVal #-}

instance FromJSVal SVGDocument where
  fromJSVal v = fmap SVGDocument <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGDocument where
  makeObject = makeObject . unSVGDocument

instance IsDocument SVGDocument
instance IsNode SVGDocument
instance IsEventTarget SVGDocument
instance IsGObject SVGDocument where
  typeGType _ = gTypeSVGDocument
  {-# INLINE typeGType #-}

gTypeSVGDocument :: JSM GType
gTypeSVGDocument = GType . Object <$> jsg "SVGDocument"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGElement".
-- Base interface functions are in:
--
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement Mozilla SVGElement documentation>
newtype SVGElement = SVGElement { unSVGElement :: JSVal }

instance PToJSVal SVGElement where
  pToJSVal = unSVGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGElement where
  pFromJSVal = SVGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGElement where
  toJSVal = return . unSVGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGElement where
  fromJSVal v = fmap SVGElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGElement where
  makeObject = makeObject . unSVGElement

class IsElement o => IsSVGElement o
toSVGElement :: IsSVGElement o => o -> SVGElement
toSVGElement = SVGElement . coerce

instance IsSVGElement SVGElement
instance IsElement SVGElement
instance IsNode SVGElement
instance IsEventTarget SVGElement
instance IsGObject SVGElement where
  typeGType _ = gTypeSVGElement
  {-# INLINE typeGType #-}

gTypeSVGElement :: JSM GType
gTypeSVGElement = GType . Object <$> jsg "SVGElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGEllipseElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement Mozilla SVGEllipseElement documentation>
newtype SVGEllipseElement = SVGEllipseElement { unSVGEllipseElement :: JSVal }

instance PToJSVal SVGEllipseElement where
  pToJSVal = unSVGEllipseElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGEllipseElement where
  pFromJSVal = SVGEllipseElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGEllipseElement where
  toJSVal = return . unSVGEllipseElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGEllipseElement where
  fromJSVal v = fmap SVGEllipseElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGEllipseElement where
  makeObject = makeObject . unSVGEllipseElement

instance IsSVGGraphicsElement SVGEllipseElement
instance IsSVGElement SVGEllipseElement
instance IsElement SVGEllipseElement
instance IsNode SVGEllipseElement
instance IsEventTarget SVGEllipseElement
instance IsGObject SVGEllipseElement where
  typeGType _ = gTypeSVGEllipseElement
  {-# INLINE typeGType #-}

gTypeSVGEllipseElement :: JSM GType
gTypeSVGEllipseElement = GType . Object <$> jsg "SVGEllipseElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGExternalResourcesRequired".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired Mozilla SVGExternalResourcesRequired documentation>
newtype SVGExternalResourcesRequired = SVGExternalResourcesRequired { unSVGExternalResourcesRequired :: JSVal }

instance PToJSVal SVGExternalResourcesRequired where
  pToJSVal = unSVGExternalResourcesRequired
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGExternalResourcesRequired where
  pFromJSVal = SVGExternalResourcesRequired
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGExternalResourcesRequired where
  toJSVal = return . unSVGExternalResourcesRequired
  {-# INLINE toJSVal #-}

instance FromJSVal SVGExternalResourcesRequired where
  fromJSVal v = fmap SVGExternalResourcesRequired <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGExternalResourcesRequired where
  makeObject = makeObject . unSVGExternalResourcesRequired

instance IsGObject SVGExternalResourcesRequired where
  typeGType _ = gTypeSVGExternalResourcesRequired
  {-# INLINE typeGType #-}

gTypeSVGExternalResourcesRequired :: JSM GType
gTypeSVGExternalResourcesRequired = GType . Object <$> jsg "SVGExternalResourcesRequired"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEBlendElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement Mozilla SVGFEBlendElement documentation>
newtype SVGFEBlendElement = SVGFEBlendElement { unSVGFEBlendElement :: JSVal }

instance PToJSVal SVGFEBlendElement where
  pToJSVal = unSVGFEBlendElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEBlendElement where
  pFromJSVal = SVGFEBlendElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEBlendElement where
  toJSVal = return . unSVGFEBlendElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEBlendElement where
  fromJSVal v = fmap SVGFEBlendElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEBlendElement where
  makeObject = makeObject . unSVGFEBlendElement

instance IsSVGElement SVGFEBlendElement
instance IsElement SVGFEBlendElement
instance IsNode SVGFEBlendElement
instance IsEventTarget SVGFEBlendElement
instance IsGObject SVGFEBlendElement where
  typeGType _ = gTypeSVGFEBlendElement
  {-# INLINE typeGType #-}

gTypeSVGFEBlendElement :: JSM GType
gTypeSVGFEBlendElement = GType . Object <$> jsg "SVGFEBlendElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEColorMatrixElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement Mozilla SVGFEColorMatrixElement documentation>
newtype SVGFEColorMatrixElement = SVGFEColorMatrixElement { unSVGFEColorMatrixElement :: JSVal }

instance PToJSVal SVGFEColorMatrixElement where
  pToJSVal = unSVGFEColorMatrixElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEColorMatrixElement where
  pFromJSVal = SVGFEColorMatrixElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEColorMatrixElement where
  toJSVal = return . unSVGFEColorMatrixElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEColorMatrixElement where
  fromJSVal v = fmap SVGFEColorMatrixElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEColorMatrixElement where
  makeObject = makeObject . unSVGFEColorMatrixElement

instance IsSVGElement SVGFEColorMatrixElement
instance IsElement SVGFEColorMatrixElement
instance IsNode SVGFEColorMatrixElement
instance IsEventTarget SVGFEColorMatrixElement
instance IsGObject SVGFEColorMatrixElement where
  typeGType _ = gTypeSVGFEColorMatrixElement
  {-# INLINE typeGType #-}

gTypeSVGFEColorMatrixElement :: JSM GType
gTypeSVGFEColorMatrixElement = GType . Object <$> jsg "SVGFEColorMatrixElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEComponentTransferElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEComponentTransferElement Mozilla SVGFEComponentTransferElement documentation>
newtype SVGFEComponentTransferElement = SVGFEComponentTransferElement { unSVGFEComponentTransferElement :: JSVal }

instance PToJSVal SVGFEComponentTransferElement where
  pToJSVal = unSVGFEComponentTransferElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEComponentTransferElement where
  pFromJSVal = SVGFEComponentTransferElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEComponentTransferElement where
  toJSVal = return . unSVGFEComponentTransferElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEComponentTransferElement where
  fromJSVal v = fmap SVGFEComponentTransferElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEComponentTransferElement where
  makeObject = makeObject . unSVGFEComponentTransferElement

instance IsSVGElement SVGFEComponentTransferElement
instance IsElement SVGFEComponentTransferElement
instance IsNode SVGFEComponentTransferElement
instance IsEventTarget SVGFEComponentTransferElement
instance IsGObject SVGFEComponentTransferElement where
  typeGType _ = gTypeSVGFEComponentTransferElement
  {-# INLINE typeGType #-}

gTypeSVGFEComponentTransferElement :: JSM GType
gTypeSVGFEComponentTransferElement = GType . Object <$> jsg "SVGFEComponentTransferElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFECompositeElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement Mozilla SVGFECompositeElement documentation>
newtype SVGFECompositeElement = SVGFECompositeElement { unSVGFECompositeElement :: JSVal }

instance PToJSVal SVGFECompositeElement where
  pToJSVal = unSVGFECompositeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFECompositeElement where
  pFromJSVal = SVGFECompositeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFECompositeElement where
  toJSVal = return . unSVGFECompositeElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFECompositeElement where
  fromJSVal v = fmap SVGFECompositeElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFECompositeElement where
  makeObject = makeObject . unSVGFECompositeElement

instance IsSVGElement SVGFECompositeElement
instance IsElement SVGFECompositeElement
instance IsNode SVGFECompositeElement
instance IsEventTarget SVGFECompositeElement
instance IsGObject SVGFECompositeElement where
  typeGType _ = gTypeSVGFECompositeElement
  {-# INLINE typeGType #-}

gTypeSVGFECompositeElement :: JSM GType
gTypeSVGFECompositeElement = GType . Object <$> jsg "SVGFECompositeElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEConvolveMatrixElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement Mozilla SVGFEConvolveMatrixElement documentation>
newtype SVGFEConvolveMatrixElement = SVGFEConvolveMatrixElement { unSVGFEConvolveMatrixElement :: JSVal }

instance PToJSVal SVGFEConvolveMatrixElement where
  pToJSVal = unSVGFEConvolveMatrixElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEConvolveMatrixElement where
  pFromJSVal = SVGFEConvolveMatrixElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEConvolveMatrixElement where
  toJSVal = return . unSVGFEConvolveMatrixElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEConvolveMatrixElement where
  fromJSVal v = fmap SVGFEConvolveMatrixElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEConvolveMatrixElement where
  makeObject = makeObject . unSVGFEConvolveMatrixElement

instance IsSVGElement SVGFEConvolveMatrixElement
instance IsElement SVGFEConvolveMatrixElement
instance IsNode SVGFEConvolveMatrixElement
instance IsEventTarget SVGFEConvolveMatrixElement
instance IsGObject SVGFEConvolveMatrixElement where
  typeGType _ = gTypeSVGFEConvolveMatrixElement
  {-# INLINE typeGType #-}

gTypeSVGFEConvolveMatrixElement :: JSM GType
gTypeSVGFEConvolveMatrixElement = GType . Object <$> jsg "SVGFEConvolveMatrixElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEDiffuseLightingElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement Mozilla SVGFEDiffuseLightingElement documentation>
newtype SVGFEDiffuseLightingElement = SVGFEDiffuseLightingElement { unSVGFEDiffuseLightingElement :: JSVal }

instance PToJSVal SVGFEDiffuseLightingElement where
  pToJSVal = unSVGFEDiffuseLightingElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDiffuseLightingElement where
  pFromJSVal = SVGFEDiffuseLightingElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDiffuseLightingElement where
  toJSVal = return . unSVGFEDiffuseLightingElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDiffuseLightingElement where
  fromJSVal v = fmap SVGFEDiffuseLightingElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEDiffuseLightingElement where
  makeObject = makeObject . unSVGFEDiffuseLightingElement

instance IsSVGElement SVGFEDiffuseLightingElement
instance IsElement SVGFEDiffuseLightingElement
instance IsNode SVGFEDiffuseLightingElement
instance IsEventTarget SVGFEDiffuseLightingElement
instance IsGObject SVGFEDiffuseLightingElement where
  typeGType _ = gTypeSVGFEDiffuseLightingElement
  {-# INLINE typeGType #-}

gTypeSVGFEDiffuseLightingElement :: JSM GType
gTypeSVGFEDiffuseLightingElement = GType . Object <$> jsg "SVGFEDiffuseLightingElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEDisplacementMapElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement Mozilla SVGFEDisplacementMapElement documentation>
newtype SVGFEDisplacementMapElement = SVGFEDisplacementMapElement { unSVGFEDisplacementMapElement :: JSVal }

instance PToJSVal SVGFEDisplacementMapElement where
  pToJSVal = unSVGFEDisplacementMapElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDisplacementMapElement where
  pFromJSVal = SVGFEDisplacementMapElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDisplacementMapElement where
  toJSVal = return . unSVGFEDisplacementMapElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDisplacementMapElement where
  fromJSVal v = fmap SVGFEDisplacementMapElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEDisplacementMapElement where
  makeObject = makeObject . unSVGFEDisplacementMapElement

instance IsSVGElement SVGFEDisplacementMapElement
instance IsElement SVGFEDisplacementMapElement
instance IsNode SVGFEDisplacementMapElement
instance IsEventTarget SVGFEDisplacementMapElement
instance IsGObject SVGFEDisplacementMapElement where
  typeGType _ = gTypeSVGFEDisplacementMapElement
  {-# INLINE typeGType #-}

gTypeSVGFEDisplacementMapElement :: JSM GType
gTypeSVGFEDisplacementMapElement = GType . Object <$> jsg "SVGFEDisplacementMapElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEDistantLightElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement Mozilla SVGFEDistantLightElement documentation>
newtype SVGFEDistantLightElement = SVGFEDistantLightElement { unSVGFEDistantLightElement :: JSVal }

instance PToJSVal SVGFEDistantLightElement where
  pToJSVal = unSVGFEDistantLightElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDistantLightElement where
  pFromJSVal = SVGFEDistantLightElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDistantLightElement where
  toJSVal = return . unSVGFEDistantLightElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDistantLightElement where
  fromJSVal v = fmap SVGFEDistantLightElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEDistantLightElement where
  makeObject = makeObject . unSVGFEDistantLightElement

instance IsSVGElement SVGFEDistantLightElement
instance IsElement SVGFEDistantLightElement
instance IsNode SVGFEDistantLightElement
instance IsEventTarget SVGFEDistantLightElement
instance IsGObject SVGFEDistantLightElement where
  typeGType _ = gTypeSVGFEDistantLightElement
  {-# INLINE typeGType #-}

gTypeSVGFEDistantLightElement :: JSM GType
gTypeSVGFEDistantLightElement = GType . Object <$> jsg "SVGFEDistantLightElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEDropShadowElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement Mozilla SVGFEDropShadowElement documentation>
newtype SVGFEDropShadowElement = SVGFEDropShadowElement { unSVGFEDropShadowElement :: JSVal }

instance PToJSVal SVGFEDropShadowElement where
  pToJSVal = unSVGFEDropShadowElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDropShadowElement where
  pFromJSVal = SVGFEDropShadowElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDropShadowElement where
  toJSVal = return . unSVGFEDropShadowElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDropShadowElement where
  fromJSVal v = fmap SVGFEDropShadowElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEDropShadowElement where
  makeObject = makeObject . unSVGFEDropShadowElement

instance IsSVGElement SVGFEDropShadowElement
instance IsElement SVGFEDropShadowElement
instance IsNode SVGFEDropShadowElement
instance IsEventTarget SVGFEDropShadowElement
instance IsGObject SVGFEDropShadowElement where
  typeGType _ = gTypeSVGFEDropShadowElement
  {-# INLINE typeGType #-}

gTypeSVGFEDropShadowElement :: JSM GType
gTypeSVGFEDropShadowElement = GType . Object <$> jsg "SVGFEDropShadowElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEFloodElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFloodElement Mozilla SVGFEFloodElement documentation>
newtype SVGFEFloodElement = SVGFEFloodElement { unSVGFEFloodElement :: JSVal }

instance PToJSVal SVGFEFloodElement where
  pToJSVal = unSVGFEFloodElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFloodElement where
  pFromJSVal = SVGFEFloodElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFloodElement where
  toJSVal = return . unSVGFEFloodElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFloodElement where
  fromJSVal v = fmap SVGFEFloodElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEFloodElement where
  makeObject = makeObject . unSVGFEFloodElement

instance IsSVGElement SVGFEFloodElement
instance IsElement SVGFEFloodElement
instance IsNode SVGFEFloodElement
instance IsEventTarget SVGFEFloodElement
instance IsGObject SVGFEFloodElement where
  typeGType _ = gTypeSVGFEFloodElement
  {-# INLINE typeGType #-}

gTypeSVGFEFloodElement :: JSM GType
gTypeSVGFEFloodElement = GType . Object <$> jsg "SVGFEFloodElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEFuncAElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGComponentTransferFunctionElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncAElement Mozilla SVGFEFuncAElement documentation>
newtype SVGFEFuncAElement = SVGFEFuncAElement { unSVGFEFuncAElement :: JSVal }

instance PToJSVal SVGFEFuncAElement where
  pToJSVal = unSVGFEFuncAElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncAElement where
  pFromJSVal = SVGFEFuncAElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncAElement where
  toJSVal = return . unSVGFEFuncAElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncAElement where
  fromJSVal v = fmap SVGFEFuncAElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEFuncAElement where
  makeObject = makeObject . unSVGFEFuncAElement

instance IsSVGComponentTransferFunctionElement SVGFEFuncAElement
instance IsSVGElement SVGFEFuncAElement
instance IsElement SVGFEFuncAElement
instance IsNode SVGFEFuncAElement
instance IsEventTarget SVGFEFuncAElement
instance IsGObject SVGFEFuncAElement where
  typeGType _ = gTypeSVGFEFuncAElement
  {-# INLINE typeGType #-}

gTypeSVGFEFuncAElement :: JSM GType
gTypeSVGFEFuncAElement = GType . Object <$> jsg "SVGFEFuncAElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEFuncBElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGComponentTransferFunctionElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncBElement Mozilla SVGFEFuncBElement documentation>
newtype SVGFEFuncBElement = SVGFEFuncBElement { unSVGFEFuncBElement :: JSVal }

instance PToJSVal SVGFEFuncBElement where
  pToJSVal = unSVGFEFuncBElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncBElement where
  pFromJSVal = SVGFEFuncBElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncBElement where
  toJSVal = return . unSVGFEFuncBElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncBElement where
  fromJSVal v = fmap SVGFEFuncBElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEFuncBElement where
  makeObject = makeObject . unSVGFEFuncBElement

instance IsSVGComponentTransferFunctionElement SVGFEFuncBElement
instance IsSVGElement SVGFEFuncBElement
instance IsElement SVGFEFuncBElement
instance IsNode SVGFEFuncBElement
instance IsEventTarget SVGFEFuncBElement
instance IsGObject SVGFEFuncBElement where
  typeGType _ = gTypeSVGFEFuncBElement
  {-# INLINE typeGType #-}

gTypeSVGFEFuncBElement :: JSM GType
gTypeSVGFEFuncBElement = GType . Object <$> jsg "SVGFEFuncBElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEFuncGElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGComponentTransferFunctionElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncGElement Mozilla SVGFEFuncGElement documentation>
newtype SVGFEFuncGElement = SVGFEFuncGElement { unSVGFEFuncGElement :: JSVal }

instance PToJSVal SVGFEFuncGElement where
  pToJSVal = unSVGFEFuncGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncGElement where
  pFromJSVal = SVGFEFuncGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncGElement where
  toJSVal = return . unSVGFEFuncGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncGElement where
  fromJSVal v = fmap SVGFEFuncGElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEFuncGElement where
  makeObject = makeObject . unSVGFEFuncGElement

instance IsSVGComponentTransferFunctionElement SVGFEFuncGElement
instance IsSVGElement SVGFEFuncGElement
instance IsElement SVGFEFuncGElement
instance IsNode SVGFEFuncGElement
instance IsEventTarget SVGFEFuncGElement
instance IsGObject SVGFEFuncGElement where
  typeGType _ = gTypeSVGFEFuncGElement
  {-# INLINE typeGType #-}

gTypeSVGFEFuncGElement :: JSM GType
gTypeSVGFEFuncGElement = GType . Object <$> jsg "SVGFEFuncGElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEFuncRElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGComponentTransferFunctionElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncRElement Mozilla SVGFEFuncRElement documentation>
newtype SVGFEFuncRElement = SVGFEFuncRElement { unSVGFEFuncRElement :: JSVal }

instance PToJSVal SVGFEFuncRElement where
  pToJSVal = unSVGFEFuncRElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncRElement where
  pFromJSVal = SVGFEFuncRElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncRElement where
  toJSVal = return . unSVGFEFuncRElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncRElement where
  fromJSVal v = fmap SVGFEFuncRElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEFuncRElement where
  makeObject = makeObject . unSVGFEFuncRElement

instance IsSVGComponentTransferFunctionElement SVGFEFuncRElement
instance IsSVGElement SVGFEFuncRElement
instance IsElement SVGFEFuncRElement
instance IsNode SVGFEFuncRElement
instance IsEventTarget SVGFEFuncRElement
instance IsGObject SVGFEFuncRElement where
  typeGType _ = gTypeSVGFEFuncRElement
  {-# INLINE typeGType #-}

gTypeSVGFEFuncRElement :: JSM GType
gTypeSVGFEFuncRElement = GType . Object <$> jsg "SVGFEFuncRElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEGaussianBlurElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement Mozilla SVGFEGaussianBlurElement documentation>
newtype SVGFEGaussianBlurElement = SVGFEGaussianBlurElement { unSVGFEGaussianBlurElement :: JSVal }

instance PToJSVal SVGFEGaussianBlurElement where
  pToJSVal = unSVGFEGaussianBlurElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEGaussianBlurElement where
  pFromJSVal = SVGFEGaussianBlurElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEGaussianBlurElement where
  toJSVal = return . unSVGFEGaussianBlurElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEGaussianBlurElement where
  fromJSVal v = fmap SVGFEGaussianBlurElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEGaussianBlurElement where
  makeObject = makeObject . unSVGFEGaussianBlurElement

instance IsSVGElement SVGFEGaussianBlurElement
instance IsElement SVGFEGaussianBlurElement
instance IsNode SVGFEGaussianBlurElement
instance IsEventTarget SVGFEGaussianBlurElement
instance IsGObject SVGFEGaussianBlurElement where
  typeGType _ = gTypeSVGFEGaussianBlurElement
  {-# INLINE typeGType #-}

gTypeSVGFEGaussianBlurElement :: JSM GType
gTypeSVGFEGaussianBlurElement = GType . Object <$> jsg "SVGFEGaussianBlurElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEImageElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement Mozilla SVGFEImageElement documentation>
newtype SVGFEImageElement = SVGFEImageElement { unSVGFEImageElement :: JSVal }

instance PToJSVal SVGFEImageElement where
  pToJSVal = unSVGFEImageElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEImageElement where
  pFromJSVal = SVGFEImageElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEImageElement where
  toJSVal = return . unSVGFEImageElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEImageElement where
  fromJSVal v = fmap SVGFEImageElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEImageElement where
  makeObject = makeObject . unSVGFEImageElement

instance IsSVGElement SVGFEImageElement
instance IsElement SVGFEImageElement
instance IsNode SVGFEImageElement
instance IsEventTarget SVGFEImageElement
instance IsGObject SVGFEImageElement where
  typeGType _ = gTypeSVGFEImageElement
  {-# INLINE typeGType #-}

gTypeSVGFEImageElement :: JSM GType
gTypeSVGFEImageElement = GType . Object <$> jsg "SVGFEImageElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEMergeElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeElement Mozilla SVGFEMergeElement documentation>
newtype SVGFEMergeElement = SVGFEMergeElement { unSVGFEMergeElement :: JSVal }

instance PToJSVal SVGFEMergeElement where
  pToJSVal = unSVGFEMergeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEMergeElement where
  pFromJSVal = SVGFEMergeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEMergeElement where
  toJSVal = return . unSVGFEMergeElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEMergeElement where
  fromJSVal v = fmap SVGFEMergeElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEMergeElement where
  makeObject = makeObject . unSVGFEMergeElement

instance IsSVGElement SVGFEMergeElement
instance IsElement SVGFEMergeElement
instance IsNode SVGFEMergeElement
instance IsEventTarget SVGFEMergeElement
instance IsGObject SVGFEMergeElement where
  typeGType _ = gTypeSVGFEMergeElement
  {-# INLINE typeGType #-}

gTypeSVGFEMergeElement :: JSM GType
gTypeSVGFEMergeElement = GType . Object <$> jsg "SVGFEMergeElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEMergeNodeElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeNodeElement Mozilla SVGFEMergeNodeElement documentation>
newtype SVGFEMergeNodeElement = SVGFEMergeNodeElement { unSVGFEMergeNodeElement :: JSVal }

instance PToJSVal SVGFEMergeNodeElement where
  pToJSVal = unSVGFEMergeNodeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEMergeNodeElement where
  pFromJSVal = SVGFEMergeNodeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEMergeNodeElement where
  toJSVal = return . unSVGFEMergeNodeElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEMergeNodeElement where
  fromJSVal v = fmap SVGFEMergeNodeElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEMergeNodeElement where
  makeObject = makeObject . unSVGFEMergeNodeElement

instance IsSVGElement SVGFEMergeNodeElement
instance IsElement SVGFEMergeNodeElement
instance IsNode SVGFEMergeNodeElement
instance IsEventTarget SVGFEMergeNodeElement
instance IsGObject SVGFEMergeNodeElement where
  typeGType _ = gTypeSVGFEMergeNodeElement
  {-# INLINE typeGType #-}

gTypeSVGFEMergeNodeElement :: JSM GType
gTypeSVGFEMergeNodeElement = GType . Object <$> jsg "SVGFEMergeNodeElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEMorphologyElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement Mozilla SVGFEMorphologyElement documentation>
newtype SVGFEMorphologyElement = SVGFEMorphologyElement { unSVGFEMorphologyElement :: JSVal }

instance PToJSVal SVGFEMorphologyElement where
  pToJSVal = unSVGFEMorphologyElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEMorphologyElement where
  pFromJSVal = SVGFEMorphologyElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEMorphologyElement where
  toJSVal = return . unSVGFEMorphologyElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEMorphologyElement where
  fromJSVal v = fmap SVGFEMorphologyElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEMorphologyElement where
  makeObject = makeObject . unSVGFEMorphologyElement

instance IsSVGElement SVGFEMorphologyElement
instance IsElement SVGFEMorphologyElement
instance IsNode SVGFEMorphologyElement
instance IsEventTarget SVGFEMorphologyElement
instance IsGObject SVGFEMorphologyElement where
  typeGType _ = gTypeSVGFEMorphologyElement
  {-# INLINE typeGType #-}

gTypeSVGFEMorphologyElement :: JSM GType
gTypeSVGFEMorphologyElement = GType . Object <$> jsg "SVGFEMorphologyElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEOffsetElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement Mozilla SVGFEOffsetElement documentation>
newtype SVGFEOffsetElement = SVGFEOffsetElement { unSVGFEOffsetElement :: JSVal }

instance PToJSVal SVGFEOffsetElement where
  pToJSVal = unSVGFEOffsetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEOffsetElement where
  pFromJSVal = SVGFEOffsetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEOffsetElement where
  toJSVal = return . unSVGFEOffsetElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEOffsetElement where
  fromJSVal v = fmap SVGFEOffsetElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEOffsetElement where
  makeObject = makeObject . unSVGFEOffsetElement

instance IsSVGElement SVGFEOffsetElement
instance IsElement SVGFEOffsetElement
instance IsNode SVGFEOffsetElement
instance IsEventTarget SVGFEOffsetElement
instance IsGObject SVGFEOffsetElement where
  typeGType _ = gTypeSVGFEOffsetElement
  {-# INLINE typeGType #-}

gTypeSVGFEOffsetElement :: JSM GType
gTypeSVGFEOffsetElement = GType . Object <$> jsg "SVGFEOffsetElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFEPointLightElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement Mozilla SVGFEPointLightElement documentation>
newtype SVGFEPointLightElement = SVGFEPointLightElement { unSVGFEPointLightElement :: JSVal }

instance PToJSVal SVGFEPointLightElement where
  pToJSVal = unSVGFEPointLightElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEPointLightElement where
  pFromJSVal = SVGFEPointLightElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEPointLightElement where
  toJSVal = return . unSVGFEPointLightElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEPointLightElement where
  fromJSVal v = fmap SVGFEPointLightElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFEPointLightElement where
  makeObject = makeObject . unSVGFEPointLightElement

instance IsSVGElement SVGFEPointLightElement
instance IsElement SVGFEPointLightElement
instance IsNode SVGFEPointLightElement
instance IsEventTarget SVGFEPointLightElement
instance IsGObject SVGFEPointLightElement where
  typeGType _ = gTypeSVGFEPointLightElement
  {-# INLINE typeGType #-}

gTypeSVGFEPointLightElement :: JSM GType
gTypeSVGFEPointLightElement = GType . Object <$> jsg "SVGFEPointLightElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFESpecularLightingElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement Mozilla SVGFESpecularLightingElement documentation>
newtype SVGFESpecularLightingElement = SVGFESpecularLightingElement { unSVGFESpecularLightingElement :: JSVal }

instance PToJSVal SVGFESpecularLightingElement where
  pToJSVal = unSVGFESpecularLightingElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFESpecularLightingElement where
  pFromJSVal = SVGFESpecularLightingElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFESpecularLightingElement where
  toJSVal = return . unSVGFESpecularLightingElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFESpecularLightingElement where
  fromJSVal v = fmap SVGFESpecularLightingElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFESpecularLightingElement where
  makeObject = makeObject . unSVGFESpecularLightingElement

instance IsSVGElement SVGFESpecularLightingElement
instance IsElement SVGFESpecularLightingElement
instance IsNode SVGFESpecularLightingElement
instance IsEventTarget SVGFESpecularLightingElement
instance IsGObject SVGFESpecularLightingElement where
  typeGType _ = gTypeSVGFESpecularLightingElement
  {-# INLINE typeGType #-}

gTypeSVGFESpecularLightingElement :: JSM GType
gTypeSVGFESpecularLightingElement = GType . Object <$> jsg "SVGFESpecularLightingElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFESpotLightElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement Mozilla SVGFESpotLightElement documentation>
newtype SVGFESpotLightElement = SVGFESpotLightElement { unSVGFESpotLightElement :: JSVal }

instance PToJSVal SVGFESpotLightElement where
  pToJSVal = unSVGFESpotLightElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFESpotLightElement where
  pFromJSVal = SVGFESpotLightElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFESpotLightElement where
  toJSVal = return . unSVGFESpotLightElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFESpotLightElement where
  fromJSVal v = fmap SVGFESpotLightElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFESpotLightElement where
  makeObject = makeObject . unSVGFESpotLightElement

instance IsSVGElement SVGFESpotLightElement
instance IsElement SVGFESpotLightElement
instance IsNode SVGFESpotLightElement
instance IsEventTarget SVGFESpotLightElement
instance IsGObject SVGFESpotLightElement where
  typeGType _ = gTypeSVGFESpotLightElement
  {-# INLINE typeGType #-}

gTypeSVGFESpotLightElement :: JSM GType
gTypeSVGFESpotLightElement = GType . Object <$> jsg "SVGFESpotLightElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFETileElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETileElement Mozilla SVGFETileElement documentation>
newtype SVGFETileElement = SVGFETileElement { unSVGFETileElement :: JSVal }

instance PToJSVal SVGFETileElement where
  pToJSVal = unSVGFETileElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFETileElement where
  pFromJSVal = SVGFETileElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFETileElement where
  toJSVal = return . unSVGFETileElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFETileElement where
  fromJSVal v = fmap SVGFETileElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFETileElement where
  makeObject = makeObject . unSVGFETileElement

instance IsSVGElement SVGFETileElement
instance IsElement SVGFETileElement
instance IsNode SVGFETileElement
instance IsEventTarget SVGFETileElement
instance IsGObject SVGFETileElement where
  typeGType _ = gTypeSVGFETileElement
  {-# INLINE typeGType #-}

gTypeSVGFETileElement :: JSM GType
gTypeSVGFETileElement = GType . Object <$> jsg "SVGFETileElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFETurbulenceElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement Mozilla SVGFETurbulenceElement documentation>
newtype SVGFETurbulenceElement = SVGFETurbulenceElement { unSVGFETurbulenceElement :: JSVal }

instance PToJSVal SVGFETurbulenceElement where
  pToJSVal = unSVGFETurbulenceElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFETurbulenceElement where
  pFromJSVal = SVGFETurbulenceElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFETurbulenceElement where
  toJSVal = return . unSVGFETurbulenceElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFETurbulenceElement where
  fromJSVal v = fmap SVGFETurbulenceElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFETurbulenceElement where
  makeObject = makeObject . unSVGFETurbulenceElement

instance IsSVGElement SVGFETurbulenceElement
instance IsElement SVGFETurbulenceElement
instance IsNode SVGFETurbulenceElement
instance IsEventTarget SVGFETurbulenceElement
instance IsGObject SVGFETurbulenceElement where
  typeGType _ = gTypeSVGFETurbulenceElement
  {-# INLINE typeGType #-}

gTypeSVGFETurbulenceElement :: JSM GType
gTypeSVGFETurbulenceElement = GType . Object <$> jsg "SVGFETurbulenceElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFilterElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement Mozilla SVGFilterElement documentation>
newtype SVGFilterElement = SVGFilterElement { unSVGFilterElement :: JSVal }

instance PToJSVal SVGFilterElement where
  pToJSVal = unSVGFilterElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFilterElement where
  pFromJSVal = SVGFilterElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFilterElement where
  toJSVal = return . unSVGFilterElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFilterElement where
  fromJSVal v = fmap SVGFilterElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFilterElement where
  makeObject = makeObject . unSVGFilterElement

instance IsSVGElement SVGFilterElement
instance IsElement SVGFilterElement
instance IsNode SVGFilterElement
instance IsEventTarget SVGFilterElement
instance IsGObject SVGFilterElement where
  typeGType _ = gTypeSVGFilterElement
  {-# INLINE typeGType #-}

gTypeSVGFilterElement :: JSM GType
gTypeSVGFilterElement = GType . Object <$> jsg "SVGFilterElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFilterPrimitiveStandardAttributes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes Mozilla SVGFilterPrimitiveStandardAttributes documentation>
newtype SVGFilterPrimitiveStandardAttributes = SVGFilterPrimitiveStandardAttributes { unSVGFilterPrimitiveStandardAttributes :: JSVal }

instance PToJSVal SVGFilterPrimitiveStandardAttributes where
  pToJSVal = unSVGFilterPrimitiveStandardAttributes
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFilterPrimitiveStandardAttributes where
  pFromJSVal = SVGFilterPrimitiveStandardAttributes
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFilterPrimitiveStandardAttributes where
  toJSVal = return . unSVGFilterPrimitiveStandardAttributes
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFilterPrimitiveStandardAttributes where
  fromJSVal v = fmap SVGFilterPrimitiveStandardAttributes <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFilterPrimitiveStandardAttributes where
  makeObject = makeObject . unSVGFilterPrimitiveStandardAttributes

instance IsGObject SVGFilterPrimitiveStandardAttributes where
  typeGType _ = gTypeSVGFilterPrimitiveStandardAttributes
  {-# INLINE typeGType #-}

gTypeSVGFilterPrimitiveStandardAttributes :: JSM GType
gTypeSVGFilterPrimitiveStandardAttributes = GType . Object <$> jsg "SVGFilterPrimitiveStandardAttributes"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFitToViewBox".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox Mozilla SVGFitToViewBox documentation>
newtype SVGFitToViewBox = SVGFitToViewBox { unSVGFitToViewBox :: JSVal }

instance PToJSVal SVGFitToViewBox where
  pToJSVal = unSVGFitToViewBox
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFitToViewBox where
  pFromJSVal = SVGFitToViewBox
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFitToViewBox where
  toJSVal = return . unSVGFitToViewBox
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFitToViewBox where
  fromJSVal v = fmap SVGFitToViewBox <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFitToViewBox where
  makeObject = makeObject . unSVGFitToViewBox

instance IsGObject SVGFitToViewBox where
  typeGType _ = gTypeSVGFitToViewBox
  {-# INLINE typeGType #-}

gTypeSVGFitToViewBox :: JSM GType
gTypeSVGFitToViewBox = GType . Object <$> jsg "SVGFitToViewBox"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFontElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontElement Mozilla SVGFontElement documentation>
newtype SVGFontElement = SVGFontElement { unSVGFontElement :: JSVal }

instance PToJSVal SVGFontElement where
  pToJSVal = unSVGFontElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontElement where
  pFromJSVal = SVGFontElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontElement where
  toJSVal = return . unSVGFontElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontElement where
  fromJSVal v = fmap SVGFontElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFontElement where
  makeObject = makeObject . unSVGFontElement

instance IsSVGElement SVGFontElement
instance IsElement SVGFontElement
instance IsNode SVGFontElement
instance IsEventTarget SVGFontElement
instance IsGObject SVGFontElement where
  typeGType _ = gTypeSVGFontElement
  {-# INLINE typeGType #-}

gTypeSVGFontElement :: JSM GType
gTypeSVGFontElement = GType . Object <$> jsg "SVGFontElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFontFaceElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceElement Mozilla SVGFontFaceElement documentation>
newtype SVGFontFaceElement = SVGFontFaceElement { unSVGFontFaceElement :: JSVal }

instance PToJSVal SVGFontFaceElement where
  pToJSVal = unSVGFontFaceElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceElement where
  pFromJSVal = SVGFontFaceElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceElement where
  toJSVal = return . unSVGFontFaceElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceElement where
  fromJSVal v = fmap SVGFontFaceElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFontFaceElement where
  makeObject = makeObject . unSVGFontFaceElement

instance IsSVGElement SVGFontFaceElement
instance IsElement SVGFontFaceElement
instance IsNode SVGFontFaceElement
instance IsEventTarget SVGFontFaceElement
instance IsGObject SVGFontFaceElement where
  typeGType _ = gTypeSVGFontFaceElement
  {-# INLINE typeGType #-}

gTypeSVGFontFaceElement :: JSM GType
gTypeSVGFontFaceElement = GType . Object <$> jsg "SVGFontFaceElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFontFaceFormatElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceFormatElement Mozilla SVGFontFaceFormatElement documentation>
newtype SVGFontFaceFormatElement = SVGFontFaceFormatElement { unSVGFontFaceFormatElement :: JSVal }

instance PToJSVal SVGFontFaceFormatElement where
  pToJSVal = unSVGFontFaceFormatElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceFormatElement where
  pFromJSVal = SVGFontFaceFormatElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceFormatElement where
  toJSVal = return . unSVGFontFaceFormatElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceFormatElement where
  fromJSVal v = fmap SVGFontFaceFormatElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFontFaceFormatElement where
  makeObject = makeObject . unSVGFontFaceFormatElement

instance IsSVGElement SVGFontFaceFormatElement
instance IsElement SVGFontFaceFormatElement
instance IsNode SVGFontFaceFormatElement
instance IsEventTarget SVGFontFaceFormatElement
instance IsGObject SVGFontFaceFormatElement where
  typeGType _ = gTypeSVGFontFaceFormatElement
  {-# INLINE typeGType #-}

gTypeSVGFontFaceFormatElement :: JSM GType
gTypeSVGFontFaceFormatElement = GType . Object <$> jsg "SVGFontFaceFormatElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFontFaceNameElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceNameElement Mozilla SVGFontFaceNameElement documentation>
newtype SVGFontFaceNameElement = SVGFontFaceNameElement { unSVGFontFaceNameElement :: JSVal }

instance PToJSVal SVGFontFaceNameElement where
  pToJSVal = unSVGFontFaceNameElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceNameElement where
  pFromJSVal = SVGFontFaceNameElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceNameElement where
  toJSVal = return . unSVGFontFaceNameElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceNameElement where
  fromJSVal v = fmap SVGFontFaceNameElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFontFaceNameElement where
  makeObject = makeObject . unSVGFontFaceNameElement

instance IsSVGElement SVGFontFaceNameElement
instance IsElement SVGFontFaceNameElement
instance IsNode SVGFontFaceNameElement
instance IsEventTarget SVGFontFaceNameElement
instance IsGObject SVGFontFaceNameElement where
  typeGType _ = gTypeSVGFontFaceNameElement
  {-# INLINE typeGType #-}

gTypeSVGFontFaceNameElement :: JSM GType
gTypeSVGFontFaceNameElement = GType . Object <$> jsg "SVGFontFaceNameElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFontFaceSrcElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceSrcElement Mozilla SVGFontFaceSrcElement documentation>
newtype SVGFontFaceSrcElement = SVGFontFaceSrcElement { unSVGFontFaceSrcElement :: JSVal }

instance PToJSVal SVGFontFaceSrcElement where
  pToJSVal = unSVGFontFaceSrcElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceSrcElement where
  pFromJSVal = SVGFontFaceSrcElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceSrcElement where
  toJSVal = return . unSVGFontFaceSrcElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceSrcElement where
  fromJSVal v = fmap SVGFontFaceSrcElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFontFaceSrcElement where
  makeObject = makeObject . unSVGFontFaceSrcElement

instance IsSVGElement SVGFontFaceSrcElement
instance IsElement SVGFontFaceSrcElement
instance IsNode SVGFontFaceSrcElement
instance IsEventTarget SVGFontFaceSrcElement
instance IsGObject SVGFontFaceSrcElement where
  typeGType _ = gTypeSVGFontFaceSrcElement
  {-# INLINE typeGType #-}

gTypeSVGFontFaceSrcElement :: JSM GType
gTypeSVGFontFaceSrcElement = GType . Object <$> jsg "SVGFontFaceSrcElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGFontFaceUriElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceUriElement Mozilla SVGFontFaceUriElement documentation>
newtype SVGFontFaceUriElement = SVGFontFaceUriElement { unSVGFontFaceUriElement :: JSVal }

instance PToJSVal SVGFontFaceUriElement where
  pToJSVal = unSVGFontFaceUriElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceUriElement where
  pFromJSVal = SVGFontFaceUriElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceUriElement where
  toJSVal = return . unSVGFontFaceUriElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceUriElement where
  fromJSVal v = fmap SVGFontFaceUriElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGFontFaceUriElement where
  makeObject = makeObject . unSVGFontFaceUriElement

instance IsSVGElement SVGFontFaceUriElement
instance IsElement SVGFontFaceUriElement
instance IsNode SVGFontFaceUriElement
instance IsEventTarget SVGFontFaceUriElement
instance IsGObject SVGFontFaceUriElement where
  typeGType _ = gTypeSVGFontFaceUriElement
  {-# INLINE typeGType #-}

gTypeSVGFontFaceUriElement :: JSM GType
gTypeSVGFontFaceUriElement = GType . Object <$> jsg "SVGFontFaceUriElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGForeignObjectElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement Mozilla SVGForeignObjectElement documentation>
newtype SVGForeignObjectElement = SVGForeignObjectElement { unSVGForeignObjectElement :: JSVal }

instance PToJSVal SVGForeignObjectElement where
  pToJSVal = unSVGForeignObjectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGForeignObjectElement where
  pFromJSVal = SVGForeignObjectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGForeignObjectElement where
  toJSVal = return . unSVGForeignObjectElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGForeignObjectElement where
  fromJSVal v = fmap SVGForeignObjectElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGForeignObjectElement where
  makeObject = makeObject . unSVGForeignObjectElement

instance IsSVGGraphicsElement SVGForeignObjectElement
instance IsSVGElement SVGForeignObjectElement
instance IsElement SVGForeignObjectElement
instance IsNode SVGForeignObjectElement
instance IsEventTarget SVGForeignObjectElement
instance IsGObject SVGForeignObjectElement where
  typeGType _ = gTypeSVGForeignObjectElement
  {-# INLINE typeGType #-}

gTypeSVGForeignObjectElement :: JSM GType
gTypeSVGForeignObjectElement = GType . Object <$> jsg "SVGForeignObjectElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGGElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGElement Mozilla SVGGElement documentation>
newtype SVGGElement = SVGGElement { unSVGGElement :: JSVal }

instance PToJSVal SVGGElement where
  pToJSVal = unSVGGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGElement where
  pFromJSVal = SVGGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGElement where
  toJSVal = return . unSVGGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGElement where
  fromJSVal v = fmap SVGGElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGGElement where
  makeObject = makeObject . unSVGGElement

instance IsSVGGraphicsElement SVGGElement
instance IsSVGElement SVGGElement
instance IsElement SVGGElement
instance IsNode SVGGElement
instance IsEventTarget SVGGElement
instance IsGObject SVGGElement where
  typeGType _ = gTypeSVGGElement
  {-# INLINE typeGType #-}

gTypeSVGGElement :: JSM GType
gTypeSVGGElement = GType . Object <$> jsg "SVGGElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGGlyphElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphElement Mozilla SVGGlyphElement documentation>
newtype SVGGlyphElement = SVGGlyphElement { unSVGGlyphElement :: JSVal }

instance PToJSVal SVGGlyphElement where
  pToJSVal = unSVGGlyphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGlyphElement where
  pFromJSVal = SVGGlyphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGlyphElement where
  toJSVal = return . unSVGGlyphElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGlyphElement where
  fromJSVal v = fmap SVGGlyphElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGGlyphElement where
  makeObject = makeObject . unSVGGlyphElement

instance IsSVGElement SVGGlyphElement
instance IsElement SVGGlyphElement
instance IsNode SVGGlyphElement
instance IsEventTarget SVGGlyphElement
instance IsGObject SVGGlyphElement where
  typeGType _ = gTypeSVGGlyphElement
  {-# INLINE typeGType #-}

gTypeSVGGlyphElement :: JSM GType
gTypeSVGGlyphElement = GType . Object <$> jsg "SVGGlyphElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGGlyphRefElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement Mozilla SVGGlyphRefElement documentation>
newtype SVGGlyphRefElement = SVGGlyphRefElement { unSVGGlyphRefElement :: JSVal }

instance PToJSVal SVGGlyphRefElement where
  pToJSVal = unSVGGlyphRefElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGlyphRefElement where
  pFromJSVal = SVGGlyphRefElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGlyphRefElement where
  toJSVal = return . unSVGGlyphRefElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGlyphRefElement where
  fromJSVal v = fmap SVGGlyphRefElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGGlyphRefElement where
  makeObject = makeObject . unSVGGlyphRefElement

instance IsSVGElement SVGGlyphRefElement
instance IsElement SVGGlyphRefElement
instance IsNode SVGGlyphRefElement
instance IsEventTarget SVGGlyphRefElement
instance IsGObject SVGGlyphRefElement where
  typeGType _ = gTypeSVGGlyphRefElement
  {-# INLINE typeGType #-}

gTypeSVGGlyphRefElement :: JSM GType
gTypeSVGGlyphRefElement = GType . Object <$> jsg "SVGGlyphRefElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGGradientElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement Mozilla SVGGradientElement documentation>
newtype SVGGradientElement = SVGGradientElement { unSVGGradientElement :: JSVal }

instance PToJSVal SVGGradientElement where
  pToJSVal = unSVGGradientElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGradientElement where
  pFromJSVal = SVGGradientElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGradientElement where
  toJSVal = return . unSVGGradientElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGradientElement where
  fromJSVal v = fmap SVGGradientElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGGradientElement where
  makeObject = makeObject . unSVGGradientElement

class IsSVGElement o => IsSVGGradientElement o
toSVGGradientElement :: IsSVGGradientElement o => o -> SVGGradientElement
toSVGGradientElement = SVGGradientElement . coerce

instance IsSVGGradientElement SVGGradientElement
instance IsSVGElement SVGGradientElement
instance IsElement SVGGradientElement
instance IsNode SVGGradientElement
instance IsEventTarget SVGGradientElement
instance IsGObject SVGGradientElement where
  typeGType _ = gTypeSVGGradientElement
  {-# INLINE typeGType #-}

gTypeSVGGradientElement :: JSM GType
gTypeSVGGradientElement = GType . Object <$> jsg "SVGGradientElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGGraphicsElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement Mozilla SVGGraphicsElement documentation>
newtype SVGGraphicsElement = SVGGraphicsElement { unSVGGraphicsElement :: JSVal }

instance PToJSVal SVGGraphicsElement where
  pToJSVal = unSVGGraphicsElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGraphicsElement where
  pFromJSVal = SVGGraphicsElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGraphicsElement where
  toJSVal = return . unSVGGraphicsElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGraphicsElement where
  fromJSVal v = fmap SVGGraphicsElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGGraphicsElement where
  makeObject = makeObject . unSVGGraphicsElement

class IsSVGElement o => IsSVGGraphicsElement o
toSVGGraphicsElement :: IsSVGGraphicsElement o => o -> SVGGraphicsElement
toSVGGraphicsElement = SVGGraphicsElement . coerce

instance IsSVGGraphicsElement SVGGraphicsElement
instance IsSVGElement SVGGraphicsElement
instance IsElement SVGGraphicsElement
instance IsNode SVGGraphicsElement
instance IsEventTarget SVGGraphicsElement
instance IsGObject SVGGraphicsElement where
  typeGType _ = gTypeSVGGraphicsElement
  {-# INLINE typeGType #-}

gTypeSVGGraphicsElement :: JSM GType
gTypeSVGGraphicsElement = GType . Object <$> jsg "SVGGraphicsElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGHKernElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGHKernElement Mozilla SVGHKernElement documentation>
newtype SVGHKernElement = SVGHKernElement { unSVGHKernElement :: JSVal }

instance PToJSVal SVGHKernElement where
  pToJSVal = unSVGHKernElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGHKernElement where
  pFromJSVal = SVGHKernElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGHKernElement where
  toJSVal = return . unSVGHKernElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGHKernElement where
  fromJSVal v = fmap SVGHKernElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGHKernElement where
  makeObject = makeObject . unSVGHKernElement

instance IsSVGElement SVGHKernElement
instance IsElement SVGHKernElement
instance IsNode SVGHKernElement
instance IsEventTarget SVGHKernElement
instance IsGObject SVGHKernElement where
  typeGType _ = gTypeSVGHKernElement
  {-# INLINE typeGType #-}

gTypeSVGHKernElement :: JSM GType
gTypeSVGHKernElement = GType . Object <$> jsg "SVGHKernElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGImageElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement Mozilla SVGImageElement documentation>
newtype SVGImageElement = SVGImageElement { unSVGImageElement :: JSVal }

instance PToJSVal SVGImageElement where
  pToJSVal = unSVGImageElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGImageElement where
  pFromJSVal = SVGImageElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGImageElement where
  toJSVal = return . unSVGImageElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGImageElement where
  fromJSVal v = fmap SVGImageElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGImageElement where
  makeObject = makeObject . unSVGImageElement

instance IsSVGGraphicsElement SVGImageElement
instance IsSVGElement SVGImageElement
instance IsElement SVGImageElement
instance IsNode SVGImageElement
instance IsEventTarget SVGImageElement
instance IsGObject SVGImageElement where
  typeGType _ = gTypeSVGImageElement
  {-# INLINE typeGType #-}

gTypeSVGImageElement :: JSM GType
gTypeSVGImageElement = GType . Object <$> jsg "SVGImageElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGLength".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength Mozilla SVGLength documentation>
newtype SVGLength = SVGLength { unSVGLength :: JSVal }

instance PToJSVal SVGLength where
  pToJSVal = unSVGLength
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLength where
  pFromJSVal = SVGLength
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLength where
  toJSVal = return . unSVGLength
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLength where
  fromJSVal v = fmap SVGLength <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGLength where
  makeObject = makeObject . unSVGLength

instance IsGObject SVGLength where
  typeGType _ = gTypeSVGLength
  {-# INLINE typeGType #-}

gTypeSVGLength :: JSM GType
gTypeSVGLength = GType . Object <$> jsg "SVGLength"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGLengthList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList Mozilla SVGLengthList documentation>
newtype SVGLengthList = SVGLengthList { unSVGLengthList :: JSVal }

instance PToJSVal SVGLengthList where
  pToJSVal = unSVGLengthList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLengthList where
  pFromJSVal = SVGLengthList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLengthList where
  toJSVal = return . unSVGLengthList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLengthList where
  fromJSVal v = fmap SVGLengthList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGLengthList where
  makeObject = makeObject . unSVGLengthList

instance IsGObject SVGLengthList where
  typeGType _ = gTypeSVGLengthList
  {-# INLINE typeGType #-}

gTypeSVGLengthList :: JSM GType
gTypeSVGLengthList = GType . Object <$> jsg "SVGLengthList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGLineElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement Mozilla SVGLineElement documentation>
newtype SVGLineElement = SVGLineElement { unSVGLineElement :: JSVal }

instance PToJSVal SVGLineElement where
  pToJSVal = unSVGLineElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLineElement where
  pFromJSVal = SVGLineElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLineElement where
  toJSVal = return . unSVGLineElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLineElement where
  fromJSVal v = fmap SVGLineElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGLineElement where
  makeObject = makeObject . unSVGLineElement

instance IsSVGGraphicsElement SVGLineElement
instance IsSVGElement SVGLineElement
instance IsElement SVGLineElement
instance IsNode SVGLineElement
instance IsEventTarget SVGLineElement
instance IsGObject SVGLineElement where
  typeGType _ = gTypeSVGLineElement
  {-# INLINE typeGType #-}

gTypeSVGLineElement :: JSM GType
gTypeSVGLineElement = GType . Object <$> jsg "SVGLineElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGLinearGradientElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGradientElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement Mozilla SVGLinearGradientElement documentation>
newtype SVGLinearGradientElement = SVGLinearGradientElement { unSVGLinearGradientElement :: JSVal }

instance PToJSVal SVGLinearGradientElement where
  pToJSVal = unSVGLinearGradientElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLinearGradientElement where
  pFromJSVal = SVGLinearGradientElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLinearGradientElement where
  toJSVal = return . unSVGLinearGradientElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLinearGradientElement where
  fromJSVal v = fmap SVGLinearGradientElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGLinearGradientElement where
  makeObject = makeObject . unSVGLinearGradientElement

instance IsSVGGradientElement SVGLinearGradientElement
instance IsSVGElement SVGLinearGradientElement
instance IsElement SVGLinearGradientElement
instance IsNode SVGLinearGradientElement
instance IsEventTarget SVGLinearGradientElement
instance IsGObject SVGLinearGradientElement where
  typeGType _ = gTypeSVGLinearGradientElement
  {-# INLINE typeGType #-}

gTypeSVGLinearGradientElement :: JSM GType
gTypeSVGLinearGradientElement = GType . Object <$> jsg "SVGLinearGradientElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGMPathElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMPathElement Mozilla SVGMPathElement documentation>
newtype SVGMPathElement = SVGMPathElement { unSVGMPathElement :: JSVal }

instance PToJSVal SVGMPathElement where
  pToJSVal = unSVGMPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMPathElement where
  pFromJSVal = SVGMPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMPathElement where
  toJSVal = return . unSVGMPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMPathElement where
  fromJSVal v = fmap SVGMPathElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGMPathElement where
  makeObject = makeObject . unSVGMPathElement

instance IsSVGElement SVGMPathElement
instance IsElement SVGMPathElement
instance IsNode SVGMPathElement
instance IsEventTarget SVGMPathElement
instance IsGObject SVGMPathElement where
  typeGType _ = gTypeSVGMPathElement
  {-# INLINE typeGType #-}

gTypeSVGMPathElement :: JSM GType
gTypeSVGMPathElement = GType . Object <$> jsg "SVGMPathElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGMarkerElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement Mozilla SVGMarkerElement documentation>
newtype SVGMarkerElement = SVGMarkerElement { unSVGMarkerElement :: JSVal }

instance PToJSVal SVGMarkerElement where
  pToJSVal = unSVGMarkerElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMarkerElement where
  pFromJSVal = SVGMarkerElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMarkerElement where
  toJSVal = return . unSVGMarkerElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMarkerElement where
  fromJSVal v = fmap SVGMarkerElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGMarkerElement where
  makeObject = makeObject . unSVGMarkerElement

instance IsSVGElement SVGMarkerElement
instance IsElement SVGMarkerElement
instance IsNode SVGMarkerElement
instance IsEventTarget SVGMarkerElement
instance IsGObject SVGMarkerElement where
  typeGType _ = gTypeSVGMarkerElement
  {-# INLINE typeGType #-}

gTypeSVGMarkerElement :: JSM GType
gTypeSVGMarkerElement = GType . Object <$> jsg "SVGMarkerElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGMaskElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement Mozilla SVGMaskElement documentation>
newtype SVGMaskElement = SVGMaskElement { unSVGMaskElement :: JSVal }

instance PToJSVal SVGMaskElement where
  pToJSVal = unSVGMaskElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMaskElement where
  pFromJSVal = SVGMaskElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMaskElement where
  toJSVal = return . unSVGMaskElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMaskElement where
  fromJSVal v = fmap SVGMaskElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGMaskElement where
  makeObject = makeObject . unSVGMaskElement

instance IsSVGElement SVGMaskElement
instance IsElement SVGMaskElement
instance IsNode SVGMaskElement
instance IsEventTarget SVGMaskElement
instance IsGObject SVGMaskElement where
  typeGType _ = gTypeSVGMaskElement
  {-# INLINE typeGType #-}

gTypeSVGMaskElement :: JSM GType
gTypeSVGMaskElement = GType . Object <$> jsg "SVGMaskElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGMatrix".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix Mozilla SVGMatrix documentation>
newtype SVGMatrix = SVGMatrix { unSVGMatrix :: JSVal }

instance PToJSVal SVGMatrix where
  pToJSVal = unSVGMatrix
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMatrix where
  pFromJSVal = SVGMatrix
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMatrix where
  toJSVal = return . unSVGMatrix
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMatrix where
  fromJSVal v = fmap SVGMatrix <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGMatrix where
  makeObject = makeObject . unSVGMatrix

instance IsGObject SVGMatrix where
  typeGType _ = gTypeSVGMatrix
  {-# INLINE typeGType #-}

gTypeSVGMatrix :: JSM GType
gTypeSVGMatrix = GType . Object <$> jsg "SVGMatrix"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGMetadataElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMetadataElement Mozilla SVGMetadataElement documentation>
newtype SVGMetadataElement = SVGMetadataElement { unSVGMetadataElement :: JSVal }

instance PToJSVal SVGMetadataElement where
  pToJSVal = unSVGMetadataElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMetadataElement where
  pFromJSVal = SVGMetadataElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMetadataElement where
  toJSVal = return . unSVGMetadataElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMetadataElement where
  fromJSVal v = fmap SVGMetadataElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGMetadataElement where
  makeObject = makeObject . unSVGMetadataElement

instance IsSVGElement SVGMetadataElement
instance IsElement SVGMetadataElement
instance IsNode SVGMetadataElement
instance IsEventTarget SVGMetadataElement
instance IsGObject SVGMetadataElement where
  typeGType _ = gTypeSVGMetadataElement
  {-# INLINE typeGType #-}

gTypeSVGMetadataElement :: JSM GType
gTypeSVGMetadataElement = GType . Object <$> jsg "SVGMetadataElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGMissingGlyphElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMissingGlyphElement Mozilla SVGMissingGlyphElement documentation>
newtype SVGMissingGlyphElement = SVGMissingGlyphElement { unSVGMissingGlyphElement :: JSVal }

instance PToJSVal SVGMissingGlyphElement where
  pToJSVal = unSVGMissingGlyphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMissingGlyphElement where
  pFromJSVal = SVGMissingGlyphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMissingGlyphElement where
  toJSVal = return . unSVGMissingGlyphElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMissingGlyphElement where
  fromJSVal v = fmap SVGMissingGlyphElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGMissingGlyphElement where
  makeObject = makeObject . unSVGMissingGlyphElement

instance IsSVGElement SVGMissingGlyphElement
instance IsElement SVGMissingGlyphElement
instance IsNode SVGMissingGlyphElement
instance IsEventTarget SVGMissingGlyphElement
instance IsGObject SVGMissingGlyphElement where
  typeGType _ = gTypeSVGMissingGlyphElement
  {-# INLINE typeGType #-}

gTypeSVGMissingGlyphElement :: JSM GType
gTypeSVGMissingGlyphElement = GType . Object <$> jsg "SVGMissingGlyphElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGNumber".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber Mozilla SVGNumber documentation>
newtype SVGNumber = SVGNumber { unSVGNumber :: JSVal }

instance PToJSVal SVGNumber where
  pToJSVal = unSVGNumber
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGNumber where
  pFromJSVal = SVGNumber
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGNumber where
  toJSVal = return . unSVGNumber
  {-# INLINE toJSVal #-}

instance FromJSVal SVGNumber where
  fromJSVal v = fmap SVGNumber <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGNumber where
  makeObject = makeObject . unSVGNumber

instance IsGObject SVGNumber where
  typeGType _ = gTypeSVGNumber
  {-# INLINE typeGType #-}

gTypeSVGNumber :: JSM GType
gTypeSVGNumber = GType . Object <$> jsg "SVGNumber"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGNumberList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList Mozilla SVGNumberList documentation>
newtype SVGNumberList = SVGNumberList { unSVGNumberList :: JSVal }

instance PToJSVal SVGNumberList where
  pToJSVal = unSVGNumberList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGNumberList where
  pFromJSVal = SVGNumberList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGNumberList where
  toJSVal = return . unSVGNumberList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGNumberList where
  fromJSVal v = fmap SVGNumberList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGNumberList where
  makeObject = makeObject . unSVGNumberList

instance IsGObject SVGNumberList where
  typeGType _ = gTypeSVGNumberList
  {-# INLINE typeGType #-}

gTypeSVGNumberList :: JSM GType
gTypeSVGNumberList = GType . Object <$> jsg "SVGNumberList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPaint".
-- Base interface functions are in:
--
--     * "JSDOM.SVGColor"
--     * "JSDOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint Mozilla SVGPaint documentation>
newtype SVGPaint = SVGPaint { unSVGPaint :: JSVal }

instance PToJSVal SVGPaint where
  pToJSVal = unSVGPaint
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPaint where
  pFromJSVal = SVGPaint
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPaint where
  toJSVal = return . unSVGPaint
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPaint where
  fromJSVal v = fmap SVGPaint <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPaint where
  makeObject = makeObject . unSVGPaint

instance IsSVGColor SVGPaint
instance IsCSSValue SVGPaint
instance IsGObject SVGPaint where
  typeGType _ = gTypeSVGPaint
  {-# INLINE typeGType #-}

gTypeSVGPaint :: JSM GType
gTypeSVGPaint = GType . Object <$> jsg "SVGPaint"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement Mozilla SVGPathElement documentation>
newtype SVGPathElement = SVGPathElement { unSVGPathElement :: JSVal }

instance PToJSVal SVGPathElement where
  pToJSVal = unSVGPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathElement where
  pFromJSVal = SVGPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathElement where
  toJSVal = return . unSVGPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathElement where
  fromJSVal v = fmap SVGPathElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathElement where
  makeObject = makeObject . unSVGPathElement

instance IsSVGGraphicsElement SVGPathElement
instance IsSVGElement SVGPathElement
instance IsElement SVGPathElement
instance IsNode SVGPathElement
instance IsEventTarget SVGPathElement
instance IsGObject SVGPathElement where
  typeGType _ = gTypeSVGPathElement
  {-# INLINE typeGType #-}

gTypeSVGPathElement :: JSM GType
gTypeSVGPathElement = GType . Object <$> jsg "SVGPathElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSeg".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSeg Mozilla SVGPathSeg documentation>
newtype SVGPathSeg = SVGPathSeg { unSVGPathSeg :: JSVal }

instance PToJSVal SVGPathSeg where
  pToJSVal = unSVGPathSeg
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSeg where
  pFromJSVal = SVGPathSeg
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSeg where
  toJSVal = return . unSVGPathSeg
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSeg where
  fromJSVal v = fmap SVGPathSeg <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSeg where
  makeObject = makeObject . unSVGPathSeg

class IsGObject o => IsSVGPathSeg o
toSVGPathSeg :: IsSVGPathSeg o => o -> SVGPathSeg
toSVGPathSeg = SVGPathSeg . coerce

instance IsSVGPathSeg SVGPathSeg
instance IsGObject SVGPathSeg where
  typeGType _ = gTypeSVGPathSeg
  {-# INLINE typeGType #-}

gTypeSVGPathSeg :: JSM GType
gTypeSVGPathSeg = GType . Object <$> jsg "SVGPathSeg"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegArcAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs Mozilla SVGPathSegArcAbs documentation>
newtype SVGPathSegArcAbs = SVGPathSegArcAbs { unSVGPathSegArcAbs :: JSVal }

instance PToJSVal SVGPathSegArcAbs where
  pToJSVal = unSVGPathSegArcAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegArcAbs where
  pFromJSVal = SVGPathSegArcAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegArcAbs where
  toJSVal = return . unSVGPathSegArcAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegArcAbs where
  fromJSVal v = fmap SVGPathSegArcAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegArcAbs where
  makeObject = makeObject . unSVGPathSegArcAbs

instance IsSVGPathSeg SVGPathSegArcAbs
instance IsGObject SVGPathSegArcAbs where
  typeGType _ = gTypeSVGPathSegArcAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegArcAbs :: JSM GType
gTypeSVGPathSegArcAbs = GType . Object <$> jsg "SVGPathSegArcAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegArcRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel Mozilla SVGPathSegArcRel documentation>
newtype SVGPathSegArcRel = SVGPathSegArcRel { unSVGPathSegArcRel :: JSVal }

instance PToJSVal SVGPathSegArcRel where
  pToJSVal = unSVGPathSegArcRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegArcRel where
  pFromJSVal = SVGPathSegArcRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegArcRel where
  toJSVal = return . unSVGPathSegArcRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegArcRel where
  fromJSVal v = fmap SVGPathSegArcRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegArcRel where
  makeObject = makeObject . unSVGPathSegArcRel

instance IsSVGPathSeg SVGPathSegArcRel
instance IsGObject SVGPathSegArcRel where
  typeGType _ = gTypeSVGPathSegArcRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegArcRel :: JSM GType
gTypeSVGPathSegArcRel = GType . Object <$> jsg "SVGPathSegArcRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegClosePath".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegClosePath Mozilla SVGPathSegClosePath documentation>
newtype SVGPathSegClosePath = SVGPathSegClosePath { unSVGPathSegClosePath :: JSVal }

instance PToJSVal SVGPathSegClosePath where
  pToJSVal = unSVGPathSegClosePath
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegClosePath where
  pFromJSVal = SVGPathSegClosePath
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegClosePath where
  toJSVal = return . unSVGPathSegClosePath
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegClosePath where
  fromJSVal v = fmap SVGPathSegClosePath <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegClosePath where
  makeObject = makeObject . unSVGPathSegClosePath

instance IsSVGPathSeg SVGPathSegClosePath
instance IsGObject SVGPathSegClosePath where
  typeGType _ = gTypeSVGPathSegClosePath
  {-# INLINE typeGType #-}

gTypeSVGPathSegClosePath :: JSM GType
gTypeSVGPathSegClosePath = GType . Object <$> jsg "SVGPathSegClosePath"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoCubicAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs Mozilla SVGPathSegCurvetoCubicAbs documentation>
newtype SVGPathSegCurvetoCubicAbs = SVGPathSegCurvetoCubicAbs { unSVGPathSegCurvetoCubicAbs :: JSVal }

instance PToJSVal SVGPathSegCurvetoCubicAbs where
  pToJSVal = unSVGPathSegCurvetoCubicAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicAbs where
  pFromJSVal = SVGPathSegCurvetoCubicAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicAbs where
  toJSVal = return . unSVGPathSegCurvetoCubicAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicAbs where
  fromJSVal v = fmap SVGPathSegCurvetoCubicAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoCubicAbs where
  makeObject = makeObject . unSVGPathSegCurvetoCubicAbs

instance IsSVGPathSeg SVGPathSegCurvetoCubicAbs
instance IsGObject SVGPathSegCurvetoCubicAbs where
  typeGType _ = gTypeSVGPathSegCurvetoCubicAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoCubicAbs :: JSM GType
gTypeSVGPathSegCurvetoCubicAbs = GType . Object <$> jsg "SVGPathSegCurvetoCubicAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoCubicRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel Mozilla SVGPathSegCurvetoCubicRel documentation>
newtype SVGPathSegCurvetoCubicRel = SVGPathSegCurvetoCubicRel { unSVGPathSegCurvetoCubicRel :: JSVal }

instance PToJSVal SVGPathSegCurvetoCubicRel where
  pToJSVal = unSVGPathSegCurvetoCubicRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicRel where
  pFromJSVal = SVGPathSegCurvetoCubicRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicRel where
  toJSVal = return . unSVGPathSegCurvetoCubicRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicRel where
  fromJSVal v = fmap SVGPathSegCurvetoCubicRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoCubicRel where
  makeObject = makeObject . unSVGPathSegCurvetoCubicRel

instance IsSVGPathSeg SVGPathSegCurvetoCubicRel
instance IsGObject SVGPathSegCurvetoCubicRel where
  typeGType _ = gTypeSVGPathSegCurvetoCubicRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoCubicRel :: JSM GType
gTypeSVGPathSegCurvetoCubicRel = GType . Object <$> jsg "SVGPathSegCurvetoCubicRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoCubicSmoothAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathSegCurvetoCubicSmoothAbs documentation>
newtype SVGPathSegCurvetoCubicSmoothAbs = SVGPathSegCurvetoCubicSmoothAbs { unSVGPathSegCurvetoCubicSmoothAbs :: JSVal }

instance PToJSVal SVGPathSegCurvetoCubicSmoothAbs where
  pToJSVal = unSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicSmoothAbs where
  pFromJSVal = SVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicSmoothAbs where
  toJSVal = return . unSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicSmoothAbs where
  fromJSVal v = fmap SVGPathSegCurvetoCubicSmoothAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoCubicSmoothAbs where
  makeObject = makeObject . unSVGPathSegCurvetoCubicSmoothAbs

instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothAbs
instance IsGObject SVGPathSegCurvetoCubicSmoothAbs where
  typeGType _ = gTypeSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoCubicSmoothAbs :: JSM GType
gTypeSVGPathSegCurvetoCubicSmoothAbs = GType . Object <$> jsg "SVGPathSegCurvetoCubicSmoothAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoCubicSmoothRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathSegCurvetoCubicSmoothRel documentation>
newtype SVGPathSegCurvetoCubicSmoothRel = SVGPathSegCurvetoCubicSmoothRel { unSVGPathSegCurvetoCubicSmoothRel :: JSVal }

instance PToJSVal SVGPathSegCurvetoCubicSmoothRel where
  pToJSVal = unSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicSmoothRel where
  pFromJSVal = SVGPathSegCurvetoCubicSmoothRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicSmoothRel where
  toJSVal = return . unSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicSmoothRel where
  fromJSVal v = fmap SVGPathSegCurvetoCubicSmoothRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoCubicSmoothRel where
  makeObject = makeObject . unSVGPathSegCurvetoCubicSmoothRel

instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothRel
instance IsGObject SVGPathSegCurvetoCubicSmoothRel where
  typeGType _ = gTypeSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoCubicSmoothRel :: JSM GType
gTypeSVGPathSegCurvetoCubicSmoothRel = GType . Object <$> jsg "SVGPathSegCurvetoCubicSmoothRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoQuadraticAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs Mozilla SVGPathSegCurvetoQuadraticAbs documentation>
newtype SVGPathSegCurvetoQuadraticAbs = SVGPathSegCurvetoQuadraticAbs { unSVGPathSegCurvetoQuadraticAbs :: JSVal }

instance PToJSVal SVGPathSegCurvetoQuadraticAbs where
  pToJSVal = unSVGPathSegCurvetoQuadraticAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticAbs where
  pFromJSVal = SVGPathSegCurvetoQuadraticAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticAbs where
  toJSVal = return . unSVGPathSegCurvetoQuadraticAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticAbs where
  fromJSVal v = fmap SVGPathSegCurvetoQuadraticAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoQuadraticAbs where
  makeObject = makeObject . unSVGPathSegCurvetoQuadraticAbs

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticAbs
instance IsGObject SVGPathSegCurvetoQuadraticAbs where
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoQuadraticAbs :: JSM GType
gTypeSVGPathSegCurvetoQuadraticAbs = GType . Object <$> jsg "SVGPathSegCurvetoQuadraticAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoQuadraticRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel Mozilla SVGPathSegCurvetoQuadraticRel documentation>
newtype SVGPathSegCurvetoQuadraticRel = SVGPathSegCurvetoQuadraticRel { unSVGPathSegCurvetoQuadraticRel :: JSVal }

instance PToJSVal SVGPathSegCurvetoQuadraticRel where
  pToJSVal = unSVGPathSegCurvetoQuadraticRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticRel where
  pFromJSVal = SVGPathSegCurvetoQuadraticRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticRel where
  toJSVal = return . unSVGPathSegCurvetoQuadraticRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticRel where
  fromJSVal v = fmap SVGPathSegCurvetoQuadraticRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoQuadraticRel where
  makeObject = makeObject . unSVGPathSegCurvetoQuadraticRel

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticRel
instance IsGObject SVGPathSegCurvetoQuadraticRel where
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoQuadraticRel :: JSM GType
gTypeSVGPathSegCurvetoQuadraticRel = GType . Object <$> jsg "SVGPathSegCurvetoQuadraticRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoQuadraticSmoothAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathSegCurvetoQuadraticSmoothAbs documentation>
newtype SVGPathSegCurvetoQuadraticSmoothAbs = SVGPathSegCurvetoQuadraticSmoothAbs { unSVGPathSegCurvetoQuadraticSmoothAbs :: JSVal }

instance PToJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  pToJSVal = unSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  pFromJSVal = SVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  toJSVal = return . unSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  fromJSVal v = fmap SVGPathSegCurvetoQuadraticSmoothAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoQuadraticSmoothAbs where
  makeObject = makeObject . unSVGPathSegCurvetoQuadraticSmoothAbs

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothAbs
instance IsGObject SVGPathSegCurvetoQuadraticSmoothAbs where
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoQuadraticSmoothAbs :: JSM GType
gTypeSVGPathSegCurvetoQuadraticSmoothAbs = GType . Object <$> jsg "SVGPathSegCurvetoQuadraticSmoothAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegCurvetoQuadraticSmoothRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathSegCurvetoQuadraticSmoothRel documentation>
newtype SVGPathSegCurvetoQuadraticSmoothRel = SVGPathSegCurvetoQuadraticSmoothRel { unSVGPathSegCurvetoQuadraticSmoothRel :: JSVal }

instance PToJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  pToJSVal = unSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  pFromJSVal = SVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  toJSVal = return . unSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  fromJSVal v = fmap SVGPathSegCurvetoQuadraticSmoothRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegCurvetoQuadraticSmoothRel where
  makeObject = makeObject . unSVGPathSegCurvetoQuadraticSmoothRel

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothRel
instance IsGObject SVGPathSegCurvetoQuadraticSmoothRel where
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegCurvetoQuadraticSmoothRel :: JSM GType
gTypeSVGPathSegCurvetoQuadraticSmoothRel = GType . Object <$> jsg "SVGPathSegCurvetoQuadraticSmoothRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegLinetoAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs Mozilla SVGPathSegLinetoAbs documentation>
newtype SVGPathSegLinetoAbs = SVGPathSegLinetoAbs { unSVGPathSegLinetoAbs :: JSVal }

instance PToJSVal SVGPathSegLinetoAbs where
  pToJSVal = unSVGPathSegLinetoAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoAbs where
  pFromJSVal = SVGPathSegLinetoAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoAbs where
  toJSVal = return . unSVGPathSegLinetoAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoAbs where
  fromJSVal v = fmap SVGPathSegLinetoAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegLinetoAbs where
  makeObject = makeObject . unSVGPathSegLinetoAbs

instance IsSVGPathSeg SVGPathSegLinetoAbs
instance IsGObject SVGPathSegLinetoAbs where
  typeGType _ = gTypeSVGPathSegLinetoAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegLinetoAbs :: JSM GType
gTypeSVGPathSegLinetoAbs = GType . Object <$> jsg "SVGPathSegLinetoAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegLinetoHorizontalAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalAbs Mozilla SVGPathSegLinetoHorizontalAbs documentation>
newtype SVGPathSegLinetoHorizontalAbs = SVGPathSegLinetoHorizontalAbs { unSVGPathSegLinetoHorizontalAbs :: JSVal }

instance PToJSVal SVGPathSegLinetoHorizontalAbs where
  pToJSVal = unSVGPathSegLinetoHorizontalAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoHorizontalAbs where
  pFromJSVal = SVGPathSegLinetoHorizontalAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoHorizontalAbs where
  toJSVal = return . unSVGPathSegLinetoHorizontalAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoHorizontalAbs where
  fromJSVal v = fmap SVGPathSegLinetoHorizontalAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegLinetoHorizontalAbs where
  makeObject = makeObject . unSVGPathSegLinetoHorizontalAbs

instance IsSVGPathSeg SVGPathSegLinetoHorizontalAbs
instance IsGObject SVGPathSegLinetoHorizontalAbs where
  typeGType _ = gTypeSVGPathSegLinetoHorizontalAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegLinetoHorizontalAbs :: JSM GType
gTypeSVGPathSegLinetoHorizontalAbs = GType . Object <$> jsg "SVGPathSegLinetoHorizontalAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegLinetoHorizontalRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalRel Mozilla SVGPathSegLinetoHorizontalRel documentation>
newtype SVGPathSegLinetoHorizontalRel = SVGPathSegLinetoHorizontalRel { unSVGPathSegLinetoHorizontalRel :: JSVal }

instance PToJSVal SVGPathSegLinetoHorizontalRel where
  pToJSVal = unSVGPathSegLinetoHorizontalRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoHorizontalRel where
  pFromJSVal = SVGPathSegLinetoHorizontalRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoHorizontalRel where
  toJSVal = return . unSVGPathSegLinetoHorizontalRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoHorizontalRel where
  fromJSVal v = fmap SVGPathSegLinetoHorizontalRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegLinetoHorizontalRel where
  makeObject = makeObject . unSVGPathSegLinetoHorizontalRel

instance IsSVGPathSeg SVGPathSegLinetoHorizontalRel
instance IsGObject SVGPathSegLinetoHorizontalRel where
  typeGType _ = gTypeSVGPathSegLinetoHorizontalRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegLinetoHorizontalRel :: JSM GType
gTypeSVGPathSegLinetoHorizontalRel = GType . Object <$> jsg "SVGPathSegLinetoHorizontalRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegLinetoRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel Mozilla SVGPathSegLinetoRel documentation>
newtype SVGPathSegLinetoRel = SVGPathSegLinetoRel { unSVGPathSegLinetoRel :: JSVal }

instance PToJSVal SVGPathSegLinetoRel where
  pToJSVal = unSVGPathSegLinetoRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoRel where
  pFromJSVal = SVGPathSegLinetoRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoRel where
  toJSVal = return . unSVGPathSegLinetoRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoRel where
  fromJSVal v = fmap SVGPathSegLinetoRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegLinetoRel where
  makeObject = makeObject . unSVGPathSegLinetoRel

instance IsSVGPathSeg SVGPathSegLinetoRel
instance IsGObject SVGPathSegLinetoRel where
  typeGType _ = gTypeSVGPathSegLinetoRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegLinetoRel :: JSM GType
gTypeSVGPathSegLinetoRel = GType . Object <$> jsg "SVGPathSegLinetoRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegLinetoVerticalAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalAbs Mozilla SVGPathSegLinetoVerticalAbs documentation>
newtype SVGPathSegLinetoVerticalAbs = SVGPathSegLinetoVerticalAbs { unSVGPathSegLinetoVerticalAbs :: JSVal }

instance PToJSVal SVGPathSegLinetoVerticalAbs where
  pToJSVal = unSVGPathSegLinetoVerticalAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoVerticalAbs where
  pFromJSVal = SVGPathSegLinetoVerticalAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoVerticalAbs where
  toJSVal = return . unSVGPathSegLinetoVerticalAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoVerticalAbs where
  fromJSVal v = fmap SVGPathSegLinetoVerticalAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegLinetoVerticalAbs where
  makeObject = makeObject . unSVGPathSegLinetoVerticalAbs

instance IsSVGPathSeg SVGPathSegLinetoVerticalAbs
instance IsGObject SVGPathSegLinetoVerticalAbs where
  typeGType _ = gTypeSVGPathSegLinetoVerticalAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegLinetoVerticalAbs :: JSM GType
gTypeSVGPathSegLinetoVerticalAbs = GType . Object <$> jsg "SVGPathSegLinetoVerticalAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegLinetoVerticalRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalRel Mozilla SVGPathSegLinetoVerticalRel documentation>
newtype SVGPathSegLinetoVerticalRel = SVGPathSegLinetoVerticalRel { unSVGPathSegLinetoVerticalRel :: JSVal }

instance PToJSVal SVGPathSegLinetoVerticalRel where
  pToJSVal = unSVGPathSegLinetoVerticalRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoVerticalRel where
  pFromJSVal = SVGPathSegLinetoVerticalRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoVerticalRel where
  toJSVal = return . unSVGPathSegLinetoVerticalRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoVerticalRel where
  fromJSVal v = fmap SVGPathSegLinetoVerticalRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegLinetoVerticalRel where
  makeObject = makeObject . unSVGPathSegLinetoVerticalRel

instance IsSVGPathSeg SVGPathSegLinetoVerticalRel
instance IsGObject SVGPathSegLinetoVerticalRel where
  typeGType _ = gTypeSVGPathSegLinetoVerticalRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegLinetoVerticalRel :: JSM GType
gTypeSVGPathSegLinetoVerticalRel = GType . Object <$> jsg "SVGPathSegLinetoVerticalRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList Mozilla SVGPathSegList documentation>
newtype SVGPathSegList = SVGPathSegList { unSVGPathSegList :: JSVal }

instance PToJSVal SVGPathSegList where
  pToJSVal = unSVGPathSegList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegList where
  pFromJSVal = SVGPathSegList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegList where
  toJSVal = return . unSVGPathSegList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegList where
  fromJSVal v = fmap SVGPathSegList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegList where
  makeObject = makeObject . unSVGPathSegList

instance IsGObject SVGPathSegList where
  typeGType _ = gTypeSVGPathSegList
  {-# INLINE typeGType #-}

gTypeSVGPathSegList :: JSM GType
gTypeSVGPathSegList = GType . Object <$> jsg "SVGPathSegList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegMovetoAbs".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoAbs Mozilla SVGPathSegMovetoAbs documentation>
newtype SVGPathSegMovetoAbs = SVGPathSegMovetoAbs { unSVGPathSegMovetoAbs :: JSVal }

instance PToJSVal SVGPathSegMovetoAbs where
  pToJSVal = unSVGPathSegMovetoAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegMovetoAbs where
  pFromJSVal = SVGPathSegMovetoAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegMovetoAbs where
  toJSVal = return . unSVGPathSegMovetoAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegMovetoAbs where
  fromJSVal v = fmap SVGPathSegMovetoAbs <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegMovetoAbs where
  makeObject = makeObject . unSVGPathSegMovetoAbs

instance IsSVGPathSeg SVGPathSegMovetoAbs
instance IsGObject SVGPathSegMovetoAbs where
  typeGType _ = gTypeSVGPathSegMovetoAbs
  {-# INLINE typeGType #-}

gTypeSVGPathSegMovetoAbs :: JSM GType
gTypeSVGPathSegMovetoAbs = GType . Object <$> jsg "SVGPathSegMovetoAbs"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPathSegMovetoRel".
-- Base interface functions are in:
--
--     * "JSDOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel Mozilla SVGPathSegMovetoRel documentation>
newtype SVGPathSegMovetoRel = SVGPathSegMovetoRel { unSVGPathSegMovetoRel :: JSVal }

instance PToJSVal SVGPathSegMovetoRel where
  pToJSVal = unSVGPathSegMovetoRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegMovetoRel where
  pFromJSVal = SVGPathSegMovetoRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegMovetoRel where
  toJSVal = return . unSVGPathSegMovetoRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegMovetoRel where
  fromJSVal v = fmap SVGPathSegMovetoRel <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPathSegMovetoRel where
  makeObject = makeObject . unSVGPathSegMovetoRel

instance IsSVGPathSeg SVGPathSegMovetoRel
instance IsGObject SVGPathSegMovetoRel where
  typeGType _ = gTypeSVGPathSegMovetoRel
  {-# INLINE typeGType #-}

gTypeSVGPathSegMovetoRel :: JSM GType
gTypeSVGPathSegMovetoRel = GType . Object <$> jsg "SVGPathSegMovetoRel"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPatternElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement Mozilla SVGPatternElement documentation>
newtype SVGPatternElement = SVGPatternElement { unSVGPatternElement :: JSVal }

instance PToJSVal SVGPatternElement where
  pToJSVal = unSVGPatternElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPatternElement where
  pFromJSVal = SVGPatternElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPatternElement where
  toJSVal = return . unSVGPatternElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPatternElement where
  fromJSVal v = fmap SVGPatternElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPatternElement where
  makeObject = makeObject . unSVGPatternElement

instance IsSVGElement SVGPatternElement
instance IsElement SVGPatternElement
instance IsNode SVGPatternElement
instance IsEventTarget SVGPatternElement
instance IsGObject SVGPatternElement where
  typeGType _ = gTypeSVGPatternElement
  {-# INLINE typeGType #-}

gTypeSVGPatternElement :: JSM GType
gTypeSVGPatternElement = GType . Object <$> jsg "SVGPatternElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPoint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint Mozilla SVGPoint documentation>
newtype SVGPoint = SVGPoint { unSVGPoint :: JSVal }

instance PToJSVal SVGPoint where
  pToJSVal = unSVGPoint
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPoint where
  pFromJSVal = SVGPoint
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPoint where
  toJSVal = return . unSVGPoint
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPoint where
  fromJSVal v = fmap SVGPoint <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPoint where
  makeObject = makeObject . unSVGPoint

instance IsGObject SVGPoint where
  typeGType _ = gTypeSVGPoint
  {-# INLINE typeGType #-}

gTypeSVGPoint :: JSM GType
gTypeSVGPoint = GType . Object <$> jsg "SVGPoint"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPointList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList Mozilla SVGPointList documentation>
newtype SVGPointList = SVGPointList { unSVGPointList :: JSVal }

instance PToJSVal SVGPointList where
  pToJSVal = unSVGPointList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPointList where
  pFromJSVal = SVGPointList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPointList where
  toJSVal = return . unSVGPointList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPointList where
  fromJSVal v = fmap SVGPointList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPointList where
  makeObject = makeObject . unSVGPointList

instance IsGObject SVGPointList where
  typeGType _ = gTypeSVGPointList
  {-# INLINE typeGType #-}

gTypeSVGPointList :: JSM GType
gTypeSVGPointList = GType . Object <$> jsg "SVGPointList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPolygonElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement Mozilla SVGPolygonElement documentation>
newtype SVGPolygonElement = SVGPolygonElement { unSVGPolygonElement :: JSVal }

instance PToJSVal SVGPolygonElement where
  pToJSVal = unSVGPolygonElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPolygonElement where
  pFromJSVal = SVGPolygonElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPolygonElement where
  toJSVal = return . unSVGPolygonElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPolygonElement where
  fromJSVal v = fmap SVGPolygonElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPolygonElement where
  makeObject = makeObject . unSVGPolygonElement

instance IsSVGGraphicsElement SVGPolygonElement
instance IsSVGElement SVGPolygonElement
instance IsElement SVGPolygonElement
instance IsNode SVGPolygonElement
instance IsEventTarget SVGPolygonElement
instance IsGObject SVGPolygonElement where
  typeGType _ = gTypeSVGPolygonElement
  {-# INLINE typeGType #-}

gTypeSVGPolygonElement :: JSM GType
gTypeSVGPolygonElement = GType . Object <$> jsg "SVGPolygonElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPolylineElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement Mozilla SVGPolylineElement documentation>
newtype SVGPolylineElement = SVGPolylineElement { unSVGPolylineElement :: JSVal }

instance PToJSVal SVGPolylineElement where
  pToJSVal = unSVGPolylineElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPolylineElement where
  pFromJSVal = SVGPolylineElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPolylineElement where
  toJSVal = return . unSVGPolylineElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPolylineElement where
  fromJSVal v = fmap SVGPolylineElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPolylineElement where
  makeObject = makeObject . unSVGPolylineElement

instance IsSVGGraphicsElement SVGPolylineElement
instance IsSVGElement SVGPolylineElement
instance IsElement SVGPolylineElement
instance IsNode SVGPolylineElement
instance IsEventTarget SVGPolylineElement
instance IsGObject SVGPolylineElement where
  typeGType _ = gTypeSVGPolylineElement
  {-# INLINE typeGType #-}

gTypeSVGPolylineElement :: JSM GType
gTypeSVGPolylineElement = GType . Object <$> jsg "SVGPolylineElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGPreserveAspectRatio".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio Mozilla SVGPreserveAspectRatio documentation>
newtype SVGPreserveAspectRatio = SVGPreserveAspectRatio { unSVGPreserveAspectRatio :: JSVal }

instance PToJSVal SVGPreserveAspectRatio where
  pToJSVal = unSVGPreserveAspectRatio
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPreserveAspectRatio where
  pFromJSVal = SVGPreserveAspectRatio
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPreserveAspectRatio where
  toJSVal = return . unSVGPreserveAspectRatio
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPreserveAspectRatio where
  fromJSVal v = fmap SVGPreserveAspectRatio <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGPreserveAspectRatio where
  makeObject = makeObject . unSVGPreserveAspectRatio

instance IsGObject SVGPreserveAspectRatio where
  typeGType _ = gTypeSVGPreserveAspectRatio
  {-# INLINE typeGType #-}

gTypeSVGPreserveAspectRatio :: JSM GType
gTypeSVGPreserveAspectRatio = GType . Object <$> jsg "SVGPreserveAspectRatio"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGRadialGradientElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGradientElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement Mozilla SVGRadialGradientElement documentation>
newtype SVGRadialGradientElement = SVGRadialGradientElement { unSVGRadialGradientElement :: JSVal }

instance PToJSVal SVGRadialGradientElement where
  pToJSVal = unSVGRadialGradientElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRadialGradientElement where
  pFromJSVal = SVGRadialGradientElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRadialGradientElement where
  toJSVal = return . unSVGRadialGradientElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRadialGradientElement where
  fromJSVal v = fmap SVGRadialGradientElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGRadialGradientElement where
  makeObject = makeObject . unSVGRadialGradientElement

instance IsSVGGradientElement SVGRadialGradientElement
instance IsSVGElement SVGRadialGradientElement
instance IsElement SVGRadialGradientElement
instance IsNode SVGRadialGradientElement
instance IsEventTarget SVGRadialGradientElement
instance IsGObject SVGRadialGradientElement where
  typeGType _ = gTypeSVGRadialGradientElement
  {-# INLINE typeGType #-}

gTypeSVGRadialGradientElement :: JSM GType
gTypeSVGRadialGradientElement = GType . Object <$> jsg "SVGRadialGradientElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect Mozilla SVGRect documentation>
newtype SVGRect = SVGRect { unSVGRect :: JSVal }

instance PToJSVal SVGRect where
  pToJSVal = unSVGRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRect where
  pFromJSVal = SVGRect
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRect where
  toJSVal = return . unSVGRect
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRect where
  fromJSVal v = fmap SVGRect <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGRect where
  makeObject = makeObject . unSVGRect

instance IsGObject SVGRect where
  typeGType _ = gTypeSVGRect
  {-# INLINE typeGType #-}

gTypeSVGRect :: JSM GType
gTypeSVGRect = GType . Object <$> jsg "SVGRect"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGRectElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement Mozilla SVGRectElement documentation>
newtype SVGRectElement = SVGRectElement { unSVGRectElement :: JSVal }

instance PToJSVal SVGRectElement where
  pToJSVal = unSVGRectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRectElement where
  pFromJSVal = SVGRectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRectElement where
  toJSVal = return . unSVGRectElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRectElement where
  fromJSVal v = fmap SVGRectElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGRectElement where
  makeObject = makeObject . unSVGRectElement

instance IsSVGGraphicsElement SVGRectElement
instance IsSVGElement SVGRectElement
instance IsElement SVGRectElement
instance IsNode SVGRectElement
instance IsEventTarget SVGRectElement
instance IsGObject SVGRectElement where
  typeGType _ = gTypeSVGRectElement
  {-# INLINE typeGType #-}

gTypeSVGRectElement :: JSM GType
gTypeSVGRectElement = GType . Object <$> jsg "SVGRectElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGRenderingIntent".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRenderingIntent Mozilla SVGRenderingIntent documentation>
newtype SVGRenderingIntent = SVGRenderingIntent { unSVGRenderingIntent :: JSVal }

instance PToJSVal SVGRenderingIntent where
  pToJSVal = unSVGRenderingIntent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRenderingIntent where
  pFromJSVal = SVGRenderingIntent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRenderingIntent where
  toJSVal = return . unSVGRenderingIntent
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRenderingIntent where
  fromJSVal v = fmap SVGRenderingIntent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGRenderingIntent where
  makeObject = makeObject . unSVGRenderingIntent

instance IsGObject SVGRenderingIntent where
  typeGType _ = gTypeSVGRenderingIntent
  {-# INLINE typeGType #-}

gTypeSVGRenderingIntent :: JSM GType
gTypeSVGRenderingIntent = GType . Object <$> jsg "SVGRenderingIntent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGSVGElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement Mozilla SVGSVGElement documentation>
newtype SVGSVGElement = SVGSVGElement { unSVGSVGElement :: JSVal }

instance PToJSVal SVGSVGElement where
  pToJSVal = unSVGSVGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSVGElement where
  pFromJSVal = SVGSVGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSVGElement where
  toJSVal = return . unSVGSVGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSVGElement where
  fromJSVal v = fmap SVGSVGElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGSVGElement where
  makeObject = makeObject . unSVGSVGElement

instance IsSVGGraphicsElement SVGSVGElement
instance IsSVGElement SVGSVGElement
instance IsElement SVGSVGElement
instance IsNode SVGSVGElement
instance IsEventTarget SVGSVGElement
instance IsGObject SVGSVGElement where
  typeGType _ = gTypeSVGSVGElement
  {-# INLINE typeGType #-}

gTypeSVGSVGElement :: JSM GType
gTypeSVGSVGElement = GType . Object <$> jsg "SVGSVGElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGScriptElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement Mozilla SVGScriptElement documentation>
newtype SVGScriptElement = SVGScriptElement { unSVGScriptElement :: JSVal }

instance PToJSVal SVGScriptElement where
  pToJSVal = unSVGScriptElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGScriptElement where
  pFromJSVal = SVGScriptElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGScriptElement where
  toJSVal = return . unSVGScriptElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGScriptElement where
  fromJSVal v = fmap SVGScriptElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGScriptElement where
  makeObject = makeObject . unSVGScriptElement

instance IsSVGElement SVGScriptElement
instance IsElement SVGScriptElement
instance IsNode SVGScriptElement
instance IsEventTarget SVGScriptElement
instance IsGObject SVGScriptElement where
  typeGType _ = gTypeSVGScriptElement
  {-# INLINE typeGType #-}

gTypeSVGScriptElement :: JSM GType
gTypeSVGScriptElement = GType . Object <$> jsg "SVGScriptElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGSetElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGAnimationElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSetElement Mozilla SVGSetElement documentation>
newtype SVGSetElement = SVGSetElement { unSVGSetElement :: JSVal }

instance PToJSVal SVGSetElement where
  pToJSVal = unSVGSetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSetElement where
  pFromJSVal = SVGSetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSetElement where
  toJSVal = return . unSVGSetElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSetElement where
  fromJSVal v = fmap SVGSetElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGSetElement where
  makeObject = makeObject . unSVGSetElement

instance IsSVGAnimationElement SVGSetElement
instance IsSVGElement SVGSetElement
instance IsElement SVGSetElement
instance IsNode SVGSetElement
instance IsEventTarget SVGSetElement
instance IsGObject SVGSetElement where
  typeGType _ = gTypeSVGSetElement
  {-# INLINE typeGType #-}

gTypeSVGSetElement :: JSM GType
gTypeSVGSetElement = GType . Object <$> jsg "SVGSetElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGStopElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement Mozilla SVGStopElement documentation>
newtype SVGStopElement = SVGStopElement { unSVGStopElement :: JSVal }

instance PToJSVal SVGStopElement where
  pToJSVal = unSVGStopElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGStopElement where
  pFromJSVal = SVGStopElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGStopElement where
  toJSVal = return . unSVGStopElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGStopElement where
  fromJSVal v = fmap SVGStopElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGStopElement where
  makeObject = makeObject . unSVGStopElement

instance IsSVGElement SVGStopElement
instance IsElement SVGStopElement
instance IsNode SVGStopElement
instance IsEventTarget SVGStopElement
instance IsGObject SVGStopElement where
  typeGType _ = gTypeSVGStopElement
  {-# INLINE typeGType #-}

gTypeSVGStopElement :: JSM GType
gTypeSVGStopElement = GType . Object <$> jsg "SVGStopElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGStringList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList Mozilla SVGStringList documentation>
newtype SVGStringList = SVGStringList { unSVGStringList :: JSVal }

instance PToJSVal SVGStringList where
  pToJSVal = unSVGStringList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGStringList where
  pFromJSVal = SVGStringList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGStringList where
  toJSVal = return . unSVGStringList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGStringList where
  fromJSVal v = fmap SVGStringList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGStringList where
  makeObject = makeObject . unSVGStringList

instance IsGObject SVGStringList where
  typeGType _ = gTypeSVGStringList
  {-# INLINE typeGType #-}

gTypeSVGStringList :: JSM GType
gTypeSVGStringList = GType . Object <$> jsg "SVGStringList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGStyleElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement Mozilla SVGStyleElement documentation>
newtype SVGStyleElement = SVGStyleElement { unSVGStyleElement :: JSVal }

instance PToJSVal SVGStyleElement where
  pToJSVal = unSVGStyleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGStyleElement where
  pFromJSVal = SVGStyleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGStyleElement where
  toJSVal = return . unSVGStyleElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGStyleElement where
  fromJSVal v = fmap SVGStyleElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGStyleElement where
  makeObject = makeObject . unSVGStyleElement

instance IsSVGElement SVGStyleElement
instance IsElement SVGStyleElement
instance IsNode SVGStyleElement
instance IsEventTarget SVGStyleElement
instance IsGObject SVGStyleElement where
  typeGType _ = gTypeSVGStyleElement
  {-# INLINE typeGType #-}

gTypeSVGStyleElement :: JSM GType
gTypeSVGStyleElement = GType . Object <$> jsg "SVGStyleElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGSwitchElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSwitchElement Mozilla SVGSwitchElement documentation>
newtype SVGSwitchElement = SVGSwitchElement { unSVGSwitchElement :: JSVal }

instance PToJSVal SVGSwitchElement where
  pToJSVal = unSVGSwitchElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSwitchElement where
  pFromJSVal = SVGSwitchElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSwitchElement where
  toJSVal = return . unSVGSwitchElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSwitchElement where
  fromJSVal v = fmap SVGSwitchElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGSwitchElement where
  makeObject = makeObject . unSVGSwitchElement

instance IsSVGGraphicsElement SVGSwitchElement
instance IsSVGElement SVGSwitchElement
instance IsElement SVGSwitchElement
instance IsNode SVGSwitchElement
instance IsEventTarget SVGSwitchElement
instance IsGObject SVGSwitchElement where
  typeGType _ = gTypeSVGSwitchElement
  {-# INLINE typeGType #-}

gTypeSVGSwitchElement :: JSM GType
gTypeSVGSwitchElement = GType . Object <$> jsg "SVGSwitchElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGSymbolElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement Mozilla SVGSymbolElement documentation>
newtype SVGSymbolElement = SVGSymbolElement { unSVGSymbolElement :: JSVal }

instance PToJSVal SVGSymbolElement where
  pToJSVal = unSVGSymbolElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSymbolElement where
  pFromJSVal = SVGSymbolElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSymbolElement where
  toJSVal = return . unSVGSymbolElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSymbolElement where
  fromJSVal v = fmap SVGSymbolElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGSymbolElement where
  makeObject = makeObject . unSVGSymbolElement

instance IsSVGElement SVGSymbolElement
instance IsElement SVGSymbolElement
instance IsNode SVGSymbolElement
instance IsEventTarget SVGSymbolElement
instance IsGObject SVGSymbolElement where
  typeGType _ = gTypeSVGSymbolElement
  {-# INLINE typeGType #-}

gTypeSVGSymbolElement :: JSM GType
gTypeSVGSymbolElement = GType . Object <$> jsg "SVGSymbolElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTRefElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGTextPositioningElement"
--     * "JSDOM.SVGTextContentElement"
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTRefElement Mozilla SVGTRefElement documentation>
newtype SVGTRefElement = SVGTRefElement { unSVGTRefElement :: JSVal }

instance PToJSVal SVGTRefElement where
  pToJSVal = unSVGTRefElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTRefElement where
  pFromJSVal = SVGTRefElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTRefElement where
  toJSVal = return . unSVGTRefElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTRefElement where
  fromJSVal v = fmap SVGTRefElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTRefElement where
  makeObject = makeObject . unSVGTRefElement

instance IsSVGTextPositioningElement SVGTRefElement
instance IsSVGTextContentElement SVGTRefElement
instance IsSVGGraphicsElement SVGTRefElement
instance IsSVGElement SVGTRefElement
instance IsElement SVGTRefElement
instance IsNode SVGTRefElement
instance IsEventTarget SVGTRefElement
instance IsGObject SVGTRefElement where
  typeGType _ = gTypeSVGTRefElement
  {-# INLINE typeGType #-}

gTypeSVGTRefElement :: JSM GType
gTypeSVGTRefElement = GType . Object <$> jsg "SVGTRefElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTSpanElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGTextPositioningElement"
--     * "JSDOM.SVGTextContentElement"
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTSpanElement Mozilla SVGTSpanElement documentation>
newtype SVGTSpanElement = SVGTSpanElement { unSVGTSpanElement :: JSVal }

instance PToJSVal SVGTSpanElement where
  pToJSVal = unSVGTSpanElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTSpanElement where
  pFromJSVal = SVGTSpanElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTSpanElement where
  toJSVal = return . unSVGTSpanElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTSpanElement where
  fromJSVal v = fmap SVGTSpanElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTSpanElement where
  makeObject = makeObject . unSVGTSpanElement

instance IsSVGTextPositioningElement SVGTSpanElement
instance IsSVGTextContentElement SVGTSpanElement
instance IsSVGGraphicsElement SVGTSpanElement
instance IsSVGElement SVGTSpanElement
instance IsElement SVGTSpanElement
instance IsNode SVGTSpanElement
instance IsEventTarget SVGTSpanElement
instance IsGObject SVGTSpanElement where
  typeGType _ = gTypeSVGTSpanElement
  {-# INLINE typeGType #-}

gTypeSVGTSpanElement :: JSM GType
gTypeSVGTSpanElement = GType . Object <$> jsg "SVGTSpanElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTests".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests Mozilla SVGTests documentation>
newtype SVGTests = SVGTests { unSVGTests :: JSVal }

instance PToJSVal SVGTests where
  pToJSVal = unSVGTests
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTests where
  pFromJSVal = SVGTests
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTests where
  toJSVal = return . unSVGTests
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTests where
  fromJSVal v = fmap SVGTests <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTests where
  makeObject = makeObject . unSVGTests

instance IsGObject SVGTests where
  typeGType _ = gTypeSVGTests
  {-# INLINE typeGType #-}

gTypeSVGTests :: JSM GType
gTypeSVGTests = GType . Object <$> jsg "SVGTests"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTextContentElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement Mozilla SVGTextContentElement documentation>
newtype SVGTextContentElement = SVGTextContentElement { unSVGTextContentElement :: JSVal }

instance PToJSVal SVGTextContentElement where
  pToJSVal = unSVGTextContentElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextContentElement where
  pFromJSVal = SVGTextContentElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextContentElement where
  toJSVal = return . unSVGTextContentElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextContentElement where
  fromJSVal v = fmap SVGTextContentElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTextContentElement where
  makeObject = makeObject . unSVGTextContentElement

class IsSVGGraphicsElement o => IsSVGTextContentElement o
toSVGTextContentElement :: IsSVGTextContentElement o => o -> SVGTextContentElement
toSVGTextContentElement = SVGTextContentElement . coerce

instance IsSVGTextContentElement SVGTextContentElement
instance IsSVGGraphicsElement SVGTextContentElement
instance IsSVGElement SVGTextContentElement
instance IsElement SVGTextContentElement
instance IsNode SVGTextContentElement
instance IsEventTarget SVGTextContentElement
instance IsGObject SVGTextContentElement where
  typeGType _ = gTypeSVGTextContentElement
  {-# INLINE typeGType #-}

gTypeSVGTextContentElement :: JSM GType
gTypeSVGTextContentElement = GType . Object <$> jsg "SVGTextContentElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTextElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGTextPositioningElement"
--     * "JSDOM.SVGTextContentElement"
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextElement Mozilla SVGTextElement documentation>
newtype SVGTextElement = SVGTextElement { unSVGTextElement :: JSVal }

instance PToJSVal SVGTextElement where
  pToJSVal = unSVGTextElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextElement where
  pFromJSVal = SVGTextElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextElement where
  toJSVal = return . unSVGTextElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextElement where
  fromJSVal v = fmap SVGTextElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTextElement where
  makeObject = makeObject . unSVGTextElement

instance IsSVGTextPositioningElement SVGTextElement
instance IsSVGTextContentElement SVGTextElement
instance IsSVGGraphicsElement SVGTextElement
instance IsSVGElement SVGTextElement
instance IsElement SVGTextElement
instance IsNode SVGTextElement
instance IsEventTarget SVGTextElement
instance IsGObject SVGTextElement where
  typeGType _ = gTypeSVGTextElement
  {-# INLINE typeGType #-}

gTypeSVGTextElement :: JSM GType
gTypeSVGTextElement = GType . Object <$> jsg "SVGTextElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTextPathElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGTextContentElement"
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement Mozilla SVGTextPathElement documentation>
newtype SVGTextPathElement = SVGTextPathElement { unSVGTextPathElement :: JSVal }

instance PToJSVal SVGTextPathElement where
  pToJSVal = unSVGTextPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextPathElement where
  pFromJSVal = SVGTextPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextPathElement where
  toJSVal = return . unSVGTextPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextPathElement where
  fromJSVal v = fmap SVGTextPathElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTextPathElement where
  makeObject = makeObject . unSVGTextPathElement

instance IsSVGTextContentElement SVGTextPathElement
instance IsSVGGraphicsElement SVGTextPathElement
instance IsSVGElement SVGTextPathElement
instance IsElement SVGTextPathElement
instance IsNode SVGTextPathElement
instance IsEventTarget SVGTextPathElement
instance IsGObject SVGTextPathElement where
  typeGType _ = gTypeSVGTextPathElement
  {-# INLINE typeGType #-}

gTypeSVGTextPathElement :: JSM GType
gTypeSVGTextPathElement = GType . Object <$> jsg "SVGTextPathElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTextPositioningElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGTextContentElement"
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement Mozilla SVGTextPositioningElement documentation>
newtype SVGTextPositioningElement = SVGTextPositioningElement { unSVGTextPositioningElement :: JSVal }

instance PToJSVal SVGTextPositioningElement where
  pToJSVal = unSVGTextPositioningElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextPositioningElement where
  pFromJSVal = SVGTextPositioningElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextPositioningElement where
  toJSVal = return . unSVGTextPositioningElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextPositioningElement where
  fromJSVal v = fmap SVGTextPositioningElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTextPositioningElement where
  makeObject = makeObject . unSVGTextPositioningElement

class IsSVGTextContentElement o => IsSVGTextPositioningElement o
toSVGTextPositioningElement :: IsSVGTextPositioningElement o => o -> SVGTextPositioningElement
toSVGTextPositioningElement = SVGTextPositioningElement . coerce

instance IsSVGTextPositioningElement SVGTextPositioningElement
instance IsSVGTextContentElement SVGTextPositioningElement
instance IsSVGGraphicsElement SVGTextPositioningElement
instance IsSVGElement SVGTextPositioningElement
instance IsElement SVGTextPositioningElement
instance IsNode SVGTextPositioningElement
instance IsEventTarget SVGTextPositioningElement
instance IsGObject SVGTextPositioningElement where
  typeGType _ = gTypeSVGTextPositioningElement
  {-# INLINE typeGType #-}

gTypeSVGTextPositioningElement :: JSM GType
gTypeSVGTextPositioningElement = GType . Object <$> jsg "SVGTextPositioningElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTitleElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTitleElement Mozilla SVGTitleElement documentation>
newtype SVGTitleElement = SVGTitleElement { unSVGTitleElement :: JSVal }

instance PToJSVal SVGTitleElement where
  pToJSVal = unSVGTitleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTitleElement where
  pFromJSVal = SVGTitleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTitleElement where
  toJSVal = return . unSVGTitleElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTitleElement where
  fromJSVal v = fmap SVGTitleElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTitleElement where
  makeObject = makeObject . unSVGTitleElement

instance IsSVGElement SVGTitleElement
instance IsElement SVGTitleElement
instance IsNode SVGTitleElement
instance IsEventTarget SVGTitleElement
instance IsGObject SVGTitleElement where
  typeGType _ = gTypeSVGTitleElement
  {-# INLINE typeGType #-}

gTypeSVGTitleElement :: JSM GType
gTypeSVGTitleElement = GType . Object <$> jsg "SVGTitleElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTransform".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform Mozilla SVGTransform documentation>
newtype SVGTransform = SVGTransform { unSVGTransform :: JSVal }

instance PToJSVal SVGTransform where
  pToJSVal = unSVGTransform
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTransform where
  pFromJSVal = SVGTransform
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTransform where
  toJSVal = return . unSVGTransform
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTransform where
  fromJSVal v = fmap SVGTransform <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTransform where
  makeObject = makeObject . unSVGTransform

instance IsGObject SVGTransform where
  typeGType _ = gTypeSVGTransform
  {-# INLINE typeGType #-}

gTypeSVGTransform :: JSM GType
gTypeSVGTransform = GType . Object <$> jsg "SVGTransform"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGTransformList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList Mozilla SVGTransformList documentation>
newtype SVGTransformList = SVGTransformList { unSVGTransformList :: JSVal }

instance PToJSVal SVGTransformList where
  pToJSVal = unSVGTransformList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTransformList where
  pFromJSVal = SVGTransformList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTransformList where
  toJSVal = return . unSVGTransformList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTransformList where
  fromJSVal v = fmap SVGTransformList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGTransformList where
  makeObject = makeObject . unSVGTransformList

instance IsGObject SVGTransformList where
  typeGType _ = gTypeSVGTransformList
  {-# INLINE typeGType #-}

gTypeSVGTransformList :: JSM GType
gTypeSVGTransformList = GType . Object <$> jsg "SVGTransformList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGURIReference".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGURIReference Mozilla SVGURIReference documentation>
newtype SVGURIReference = SVGURIReference { unSVGURIReference :: JSVal }

instance PToJSVal SVGURIReference where
  pToJSVal = unSVGURIReference
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGURIReference where
  pFromJSVal = SVGURIReference
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGURIReference where
  toJSVal = return . unSVGURIReference
  {-# INLINE toJSVal #-}

instance FromJSVal SVGURIReference where
  fromJSVal v = fmap SVGURIReference <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGURIReference where
  makeObject = makeObject . unSVGURIReference

instance IsGObject SVGURIReference where
  typeGType _ = gTypeSVGURIReference
  {-# INLINE typeGType #-}

gTypeSVGURIReference :: JSM GType
gTypeSVGURIReference = GType . Object <$> jsg "SVGURIReference"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGUnitTypes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes Mozilla SVGUnitTypes documentation>
newtype SVGUnitTypes = SVGUnitTypes { unSVGUnitTypes :: JSVal }

instance PToJSVal SVGUnitTypes where
  pToJSVal = unSVGUnitTypes
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGUnitTypes where
  pFromJSVal = SVGUnitTypes
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGUnitTypes where
  toJSVal = return . unSVGUnitTypes
  {-# INLINE toJSVal #-}

instance FromJSVal SVGUnitTypes where
  fromJSVal v = fmap SVGUnitTypes <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGUnitTypes where
  makeObject = makeObject . unSVGUnitTypes

instance IsGObject SVGUnitTypes where
  typeGType _ = gTypeSVGUnitTypes
  {-# INLINE typeGType #-}

gTypeSVGUnitTypes :: JSM GType
gTypeSVGUnitTypes = GType . Object <$> jsg "SVGUnitTypes"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGUseElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGGraphicsElement"
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement Mozilla SVGUseElement documentation>
newtype SVGUseElement = SVGUseElement { unSVGUseElement :: JSVal }

instance PToJSVal SVGUseElement where
  pToJSVal = unSVGUseElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGUseElement where
  pFromJSVal = SVGUseElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGUseElement where
  toJSVal = return . unSVGUseElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGUseElement where
  fromJSVal v = fmap SVGUseElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGUseElement where
  makeObject = makeObject . unSVGUseElement

instance IsSVGGraphicsElement SVGUseElement
instance IsSVGElement SVGUseElement
instance IsElement SVGUseElement
instance IsNode SVGUseElement
instance IsEventTarget SVGUseElement
instance IsGObject SVGUseElement where
  typeGType _ = gTypeSVGUseElement
  {-# INLINE typeGType #-}

gTypeSVGUseElement :: JSM GType
gTypeSVGUseElement = GType . Object <$> jsg "SVGUseElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGVKernElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGVKernElement Mozilla SVGVKernElement documentation>
newtype SVGVKernElement = SVGVKernElement { unSVGVKernElement :: JSVal }

instance PToJSVal SVGVKernElement where
  pToJSVal = unSVGVKernElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGVKernElement where
  pFromJSVal = SVGVKernElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGVKernElement where
  toJSVal = return . unSVGVKernElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGVKernElement where
  fromJSVal v = fmap SVGVKernElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGVKernElement where
  makeObject = makeObject . unSVGVKernElement

instance IsSVGElement SVGVKernElement
instance IsElement SVGVKernElement
instance IsNode SVGVKernElement
instance IsEventTarget SVGVKernElement
instance IsGObject SVGVKernElement where
  typeGType _ = gTypeSVGVKernElement
  {-# INLINE typeGType #-}

gTypeSVGVKernElement :: JSM GType
gTypeSVGVKernElement = GType . Object <$> jsg "SVGVKernElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGViewElement".
-- Base interface functions are in:
--
--     * "JSDOM.SVGElement"
--     * "JSDOM.Element"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement Mozilla SVGViewElement documentation>
newtype SVGViewElement = SVGViewElement { unSVGViewElement :: JSVal }

instance PToJSVal SVGViewElement where
  pToJSVal = unSVGViewElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGViewElement where
  pFromJSVal = SVGViewElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGViewElement where
  toJSVal = return . unSVGViewElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGViewElement where
  fromJSVal v = fmap SVGViewElement <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGViewElement where
  makeObject = makeObject . unSVGViewElement

instance IsSVGElement SVGViewElement
instance IsElement SVGViewElement
instance IsNode SVGViewElement
instance IsEventTarget SVGViewElement
instance IsGObject SVGViewElement where
  typeGType _ = gTypeSVGViewElement
  {-# INLINE typeGType #-}

gTypeSVGViewElement :: JSM GType
gTypeSVGViewElement = GType . Object <$> jsg "SVGViewElement"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGViewSpec".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec Mozilla SVGViewSpec documentation>
newtype SVGViewSpec = SVGViewSpec { unSVGViewSpec :: JSVal }

instance PToJSVal SVGViewSpec where
  pToJSVal = unSVGViewSpec
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGViewSpec where
  pFromJSVal = SVGViewSpec
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGViewSpec where
  toJSVal = return . unSVGViewSpec
  {-# INLINE toJSVal #-}

instance FromJSVal SVGViewSpec where
  fromJSVal v = fmap SVGViewSpec <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGViewSpec where
  makeObject = makeObject . unSVGViewSpec

instance IsGObject SVGViewSpec where
  typeGType _ = gTypeSVGViewSpec
  {-# INLINE typeGType #-}

gTypeSVGViewSpec :: JSM GType
gTypeSVGViewSpec = GType . Object <$> jsg "SVGViewSpec"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGZoomAndPan".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan Mozilla SVGZoomAndPan documentation>
newtype SVGZoomAndPan = SVGZoomAndPan { unSVGZoomAndPan :: JSVal }

instance PToJSVal SVGZoomAndPan where
  pToJSVal = unSVGZoomAndPan
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGZoomAndPan where
  pFromJSVal = SVGZoomAndPan
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGZoomAndPan where
  toJSVal = return . unSVGZoomAndPan
  {-# INLINE toJSVal #-}

instance FromJSVal SVGZoomAndPan where
  fromJSVal v = fmap SVGZoomAndPan <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGZoomAndPan where
  makeObject = makeObject . unSVGZoomAndPan

instance IsGObject SVGZoomAndPan where
  typeGType _ = gTypeSVGZoomAndPan
  {-# INLINE typeGType #-}

gTypeSVGZoomAndPan :: JSM GType
gTypeSVGZoomAndPan = GType . Object <$> jsg "SVGZoomAndPan"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SVGZoomEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent Mozilla SVGZoomEvent documentation>
newtype SVGZoomEvent = SVGZoomEvent { unSVGZoomEvent :: JSVal }

instance PToJSVal SVGZoomEvent where
  pToJSVal = unSVGZoomEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGZoomEvent where
  pFromJSVal = SVGZoomEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGZoomEvent where
  toJSVal = return . unSVGZoomEvent
  {-# INLINE toJSVal #-}

instance FromJSVal SVGZoomEvent where
  fromJSVal v = fmap SVGZoomEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SVGZoomEvent where
  makeObject = makeObject . unSVGZoomEvent

instance IsUIEvent SVGZoomEvent
instance IsEvent SVGZoomEvent
instance IsGObject SVGZoomEvent where
  typeGType _ = gTypeSVGZoomEvent
  {-# INLINE typeGType #-}

gTypeSVGZoomEvent :: JSM GType
gTypeSVGZoomEvent = GType . Object <$> jsg "SVGZoomEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Screen".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Screen Mozilla Screen documentation>
newtype Screen = Screen { unScreen :: JSVal }

instance PToJSVal Screen where
  pToJSVal = unScreen
  {-# INLINE pToJSVal #-}

instance PFromJSVal Screen where
  pFromJSVal = Screen
  {-# INLINE pFromJSVal #-}

instance ToJSVal Screen where
  toJSVal = return . unScreen
  {-# INLINE toJSVal #-}

instance FromJSVal Screen where
  fromJSVal v = fmap Screen <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Screen where
  makeObject = makeObject . unScreen

instance IsGObject Screen where
  typeGType _ = gTypeScreen
  {-# INLINE typeGType #-}

gTypeScreen :: JSM GType
gTypeScreen = GType . Object <$> jsg "Screen"
#else
type IsScreen o = ScreenClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ScriptProcessorNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode Mozilla ScriptProcessorNode documentation>
newtype ScriptProcessorNode = ScriptProcessorNode { unScriptProcessorNode :: JSVal }

instance PToJSVal ScriptProcessorNode where
  pToJSVal = unScriptProcessorNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ScriptProcessorNode where
  pFromJSVal = ScriptProcessorNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ScriptProcessorNode where
  toJSVal = return . unScriptProcessorNode
  {-# INLINE toJSVal #-}

instance FromJSVal ScriptProcessorNode where
  fromJSVal v = fmap ScriptProcessorNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ScriptProcessorNode where
  makeObject = makeObject . unScriptProcessorNode

instance IsAudioNode ScriptProcessorNode
instance IsEventTarget ScriptProcessorNode
instance IsGObject ScriptProcessorNode where
  typeGType _ = gTypeScriptProcessorNode
  {-# INLINE typeGType #-}

gTypeScriptProcessorNode :: JSM GType
gTypeScriptProcessorNode = GType . Object <$> jsg "ScriptProcessorNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ScriptProfile".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile Mozilla ScriptProfile documentation>
newtype ScriptProfile = ScriptProfile { unScriptProfile :: JSVal }

instance PToJSVal ScriptProfile where
  pToJSVal = unScriptProfile
  {-# INLINE pToJSVal #-}

instance PFromJSVal ScriptProfile where
  pFromJSVal = ScriptProfile
  {-# INLINE pFromJSVal #-}

instance ToJSVal ScriptProfile where
  toJSVal = return . unScriptProfile
  {-# INLINE toJSVal #-}

instance FromJSVal ScriptProfile where
  fromJSVal v = fmap ScriptProfile <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ScriptProfile where
  makeObject = makeObject . unScriptProfile

instance IsGObject ScriptProfile where
  typeGType _ = gTypeScriptProfile
  {-# INLINE typeGType #-}

gTypeScriptProfile :: JSM GType
gTypeScriptProfile = GType . Object <$> jsg "ScriptProfile"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ScriptProfileNode".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode Mozilla ScriptProfileNode documentation>
newtype ScriptProfileNode = ScriptProfileNode { unScriptProfileNode :: JSVal }

instance PToJSVal ScriptProfileNode where
  pToJSVal = unScriptProfileNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ScriptProfileNode where
  pFromJSVal = ScriptProfileNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ScriptProfileNode where
  toJSVal = return . unScriptProfileNode
  {-# INLINE toJSVal #-}

instance FromJSVal ScriptProfileNode where
  fromJSVal v = fmap ScriptProfileNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ScriptProfileNode where
  makeObject = makeObject . unScriptProfileNode

instance IsGObject ScriptProfileNode where
  typeGType _ = gTypeScriptProfileNode
  {-# INLINE typeGType #-}

gTypeScriptProfileNode :: JSM GType
gTypeScriptProfileNode = GType . Object <$> jsg "ScriptProfileNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SecurityPolicy".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy Mozilla SecurityPolicy documentation>
newtype SecurityPolicy = SecurityPolicy { unSecurityPolicy :: JSVal }

instance PToJSVal SecurityPolicy where
  pToJSVal = unSecurityPolicy
  {-# INLINE pToJSVal #-}

instance PFromJSVal SecurityPolicy where
  pFromJSVal = SecurityPolicy
  {-# INLINE pFromJSVal #-}

instance ToJSVal SecurityPolicy where
  toJSVal = return . unSecurityPolicy
  {-# INLINE toJSVal #-}

instance FromJSVal SecurityPolicy where
  fromJSVal v = fmap SecurityPolicy <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SecurityPolicy where
  makeObject = makeObject . unSecurityPolicy

instance IsGObject SecurityPolicy where
  typeGType _ = gTypeSecurityPolicy
  {-# INLINE typeGType #-}

gTypeSecurityPolicy :: JSM GType
gTypeSecurityPolicy = GType . Object <$> jsg "SecurityPolicy"
#else
#ifndef USE_OLD_WEBKIT
type IsSecurityPolicy o = SecurityPolicyClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SecurityPolicyViolationEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent Mozilla SecurityPolicyViolationEvent documentation>
newtype SecurityPolicyViolationEvent = SecurityPolicyViolationEvent { unSecurityPolicyViolationEvent :: JSVal }

instance PToJSVal SecurityPolicyViolationEvent where
  pToJSVal = unSecurityPolicyViolationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SecurityPolicyViolationEvent where
  pFromJSVal = SecurityPolicyViolationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SecurityPolicyViolationEvent where
  toJSVal = return . unSecurityPolicyViolationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal SecurityPolicyViolationEvent where
  fromJSVal v = fmap SecurityPolicyViolationEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SecurityPolicyViolationEvent where
  makeObject = makeObject . unSecurityPolicyViolationEvent

instance IsEvent SecurityPolicyViolationEvent
instance IsGObject SecurityPolicyViolationEvent where
  typeGType _ = gTypeSecurityPolicyViolationEvent
  {-# INLINE typeGType #-}

gTypeSecurityPolicyViolationEvent :: JSM GType
gTypeSecurityPolicyViolationEvent = GType . Object <$> jsg "SecurityPolicyViolationEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Selection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Selection Mozilla Selection documentation>
newtype Selection = Selection { unSelection :: JSVal }

instance PToJSVal Selection where
  pToJSVal = unSelection
  {-# INLINE pToJSVal #-}

instance PFromJSVal Selection where
  pFromJSVal = Selection
  {-# INLINE pFromJSVal #-}

instance ToJSVal Selection where
  toJSVal = return . unSelection
  {-# INLINE toJSVal #-}

instance FromJSVal Selection where
  fromJSVal v = fmap Selection <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Selection where
  makeObject = makeObject . unSelection

instance IsGObject Selection where
  typeGType _ = gTypeSelection
  {-# INLINE typeGType #-}

gTypeSelection :: JSM GType
gTypeSelection = GType . Object <$> jsg "Selection"
#else
type IsSelection o = SelectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SourceBuffer".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer Mozilla SourceBuffer documentation>
newtype SourceBuffer = SourceBuffer { unSourceBuffer :: JSVal }

instance PToJSVal SourceBuffer where
  pToJSVal = unSourceBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal SourceBuffer where
  pFromJSVal = SourceBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal SourceBuffer where
  toJSVal = return . unSourceBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal SourceBuffer where
  fromJSVal v = fmap SourceBuffer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SourceBuffer where
  makeObject = makeObject . unSourceBuffer

instance IsEventTarget SourceBuffer
instance IsGObject SourceBuffer where
  typeGType _ = gTypeSourceBuffer
  {-# INLINE typeGType #-}

gTypeSourceBuffer :: JSM GType
gTypeSourceBuffer = GType . Object <$> jsg "SourceBuffer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SourceBufferList".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList Mozilla SourceBufferList documentation>
newtype SourceBufferList = SourceBufferList { unSourceBufferList :: JSVal }

instance PToJSVal SourceBufferList where
  pToJSVal = unSourceBufferList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SourceBufferList where
  pFromJSVal = SourceBufferList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SourceBufferList where
  toJSVal = return . unSourceBufferList
  {-# INLINE toJSVal #-}

instance FromJSVal SourceBufferList where
  fromJSVal v = fmap SourceBufferList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SourceBufferList where
  makeObject = makeObject . unSourceBufferList

instance IsEventTarget SourceBufferList
instance IsGObject SourceBufferList where
  typeGType _ = gTypeSourceBufferList
  {-# INLINE typeGType #-}

gTypeSourceBufferList :: JSM GType
gTypeSourceBufferList = GType . Object <$> jsg "SourceBufferList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SourceInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo Mozilla SourceInfo documentation>
newtype SourceInfo = SourceInfo { unSourceInfo :: JSVal }

instance PToJSVal SourceInfo where
  pToJSVal = unSourceInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal SourceInfo where
  pFromJSVal = SourceInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal SourceInfo where
  toJSVal = return . unSourceInfo
  {-# INLINE toJSVal #-}

instance FromJSVal SourceInfo where
  fromJSVal v = fmap SourceInfo <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SourceInfo where
  makeObject = makeObject . unSourceInfo

instance IsGObject SourceInfo where
  typeGType _ = gTypeSourceInfo
  {-# INLINE typeGType #-}

gTypeSourceInfo :: JSM GType
gTypeSourceInfo = GType . Object <$> jsg "SourceInfo"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SpeechSynthesis".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis Mozilla SpeechSynthesis documentation>
newtype SpeechSynthesis = SpeechSynthesis { unSpeechSynthesis :: JSVal }

instance PToJSVal SpeechSynthesis where
  pToJSVal = unSpeechSynthesis
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesis where
  pFromJSVal = SpeechSynthesis
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesis where
  toJSVal = return . unSpeechSynthesis
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesis where
  fromJSVal v = fmap SpeechSynthesis <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SpeechSynthesis where
  makeObject = makeObject . unSpeechSynthesis

instance IsGObject SpeechSynthesis where
  typeGType _ = gTypeSpeechSynthesis
  {-# INLINE typeGType #-}

gTypeSpeechSynthesis :: JSM GType
gTypeSpeechSynthesis = GType . Object <$> jsg "SpeechSynthesis"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SpeechSynthesisEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent Mozilla SpeechSynthesisEvent documentation>
newtype SpeechSynthesisEvent = SpeechSynthesisEvent { unSpeechSynthesisEvent :: JSVal }

instance PToJSVal SpeechSynthesisEvent where
  pToJSVal = unSpeechSynthesisEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesisEvent where
  pFromJSVal = SpeechSynthesisEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesisEvent where
  toJSVal = return . unSpeechSynthesisEvent
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesisEvent where
  fromJSVal v = fmap SpeechSynthesisEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SpeechSynthesisEvent where
  makeObject = makeObject . unSpeechSynthesisEvent

instance IsEvent SpeechSynthesisEvent
instance IsGObject SpeechSynthesisEvent where
  typeGType _ = gTypeSpeechSynthesisEvent
  {-# INLINE typeGType #-}

gTypeSpeechSynthesisEvent :: JSM GType
gTypeSpeechSynthesisEvent = GType . Object <$> jsg "SpeechSynthesisEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SpeechSynthesisUtterance".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation>
newtype SpeechSynthesisUtterance = SpeechSynthesisUtterance { unSpeechSynthesisUtterance :: JSVal }

instance PToJSVal SpeechSynthesisUtterance where
  pToJSVal = unSpeechSynthesisUtterance
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesisUtterance where
  pFromJSVal = SpeechSynthesisUtterance
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesisUtterance where
  toJSVal = return . unSpeechSynthesisUtterance
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesisUtterance where
  fromJSVal v = fmap SpeechSynthesisUtterance <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SpeechSynthesisUtterance where
  makeObject = makeObject . unSpeechSynthesisUtterance

instance IsEventTarget SpeechSynthesisUtterance
instance IsGObject SpeechSynthesisUtterance where
  typeGType _ = gTypeSpeechSynthesisUtterance
  {-# INLINE typeGType #-}

gTypeSpeechSynthesisUtterance :: JSM GType
gTypeSpeechSynthesisUtterance = GType . Object <$> jsg "SpeechSynthesisUtterance"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SpeechSynthesisVoice".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice Mozilla SpeechSynthesisVoice documentation>
newtype SpeechSynthesisVoice = SpeechSynthesisVoice { unSpeechSynthesisVoice :: JSVal }

instance PToJSVal SpeechSynthesisVoice where
  pToJSVal = unSpeechSynthesisVoice
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesisVoice where
  pFromJSVal = SpeechSynthesisVoice
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesisVoice where
  toJSVal = return . unSpeechSynthesisVoice
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesisVoice where
  fromJSVal v = fmap SpeechSynthesisVoice <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SpeechSynthesisVoice where
  makeObject = makeObject . unSpeechSynthesisVoice

instance IsGObject SpeechSynthesisVoice where
  typeGType _ = gTypeSpeechSynthesisVoice
  {-# INLINE typeGType #-}

gTypeSpeechSynthesisVoice :: JSM GType
gTypeSpeechSynthesisVoice = GType . Object <$> jsg "SpeechSynthesisVoice"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Storage".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Storage Mozilla Storage documentation>
newtype Storage = Storage { unStorage :: JSVal }

instance PToJSVal Storage where
  pToJSVal = unStorage
  {-# INLINE pToJSVal #-}

instance PFromJSVal Storage where
  pFromJSVal = Storage
  {-# INLINE pFromJSVal #-}

instance ToJSVal Storage where
  toJSVal = return . unStorage
  {-# INLINE toJSVal #-}

instance FromJSVal Storage where
  fromJSVal v = fmap Storage <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Storage where
  makeObject = makeObject . unStorage

instance IsGObject Storage where
  typeGType _ = gTypeStorage
  {-# INLINE typeGType #-}

gTypeStorage :: JSM GType
gTypeStorage = GType . Object <$> jsg "Storage"
#else
type IsStorage o = StorageClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.StorageEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent Mozilla StorageEvent documentation>
newtype StorageEvent = StorageEvent { unStorageEvent :: JSVal }

instance PToJSVal StorageEvent where
  pToJSVal = unStorageEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal StorageEvent where
  pFromJSVal = StorageEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal StorageEvent where
  toJSVal = return . unStorageEvent
  {-# INLINE toJSVal #-}

instance FromJSVal StorageEvent where
  fromJSVal v = fmap StorageEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject StorageEvent where
  makeObject = makeObject . unStorageEvent

instance IsEvent StorageEvent
instance IsGObject StorageEvent where
  typeGType _ = gTypeStorageEvent
  {-# INLINE typeGType #-}

gTypeStorageEvent :: JSM GType
gTypeStorageEvent = GType . Object <$> jsg "StorageEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.StorageInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo Mozilla StorageInfo documentation>
newtype StorageInfo = StorageInfo { unStorageInfo :: JSVal }

instance PToJSVal StorageInfo where
  pToJSVal = unStorageInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal StorageInfo where
  pFromJSVal = StorageInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal StorageInfo where
  toJSVal = return . unStorageInfo
  {-# INLINE toJSVal #-}

instance FromJSVal StorageInfo where
  fromJSVal v = fmap StorageInfo <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject StorageInfo where
  makeObject = makeObject . unStorageInfo

instance IsGObject StorageInfo where
  typeGType _ = gTypeStorageInfo
  {-# INLINE typeGType #-}

gTypeStorageInfo :: JSM GType
gTypeStorageInfo = GType . Object <$> jsg "StorageInfo"
#else
#ifndef USE_OLD_WEBKIT
type IsStorageInfo o = StorageInfoClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.StorageQuota".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota Mozilla StorageQuota documentation>
newtype StorageQuota = StorageQuota { unStorageQuota :: JSVal }

instance PToJSVal StorageQuota where
  pToJSVal = unStorageQuota
  {-# INLINE pToJSVal #-}

instance PFromJSVal StorageQuota where
  pFromJSVal = StorageQuota
  {-# INLINE pFromJSVal #-}

instance ToJSVal StorageQuota where
  toJSVal = return . unStorageQuota
  {-# INLINE toJSVal #-}

instance FromJSVal StorageQuota where
  fromJSVal v = fmap StorageQuota <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject StorageQuota where
  makeObject = makeObject . unStorageQuota

instance IsGObject StorageQuota where
  typeGType _ = gTypeStorageQuota
  {-# INLINE typeGType #-}

gTypeStorageQuota :: JSM GType
gTypeStorageQuota = GType . Object <$> jsg "StorageQuota"
#else
#ifndef USE_OLD_WEBKIT
type IsStorageQuota o = StorageQuotaClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.StyleMedia".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia Mozilla StyleMedia documentation>
newtype StyleMedia = StyleMedia { unStyleMedia :: JSVal }

instance PToJSVal StyleMedia where
  pToJSVal = unStyleMedia
  {-# INLINE pToJSVal #-}

instance PFromJSVal StyleMedia where
  pFromJSVal = StyleMedia
  {-# INLINE pFromJSVal #-}

instance ToJSVal StyleMedia where
  toJSVal = return . unStyleMedia
  {-# INLINE toJSVal #-}

instance FromJSVal StyleMedia where
  fromJSVal v = fmap StyleMedia <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject StyleMedia where
  makeObject = makeObject . unStyleMedia

instance IsGObject StyleMedia where
  typeGType _ = gTypeStyleMedia
  {-# INLINE typeGType #-}

gTypeStyleMedia :: JSM GType
gTypeStyleMedia = GType . Object <$> jsg "StyleMedia"
#else
type IsStyleMedia o = StyleMediaClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.StyleSheet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet Mozilla StyleSheet documentation>
newtype StyleSheet = StyleSheet { unStyleSheet :: JSVal }

instance PToJSVal StyleSheet where
  pToJSVal = unStyleSheet
  {-# INLINE pToJSVal #-}

instance PFromJSVal StyleSheet where
  pFromJSVal = StyleSheet
  {-# INLINE pFromJSVal #-}

instance ToJSVal StyleSheet where
  toJSVal = return . unStyleSheet
  {-# INLINE toJSVal #-}

instance FromJSVal StyleSheet where
  fromJSVal v = fmap StyleSheet <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject StyleSheet where
  makeObject = makeObject . unStyleSheet

class IsGObject o => IsStyleSheet o
toStyleSheet :: IsStyleSheet o => o -> StyleSheet
toStyleSheet = StyleSheet . coerce

instance IsStyleSheet StyleSheet
instance IsGObject StyleSheet where
  typeGType _ = gTypeStyleSheet
  {-# INLINE typeGType #-}

gTypeStyleSheet :: JSM GType
gTypeStyleSheet = GType . Object <$> jsg "StyleSheet"
#else
type IsStyleSheet o = StyleSheetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.StyleSheetList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList Mozilla StyleSheetList documentation>
newtype StyleSheetList = StyleSheetList { unStyleSheetList :: JSVal }

instance PToJSVal StyleSheetList where
  pToJSVal = unStyleSheetList
  {-# INLINE pToJSVal #-}

instance PFromJSVal StyleSheetList where
  pFromJSVal = StyleSheetList
  {-# INLINE pFromJSVal #-}

instance ToJSVal StyleSheetList where
  toJSVal = return . unStyleSheetList
  {-# INLINE toJSVal #-}

instance FromJSVal StyleSheetList where
  fromJSVal v = fmap StyleSheetList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject StyleSheetList where
  makeObject = makeObject . unStyleSheetList

instance IsGObject StyleSheetList where
  typeGType _ = gTypeStyleSheetList
  {-# INLINE typeGType #-}

gTypeStyleSheetList :: JSM GType
gTypeStyleSheetList = GType . Object <$> jsg "StyleSheetList"
#else
type IsStyleSheetList o = StyleSheetListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.SubtleCrypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto Mozilla WebKitSubtleCrypto documentation>
newtype SubtleCrypto = SubtleCrypto { unSubtleCrypto :: JSVal }

instance PToJSVal SubtleCrypto where
  pToJSVal = unSubtleCrypto
  {-# INLINE pToJSVal #-}

instance PFromJSVal SubtleCrypto where
  pFromJSVal = SubtleCrypto
  {-# INLINE pFromJSVal #-}

instance ToJSVal SubtleCrypto where
  toJSVal = return . unSubtleCrypto
  {-# INLINE toJSVal #-}

instance FromJSVal SubtleCrypto where
  fromJSVal v = fmap SubtleCrypto <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject SubtleCrypto where
  makeObject = makeObject . unSubtleCrypto

instance IsGObject SubtleCrypto where
  typeGType _ = gTypeSubtleCrypto
  {-# INLINE typeGType #-}

gTypeSubtleCrypto :: JSM GType
gTypeSubtleCrypto = GType . Object <$> jsg "WebKitSubtleCrypto"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Text".
-- Base interface functions are in:
--
--     * "JSDOM.CharacterData"
--     * "JSDOM.Node"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation>
newtype Text = Text { unText :: JSVal }

instance PToJSVal Text where
  pToJSVal = unText
  {-# INLINE pToJSVal #-}

instance PFromJSVal Text where
  pFromJSVal = Text
  {-# INLINE pFromJSVal #-}

instance ToJSVal Text where
  toJSVal = return . unText
  {-# INLINE toJSVal #-}

instance FromJSVal Text where
  fromJSVal v = fmap Text <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Text where
  makeObject = makeObject . unText

class IsCharacterData o => IsText o
toText :: IsText o => o -> Text
toText = Text . coerce

instance IsText Text
instance IsCharacterData Text
instance IsNode Text
instance IsEventTarget Text
instance IsGObject Text where
  typeGType _ = gTypeText
  {-# INLINE typeGType #-}

gTypeText :: JSM GType
gTypeText = GType . Object <$> jsg "Text"
#else
type IsText o = TextClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TextEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent Mozilla TextEvent documentation>
newtype TextEvent = TextEvent { unTextEvent :: JSVal }

instance PToJSVal TextEvent where
  pToJSVal = unTextEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextEvent where
  pFromJSVal = TextEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextEvent where
  toJSVal = return . unTextEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TextEvent where
  fromJSVal v = fmap TextEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TextEvent where
  makeObject = makeObject . unTextEvent

instance IsUIEvent TextEvent
instance IsEvent TextEvent
instance IsGObject TextEvent where
  typeGType _ = gTypeTextEvent
  {-# INLINE typeGType #-}

gTypeTextEvent :: JSM GType
gTypeTextEvent = GType . Object <$> jsg "TextEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TextMetrics".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics Mozilla TextMetrics documentation>
newtype TextMetrics = TextMetrics { unTextMetrics :: JSVal }

instance PToJSVal TextMetrics where
  pToJSVal = unTextMetrics
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextMetrics where
  pFromJSVal = TextMetrics
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextMetrics where
  toJSVal = return . unTextMetrics
  {-# INLINE toJSVal #-}

instance FromJSVal TextMetrics where
  fromJSVal v = fmap TextMetrics <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TextMetrics where
  makeObject = makeObject . unTextMetrics

instance IsGObject TextMetrics where
  typeGType _ = gTypeTextMetrics
  {-# INLINE typeGType #-}

gTypeTextMetrics :: JSM GType
gTypeTextMetrics = GType . Object <$> jsg "TextMetrics"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TextTrack".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack Mozilla TextTrack documentation>
newtype TextTrack = TextTrack { unTextTrack :: JSVal }

instance PToJSVal TextTrack where
  pToJSVal = unTextTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrack where
  pFromJSVal = TextTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrack where
  toJSVal = return . unTextTrack
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrack where
  fromJSVal v = fmap TextTrack <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TextTrack where
  makeObject = makeObject . unTextTrack

instance IsEventTarget TextTrack
instance IsGObject TextTrack where
  typeGType _ = gTypeTextTrack
  {-# INLINE typeGType #-}

gTypeTextTrack :: JSM GType
gTypeTextTrack = GType . Object <$> jsg "TextTrack"
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrack o = TextTrackClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TextTrackCue".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation>
newtype TextTrackCue = TextTrackCue { unTextTrackCue :: JSVal }

instance PToJSVal TextTrackCue where
  pToJSVal = unTextTrackCue
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrackCue where
  pFromJSVal = TextTrackCue
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrackCue where
  toJSVal = return . unTextTrackCue
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrackCue where
  fromJSVal v = fmap TextTrackCue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TextTrackCue where
  makeObject = makeObject . unTextTrackCue

class IsEventTarget o => IsTextTrackCue o
toTextTrackCue :: IsTextTrackCue o => o -> TextTrackCue
toTextTrackCue = TextTrackCue . coerce

instance IsTextTrackCue TextTrackCue
instance IsEventTarget TextTrackCue
instance IsGObject TextTrackCue where
  typeGType _ = gTypeTextTrackCue
  {-# INLINE typeGType #-}

gTypeTextTrackCue :: JSM GType
gTypeTextTrackCue = GType . Object <$> jsg "TextTrackCue"
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrackCue o = TextTrackCueClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TextTrackCueList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList Mozilla TextTrackCueList documentation>
newtype TextTrackCueList = TextTrackCueList { unTextTrackCueList :: JSVal }

instance PToJSVal TextTrackCueList where
  pToJSVal = unTextTrackCueList
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrackCueList where
  pFromJSVal = TextTrackCueList
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrackCueList where
  toJSVal = return . unTextTrackCueList
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrackCueList where
  fromJSVal v = fmap TextTrackCueList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TextTrackCueList where
  makeObject = makeObject . unTextTrackCueList

instance IsGObject TextTrackCueList where
  typeGType _ = gTypeTextTrackCueList
  {-# INLINE typeGType #-}

gTypeTextTrackCueList :: JSM GType
gTypeTextTrackCueList = GType . Object <$> jsg "TextTrackCueList"
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrackCueList o = TextTrackCueListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TextTrackList".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList Mozilla TextTrackList documentation>
newtype TextTrackList = TextTrackList { unTextTrackList :: JSVal }

instance PToJSVal TextTrackList where
  pToJSVal = unTextTrackList
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrackList where
  pFromJSVal = TextTrackList
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrackList where
  toJSVal = return . unTextTrackList
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrackList where
  fromJSVal v = fmap TextTrackList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TextTrackList where
  makeObject = makeObject . unTextTrackList

instance IsEventTarget TextTrackList
instance IsGObject TextTrackList where
  typeGType _ = gTypeTextTrackList
  {-# INLINE typeGType #-}

gTypeTextTrackList :: JSM GType
gTypeTextTrackList = GType . Object <$> jsg "TextTrackList"
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrackList o = TextTrackListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TimeRanges".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges Mozilla TimeRanges documentation>
newtype TimeRanges = TimeRanges { unTimeRanges :: JSVal }

instance PToJSVal TimeRanges where
  pToJSVal = unTimeRanges
  {-# INLINE pToJSVal #-}

instance PFromJSVal TimeRanges where
  pFromJSVal = TimeRanges
  {-# INLINE pFromJSVal #-}

instance ToJSVal TimeRanges where
  toJSVal = return . unTimeRanges
  {-# INLINE toJSVal #-}

instance FromJSVal TimeRanges where
  fromJSVal v = fmap TimeRanges <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TimeRanges where
  makeObject = makeObject . unTimeRanges

instance IsGObject TimeRanges where
  typeGType _ = gTypeTimeRanges
  {-# INLINE typeGType #-}

gTypeTimeRanges :: JSM GType
gTypeTimeRanges = GType . Object <$> jsg "TimeRanges"
#else
type IsTimeRanges o = TimeRangesClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Touch".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Touch Mozilla Touch documentation>
newtype Touch = Touch { unTouch :: JSVal }

instance PToJSVal Touch where
  pToJSVal = unTouch
  {-# INLINE pToJSVal #-}

instance PFromJSVal Touch where
  pFromJSVal = Touch
  {-# INLINE pFromJSVal #-}

instance ToJSVal Touch where
  toJSVal = return . unTouch
  {-# INLINE toJSVal #-}

instance FromJSVal Touch where
  fromJSVal v = fmap Touch <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Touch where
  makeObject = makeObject . unTouch

instance IsGObject Touch where
  typeGType _ = gTypeTouch
  {-# INLINE typeGType #-}

gTypeTouch :: JSM GType
gTypeTouch = GType . Object <$> jsg "Touch"
#else
#ifndef USE_OLD_WEBKIT
type IsTouch o = TouchClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TouchEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent Mozilla TouchEvent documentation>
newtype TouchEvent = TouchEvent { unTouchEvent :: JSVal }

instance PToJSVal TouchEvent where
  pToJSVal = unTouchEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TouchEvent where
  pFromJSVal = TouchEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TouchEvent where
  toJSVal = return . unTouchEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TouchEvent where
  fromJSVal v = fmap TouchEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TouchEvent where
  makeObject = makeObject . unTouchEvent

instance IsUIEvent TouchEvent
instance IsEvent TouchEvent
instance IsGObject TouchEvent where
  typeGType _ = gTypeTouchEvent
  {-# INLINE typeGType #-}

gTypeTouchEvent :: JSM GType
gTypeTouchEvent = GType . Object <$> jsg "TouchEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TouchList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TouchList Mozilla TouchList documentation>
newtype TouchList = TouchList { unTouchList :: JSVal }

instance PToJSVal TouchList where
  pToJSVal = unTouchList
  {-# INLINE pToJSVal #-}

instance PFromJSVal TouchList where
  pFromJSVal = TouchList
  {-# INLINE pFromJSVal #-}

instance ToJSVal TouchList where
  toJSVal = return . unTouchList
  {-# INLINE toJSVal #-}

instance FromJSVal TouchList where
  fromJSVal v = fmap TouchList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TouchList where
  makeObject = makeObject . unTouchList

instance IsGObject TouchList where
  typeGType _ = gTypeTouchList
  {-# INLINE typeGType #-}

gTypeTouchList :: JSM GType
gTypeTouchList = GType . Object <$> jsg "TouchList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TrackEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent Mozilla TrackEvent documentation>
newtype TrackEvent = TrackEvent { unTrackEvent :: JSVal }

instance PToJSVal TrackEvent where
  pToJSVal = unTrackEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TrackEvent where
  pFromJSVal = TrackEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TrackEvent where
  toJSVal = return . unTrackEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TrackEvent where
  fromJSVal v = fmap TrackEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TrackEvent where
  makeObject = makeObject . unTrackEvent

instance IsEvent TrackEvent
instance IsGObject TrackEvent where
  typeGType _ = gTypeTrackEvent
  {-# INLINE typeGType #-}

gTypeTrackEvent :: JSM GType
gTypeTrackEvent = GType . Object <$> jsg "TrackEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TransitionEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent Mozilla TransitionEvent documentation>
newtype TransitionEvent = TransitionEvent { unTransitionEvent :: JSVal }

instance PToJSVal TransitionEvent where
  pToJSVal = unTransitionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TransitionEvent where
  pFromJSVal = TransitionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TransitionEvent where
  toJSVal = return . unTransitionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TransitionEvent where
  fromJSVal v = fmap TransitionEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TransitionEvent where
  makeObject = makeObject . unTransitionEvent

instance IsEvent TransitionEvent
instance IsGObject TransitionEvent where
  typeGType _ = gTypeTransitionEvent
  {-# INLINE typeGType #-}

gTypeTransitionEvent :: JSM GType
gTypeTransitionEvent = GType . Object <$> jsg "TransitionEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TreeWalker".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker Mozilla TreeWalker documentation>
newtype TreeWalker = TreeWalker { unTreeWalker :: JSVal }

instance PToJSVal TreeWalker where
  pToJSVal = unTreeWalker
  {-# INLINE pToJSVal #-}

instance PFromJSVal TreeWalker where
  pFromJSVal = TreeWalker
  {-# INLINE pFromJSVal #-}

instance ToJSVal TreeWalker where
  toJSVal = return . unTreeWalker
  {-# INLINE toJSVal #-}

instance FromJSVal TreeWalker where
  fromJSVal v = fmap TreeWalker <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TreeWalker where
  makeObject = makeObject . unTreeWalker

instance IsGObject TreeWalker where
  typeGType _ = gTypeTreeWalker
  {-# INLINE typeGType #-}

gTypeTreeWalker :: JSM GType
gTypeTreeWalker = GType . Object <$> jsg "TreeWalker"
#else
type IsTreeWalker o = TreeWalkerClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.TypeConversions".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions Mozilla TypeConversions documentation>
newtype TypeConversions = TypeConversions { unTypeConversions :: JSVal }

instance PToJSVal TypeConversions where
  pToJSVal = unTypeConversions
  {-# INLINE pToJSVal #-}

instance PFromJSVal TypeConversions where
  pFromJSVal = TypeConversions
  {-# INLINE pFromJSVal #-}

instance ToJSVal TypeConversions where
  toJSVal = return . unTypeConversions
  {-# INLINE toJSVal #-}

instance FromJSVal TypeConversions where
  fromJSVal v = fmap TypeConversions <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject TypeConversions where
  makeObject = makeObject . unTypeConversions

instance IsGObject TypeConversions where
  typeGType _ = gTypeTypeConversions
  {-# INLINE typeGType #-}

gTypeTypeConversions :: JSM GType
gTypeTypeConversions = GType . Object <$> jsg "TypeConversions"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.UIEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent Mozilla UIEvent documentation>
newtype UIEvent = UIEvent { unUIEvent :: JSVal }

instance PToJSVal UIEvent where
  pToJSVal = unUIEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal UIEvent where
  pFromJSVal = UIEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal UIEvent where
  toJSVal = return . unUIEvent
  {-# INLINE toJSVal #-}

instance FromJSVal UIEvent where
  fromJSVal v = fmap UIEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject UIEvent where
  makeObject = makeObject . unUIEvent

class IsEvent o => IsUIEvent o
toUIEvent :: IsUIEvent o => o -> UIEvent
toUIEvent = UIEvent . coerce

instance IsUIEvent UIEvent
instance IsEvent UIEvent
instance IsGObject UIEvent where
  typeGType _ = gTypeUIEvent
  {-# INLINE typeGType #-}

gTypeUIEvent :: JSM GType
gTypeUIEvent = GType . Object <$> jsg "UIEvent"
#else
type IsUIEvent o = UIEventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.UIRequestEvent".
-- Base interface functions are in:
--
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UIRequestEvent Mozilla UIRequestEvent documentation>
newtype UIRequestEvent = UIRequestEvent { unUIRequestEvent :: JSVal }

instance PToJSVal UIRequestEvent where
  pToJSVal = unUIRequestEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal UIRequestEvent where
  pFromJSVal = UIRequestEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal UIRequestEvent where
  toJSVal = return . unUIRequestEvent
  {-# INLINE toJSVal #-}

instance FromJSVal UIRequestEvent where
  fromJSVal v = fmap UIRequestEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject UIRequestEvent where
  makeObject = makeObject . unUIRequestEvent

instance IsUIEvent UIRequestEvent
instance IsEvent UIRequestEvent
instance IsGObject UIRequestEvent where
  typeGType _ = gTypeUIRequestEvent
  {-# INLINE typeGType #-}

gTypeUIRequestEvent :: JSM GType
gTypeUIRequestEvent = GType . Object <$> jsg "UIRequestEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.URL".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation>
newtype URL = URL { unURL :: JSVal }

instance PToJSVal URL where
  pToJSVal = unURL
  {-# INLINE pToJSVal #-}

instance PFromJSVal URL where
  pFromJSVal = URL
  {-# INLINE pFromJSVal #-}

instance ToJSVal URL where
  toJSVal = return . unURL
  {-# INLINE toJSVal #-}

instance FromJSVal URL where
  fromJSVal v = fmap URL <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject URL where
  makeObject = makeObject . unURL

instance IsGObject URL where
  typeGType _ = gTypeURL
  {-# INLINE typeGType #-}

gTypeURL :: JSM GType
gTypeURL = GType . Object <$> jsg "URL"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.URLUtils".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils Mozilla URLUtils documentation>
newtype URLUtils = URLUtils { unURLUtils :: JSVal }

instance PToJSVal URLUtils where
  pToJSVal = unURLUtils
  {-# INLINE pToJSVal #-}

instance PFromJSVal URLUtils where
  pFromJSVal = URLUtils
  {-# INLINE pFromJSVal #-}

instance ToJSVal URLUtils where
  toJSVal = return . unURLUtils
  {-# INLINE toJSVal #-}

instance FromJSVal URLUtils where
  fromJSVal v = fmap URLUtils <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject URLUtils where
  makeObject = makeObject . unURLUtils

instance IsGObject URLUtils where
  typeGType _ = gTypeURLUtils
  {-# INLINE typeGType #-}

gTypeURLUtils :: JSM GType
gTypeURLUtils = GType . Object <$> jsg "URLUtils"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.UserMessageHandler".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandler Mozilla UserMessageHandler documentation>
newtype UserMessageHandler = UserMessageHandler { unUserMessageHandler :: JSVal }

instance PToJSVal UserMessageHandler where
  pToJSVal = unUserMessageHandler
  {-# INLINE pToJSVal #-}

instance PFromJSVal UserMessageHandler where
  pFromJSVal = UserMessageHandler
  {-# INLINE pFromJSVal #-}

instance ToJSVal UserMessageHandler where
  toJSVal = return . unUserMessageHandler
  {-# INLINE toJSVal #-}

instance FromJSVal UserMessageHandler where
  fromJSVal v = fmap UserMessageHandler <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject UserMessageHandler where
  makeObject = makeObject . unUserMessageHandler

instance IsGObject UserMessageHandler where
  typeGType _ = gTypeUserMessageHandler
  {-# INLINE typeGType #-}

gTypeUserMessageHandler :: JSM GType
gTypeUserMessageHandler = GType . Object <$> jsg "UserMessageHandler"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.UserMessageHandlersNamespace".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandlersNamespace Mozilla UserMessageHandlersNamespace documentation>
newtype UserMessageHandlersNamespace = UserMessageHandlersNamespace { unUserMessageHandlersNamespace :: JSVal }

instance PToJSVal UserMessageHandlersNamespace where
  pToJSVal = unUserMessageHandlersNamespace
  {-# INLINE pToJSVal #-}

instance PFromJSVal UserMessageHandlersNamespace where
  pFromJSVal = UserMessageHandlersNamespace
  {-# INLINE pFromJSVal #-}

instance ToJSVal UserMessageHandlersNamespace where
  toJSVal = return . unUserMessageHandlersNamespace
  {-# INLINE toJSVal #-}

instance FromJSVal UserMessageHandlersNamespace where
  fromJSVal v = fmap UserMessageHandlersNamespace <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject UserMessageHandlersNamespace where
  makeObject = makeObject . unUserMessageHandlersNamespace

instance IsGObject UserMessageHandlersNamespace where
  typeGType _ = gTypeUserMessageHandlersNamespace
  {-# INLINE typeGType #-}

gTypeUserMessageHandlersNamespace :: JSM GType
gTypeUserMessageHandlersNamespace = GType . Object <$> jsg "UserMessageHandlersNamespace"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.VTTCue".
-- Base interface functions are in:
--
--     * "JSDOM.TextTrackCue"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation>
newtype VTTCue = VTTCue { unVTTCue :: JSVal }

instance PToJSVal VTTCue where
  pToJSVal = unVTTCue
  {-# INLINE pToJSVal #-}

instance PFromJSVal VTTCue where
  pFromJSVal = VTTCue
  {-# INLINE pFromJSVal #-}

instance ToJSVal VTTCue where
  toJSVal = return . unVTTCue
  {-# INLINE toJSVal #-}

instance FromJSVal VTTCue where
  fromJSVal v = fmap VTTCue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject VTTCue where
  makeObject = makeObject . unVTTCue

instance IsTextTrackCue VTTCue
instance IsEventTarget VTTCue
instance IsGObject VTTCue where
  typeGType _ = gTypeVTTCue
  {-# INLINE typeGType #-}

gTypeVTTCue :: JSM GType
gTypeVTTCue = GType . Object <$> jsg "VTTCue"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.VTTRegion".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion Mozilla VTTRegion documentation>
newtype VTTRegion = VTTRegion { unVTTRegion :: JSVal }

instance PToJSVal VTTRegion where
  pToJSVal = unVTTRegion
  {-# INLINE pToJSVal #-}

instance PFromJSVal VTTRegion where
  pFromJSVal = VTTRegion
  {-# INLINE pFromJSVal #-}

instance ToJSVal VTTRegion where
  toJSVal = return . unVTTRegion
  {-# INLINE toJSVal #-}

instance FromJSVal VTTRegion where
  fromJSVal v = fmap VTTRegion <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject VTTRegion where
  makeObject = makeObject . unVTTRegion

instance IsGObject VTTRegion where
  typeGType _ = gTypeVTTRegion
  {-# INLINE typeGType #-}

gTypeVTTRegion :: JSM GType
gTypeVTTRegion = GType . Object <$> jsg "VTTRegion"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.VTTRegionList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList Mozilla VTTRegionList documentation>
newtype VTTRegionList = VTTRegionList { unVTTRegionList :: JSVal }

instance PToJSVal VTTRegionList where
  pToJSVal = unVTTRegionList
  {-# INLINE pToJSVal #-}

instance PFromJSVal VTTRegionList where
  pFromJSVal = VTTRegionList
  {-# INLINE pFromJSVal #-}

instance ToJSVal VTTRegionList where
  toJSVal = return . unVTTRegionList
  {-# INLINE toJSVal #-}

instance FromJSVal VTTRegionList where
  fromJSVal v = fmap VTTRegionList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject VTTRegionList where
  makeObject = makeObject . unVTTRegionList

instance IsGObject VTTRegionList where
  typeGType _ = gTypeVTTRegionList
  {-# INLINE typeGType #-}

gTypeVTTRegionList :: JSM GType
gTypeVTTRegionList = GType . Object <$> jsg "VTTRegionList"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.ValidityState".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState Mozilla ValidityState documentation>
newtype ValidityState = ValidityState { unValidityState :: JSVal }

instance PToJSVal ValidityState where
  pToJSVal = unValidityState
  {-# INLINE pToJSVal #-}

instance PFromJSVal ValidityState where
  pFromJSVal = ValidityState
  {-# INLINE pFromJSVal #-}

instance ToJSVal ValidityState where
  toJSVal = return . unValidityState
  {-# INLINE toJSVal #-}

instance FromJSVal ValidityState where
  fromJSVal v = fmap ValidityState <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject ValidityState where
  makeObject = makeObject . unValidityState

instance IsGObject ValidityState where
  typeGType _ = gTypeValidityState
  {-# INLINE typeGType #-}

gTypeValidityState :: JSM GType
gTypeValidityState = GType . Object <$> jsg "ValidityState"
#else
type IsValidityState o = ValidityStateClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.VideoPlaybackQuality".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality Mozilla VideoPlaybackQuality documentation>
newtype VideoPlaybackQuality = VideoPlaybackQuality { unVideoPlaybackQuality :: JSVal }

instance PToJSVal VideoPlaybackQuality where
  pToJSVal = unVideoPlaybackQuality
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoPlaybackQuality where
  pFromJSVal = VideoPlaybackQuality
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoPlaybackQuality where
  toJSVal = return . unVideoPlaybackQuality
  {-# INLINE toJSVal #-}

instance FromJSVal VideoPlaybackQuality where
  fromJSVal v = fmap VideoPlaybackQuality <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject VideoPlaybackQuality where
  makeObject = makeObject . unVideoPlaybackQuality

instance IsGObject VideoPlaybackQuality where
  typeGType _ = gTypeVideoPlaybackQuality
  {-# INLINE typeGType #-}

gTypeVideoPlaybackQuality :: JSM GType
gTypeVideoPlaybackQuality = GType . Object <$> jsg "VideoPlaybackQuality"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.VideoStreamTrack".
-- Base interface functions are in:
--
--     * "JSDOM.MediaStreamTrack"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoStreamTrack Mozilla VideoStreamTrack documentation>
newtype VideoStreamTrack = VideoStreamTrack { unVideoStreamTrack :: JSVal }

instance PToJSVal VideoStreamTrack where
  pToJSVal = unVideoStreamTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoStreamTrack where
  pFromJSVal = VideoStreamTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoStreamTrack where
  toJSVal = return . unVideoStreamTrack
  {-# INLINE toJSVal #-}

instance FromJSVal VideoStreamTrack where
  fromJSVal v = fmap VideoStreamTrack <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject VideoStreamTrack where
  makeObject = makeObject . unVideoStreamTrack

instance IsMediaStreamTrack VideoStreamTrack
instance IsEventTarget VideoStreamTrack
instance IsGObject VideoStreamTrack where
  typeGType _ = gTypeVideoStreamTrack
  {-# INLINE typeGType #-}

gTypeVideoStreamTrack :: JSM GType
gTypeVideoStreamTrack = GType . Object <$> jsg "VideoStreamTrack"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.VideoTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack Mozilla VideoTrack documentation>
newtype VideoTrack = VideoTrack { unVideoTrack :: JSVal }

instance PToJSVal VideoTrack where
  pToJSVal = unVideoTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoTrack where
  pFromJSVal = VideoTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoTrack where
  toJSVal = return . unVideoTrack
  {-# INLINE toJSVal #-}

instance FromJSVal VideoTrack where
  fromJSVal v = fmap VideoTrack <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject VideoTrack where
  makeObject = makeObject . unVideoTrack

instance IsGObject VideoTrack where
  typeGType _ = gTypeVideoTrack
  {-# INLINE typeGType #-}

gTypeVideoTrack :: JSM GType
gTypeVideoTrack = GType . Object <$> jsg "VideoTrack"
#else
#ifndef USE_OLD_WEBKIT
type IsVideoTrack o = VideoTrackClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.VideoTrackList".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList Mozilla VideoTrackList documentation>
newtype VideoTrackList = VideoTrackList { unVideoTrackList :: JSVal }

instance PToJSVal VideoTrackList where
  pToJSVal = unVideoTrackList
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoTrackList where
  pFromJSVal = VideoTrackList
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoTrackList where
  toJSVal = return . unVideoTrackList
  {-# INLINE toJSVal #-}

instance FromJSVal VideoTrackList where
  fromJSVal v = fmap VideoTrackList <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject VideoTrackList where
  makeObject = makeObject . unVideoTrackList

instance IsEventTarget VideoTrackList
instance IsGObject VideoTrackList where
  typeGType _ = gTypeVideoTrackList
  {-# INLINE typeGType #-}

gTypeVideoTrackList :: JSM GType
gTypeVideoTrackList = GType . Object <$> jsg "VideoTrackList"
#else
#ifndef USE_OLD_WEBKIT
type IsVideoTrackList o = VideoTrackListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WaveShaperNode".
-- Base interface functions are in:
--
--     * "JSDOM.AudioNode"
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode Mozilla WaveShaperNode documentation>
newtype WaveShaperNode = WaveShaperNode { unWaveShaperNode :: JSVal }

instance PToJSVal WaveShaperNode where
  pToJSVal = unWaveShaperNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal WaveShaperNode where
  pFromJSVal = WaveShaperNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal WaveShaperNode where
  toJSVal = return . unWaveShaperNode
  {-# INLINE toJSVal #-}

instance FromJSVal WaveShaperNode where
  fromJSVal v = fmap WaveShaperNode <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WaveShaperNode where
  makeObject = makeObject . unWaveShaperNode

instance IsAudioNode WaveShaperNode
instance IsEventTarget WaveShaperNode
instance IsGObject WaveShaperNode where
  typeGType _ = gTypeWaveShaperNode
  {-# INLINE typeGType #-}

gTypeWaveShaperNode :: JSM GType
gTypeWaveShaperNode = GType . Object <$> jsg "WaveShaperNode"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGL2RenderingContext".
-- Base interface functions are in:
--
--     * "JSDOM.WebGLRenderingContextBase"
--     * "JSDOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext Mozilla WebGL2RenderingContext documentation>
newtype WebGL2RenderingContext = WebGL2RenderingContext { unWebGL2RenderingContext :: JSVal }

instance PToJSVal WebGL2RenderingContext where
  pToJSVal = unWebGL2RenderingContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGL2RenderingContext where
  pFromJSVal = WebGL2RenderingContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGL2RenderingContext where
  toJSVal = return . unWebGL2RenderingContext
  {-# INLINE toJSVal #-}

instance FromJSVal WebGL2RenderingContext where
  fromJSVal v = fmap WebGL2RenderingContext <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGL2RenderingContext where
  makeObject = makeObject . unWebGL2RenderingContext

instance IsWebGLRenderingContextBase WebGL2RenderingContext
instance IsCanvasRenderingContext WebGL2RenderingContext
instance IsGObject WebGL2RenderingContext where
  typeGType _ = gTypeWebGL2RenderingContext
  {-# INLINE typeGType #-}

gTypeWebGL2RenderingContext :: JSM GType
gTypeWebGL2RenderingContext = GType . Object <$> jsg "WebGL2RenderingContext"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLActiveInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo Mozilla WebGLActiveInfo documentation>
newtype WebGLActiveInfo = WebGLActiveInfo { unWebGLActiveInfo :: JSVal }

instance PToJSVal WebGLActiveInfo where
  pToJSVal = unWebGLActiveInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLActiveInfo where
  pFromJSVal = WebGLActiveInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLActiveInfo where
  toJSVal = return . unWebGLActiveInfo
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLActiveInfo where
  fromJSVal v = fmap WebGLActiveInfo <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLActiveInfo where
  makeObject = makeObject . unWebGLActiveInfo

instance IsGObject WebGLActiveInfo where
  typeGType _ = gTypeWebGLActiveInfo
  {-# INLINE typeGType #-}

gTypeWebGLActiveInfo :: JSM GType
gTypeWebGLActiveInfo = GType . Object <$> jsg "WebGLActiveInfo"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLBuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLBuffer Mozilla WebGLBuffer documentation>
newtype WebGLBuffer = WebGLBuffer { unWebGLBuffer :: JSVal }

instance PToJSVal WebGLBuffer where
  pToJSVal = unWebGLBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLBuffer where
  pFromJSVal = WebGLBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLBuffer where
  toJSVal = return . unWebGLBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLBuffer where
  fromJSVal v = fmap WebGLBuffer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLBuffer where
  makeObject = makeObject . unWebGLBuffer

instance IsGObject WebGLBuffer where
  typeGType _ = gTypeWebGLBuffer
  {-# INLINE typeGType #-}

gTypeWebGLBuffer :: JSM GType
gTypeWebGLBuffer = GType . Object <$> jsg "WebGLBuffer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLCompressedTextureATC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTextureATC Mozilla WebGLCompressedTextureATC documentation>
newtype WebGLCompressedTextureATC = WebGLCompressedTextureATC { unWebGLCompressedTextureATC :: JSVal }

instance PToJSVal WebGLCompressedTextureATC where
  pToJSVal = unWebGLCompressedTextureATC
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLCompressedTextureATC where
  pFromJSVal = WebGLCompressedTextureATC
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLCompressedTextureATC where
  toJSVal = return . unWebGLCompressedTextureATC
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLCompressedTextureATC where
  fromJSVal v = fmap WebGLCompressedTextureATC <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLCompressedTextureATC where
  makeObject = makeObject . unWebGLCompressedTextureATC

instance IsGObject WebGLCompressedTextureATC where
  typeGType _ = gTypeWebGLCompressedTextureATC
  {-# INLINE typeGType #-}

gTypeWebGLCompressedTextureATC :: JSM GType
gTypeWebGLCompressedTextureATC = GType . Object <$> jsg "WebGLCompressedTextureATC"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLCompressedTexturePVRTC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTexturePVRTC Mozilla WebGLCompressedTexturePVRTC documentation>
newtype WebGLCompressedTexturePVRTC = WebGLCompressedTexturePVRTC { unWebGLCompressedTexturePVRTC :: JSVal }

instance PToJSVal WebGLCompressedTexturePVRTC where
  pToJSVal = unWebGLCompressedTexturePVRTC
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLCompressedTexturePVRTC where
  pFromJSVal = WebGLCompressedTexturePVRTC
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLCompressedTexturePVRTC where
  toJSVal = return . unWebGLCompressedTexturePVRTC
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLCompressedTexturePVRTC where
  fromJSVal v = fmap WebGLCompressedTexturePVRTC <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLCompressedTexturePVRTC where
  makeObject = makeObject . unWebGLCompressedTexturePVRTC

instance IsGObject WebGLCompressedTexturePVRTC where
  typeGType _ = gTypeWebGLCompressedTexturePVRTC
  {-# INLINE typeGType #-}

gTypeWebGLCompressedTexturePVRTC :: JSM GType
gTypeWebGLCompressedTexturePVRTC = GType . Object <$> jsg "WebGLCompressedTexturePVRTC"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLCompressedTextureS3TC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTextureS3TC Mozilla WebGLCompressedTextureS3TC documentation>
newtype WebGLCompressedTextureS3TC = WebGLCompressedTextureS3TC { unWebGLCompressedTextureS3TC :: JSVal }

instance PToJSVal WebGLCompressedTextureS3TC where
  pToJSVal = unWebGLCompressedTextureS3TC
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLCompressedTextureS3TC where
  pFromJSVal = WebGLCompressedTextureS3TC
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLCompressedTextureS3TC where
  toJSVal = return . unWebGLCompressedTextureS3TC
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLCompressedTextureS3TC where
  fromJSVal v = fmap WebGLCompressedTextureS3TC <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLCompressedTextureS3TC where
  makeObject = makeObject . unWebGLCompressedTextureS3TC

instance IsGObject WebGLCompressedTextureS3TC where
  typeGType _ = gTypeWebGLCompressedTextureS3TC
  {-# INLINE typeGType #-}

gTypeWebGLCompressedTextureS3TC :: JSM GType
gTypeWebGLCompressedTextureS3TC = GType . Object <$> jsg "WebGLCompressedTextureS3TC"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLContextAttributes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes Mozilla WebGLContextAttributes documentation>
newtype WebGLContextAttributes = WebGLContextAttributes { unWebGLContextAttributes :: JSVal }

instance PToJSVal WebGLContextAttributes where
  pToJSVal = unWebGLContextAttributes
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLContextAttributes where
  pFromJSVal = WebGLContextAttributes
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLContextAttributes where
  toJSVal = return . unWebGLContextAttributes
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLContextAttributes where
  fromJSVal v = fmap WebGLContextAttributes <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLContextAttributes where
  makeObject = makeObject . unWebGLContextAttributes

instance IsGObject WebGLContextAttributes where
  typeGType _ = gTypeWebGLContextAttributes
  {-# INLINE typeGType #-}

gTypeWebGLContextAttributes :: JSM GType
gTypeWebGLContextAttributes = GType . Object <$> jsg "WebGLContextAttributes"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLContextEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent Mozilla WebGLContextEvent documentation>
newtype WebGLContextEvent = WebGLContextEvent { unWebGLContextEvent :: JSVal }

instance PToJSVal WebGLContextEvent where
  pToJSVal = unWebGLContextEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLContextEvent where
  pFromJSVal = WebGLContextEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLContextEvent where
  toJSVal = return . unWebGLContextEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLContextEvent where
  fromJSVal v = fmap WebGLContextEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLContextEvent where
  makeObject = makeObject . unWebGLContextEvent

instance IsEvent WebGLContextEvent
instance IsGObject WebGLContextEvent where
  typeGType _ = gTypeWebGLContextEvent
  {-# INLINE typeGType #-}

gTypeWebGLContextEvent :: JSM GType
gTypeWebGLContextEvent = GType . Object <$> jsg "WebGLContextEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLDebugRendererInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugRendererInfo Mozilla WebGLDebugRendererInfo documentation>
newtype WebGLDebugRendererInfo = WebGLDebugRendererInfo { unWebGLDebugRendererInfo :: JSVal }

instance PToJSVal WebGLDebugRendererInfo where
  pToJSVal = unWebGLDebugRendererInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDebugRendererInfo where
  pFromJSVal = WebGLDebugRendererInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDebugRendererInfo where
  toJSVal = return . unWebGLDebugRendererInfo
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDebugRendererInfo where
  fromJSVal v = fmap WebGLDebugRendererInfo <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLDebugRendererInfo where
  makeObject = makeObject . unWebGLDebugRendererInfo

instance IsGObject WebGLDebugRendererInfo where
  typeGType _ = gTypeWebGLDebugRendererInfo
  {-# INLINE typeGType #-}

gTypeWebGLDebugRendererInfo :: JSM GType
gTypeWebGLDebugRendererInfo = GType . Object <$> jsg "WebGLDebugRendererInfo"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLDebugShaders".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders Mozilla WebGLDebugShaders documentation>
newtype WebGLDebugShaders = WebGLDebugShaders { unWebGLDebugShaders :: JSVal }

instance PToJSVal WebGLDebugShaders where
  pToJSVal = unWebGLDebugShaders
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDebugShaders where
  pFromJSVal = WebGLDebugShaders
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDebugShaders where
  toJSVal = return . unWebGLDebugShaders
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDebugShaders where
  fromJSVal v = fmap WebGLDebugShaders <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLDebugShaders where
  makeObject = makeObject . unWebGLDebugShaders

instance IsGObject WebGLDebugShaders where
  typeGType _ = gTypeWebGLDebugShaders
  {-# INLINE typeGType #-}

gTypeWebGLDebugShaders :: JSM GType
gTypeWebGLDebugShaders = GType . Object <$> jsg "WebGLDebugShaders"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLDepthTexture".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDepthTexture Mozilla WebGLDepthTexture documentation>
newtype WebGLDepthTexture = WebGLDepthTexture { unWebGLDepthTexture :: JSVal }

instance PToJSVal WebGLDepthTexture where
  pToJSVal = unWebGLDepthTexture
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDepthTexture where
  pFromJSVal = WebGLDepthTexture
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDepthTexture where
  toJSVal = return . unWebGLDepthTexture
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDepthTexture where
  fromJSVal v = fmap WebGLDepthTexture <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLDepthTexture where
  makeObject = makeObject . unWebGLDepthTexture

instance IsGObject WebGLDepthTexture where
  typeGType _ = gTypeWebGLDepthTexture
  {-# INLINE typeGType #-}

gTypeWebGLDepthTexture :: JSM GType
gTypeWebGLDepthTexture = GType . Object <$> jsg "WebGLDepthTexture"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLDrawBuffers".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDrawBuffers Mozilla WebGLDrawBuffers documentation>
newtype WebGLDrawBuffers = WebGLDrawBuffers { unWebGLDrawBuffers :: JSVal }

instance PToJSVal WebGLDrawBuffers where
  pToJSVal = unWebGLDrawBuffers
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDrawBuffers where
  pFromJSVal = WebGLDrawBuffers
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDrawBuffers where
  toJSVal = return . unWebGLDrawBuffers
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDrawBuffers where
  fromJSVal v = fmap WebGLDrawBuffers <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLDrawBuffers where
  makeObject = makeObject . unWebGLDrawBuffers

instance IsGObject WebGLDrawBuffers where
  typeGType _ = gTypeWebGLDrawBuffers
  {-# INLINE typeGType #-}

gTypeWebGLDrawBuffers :: JSM GType
gTypeWebGLDrawBuffers = GType . Object <$> jsg "WebGLDrawBuffers"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLFramebuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLFramebuffer Mozilla WebGLFramebuffer documentation>
newtype WebGLFramebuffer = WebGLFramebuffer { unWebGLFramebuffer :: JSVal }

instance PToJSVal WebGLFramebuffer where
  pToJSVal = unWebGLFramebuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLFramebuffer where
  pFromJSVal = WebGLFramebuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLFramebuffer where
  toJSVal = return . unWebGLFramebuffer
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLFramebuffer where
  fromJSVal v = fmap WebGLFramebuffer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLFramebuffer where
  makeObject = makeObject . unWebGLFramebuffer

instance IsGObject WebGLFramebuffer where
  typeGType _ = gTypeWebGLFramebuffer
  {-# INLINE typeGType #-}

gTypeWebGLFramebuffer :: JSM GType
gTypeWebGLFramebuffer = GType . Object <$> jsg "WebGLFramebuffer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLLoseContext".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext Mozilla WebGLLoseContext documentation>
newtype WebGLLoseContext = WebGLLoseContext { unWebGLLoseContext :: JSVal }

instance PToJSVal WebGLLoseContext where
  pToJSVal = unWebGLLoseContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLLoseContext where
  pFromJSVal = WebGLLoseContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLLoseContext where
  toJSVal = return . unWebGLLoseContext
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLLoseContext where
  fromJSVal v = fmap WebGLLoseContext <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLLoseContext where
  makeObject = makeObject . unWebGLLoseContext

instance IsGObject WebGLLoseContext where
  typeGType _ = gTypeWebGLLoseContext
  {-# INLINE typeGType #-}

gTypeWebGLLoseContext :: JSM GType
gTypeWebGLLoseContext = GType . Object <$> jsg "WebGLLoseContext"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLProgram".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLProgram Mozilla WebGLProgram documentation>
newtype WebGLProgram = WebGLProgram { unWebGLProgram :: JSVal }

instance PToJSVal WebGLProgram where
  pToJSVal = unWebGLProgram
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLProgram where
  pFromJSVal = WebGLProgram
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLProgram where
  toJSVal = return . unWebGLProgram
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLProgram where
  fromJSVal v = fmap WebGLProgram <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLProgram where
  makeObject = makeObject . unWebGLProgram

instance IsGObject WebGLProgram where
  typeGType _ = gTypeWebGLProgram
  {-# INLINE typeGType #-}

gTypeWebGLProgram :: JSM GType
gTypeWebGLProgram = GType . Object <$> jsg "WebGLProgram"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLQuery".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLQuery Mozilla WebGLQuery documentation>
newtype WebGLQuery = WebGLQuery { unWebGLQuery :: JSVal }

instance PToJSVal WebGLQuery where
  pToJSVal = unWebGLQuery
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLQuery where
  pFromJSVal = WebGLQuery
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLQuery where
  toJSVal = return . unWebGLQuery
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLQuery where
  fromJSVal v = fmap WebGLQuery <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLQuery where
  makeObject = makeObject . unWebGLQuery

instance IsGObject WebGLQuery where
  typeGType _ = gTypeWebGLQuery
  {-# INLINE typeGType #-}

gTypeWebGLQuery :: JSM GType
gTypeWebGLQuery = GType . Object <$> jsg "WebGLQuery"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLRenderbuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderbuffer Mozilla WebGLRenderbuffer documentation>
newtype WebGLRenderbuffer = WebGLRenderbuffer { unWebGLRenderbuffer :: JSVal }

instance PToJSVal WebGLRenderbuffer where
  pToJSVal = unWebGLRenderbuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLRenderbuffer where
  pFromJSVal = WebGLRenderbuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLRenderbuffer where
  toJSVal = return . unWebGLRenderbuffer
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLRenderbuffer where
  fromJSVal v = fmap WebGLRenderbuffer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLRenderbuffer where
  makeObject = makeObject . unWebGLRenderbuffer

instance IsGObject WebGLRenderbuffer where
  typeGType _ = gTypeWebGLRenderbuffer
  {-# INLINE typeGType #-}

gTypeWebGLRenderbuffer :: JSM GType
gTypeWebGLRenderbuffer = GType . Object <$> jsg "WebGLRenderbuffer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLRenderingContext".
-- Base interface functions are in:
--
--     * "JSDOM.WebGLRenderingContextBase"
--     * "JSDOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext Mozilla WebGLRenderingContext documentation>
newtype WebGLRenderingContext = WebGLRenderingContext { unWebGLRenderingContext :: JSVal }

instance PToJSVal WebGLRenderingContext where
  pToJSVal = unWebGLRenderingContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLRenderingContext where
  pFromJSVal = WebGLRenderingContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLRenderingContext where
  toJSVal = return . unWebGLRenderingContext
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLRenderingContext where
  fromJSVal v = fmap WebGLRenderingContext <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLRenderingContext where
  makeObject = makeObject . unWebGLRenderingContext

instance IsWebGLRenderingContextBase WebGLRenderingContext
instance IsCanvasRenderingContext WebGLRenderingContext
instance IsGObject WebGLRenderingContext where
  typeGType _ = gTypeWebGLRenderingContext
  {-# INLINE typeGType #-}

gTypeWebGLRenderingContext :: JSM GType
gTypeWebGLRenderingContext = GType . Object <$> jsg "WebGLRenderingContext"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLRenderingContextBase".
-- Base interface functions are in:
--
--     * "JSDOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase Mozilla WebGLRenderingContextBase documentation>
newtype WebGLRenderingContextBase = WebGLRenderingContextBase { unWebGLRenderingContextBase :: JSVal }

instance PToJSVal WebGLRenderingContextBase where
  pToJSVal = unWebGLRenderingContextBase
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLRenderingContextBase where
  pFromJSVal = WebGLRenderingContextBase
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLRenderingContextBase where
  toJSVal = return . unWebGLRenderingContextBase
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLRenderingContextBase where
  fromJSVal v = fmap WebGLRenderingContextBase <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLRenderingContextBase where
  makeObject = makeObject . unWebGLRenderingContextBase

class IsCanvasRenderingContext o => IsWebGLRenderingContextBase o
toWebGLRenderingContextBase :: IsWebGLRenderingContextBase o => o -> WebGLRenderingContextBase
toWebGLRenderingContextBase = WebGLRenderingContextBase . coerce

instance IsWebGLRenderingContextBase WebGLRenderingContextBase
instance IsCanvasRenderingContext WebGLRenderingContextBase
instance IsGObject WebGLRenderingContextBase where
  typeGType _ = gTypeWebGLRenderingContextBase
  {-# INLINE typeGType #-}

gTypeWebGLRenderingContextBase :: JSM GType
gTypeWebGLRenderingContextBase = GType . Object <$> jsg "WebGLRenderingContextBase"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLSampler".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLSampler Mozilla WebGLSampler documentation>
newtype WebGLSampler = WebGLSampler { unWebGLSampler :: JSVal }

instance PToJSVal WebGLSampler where
  pToJSVal = unWebGLSampler
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLSampler where
  pFromJSVal = WebGLSampler
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLSampler where
  toJSVal = return . unWebGLSampler
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLSampler where
  fromJSVal v = fmap WebGLSampler <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLSampler where
  makeObject = makeObject . unWebGLSampler

instance IsGObject WebGLSampler where
  typeGType _ = gTypeWebGLSampler
  {-# INLINE typeGType #-}

gTypeWebGLSampler :: JSM GType
gTypeWebGLSampler = GType . Object <$> jsg "WebGLSampler"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLShader".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShader Mozilla WebGLShader documentation>
newtype WebGLShader = WebGLShader { unWebGLShader :: JSVal }

instance PToJSVal WebGLShader where
  pToJSVal = unWebGLShader
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLShader where
  pFromJSVal = WebGLShader
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLShader where
  toJSVal = return . unWebGLShader
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLShader where
  fromJSVal v = fmap WebGLShader <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLShader where
  makeObject = makeObject . unWebGLShader

instance IsGObject WebGLShader where
  typeGType _ = gTypeWebGLShader
  {-# INLINE typeGType #-}

gTypeWebGLShader :: JSM GType
gTypeWebGLShader = GType . Object <$> jsg "WebGLShader"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLShaderPrecisionFormat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat Mozilla WebGLShaderPrecisionFormat documentation>
newtype WebGLShaderPrecisionFormat = WebGLShaderPrecisionFormat { unWebGLShaderPrecisionFormat :: JSVal }

instance PToJSVal WebGLShaderPrecisionFormat where
  pToJSVal = unWebGLShaderPrecisionFormat
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLShaderPrecisionFormat where
  pFromJSVal = WebGLShaderPrecisionFormat
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLShaderPrecisionFormat where
  toJSVal = return . unWebGLShaderPrecisionFormat
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLShaderPrecisionFormat where
  fromJSVal v = fmap WebGLShaderPrecisionFormat <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLShaderPrecisionFormat where
  makeObject = makeObject . unWebGLShaderPrecisionFormat

instance IsGObject WebGLShaderPrecisionFormat where
  typeGType _ = gTypeWebGLShaderPrecisionFormat
  {-# INLINE typeGType #-}

gTypeWebGLShaderPrecisionFormat :: JSM GType
gTypeWebGLShaderPrecisionFormat = GType . Object <$> jsg "WebGLShaderPrecisionFormat"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLSync Mozilla WebGLSync documentation>
newtype WebGLSync = WebGLSync { unWebGLSync :: JSVal }

instance PToJSVal WebGLSync where
  pToJSVal = unWebGLSync
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLSync where
  pFromJSVal = WebGLSync
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLSync where
  toJSVal = return . unWebGLSync
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLSync where
  fromJSVal v = fmap WebGLSync <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLSync where
  makeObject = makeObject . unWebGLSync

instance IsGObject WebGLSync where
  typeGType _ = gTypeWebGLSync
  {-# INLINE typeGType #-}

gTypeWebGLSync :: JSM GType
gTypeWebGLSync = GType . Object <$> jsg "WebGLSync"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLTexture".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLTexture Mozilla WebGLTexture documentation>
newtype WebGLTexture = WebGLTexture { unWebGLTexture :: JSVal }

instance PToJSVal WebGLTexture where
  pToJSVal = unWebGLTexture
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLTexture where
  pFromJSVal = WebGLTexture
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLTexture where
  toJSVal = return . unWebGLTexture
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLTexture where
  fromJSVal v = fmap WebGLTexture <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLTexture where
  makeObject = makeObject . unWebGLTexture

instance IsGObject WebGLTexture where
  typeGType _ = gTypeWebGLTexture
  {-# INLINE typeGType #-}

gTypeWebGLTexture :: JSM GType
gTypeWebGLTexture = GType . Object <$> jsg "WebGLTexture"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLTransformFeedback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLTransformFeedback Mozilla WebGLTransformFeedback documentation>
newtype WebGLTransformFeedback = WebGLTransformFeedback { unWebGLTransformFeedback :: JSVal }

instance PToJSVal WebGLTransformFeedback where
  pToJSVal = unWebGLTransformFeedback
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLTransformFeedback where
  pFromJSVal = WebGLTransformFeedback
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLTransformFeedback where
  toJSVal = return . unWebGLTransformFeedback
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLTransformFeedback where
  fromJSVal v = fmap WebGLTransformFeedback <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLTransformFeedback where
  makeObject = makeObject . unWebGLTransformFeedback

instance IsGObject WebGLTransformFeedback where
  typeGType _ = gTypeWebGLTransformFeedback
  {-# INLINE typeGType #-}

gTypeWebGLTransformFeedback :: JSM GType
gTypeWebGLTransformFeedback = GType . Object <$> jsg "WebGLTransformFeedback"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLUniformLocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLUniformLocation Mozilla WebGLUniformLocation documentation>
newtype WebGLUniformLocation = WebGLUniformLocation { unWebGLUniformLocation :: JSVal }

instance PToJSVal WebGLUniformLocation where
  pToJSVal = unWebGLUniformLocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLUniformLocation where
  pFromJSVal = WebGLUniformLocation
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLUniformLocation where
  toJSVal = return . unWebGLUniformLocation
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLUniformLocation where
  fromJSVal v = fmap WebGLUniformLocation <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLUniformLocation where
  makeObject = makeObject . unWebGLUniformLocation

instance IsGObject WebGLUniformLocation where
  typeGType _ = gTypeWebGLUniformLocation
  {-# INLINE typeGType #-}

gTypeWebGLUniformLocation :: JSM GType
gTypeWebGLUniformLocation = GType . Object <$> jsg "WebGLUniformLocation"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLVertexArrayObject".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLVertexArrayObject Mozilla WebGLVertexArrayObject documentation>
newtype WebGLVertexArrayObject = WebGLVertexArrayObject { unWebGLVertexArrayObject :: JSVal }

instance PToJSVal WebGLVertexArrayObject where
  pToJSVal = unWebGLVertexArrayObject
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLVertexArrayObject where
  pFromJSVal = WebGLVertexArrayObject
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLVertexArrayObject where
  toJSVal = return . unWebGLVertexArrayObject
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLVertexArrayObject where
  fromJSVal v = fmap WebGLVertexArrayObject <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLVertexArrayObject where
  makeObject = makeObject . unWebGLVertexArrayObject

instance IsGObject WebGLVertexArrayObject where
  typeGType _ = gTypeWebGLVertexArrayObject
  {-# INLINE typeGType #-}

gTypeWebGLVertexArrayObject :: JSM GType
gTypeWebGLVertexArrayObject = GType . Object <$> jsg "WebGLVertexArrayObject"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebGLVertexArrayObjectOES".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLVertexArrayObjectOES Mozilla WebGLVertexArrayObjectOES documentation>
newtype WebGLVertexArrayObjectOES = WebGLVertexArrayObjectOES { unWebGLVertexArrayObjectOES :: JSVal }

instance PToJSVal WebGLVertexArrayObjectOES where
  pToJSVal = unWebGLVertexArrayObjectOES
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLVertexArrayObjectOES where
  pFromJSVal = WebGLVertexArrayObjectOES
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLVertexArrayObjectOES where
  toJSVal = return . unWebGLVertexArrayObjectOES
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLVertexArrayObjectOES where
  fromJSVal v = fmap WebGLVertexArrayObjectOES <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebGLVertexArrayObjectOES where
  makeObject = makeObject . unWebGLVertexArrayObjectOES

instance IsGObject WebGLVertexArrayObjectOES where
  typeGType _ = gTypeWebGLVertexArrayObjectOES
  {-# INLINE typeGType #-}

gTypeWebGLVertexArrayObjectOES :: JSM GType
gTypeWebGLVertexArrayObjectOES = GType . Object <$> jsg "WebGLVertexArrayObjectOES"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitAnimationEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent Mozilla WebKitAnimationEvent documentation>
newtype WebKitAnimationEvent = WebKitAnimationEvent { unWebKitAnimationEvent :: JSVal }

instance PToJSVal WebKitAnimationEvent where
  pToJSVal = unWebKitAnimationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitAnimationEvent where
  pFromJSVal = WebKitAnimationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitAnimationEvent where
  toJSVal = return . unWebKitAnimationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitAnimationEvent where
  fromJSVal v = fmap WebKitAnimationEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitAnimationEvent where
  makeObject = makeObject . unWebKitAnimationEvent

instance IsEvent WebKitAnimationEvent
instance IsGObject WebKitAnimationEvent where
  typeGType _ = gTypeWebKitAnimationEvent
  {-# INLINE typeGType #-}

gTypeWebKitAnimationEvent :: JSM GType
gTypeWebKitAnimationEvent = GType . Object <$> jsg "WebKitAnimationEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitCSSFilterValue".
-- Base interface functions are in:
--
--     * "JSDOM.CSSValueList"
--     * "JSDOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue Mozilla WebKitCSSFilterValue documentation>
newtype WebKitCSSFilterValue = WebKitCSSFilterValue { unWebKitCSSFilterValue :: JSVal }

instance PToJSVal WebKitCSSFilterValue where
  pToJSVal = unWebKitCSSFilterValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSFilterValue where
  pFromJSVal = WebKitCSSFilterValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSFilterValue where
  toJSVal = return . unWebKitCSSFilterValue
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSFilterValue where
  fromJSVal v = fmap WebKitCSSFilterValue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitCSSFilterValue where
  makeObject = makeObject . unWebKitCSSFilterValue

instance IsCSSValueList WebKitCSSFilterValue
instance IsCSSValue WebKitCSSFilterValue
instance IsGObject WebKitCSSFilterValue where
  typeGType _ = gTypeWebKitCSSFilterValue
  {-# INLINE typeGType #-}

gTypeWebKitCSSFilterValue :: JSM GType
gTypeWebKitCSSFilterValue = GType . Object <$> jsg "WebKitCSSFilterValue"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitCSSMatrix".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix Mozilla WebKitCSSMatrix documentation>
newtype WebKitCSSMatrix = WebKitCSSMatrix { unWebKitCSSMatrix :: JSVal }

instance PToJSVal WebKitCSSMatrix where
  pToJSVal = unWebKitCSSMatrix
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSMatrix where
  pFromJSVal = WebKitCSSMatrix
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSMatrix where
  toJSVal = return . unWebKitCSSMatrix
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSMatrix where
  fromJSVal v = fmap WebKitCSSMatrix <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitCSSMatrix where
  makeObject = makeObject . unWebKitCSSMatrix

instance IsGObject WebKitCSSMatrix where
  typeGType _ = gTypeWebKitCSSMatrix
  {-# INLINE typeGType #-}

gTypeWebKitCSSMatrix :: JSM GType
gTypeWebKitCSSMatrix = GType . Object <$> jsg "WebKitCSSMatrix"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitCSSRegionRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSRegionRule Mozilla WebKitCSSRegionRule documentation>
newtype WebKitCSSRegionRule = WebKitCSSRegionRule { unWebKitCSSRegionRule :: JSVal }

instance PToJSVal WebKitCSSRegionRule where
  pToJSVal = unWebKitCSSRegionRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSRegionRule where
  pFromJSVal = WebKitCSSRegionRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSRegionRule where
  toJSVal = return . unWebKitCSSRegionRule
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSRegionRule where
  fromJSVal v = fmap WebKitCSSRegionRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitCSSRegionRule where
  makeObject = makeObject . unWebKitCSSRegionRule

instance IsCSSRule WebKitCSSRegionRule
instance IsGObject WebKitCSSRegionRule where
  typeGType _ = gTypeWebKitCSSRegionRule
  {-# INLINE typeGType #-}

gTypeWebKitCSSRegionRule :: JSM GType
gTypeWebKitCSSRegionRule = GType . Object <$> jsg "WebKitCSSRegionRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitCSSTransformValue".
-- Base interface functions are in:
--
--     * "JSDOM.CSSValueList"
--     * "JSDOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSTransformValue Mozilla WebKitCSSTransformValue documentation>
newtype WebKitCSSTransformValue = WebKitCSSTransformValue { unWebKitCSSTransformValue :: JSVal }

instance PToJSVal WebKitCSSTransformValue where
  pToJSVal = unWebKitCSSTransformValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSTransformValue where
  pFromJSVal = WebKitCSSTransformValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSTransformValue where
  toJSVal = return . unWebKitCSSTransformValue
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSTransformValue where
  fromJSVal v = fmap WebKitCSSTransformValue <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitCSSTransformValue where
  makeObject = makeObject . unWebKitCSSTransformValue

instance IsCSSValueList WebKitCSSTransformValue
instance IsCSSValue WebKitCSSTransformValue
instance IsGObject WebKitCSSTransformValue where
  typeGType _ = gTypeWebKitCSSTransformValue
  {-# INLINE typeGType #-}

gTypeWebKitCSSTransformValue :: JSM GType
gTypeWebKitCSSTransformValue = GType . Object <$> jsg "WebKitCSSTransformValue"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitCSSViewportRule".
-- Base interface functions are in:
--
--     * "JSDOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSViewportRule Mozilla WebKitCSSViewportRule documentation>
newtype WebKitCSSViewportRule = WebKitCSSViewportRule { unWebKitCSSViewportRule :: JSVal }

instance PToJSVal WebKitCSSViewportRule where
  pToJSVal = unWebKitCSSViewportRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSViewportRule where
  pFromJSVal = WebKitCSSViewportRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSViewportRule where
  toJSVal = return . unWebKitCSSViewportRule
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSViewportRule where
  fromJSVal v = fmap WebKitCSSViewportRule <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitCSSViewportRule where
  makeObject = makeObject . unWebKitCSSViewportRule

instance IsCSSRule WebKitCSSViewportRule
instance IsGObject WebKitCSSViewportRule where
  typeGType _ = gTypeWebKitCSSViewportRule
  {-# INLINE typeGType #-}

gTypeWebKitCSSViewportRule :: JSM GType
gTypeWebKitCSSViewportRule = GType . Object <$> jsg "WebKitCSSViewportRule"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitNamedFlow".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow Mozilla WebKitNamedFlow documentation>
newtype WebKitNamedFlow = WebKitNamedFlow { unWebKitNamedFlow :: JSVal }

instance PToJSVal WebKitNamedFlow where
  pToJSVal = unWebKitNamedFlow
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitNamedFlow where
  pFromJSVal = WebKitNamedFlow
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitNamedFlow where
  toJSVal = return . unWebKitNamedFlow
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitNamedFlow where
  fromJSVal v = fmap WebKitNamedFlow <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitNamedFlow where
  makeObject = makeObject . unWebKitNamedFlow

instance IsEventTarget WebKitNamedFlow
instance IsGObject WebKitNamedFlow where
  typeGType _ = gTypeWebKitNamedFlow
  {-# INLINE typeGType #-}

gTypeWebKitNamedFlow :: JSM GType
gTypeWebKitNamedFlow = GType . Object <$> jsg "WebKitNamedFlow"
#else
type IsWebKitNamedFlow o = WebKitNamedFlowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitNamespace".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace Mozilla WebKitNamespace documentation>
newtype WebKitNamespace = WebKitNamespace { unWebKitNamespace :: JSVal }

instance PToJSVal WebKitNamespace where
  pToJSVal = unWebKitNamespace
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitNamespace where
  pFromJSVal = WebKitNamespace
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitNamespace where
  toJSVal = return . unWebKitNamespace
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitNamespace where
  fromJSVal v = fmap WebKitNamespace <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitNamespace where
  makeObject = makeObject . unWebKitNamespace

instance IsGObject WebKitNamespace where
  typeGType _ = gTypeWebKitNamespace
  {-# INLINE typeGType #-}

gTypeWebKitNamespace :: JSM GType
gTypeWebKitNamespace = GType . Object <$> jsg "WebKitNamespace"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitPlaybackTargetAvailabilityEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPlaybackTargetAvailabilityEvent Mozilla WebKitPlaybackTargetAvailabilityEvent documentation>
newtype WebKitPlaybackTargetAvailabilityEvent = WebKitPlaybackTargetAvailabilityEvent { unWebKitPlaybackTargetAvailabilityEvent :: JSVal }

instance PToJSVal WebKitPlaybackTargetAvailabilityEvent where
  pToJSVal = unWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitPlaybackTargetAvailabilityEvent where
  pFromJSVal = WebKitPlaybackTargetAvailabilityEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitPlaybackTargetAvailabilityEvent where
  toJSVal = return . unWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitPlaybackTargetAvailabilityEvent where
  fromJSVal v = fmap WebKitPlaybackTargetAvailabilityEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitPlaybackTargetAvailabilityEvent where
  makeObject = makeObject . unWebKitPlaybackTargetAvailabilityEvent

instance IsEvent WebKitPlaybackTargetAvailabilityEvent
instance IsGObject WebKitPlaybackTargetAvailabilityEvent where
  typeGType _ = gTypeWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE typeGType #-}

gTypeWebKitPlaybackTargetAvailabilityEvent :: JSM GType
gTypeWebKitPlaybackTargetAvailabilityEvent = GType . Object <$> jsg "WebKitPlaybackTargetAvailabilityEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitPoint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation>
newtype WebKitPoint = WebKitPoint { unWebKitPoint :: JSVal }

instance PToJSVal WebKitPoint where
  pToJSVal = unWebKitPoint
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitPoint where
  pFromJSVal = WebKitPoint
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitPoint where
  toJSVal = return . unWebKitPoint
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitPoint where
  fromJSVal v = fmap WebKitPoint <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitPoint where
  makeObject = makeObject . unWebKitPoint

instance IsGObject WebKitPoint where
  typeGType _ = gTypeWebKitPoint
  {-# INLINE typeGType #-}

gTypeWebKitPoint :: JSM GType
gTypeWebKitPoint = GType . Object <$> jsg "WebKitPoint"
#else
type IsWebKitPoint o = WebKitPointClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebKitTransitionEvent".
-- Base interface functions are in:
--
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent Mozilla WebKitTransitionEvent documentation>
newtype WebKitTransitionEvent = WebKitTransitionEvent { unWebKitTransitionEvent :: JSVal }

instance PToJSVal WebKitTransitionEvent where
  pToJSVal = unWebKitTransitionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitTransitionEvent where
  pFromJSVal = WebKitTransitionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitTransitionEvent where
  toJSVal = return . unWebKitTransitionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitTransitionEvent where
  fromJSVal v = fmap WebKitTransitionEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebKitTransitionEvent where
  makeObject = makeObject . unWebKitTransitionEvent

instance IsEvent WebKitTransitionEvent
instance IsGObject WebKitTransitionEvent where
  typeGType _ = gTypeWebKitTransitionEvent
  {-# INLINE typeGType #-}

gTypeWebKitTransitionEvent :: JSM GType
gTypeWebKitTransitionEvent = GType . Object <$> jsg "WebKitTransitionEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WebSocket".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation>
newtype WebSocket = WebSocket { unWebSocket :: JSVal }

instance PToJSVal WebSocket where
  pToJSVal = unWebSocket
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebSocket where
  pFromJSVal = WebSocket
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebSocket where
  toJSVal = return . unWebSocket
  {-# INLINE toJSVal #-}

instance FromJSVal WebSocket where
  fromJSVal v = fmap WebSocket <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WebSocket where
  makeObject = makeObject . unWebSocket

instance IsEventTarget WebSocket
instance IsGObject WebSocket where
  typeGType _ = gTypeWebSocket
  {-# INLINE typeGType #-}

gTypeWebSocket :: JSM GType
gTypeWebSocket = GType . Object <$> jsg "WebSocket"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WheelEvent".
-- Base interface functions are in:
--
--     * "JSDOM.MouseEvent"
--     * "JSDOM.UIEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent Mozilla WheelEvent documentation>
newtype WheelEvent = WheelEvent { unWheelEvent :: JSVal }

instance PToJSVal WheelEvent where
  pToJSVal = unWheelEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WheelEvent where
  pFromJSVal = WheelEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WheelEvent where
  toJSVal = return . unWheelEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WheelEvent where
  fromJSVal v = fmap WheelEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WheelEvent where
  makeObject = makeObject . unWheelEvent

instance IsMouseEvent WheelEvent
instance IsUIEvent WheelEvent
instance IsEvent WheelEvent
instance IsGObject WheelEvent where
  typeGType _ = gTypeWheelEvent
  {-# INLINE typeGType #-}

gTypeWheelEvent :: JSM GType
gTypeWheelEvent = GType . Object <$> jsg "WheelEvent"
#else
#ifndef USE_OLD_WEBKIT
type IsWheelEvent o = WheelEventClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Window".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Window Mozilla Window documentation>
newtype Window = Window { unWindow :: JSVal }

instance PToJSVal Window where
  pToJSVal = unWindow
  {-# INLINE pToJSVal #-}

instance PFromJSVal Window where
  pFromJSVal = Window
  {-# INLINE pFromJSVal #-}

instance ToJSVal Window where
  toJSVal = return . unWindow
  {-# INLINE toJSVal #-}

instance FromJSVal Window where
  fromJSVal v = fmap Window <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Window where
  makeObject = makeObject . unWindow

instance IsEventTarget Window
instance IsGObject Window where
  typeGType _ = gTypeWindow
  {-# INLINE typeGType #-}

gTypeWindow :: JSM GType
gTypeWindow = GType . Object <$> jsg "Window"
#else
type IsWindow o = WindowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WindowBase64".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64 Mozilla WindowBase64 documentation>
newtype WindowBase64 = WindowBase64 { unWindowBase64 :: JSVal }

instance PToJSVal WindowBase64 where
  pToJSVal = unWindowBase64
  {-# INLINE pToJSVal #-}

instance PFromJSVal WindowBase64 where
  pFromJSVal = WindowBase64
  {-# INLINE pFromJSVal #-}

instance ToJSVal WindowBase64 where
  toJSVal = return . unWindowBase64
  {-# INLINE toJSVal #-}

instance FromJSVal WindowBase64 where
  fromJSVal v = fmap WindowBase64 <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WindowBase64 where
  makeObject = makeObject . unWindowBase64

instance IsGObject WindowBase64 where
  typeGType _ = gTypeWindowBase64
  {-# INLINE typeGType #-}

gTypeWindowBase64 :: JSM GType
gTypeWindowBase64 = GType . Object <$> jsg "WindowBase64"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WindowTimers".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers Mozilla WindowTimers documentation>
newtype WindowTimers = WindowTimers { unWindowTimers :: JSVal }

instance PToJSVal WindowTimers where
  pToJSVal = unWindowTimers
  {-# INLINE pToJSVal #-}

instance PFromJSVal WindowTimers where
  pFromJSVal = WindowTimers
  {-# INLINE pFromJSVal #-}

instance ToJSVal WindowTimers where
  toJSVal = return . unWindowTimers
  {-# INLINE toJSVal #-}

instance FromJSVal WindowTimers where
  fromJSVal v = fmap WindowTimers <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WindowTimers where
  makeObject = makeObject . unWindowTimers

instance IsGObject WindowTimers where
  typeGType _ = gTypeWindowTimers
  {-# INLINE typeGType #-}

gTypeWindowTimers :: JSM GType
gTypeWindowTimers = GType . Object <$> jsg "WindowTimers"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.Worker".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation>
newtype Worker = Worker { unWorker :: JSVal }

instance PToJSVal Worker where
  pToJSVal = unWorker
  {-# INLINE pToJSVal #-}

instance PFromJSVal Worker where
  pFromJSVal = Worker
  {-# INLINE pFromJSVal #-}

instance ToJSVal Worker where
  toJSVal = return . unWorker
  {-# INLINE toJSVal #-}

instance FromJSVal Worker where
  fromJSVal v = fmap Worker <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject Worker where
  makeObject = makeObject . unWorker

instance IsEventTarget Worker
instance IsGObject Worker where
  typeGType _ = gTypeWorker
  {-# INLINE typeGType #-}

gTypeWorker :: JSM GType
gTypeWorker = GType . Object <$> jsg "Worker"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WorkerGlobalScope".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope Mozilla WorkerGlobalScope documentation>
newtype WorkerGlobalScope = WorkerGlobalScope { unWorkerGlobalScope :: JSVal }

instance PToJSVal WorkerGlobalScope where
  pToJSVal = unWorkerGlobalScope
  {-# INLINE pToJSVal #-}

instance PFromJSVal WorkerGlobalScope where
  pFromJSVal = WorkerGlobalScope
  {-# INLINE pFromJSVal #-}

instance ToJSVal WorkerGlobalScope where
  toJSVal = return . unWorkerGlobalScope
  {-# INLINE toJSVal #-}

instance FromJSVal WorkerGlobalScope where
  fromJSVal v = fmap WorkerGlobalScope <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WorkerGlobalScope where
  makeObject = makeObject . unWorkerGlobalScope

class IsEventTarget o => IsWorkerGlobalScope o
toWorkerGlobalScope :: IsWorkerGlobalScope o => o -> WorkerGlobalScope
toWorkerGlobalScope = WorkerGlobalScope . coerce

instance IsWorkerGlobalScope WorkerGlobalScope
instance IsEventTarget WorkerGlobalScope
instance IsGObject WorkerGlobalScope where
  typeGType _ = gTypeWorkerGlobalScope
  {-# INLINE typeGType #-}

gTypeWorkerGlobalScope :: JSM GType
gTypeWorkerGlobalScope = GType . Object <$> jsg "WorkerGlobalScope"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WorkerLocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation Mozilla WorkerLocation documentation>
newtype WorkerLocation = WorkerLocation { unWorkerLocation :: JSVal }

instance PToJSVal WorkerLocation where
  pToJSVal = unWorkerLocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal WorkerLocation where
  pFromJSVal = WorkerLocation
  {-# INLINE pFromJSVal #-}

instance ToJSVal WorkerLocation where
  toJSVal = return . unWorkerLocation
  {-# INLINE toJSVal #-}

instance FromJSVal WorkerLocation where
  fromJSVal v = fmap WorkerLocation <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WorkerLocation where
  makeObject = makeObject . unWorkerLocation

instance IsGObject WorkerLocation where
  typeGType _ = gTypeWorkerLocation
  {-# INLINE typeGType #-}

gTypeWorkerLocation :: JSM GType
gTypeWorkerLocation = GType . Object <$> jsg "WorkerLocation"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.WorkerNavigator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator Mozilla WorkerNavigator documentation>
newtype WorkerNavigator = WorkerNavigator { unWorkerNavigator :: JSVal }

instance PToJSVal WorkerNavigator where
  pToJSVal = unWorkerNavigator
  {-# INLINE pToJSVal #-}

instance PFromJSVal WorkerNavigator where
  pFromJSVal = WorkerNavigator
  {-# INLINE pFromJSVal #-}

instance ToJSVal WorkerNavigator where
  toJSVal = return . unWorkerNavigator
  {-# INLINE toJSVal #-}

instance FromJSVal WorkerNavigator where
  fromJSVal v = fmap WorkerNavigator <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject WorkerNavigator where
  makeObject = makeObject . unWorkerNavigator

instance IsGObject WorkerNavigator where
  typeGType _ = gTypeWorkerNavigator
  {-# INLINE typeGType #-}

gTypeWorkerNavigator :: JSM GType
gTypeWorkerNavigator = GType . Object <$> jsg "WorkerNavigator"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XMLHttpRequest".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation>
newtype XMLHttpRequest = XMLHttpRequest { unXMLHttpRequest :: JSVal }

instance PToJSVal XMLHttpRequest where
  pToJSVal = unXMLHttpRequest
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLHttpRequest where
  pFromJSVal = XMLHttpRequest
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLHttpRequest where
  toJSVal = return . unXMLHttpRequest
  {-# INLINE toJSVal #-}

instance FromJSVal XMLHttpRequest where
  fromJSVal v = fmap XMLHttpRequest <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XMLHttpRequest where
  makeObject = makeObject . unXMLHttpRequest

instance IsEventTarget XMLHttpRequest
instance IsGObject XMLHttpRequest where
  typeGType _ = gTypeXMLHttpRequest
  {-# INLINE typeGType #-}

gTypeXMLHttpRequest :: JSM GType
gTypeXMLHttpRequest = GType . Object <$> jsg "XMLHttpRequest"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XMLHttpRequestProgressEvent".
-- Base interface functions are in:
--
--     * "JSDOM.ProgressEvent"
--     * "JSDOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent Mozilla XMLHttpRequestProgressEvent documentation>
newtype XMLHttpRequestProgressEvent = XMLHttpRequestProgressEvent { unXMLHttpRequestProgressEvent :: JSVal }

instance PToJSVal XMLHttpRequestProgressEvent where
  pToJSVal = unXMLHttpRequestProgressEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLHttpRequestProgressEvent where
  pFromJSVal = XMLHttpRequestProgressEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLHttpRequestProgressEvent where
  toJSVal = return . unXMLHttpRequestProgressEvent
  {-# INLINE toJSVal #-}

instance FromJSVal XMLHttpRequestProgressEvent where
  fromJSVal v = fmap XMLHttpRequestProgressEvent <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XMLHttpRequestProgressEvent where
  makeObject = makeObject . unXMLHttpRequestProgressEvent

instance IsProgressEvent XMLHttpRequestProgressEvent
instance IsEvent XMLHttpRequestProgressEvent
instance IsGObject XMLHttpRequestProgressEvent where
  typeGType _ = gTypeXMLHttpRequestProgressEvent
  {-# INLINE typeGType #-}

gTypeXMLHttpRequestProgressEvent :: JSM GType
gTypeXMLHttpRequestProgressEvent = GType . Object <$> jsg "XMLHttpRequestProgressEvent"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XMLHttpRequestUpload".
-- Base interface functions are in:
--
--     * "JSDOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload Mozilla XMLHttpRequestUpload documentation>
newtype XMLHttpRequestUpload = XMLHttpRequestUpload { unXMLHttpRequestUpload :: JSVal }

instance PToJSVal XMLHttpRequestUpload where
  pToJSVal = unXMLHttpRequestUpload
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLHttpRequestUpload where
  pFromJSVal = XMLHttpRequestUpload
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLHttpRequestUpload where
  toJSVal = return . unXMLHttpRequestUpload
  {-# INLINE toJSVal #-}

instance FromJSVal XMLHttpRequestUpload where
  fromJSVal v = fmap XMLHttpRequestUpload <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XMLHttpRequestUpload where
  makeObject = makeObject . unXMLHttpRequestUpload

instance IsEventTarget XMLHttpRequestUpload
instance IsGObject XMLHttpRequestUpload where
  typeGType _ = gTypeXMLHttpRequestUpload
  {-# INLINE typeGType #-}

gTypeXMLHttpRequestUpload :: JSM GType
gTypeXMLHttpRequestUpload = GType . Object <$> jsg "XMLHttpRequestUpload"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XMLSerializer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation>
newtype XMLSerializer = XMLSerializer { unXMLSerializer :: JSVal }

instance PToJSVal XMLSerializer where
  pToJSVal = unXMLSerializer
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLSerializer where
  pFromJSVal = XMLSerializer
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLSerializer where
  toJSVal = return . unXMLSerializer
  {-# INLINE toJSVal #-}

instance FromJSVal XMLSerializer where
  fromJSVal v = fmap XMLSerializer <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XMLSerializer where
  makeObject = makeObject . unXMLSerializer

instance IsGObject XMLSerializer where
  typeGType _ = gTypeXMLSerializer
  {-# INLINE typeGType #-}

gTypeXMLSerializer :: JSM GType
gTypeXMLSerializer = GType . Object <$> jsg "XMLSerializer"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XPathEvaluator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation>
newtype XPathEvaluator = XPathEvaluator { unXPathEvaluator :: JSVal }

instance PToJSVal XPathEvaluator where
  pToJSVal = unXPathEvaluator
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathEvaluator where
  pFromJSVal = XPathEvaluator
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathEvaluator where
  toJSVal = return . unXPathEvaluator
  {-# INLINE toJSVal #-}

instance FromJSVal XPathEvaluator where
  fromJSVal v = fmap XPathEvaluator <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XPathEvaluator where
  makeObject = makeObject . unXPathEvaluator

instance IsGObject XPathEvaluator where
  typeGType _ = gTypeXPathEvaluator
  {-# INLINE typeGType #-}

gTypeXPathEvaluator :: JSM GType
gTypeXPathEvaluator = GType . Object <$> jsg "XPathEvaluator"
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XPathExpression".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression Mozilla XPathExpression documentation>
newtype XPathExpression = XPathExpression { unXPathExpression :: JSVal }

instance PToJSVal XPathExpression where
  pToJSVal = unXPathExpression
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathExpression where
  pFromJSVal = XPathExpression
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathExpression where
  toJSVal = return . unXPathExpression
  {-# INLINE toJSVal #-}

instance FromJSVal XPathExpression where
  fromJSVal v = fmap XPathExpression <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XPathExpression where
  makeObject = makeObject . unXPathExpression

instance IsGObject XPathExpression where
  typeGType _ = gTypeXPathExpression
  {-# INLINE typeGType #-}

gTypeXPathExpression :: JSM GType
gTypeXPathExpression = GType . Object <$> jsg "XPathExpression"
#else
type IsXPathExpression o = XPathExpressionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XPathNSResolver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver Mozilla XPathNSResolver documentation>
newtype XPathNSResolver = XPathNSResolver { unXPathNSResolver :: JSVal }

instance PToJSVal XPathNSResolver where
  pToJSVal = unXPathNSResolver
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathNSResolver where
  pFromJSVal = XPathNSResolver
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathNSResolver where
  toJSVal = return . unXPathNSResolver
  {-# INLINE toJSVal #-}

instance FromJSVal XPathNSResolver where
  fromJSVal v = fmap XPathNSResolver <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XPathNSResolver where
  makeObject = makeObject . unXPathNSResolver

instance IsGObject XPathNSResolver where
  typeGType _ = gTypeXPathNSResolver
  {-# INLINE typeGType #-}

gTypeXPathNSResolver :: JSM GType
gTypeXPathNSResolver = GType . Object <$> jsg "XPathNSResolver"
#else
type IsXPathNSResolver o = XPathNSResolverClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XPathResult".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult Mozilla XPathResult documentation>
newtype XPathResult = XPathResult { unXPathResult :: JSVal }

instance PToJSVal XPathResult where
  pToJSVal = unXPathResult
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathResult where
  pFromJSVal = XPathResult
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathResult where
  toJSVal = return . unXPathResult
  {-# INLINE toJSVal #-}

instance FromJSVal XPathResult where
  fromJSVal v = fmap XPathResult <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XPathResult where
  makeObject = makeObject . unXPathResult

instance IsGObject XPathResult where
  typeGType _ = gTypeXPathResult
  {-# INLINE typeGType #-}

gTypeXPathResult :: JSM GType
gTypeXPathResult = GType . Object <$> jsg "XPathResult"
#else
type IsXPathResult o = XPathResultClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "JSDOM.XSLTProcessor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation>
newtype XSLTProcessor = XSLTProcessor { unXSLTProcessor :: JSVal }

instance PToJSVal XSLTProcessor where
  pToJSVal = unXSLTProcessor
  {-# INLINE pToJSVal #-}

instance PFromJSVal XSLTProcessor where
  pFromJSVal = XSLTProcessor
  {-# INLINE pFromJSVal #-}

instance ToJSVal XSLTProcessor where
  toJSVal = return . unXSLTProcessor
  {-# INLINE toJSVal #-}

instance FromJSVal XSLTProcessor where
  fromJSVal v = fmap XSLTProcessor <$> maybeNullOrUndefined v
  {-# INLINE fromJSVal #-}

instance MakeObject XSLTProcessor where
  makeObject = makeObject . unXSLTProcessor

instance IsGObject XSLTProcessor where
  typeGType _ = gTypeXSLTProcessor
  {-# INLINE typeGType #-}

gTypeXSLTProcessor :: JSM GType
gTypeXSLTProcessor = GType . Object <$> jsg "XSLTProcessor"
#endif


