{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Enums
       (KeyType(..), ToJSVal, FromJSVal, js_KeyTypePublic,
        js_KeyTypePrivate, js_KeyTypeSecret, CryptoKeyUsage(..),
        js_CryptoKeyUsageEncrypt, js_CryptoKeyUsageDecrypt,
        js_CryptoKeyUsageSign, js_CryptoKeyUsageVerify,
        js_CryptoKeyUsageDeriveKey, js_CryptoKeyUsageDeriveBits,
        js_CryptoKeyUsageWrapKey, js_CryptoKeyUsageUnwrapKey,
        KeyFormat(..), js_KeyFormatRaw, js_KeyFormatSpki,
        js_KeyFormatPkcs8, js_KeyFormatJwk, FontFaceLoadStatus(..),
        js_FontFaceLoadStatusUnloaded, js_FontFaceLoadStatusLoading,
        js_FontFaceLoadStatusLoaded, js_FontFaceLoadStatusError,
        FontFaceSetLoadStatus(..), js_FontFaceSetLoadStatusLoading,
        js_FontFaceSetLoadStatusLoaded, VisibilityState(..),
        js_VisibilityStateHidden, js_VisibilityStateVisible,
        js_VisibilityStatePrerender, DocumentReadyState(..),
        js_DocumentReadyStateLoading, js_DocumentReadyStateInteractive,
        js_DocumentReadyStateComplete, ShadowRootMode(..),
        js_ShadowRootModeUserAgent, js_ShadowRootModeClosed,
        js_ShadowRootModeOpen, BlobLineEndings(..),
        js_BlobLineEndingsTransparent, js_BlobLineEndingsNative,
        ImageSmoothingQuality(..), js_ImageSmoothingQualityLow,
        js_ImageSmoothingQualityMedium, js_ImageSmoothingQualityHigh,
        CanvasWindingRule(..), js_CanvasWindingRuleNonzero,
        js_CanvasWindingRuleEvenodd, WebGLPowerPreference(..),
        js_WebGLPowerPreferenceDefault, js_WebGLPowerPreferenceLowPower,
        js_WebGLPowerPreferenceHighPerformance, WebGPUCompareFunction(..),
        js_WebGPUCompareFunctionNever, js_WebGPUCompareFunctionLess,
        js_WebGPUCompareFunctionEqual, js_WebGPUCompareFunctionLessequal,
        js_WebGPUCompareFunctionGreater, js_WebGPUCompareFunctionNotequal,
        js_WebGPUCompareFunctionGreaterequal,
        js_WebGPUCompareFunctionAlways, WebGPUPixelFormat(..),
        js_WebGPUPixelFormatBGRA8Unorm, WebGPULoadAction(..),
        js_WebGPULoadActionDontcare, js_WebGPULoadActionLoad,
        js_WebGPULoadActionClear, WebGPUStoreAction(..),
        js_WebGPUStoreActionDontcare, js_WebGPUStoreActionStore,
        js_WebGPUStoreActionMultisampleresolve, WebGPUPrimitiveType(..),
        js_WebGPUPrimitiveTypePoint, js_WebGPUPrimitiveTypeLine,
        js_WebGPUPrimitiveTypeLinestrip, js_WebGPUPrimitiveTypeTriangle,
        js_WebGPUPrimitiveTypeTrianglestrip, WebGPUFunctionType(..),
        js_WebGPUFunctionTypeFragment, js_WebGPUFunctionTypeVertex,
        WebGPUStencilOperation(..), js_WebGPUStencilOperationKeep,
        js_WebGPUStencilOperationZero, js_WebGPUStencilOperationReplace,
        js_WebGPUStencilOperationIncrementclamp,
        js_WebGPUStencilOperationDecrementclamp,
        js_WebGPUStencilOperationInvert,
        js_WebGPUStencilOperationIncrementwrap,
        js_WebGPUStencilOperationDecrementwrap, WebGPUStatus(..),
        js_WebGPUStatusNotenqueued, js_WebGPUStatusEnqueued,
        js_WebGPUStatusCommitted, js_WebGPUStatusScheduled,
        js_WebGPUStatusCompleted, js_WebGPUStatusError,
        WebGPUSamplerAddressMode(..),
        js_WebGPUSamplerAddressModeClamptoedge,
        js_WebGPUSamplerAddressModeMirrorclamptoedge,
        js_WebGPUSamplerAddressModeRepeat,
        js_WebGPUSamplerAddressModeMirrorrepeat,
        js_WebGPUSamplerAddressModeClamptozero,
        WebGPUSamplerMinMagFilter(..), js_WebGPUSamplerMinMagFilterNearest,
        js_WebGPUSamplerMinMagFilterLinear, WebGPUSamplerMipFilter(..),
        js_WebGPUSamplerMipFilterNotmipmapped,
        js_WebGPUSamplerMipFilterNearest, js_WebGPUSamplerMipFilterLinear,
        WebGPUCullMode(..), js_WebGPUCullModeNone, js_WebGPUCullModeFront,
        js_WebGPUCullModeBack, WebGPUIndexType(..),
        js_WebGPUIndexTypeUint16, js_WebGPUIndexTypeUint32,
        WebGPUVisibilityResultMode(..),
        js_WebGPUVisibilityResultModeDisabled,
        js_WebGPUVisibilityResultModeBoolean,
        js_WebGPUVisibilityResultModeCounting, WebGPUWinding(..),
        js_WebGPUWindingClockwise, js_WebGPUWindingCounterclockwise,
        WebGPUDepthClipMode(..), js_WebGPUDepthClipModeClip,
        js_WebGPUDepthClipModeClamp, WebGPUTriangleFillMode(..),
        js_WebGPUTriangleFillModeFill, js_WebGPUTriangleFillModeLines,
        WebGPUCPUCacheMode(..), js_WebGPUCPUCacheModeDefaultcache,
        js_WebGPUCPUCacheModeWritecombined, WebGPUStorageMode(..),
        js_WebGPUStorageModeShared, js_WebGPUStorageModeManaged,
        js_WebGPUStorageModePrivate, WebGPUResourceOptions(..),
        js_WebGPUResourceOptionsCpucachemodedefaultcache,
        js_WebGPUResourceOptionsCpucachemodewritecombined,
        js_WebGPUResourceOptionsStoragemodeshared,
        js_WebGPUResourceOptionsStoragemodemanaged,
        js_WebGPUResourceOptionsStoragemodeprivate,
        js_WebGPUResourceOptionsOptioncpucachemodedefaultcache,
        js_WebGPUResourceOptionsOptioncpucachemodewritecombined,
        WebGPUTextureUsage(..), js_WebGPUTextureUsageUnknown,
        js_WebGPUTextureUsageShaderread, js_WebGPUTextureUsageShaderwrite,
        js_WebGPUTextureUsageRendertarget,
        js_WebGPUTextureUsagePixelformatview, WebGPUBlendOperation(..),
        js_WebGPUBlendOperationAdd, js_WebGPUBlendOperationSubtract,
        js_WebGPUBlendOperationReversesubtract, js_WebGPUBlendOperationMin,
        js_WebGPUBlendOperationMax, WebGPUBlendFactor(..),
        js_WebGPUBlendFactorZero, js_WebGPUBlendFactorOne,
        js_WebGPUBlendFactorSourcecolor,
        js_WebGPUBlendFactorOneminussourcecolor,
        js_WebGPUBlendFactorSourcealpha,
        js_WebGPUBlendFactorOneminussourcealpha,
        js_WebGPUBlendFactorDestinationcolor,
        js_WebGPUBlendFactorOneminusdestinationcolor,
        js_WebGPUBlendFactorDestinationalpha,
        js_WebGPUBlendFactorOneminusdestinationalpha,
        js_WebGPUBlendFactorSourcealphasaturated,
        js_WebGPUBlendFactorBlendcolor,
        js_WebGPUBlendFactorOneminusblendcolor,
        js_WebGPUBlendFactorBlendalpha,
        js_WebGPUBlendFactorOneminusblendalpha, WebGPUColorWriteMask(..),
        js_WebGPUColorWriteMaskNone, js_WebGPUColorWriteMaskRed,
        js_WebGPUColorWriteMaskGreen, js_WebGPUColorWriteMaskBlue,
        js_WebGPUColorWriteMaskAlpha, js_WebGPUColorWriteMaskAll,
        WebGPUMultisampleDepthResolveFilter(..),
        js_WebGPUMultisampleDepthResolveFilterSample0,
        js_WebGPUMultisampleDepthResolveFilterMin,
        js_WebGPUMultisampleDepthResolveFilterMax, WebGPUFeatureSet(..),
        js_WebGPUFeatureSetLevel1, js_WebGPUFeatureSetLevel2,
        VideoPresentationMode(..), js_VideoPresentationModeFullscreen,
        js_VideoPresentationModePictureInPicture,
        js_VideoPresentationModeInline, TextTrackMode(..),
        js_TextTrackModeDisabled, js_TextTrackModeHidden,
        js_TextTrackModeShowing, TextTrackKind(..),
        js_TextTrackKindSubtitles, js_TextTrackKindCaptions,
        js_TextTrackKindDescriptions, js_TextTrackKindChapters,
        js_TextTrackKindMetadata, js_TextTrackKindForced,
        ApplePayErrorCode(..), js_ApplePayErrorCodeUnknown,
        js_ApplePayErrorCodeShippingContactInvalid,
        js_ApplePayErrorCodeBillingContactInvalid,
        js_ApplePayErrorCodeAddressUnservicable,
        ApplePayErrorContactField(..),
        js_ApplePayErrorContactFieldPhoneNumber,
        js_ApplePayErrorContactFieldEmailAddress,
        js_ApplePayErrorContactFieldName,
        js_ApplePayErrorContactFieldPostalAddress,
        js_ApplePayErrorContactFieldAddressLines,
        js_ApplePayErrorContactFieldLocality,
        js_ApplePayErrorContactFieldPostalCode,
        js_ApplePayErrorContactFieldAdministrativeArea,
        js_ApplePayErrorContactFieldCountry, ApplePayLineItemType(..),
        js_ApplePayLineItemTypePending, js_ApplePayLineItemTypeFinal,
        ApplePayPaymentMethodType(..), js_ApplePayPaymentMethodTypeDebit,
        js_ApplePayPaymentMethodTypeCredit,
        js_ApplePayPaymentMethodTypePrepaid,
        js_ApplePayPaymentMethodTypeStore,
        ApplePayPaymentPassActivationState(..),
        js_ApplePayPaymentPassActivationStateActivated,
        js_ApplePayPaymentPassActivationStateRequiresActivation,
        js_ApplePayPaymentPassActivationStateActivating,
        js_ApplePayPaymentPassActivationStateSuspended,
        js_ApplePayPaymentPassActivationStateDeactivated,
        ApplePayMerchantCapability(..),
        js_ApplePayMerchantCapabilitySupports3DS,
        js_ApplePayMerchantCapabilitySupportsEMV,
        js_ApplePayMerchantCapabilitySupportsCredit,
        js_ApplePayMerchantCapabilitySupportsDebit,
        ApplePayContactField(..), js_ApplePayContactFieldEmail,
        js_ApplePayContactFieldName, js_ApplePayContactFieldPhone,
        js_ApplePayContactFieldPostalAddress, ApplePayShippingType(..),
        js_ApplePayShippingTypeShipping, js_ApplePayShippingTypeDelivery,
        js_ApplePayShippingTypeStorePickup,
        js_ApplePayShippingTypeServicePickup, MediaKeyMessageType(..),
        js_MediaKeyMessageTypeLicenseRequest,
        js_MediaKeyMessageTypeLicenseRenewal,
        js_MediaKeyMessageTypeLicenseRelease,
        js_MediaKeyMessageTypeIndividualizationRequest,
        MediaKeySessionType(..), js_MediaKeySessionTypeTemporary,
        js_MediaKeySessionTypePersistentUsageRecord,
        js_MediaKeySessionTypePersistentLicense, MediaKeysRequirement(..),
        js_MediaKeysRequirementRequired, js_MediaKeysRequirementOptional,
        js_MediaKeysRequirementNotAllowed, MediaKeyStatus(..),
        js_MediaKeyStatusUsable, js_MediaKeyStatusExpired,
        js_MediaKeyStatusReleased, js_MediaKeyStatusOutputRestricted,
        js_MediaKeyStatusOutputDownscaled, js_MediaKeyStatusStatusPending,
        js_MediaKeyStatusInternalError, RequestType(..), js_RequestType,
        js_RequestTypeAudio, js_RequestTypeFont, js_RequestTypeImage,
        js_RequestTypeScript, js_RequestTypeStyle, js_RequestTypeTrack,
        js_RequestTypeVideo, RequestDestination(..), js_RequestDestination,
        js_RequestDestinationDocument, js_RequestDestinationSharedworker,
        js_RequestDestinationSubresource, js_RequestDestinationUnknown,
        js_RequestDestinationWorker, RequestMode(..),
        js_RequestModeNavigate, js_RequestModeSameOrigin,
        js_RequestModeNoCors, js_RequestModeCors, RequestCredentials(..),
        js_RequestCredentialsOmit, js_RequestCredentialsSameOrigin,
        js_RequestCredentialsInclude, RequestCache(..),
        js_RequestCacheDefault, js_RequestCacheNoStore,
        js_RequestCacheReload, js_RequestCacheNoCache,
        js_RequestCacheForceCache, js_RequestCacheOnlyIfCached,
        RequestRedirect(..), js_RequestRedirectFollow,
        js_RequestRedirectError, js_RequestRedirectManual,
        ReferrerPolicy(..), js_ReferrerPolicy, js_ReferrerPolicyNoReferrer,
        js_ReferrerPolicyNoReferrerWhenDowngrade, js_ReferrerPolicyOrigin,
        js_ReferrerPolicyOriginWhenCrossOrigin, js_ReferrerPolicyUnsafeUrl,
        ResponseType(..), js_ResponseTypeBasic, js_ResponseTypeCors,
        js_ResponseTypeDefault, js_ResponseTypeError,
        js_ResponseTypeOpaque, js_ResponseTypeOpaqueredirect,
        IDBCursorDirection(..), js_IDBCursorDirectionNext,
        js_IDBCursorDirectionNextunique, js_IDBCursorDirectionPrev,
        js_IDBCursorDirectionPrevunique, IDBRequestReadyState(..),
        js_IDBRequestReadyStatePending, js_IDBRequestReadyStateDone,
        IDBTransactionMode(..), js_IDBTransactionModeReadonly,
        js_IDBTransactionModeReadwrite, js_IDBTransactionModeVersionchange,
        DeviceType(..), js_DeviceTypeNone, js_DeviceTypeAirplay,
        js_DeviceTypeTvout, MediaSessionKind(..),
        js_MediaSessionKindContent, js_MediaSessionKindTransient,
        js_MediaSessionKindTransientSolo, js_MediaSessionKindAmbient,
        EndOfStreamError(..), js_EndOfStreamErrorNetwork,
        js_EndOfStreamErrorDecode, ReadyState(..), js_ReadyStateClosed,
        js_ReadyStateOpen, js_ReadyStateEnded, AppendMode(..),
        js_AppendModeSegments, js_AppendModeSequence, MediaDeviceKind(..),
        js_MediaDeviceKindAudioinput, js_MediaDeviceKindAudiooutput,
        js_MediaDeviceKindVideoinput, MediaStreamTrackState(..),
        js_MediaStreamTrackStateLive, js_MediaStreamTrackStateEnded,
        RTCIceTransportPolicy(..), js_RTCIceTransportPolicyRelay,
        js_RTCIceTransportPolicyAll, RTCBundlePolicy(..),
        js_RTCBundlePolicyBalanced, js_RTCBundlePolicyMaxCompat,
        js_RTCBundlePolicyMaxBundle, RTCDataChannelState(..),
        js_RTCDataChannelStateConnecting, js_RTCDataChannelStateOpen,
        js_RTCDataChannelStateClosing, js_RTCDataChannelStateClosed,
        RTCIceConnectionState(..), js_RTCIceConnectionStateNew,
        js_RTCIceConnectionStateChecking,
        js_RTCIceConnectionStateConnected,
        js_RTCIceConnectionStateCompleted, js_RTCIceConnectionStateFailed,
        js_RTCIceConnectionStateDisconnected,
        js_RTCIceConnectionStateClosed, RTCIceGatheringState(..),
        js_RTCIceGatheringStateNew, js_RTCIceGatheringStateGathering,
        js_RTCIceGatheringStateComplete, RTCIceTransportState(..),
        js_RTCIceTransportStateNew, js_RTCIceTransportStateChecking,
        js_RTCIceTransportStateConnected, js_RTCIceTransportStateCompleted,
        js_RTCIceTransportStateFailed, js_RTCIceTransportStateDisconnected,
        js_RTCIceTransportStateClosed, RTCPeerConnectionState(..),
        js_RTCPeerConnectionStateNew, js_RTCPeerConnectionStateConnecting,
        js_RTCPeerConnectionStateConnected,
        js_RTCPeerConnectionStateDisconnected,
        js_RTCPeerConnectionStateFailed, js_RTCPeerConnectionStateClosed,
        RTCDegradationPreference(..),
        js_RTCDegradationPreferenceMaintainFramerate,
        js_RTCDegradationPreferenceMaintainResolution,
        js_RTCDegradationPreferenceBalanced, RTCDtxStatus(..),
        js_RTCDtxStatusDisabled, js_RTCDtxStatusEnabled,
        RTCPriorityType(..), js_RTCPriorityTypeVeryLow,
        js_RTCPriorityTypeLow, js_RTCPriorityTypeMedium,
        js_RTCPriorityTypeHigh, RTCRtpTransceiverDirection(..),
        js_RTCRtpTransceiverDirectionSendrecv,
        js_RTCRtpTransceiverDirectionSendonly,
        js_RTCRtpTransceiverDirectionRecvonly,
        js_RTCRtpTransceiverDirectionInactive, RTCSdpType(..),
        js_RTCSdpTypeOffer, js_RTCSdpTypePranswer, js_RTCSdpTypeAnswer,
        js_RTCSdpTypeRollback, RTCSignalingState(..),
        js_RTCSignalingStateStable, js_RTCSignalingStateHaveLocalOffer,
        js_RTCSignalingStateHaveRemoteOffer,
        js_RTCSignalingStateHaveLocalPranswer,
        js_RTCSignalingStateHaveRemotePranswer, RTCStatsType(..),
        js_RTCStatsTypeCodec, js_RTCStatsTypeInboundRtp,
        js_RTCStatsTypeOutboundRtp, js_RTCStatsTypePeerConnection,
        js_RTCStatsTypeDataChannel, js_RTCStatsTypeTrack,
        js_RTCStatsTypeTransport, js_RTCStatsTypeCandidatePair,
        js_RTCStatsTypeLocalCandidate, js_RTCStatsTypeRemoteCandidate,
        js_RTCStatsTypeCertificate, NotificationDirection(..),
        js_NotificationDirectionAuto, js_NotificationDirectionLtr,
        js_NotificationDirectionRtl, AudioContextState(..),
        js_AudioContextStateSuspended, js_AudioContextStateRunning,
        js_AudioContextStateInterrupted, js_AudioContextStateClosed,
        BiquadFilterType(..), js_BiquadFilterTypeLowpass,
        js_BiquadFilterTypeHighpass, js_BiquadFilterTypeBandpass,
        js_BiquadFilterTypeLowshelf, js_BiquadFilterTypeHighshelf,
        js_BiquadFilterTypePeaking, js_BiquadFilterTypeNotch,
        js_BiquadFilterTypeAllpass, OscillatorType(..),
        js_OscillatorTypeSine, js_OscillatorTypeSquare,
        js_OscillatorTypeSawtooth, js_OscillatorTypeTriangle,
        js_OscillatorTypeCustom, PanningModelType(..),
        js_PanningModelTypeEqualpower, js_PanningModelTypeHRTF,
        DistanceModelType(..), js_DistanceModelTypeLinear,
        js_DistanceModelTypeInverse, js_DistanceModelTypeExponential,
        OverSampleType(..), js_OverSampleTypeNone, js_OverSampleType2x,
        js_OverSampleType4x, ScrollRestoration(..),
        js_ScrollRestorationAuto, js_ScrollRestorationManual,
        XMLHttpRequestResponseType(..), js_XMLHttpRequestResponseType,
        js_XMLHttpRequestResponseTypeArraybuffer,
        js_XMLHttpRequestResponseTypeBlob,
        js_XMLHttpRequestResponseTypeDocument,
        js_XMLHttpRequestResponseTypeJson,
        js_XMLHttpRequestResponseTypeText)
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
 
data KeyType = KeyTypePublic
             | KeyTypePrivate
             | KeyTypeSecret
             deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal KeyType where
        toJSVal KeyTypePublic = toJSVal js_KeyTypePublic
        toJSVal KeyTypePrivate = toJSVal js_KeyTypePrivate
        toJSVal KeyTypeSecret = toJSVal js_KeyTypeSecret
 
instance FromJSVal KeyType where
        fromJSVal x
          = x `strictEqual` js_KeyTypePublic >>=
              \ r ->
                case r of
                    True -> return (Just KeyTypePublic)
                    False
                      -> x `strictEqual` js_KeyTypePrivate >>=
                           \ r ->
                             case r of
                                 True -> return (Just KeyTypePrivate)
                                 False
                                   -> x `strictEqual` js_KeyTypeSecret >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just KeyTypeSecret)
                                              False -> return Nothing
js_KeyTypePublic = "public"
js_KeyTypePrivate = "private"
js_KeyTypeSecret = "secret"
 
data CryptoKeyUsage = CryptoKeyUsageEncrypt
                    | CryptoKeyUsageDecrypt
                    | CryptoKeyUsageSign
                    | CryptoKeyUsageVerify
                    | CryptoKeyUsageDeriveKey
                    | CryptoKeyUsageDeriveBits
                    | CryptoKeyUsageWrapKey
                    | CryptoKeyUsageUnwrapKey
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal CryptoKeyUsage where
        toJSVal CryptoKeyUsageEncrypt = toJSVal js_CryptoKeyUsageEncrypt
        toJSVal CryptoKeyUsageDecrypt = toJSVal js_CryptoKeyUsageDecrypt
        toJSVal CryptoKeyUsageSign = toJSVal js_CryptoKeyUsageSign
        toJSVal CryptoKeyUsageVerify = toJSVal js_CryptoKeyUsageVerify
        toJSVal CryptoKeyUsageDeriveKey
          = toJSVal js_CryptoKeyUsageDeriveKey
        toJSVal CryptoKeyUsageDeriveBits
          = toJSVal js_CryptoKeyUsageDeriveBits
        toJSVal CryptoKeyUsageWrapKey = toJSVal js_CryptoKeyUsageWrapKey
        toJSVal CryptoKeyUsageUnwrapKey
          = toJSVal js_CryptoKeyUsageUnwrapKey
 
instance FromJSVal CryptoKeyUsage where
        fromJSVal x
          = x `strictEqual` js_CryptoKeyUsageEncrypt >>=
              \ r ->
                case r of
                    True -> return (Just CryptoKeyUsageEncrypt)
                    False
                      -> x `strictEqual` js_CryptoKeyUsageDecrypt >>=
                           \ r ->
                             case r of
                                 True -> return (Just CryptoKeyUsageDecrypt)
                                 False
                                   -> x `strictEqual` js_CryptoKeyUsageSign >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just CryptoKeyUsageSign)
                                              False
                                                -> x `strictEqual` js_CryptoKeyUsageVerify >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return (Just CryptoKeyUsageVerify)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_CryptoKeyUsageDeriveKey
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  CryptoKeyUsageDeriveKey)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_CryptoKeyUsageDeriveBits
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               CryptoKeyUsageDeriveBits)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_CryptoKeyUsageWrapKey
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            CryptoKeyUsageWrapKey)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_CryptoKeyUsageUnwrapKey
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         CryptoKeyUsageUnwrapKey)
                                                                                                               False
                                                                                                                 -> return
                                                                                                                      Nothing
js_CryptoKeyUsageEncrypt = "encrypt"
js_CryptoKeyUsageDecrypt = "decrypt"
js_CryptoKeyUsageSign = "sign"
js_CryptoKeyUsageVerify = "verify"
js_CryptoKeyUsageDeriveKey = "deriveKey"
js_CryptoKeyUsageDeriveBits = "deriveBits"
js_CryptoKeyUsageWrapKey = "wrapKey"
js_CryptoKeyUsageUnwrapKey = "unwrapKey"
 
data KeyFormat = KeyFormatRaw
               | KeyFormatSpki
               | KeyFormatPkcs8
               | KeyFormatJwk
               deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal KeyFormat where
        toJSVal KeyFormatRaw = toJSVal js_KeyFormatRaw
        toJSVal KeyFormatSpki = toJSVal js_KeyFormatSpki
        toJSVal KeyFormatPkcs8 = toJSVal js_KeyFormatPkcs8
        toJSVal KeyFormatJwk = toJSVal js_KeyFormatJwk
 
instance FromJSVal KeyFormat where
        fromJSVal x
          = x `strictEqual` js_KeyFormatRaw >>=
              \ r ->
                case r of
                    True -> return (Just KeyFormatRaw)
                    False
                      -> x `strictEqual` js_KeyFormatSpki >>=
                           \ r ->
                             case r of
                                 True -> return (Just KeyFormatSpki)
                                 False
                                   -> x `strictEqual` js_KeyFormatPkcs8 >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just KeyFormatPkcs8)
                                              False
                                                -> x `strictEqual` js_KeyFormatJwk >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just KeyFormatJwk)
                                                           False -> return Nothing
js_KeyFormatRaw = "raw"
js_KeyFormatSpki = "spki"
js_KeyFormatPkcs8 = "pkcs8"
js_KeyFormatJwk = "jwk"
 
data FontFaceLoadStatus = FontFaceLoadStatusUnloaded
                        | FontFaceLoadStatusLoading
                        | FontFaceLoadStatusLoaded
                        | FontFaceLoadStatusError
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal FontFaceLoadStatus where
        toJSVal FontFaceLoadStatusUnloaded
          = toJSVal js_FontFaceLoadStatusUnloaded
        toJSVal FontFaceLoadStatusLoading
          = toJSVal js_FontFaceLoadStatusLoading
        toJSVal FontFaceLoadStatusLoaded
          = toJSVal js_FontFaceLoadStatusLoaded
        toJSVal FontFaceLoadStatusError
          = toJSVal js_FontFaceLoadStatusError
 
instance FromJSVal FontFaceLoadStatus where
        fromJSVal x
          = x `strictEqual` js_FontFaceLoadStatusUnloaded >>=
              \ r ->
                case r of
                    True -> return (Just FontFaceLoadStatusUnloaded)
                    False
                      -> x `strictEqual` js_FontFaceLoadStatusLoading >>=
                           \ r ->
                             case r of
                                 True -> return (Just FontFaceLoadStatusLoading)
                                 False
                                   -> x `strictEqual` js_FontFaceLoadStatusLoaded >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just FontFaceLoadStatusLoaded)
                                              False
                                                -> x `strictEqual` js_FontFaceLoadStatusError >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just FontFaceLoadStatusError)
                                                           False -> return Nothing
js_FontFaceLoadStatusUnloaded = "unloaded"
js_FontFaceLoadStatusLoading = "loading"
js_FontFaceLoadStatusLoaded = "loaded"
js_FontFaceLoadStatusError = "error"
 
data FontFaceSetLoadStatus = FontFaceSetLoadStatusLoading
                           | FontFaceSetLoadStatusLoaded
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal FontFaceSetLoadStatus where
        toJSVal FontFaceSetLoadStatusLoading
          = toJSVal js_FontFaceSetLoadStatusLoading
        toJSVal FontFaceSetLoadStatusLoaded
          = toJSVal js_FontFaceSetLoadStatusLoaded
 
instance FromJSVal FontFaceSetLoadStatus where
        fromJSVal x
          = x `strictEqual` js_FontFaceSetLoadStatusLoading >>=
              \ r ->
                case r of
                    True -> return (Just FontFaceSetLoadStatusLoading)
                    False
                      -> x `strictEqual` js_FontFaceSetLoadStatusLoaded >>=
                           \ r ->
                             case r of
                                 True -> return (Just FontFaceSetLoadStatusLoaded)
                                 False -> return Nothing
js_FontFaceSetLoadStatusLoading = "loading"
js_FontFaceSetLoadStatusLoaded = "loaded"
 
data VisibilityState = VisibilityStateHidden
                     | VisibilityStateVisible
                     | VisibilityStatePrerender
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal VisibilityState where
        toJSVal VisibilityStateHidden = toJSVal js_VisibilityStateHidden
        toJSVal VisibilityStateVisible = toJSVal js_VisibilityStateVisible
        toJSVal VisibilityStatePrerender
          = toJSVal js_VisibilityStatePrerender
 
instance FromJSVal VisibilityState where
        fromJSVal x
          = x `strictEqual` js_VisibilityStateHidden >>=
              \ r ->
                case r of
                    True -> return (Just VisibilityStateHidden)
                    False
                      -> x `strictEqual` js_VisibilityStateVisible >>=
                           \ r ->
                             case r of
                                 True -> return (Just VisibilityStateVisible)
                                 False
                                   -> x `strictEqual` js_VisibilityStatePrerender >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just VisibilityStatePrerender)
                                              False -> return Nothing
js_VisibilityStateHidden = "hidden"
js_VisibilityStateVisible = "visible"
js_VisibilityStatePrerender = "prerender"
 
data DocumentReadyState = DocumentReadyStateLoading
                        | DocumentReadyStateInteractive
                        | DocumentReadyStateComplete
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal DocumentReadyState where
        toJSVal DocumentReadyStateLoading
          = toJSVal js_DocumentReadyStateLoading
        toJSVal DocumentReadyStateInteractive
          = toJSVal js_DocumentReadyStateInteractive
        toJSVal DocumentReadyStateComplete
          = toJSVal js_DocumentReadyStateComplete
 
instance FromJSVal DocumentReadyState where
        fromJSVal x
          = x `strictEqual` js_DocumentReadyStateLoading >>=
              \ r ->
                case r of
                    True -> return (Just DocumentReadyStateLoading)
                    False
                      -> x `strictEqual` js_DocumentReadyStateInteractive >>=
                           \ r ->
                             case r of
                                 True -> return (Just DocumentReadyStateInteractive)
                                 False
                                   -> x `strictEqual` js_DocumentReadyStateComplete >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just DocumentReadyStateComplete)
                                              False -> return Nothing
js_DocumentReadyStateLoading = "loading"
js_DocumentReadyStateInteractive = "interactive"
js_DocumentReadyStateComplete = "complete"
 
data ShadowRootMode = ShadowRootModeUserAgent
                    | ShadowRootModeClosed
                    | ShadowRootModeOpen
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ShadowRootMode where
        toJSVal ShadowRootModeUserAgent
          = toJSVal js_ShadowRootModeUserAgent
        toJSVal ShadowRootModeClosed = toJSVal js_ShadowRootModeClosed
        toJSVal ShadowRootModeOpen = toJSVal js_ShadowRootModeOpen
 
instance FromJSVal ShadowRootMode where
        fromJSVal x
          = x `strictEqual` js_ShadowRootModeUserAgent >>=
              \ r ->
                case r of
                    True -> return (Just ShadowRootModeUserAgent)
                    False
                      -> x `strictEqual` js_ShadowRootModeClosed >>=
                           \ r ->
                             case r of
                                 True -> return (Just ShadowRootModeClosed)
                                 False
                                   -> x `strictEqual` js_ShadowRootModeOpen >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ShadowRootModeOpen)
                                              False -> return Nothing
js_ShadowRootModeUserAgent = "user-agent"
js_ShadowRootModeClosed = "closed"
js_ShadowRootModeOpen = "open"
 
data BlobLineEndings = BlobLineEndingsTransparent
                     | BlobLineEndingsNative
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal BlobLineEndings where
        toJSVal BlobLineEndingsTransparent
          = toJSVal js_BlobLineEndingsTransparent
        toJSVal BlobLineEndingsNative = toJSVal js_BlobLineEndingsNative
 
instance FromJSVal BlobLineEndings where
        fromJSVal x
          = x `strictEqual` js_BlobLineEndingsTransparent >>=
              \ r ->
                case r of
                    True -> return (Just BlobLineEndingsTransparent)
                    False
                      -> x `strictEqual` js_BlobLineEndingsNative >>=
                           \ r ->
                             case r of
                                 True -> return (Just BlobLineEndingsNative)
                                 False -> return Nothing
js_BlobLineEndingsTransparent = "transparent"
js_BlobLineEndingsNative = "native"
 
data ImageSmoothingQuality = ImageSmoothingQualityLow
                           | ImageSmoothingQualityMedium
                           | ImageSmoothingQualityHigh
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ImageSmoothingQuality where
        toJSVal ImageSmoothingQualityLow
          = toJSVal js_ImageSmoothingQualityLow
        toJSVal ImageSmoothingQualityMedium
          = toJSVal js_ImageSmoothingQualityMedium
        toJSVal ImageSmoothingQualityHigh
          = toJSVal js_ImageSmoothingQualityHigh
 
instance FromJSVal ImageSmoothingQuality where
        fromJSVal x
          = x `strictEqual` js_ImageSmoothingQualityLow >>=
              \ r ->
                case r of
                    True -> return (Just ImageSmoothingQualityLow)
                    False
                      -> x `strictEqual` js_ImageSmoothingQualityMedium >>=
                           \ r ->
                             case r of
                                 True -> return (Just ImageSmoothingQualityMedium)
                                 False
                                   -> x `strictEqual` js_ImageSmoothingQualityHigh >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ImageSmoothingQualityHigh)
                                              False -> return Nothing
js_ImageSmoothingQualityLow = "low"
js_ImageSmoothingQualityMedium = "medium"
js_ImageSmoothingQualityHigh = "high"
 
data CanvasWindingRule = CanvasWindingRuleNonzero
                       | CanvasWindingRuleEvenodd
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal CanvasWindingRule where
        toJSVal CanvasWindingRuleNonzero
          = toJSVal js_CanvasWindingRuleNonzero
        toJSVal CanvasWindingRuleEvenodd
          = toJSVal js_CanvasWindingRuleEvenodd
 
instance FromJSVal CanvasWindingRule where
        fromJSVal x
          = x `strictEqual` js_CanvasWindingRuleNonzero >>=
              \ r ->
                case r of
                    True -> return (Just CanvasWindingRuleNonzero)
                    False
                      -> x `strictEqual` js_CanvasWindingRuleEvenodd >>=
                           \ r ->
                             case r of
                                 True -> return (Just CanvasWindingRuleEvenodd)
                                 False -> return Nothing
js_CanvasWindingRuleNonzero = "nonzero"
js_CanvasWindingRuleEvenodd = "evenodd"
 
data WebGLPowerPreference = WebGLPowerPreferenceDefault
                          | WebGLPowerPreferenceLowPower
                          | WebGLPowerPreferenceHighPerformance
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGLPowerPreference where
        toJSVal WebGLPowerPreferenceDefault
          = toJSVal js_WebGLPowerPreferenceDefault
        toJSVal WebGLPowerPreferenceLowPower
          = toJSVal js_WebGLPowerPreferenceLowPower
        toJSVal WebGLPowerPreferenceHighPerformance
          = toJSVal js_WebGLPowerPreferenceHighPerformance
 
instance FromJSVal WebGLPowerPreference where
        fromJSVal x
          = x `strictEqual` js_WebGLPowerPreferenceDefault >>=
              \ r ->
                case r of
                    True -> return (Just WebGLPowerPreferenceDefault)
                    False
                      -> x `strictEqual` js_WebGLPowerPreferenceLowPower >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGLPowerPreferenceLowPower)
                                 False
                                   -> x `strictEqual` js_WebGLPowerPreferenceHighPerformance >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return (Just WebGLPowerPreferenceHighPerformance)
                                              False -> return Nothing
js_WebGLPowerPreferenceDefault = "default"
js_WebGLPowerPreferenceLowPower = "low-power"
js_WebGLPowerPreferenceHighPerformance = "high-performance"
 
data WebGPUCompareFunction = WebGPUCompareFunctionNever
                           | WebGPUCompareFunctionLess
                           | WebGPUCompareFunctionEqual
                           | WebGPUCompareFunctionLessequal
                           | WebGPUCompareFunctionGreater
                           | WebGPUCompareFunctionNotequal
                           | WebGPUCompareFunctionGreaterequal
                           | WebGPUCompareFunctionAlways
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUCompareFunction where
        toJSVal WebGPUCompareFunctionNever
          = toJSVal js_WebGPUCompareFunctionNever
        toJSVal WebGPUCompareFunctionLess
          = toJSVal js_WebGPUCompareFunctionLess
        toJSVal WebGPUCompareFunctionEqual
          = toJSVal js_WebGPUCompareFunctionEqual
        toJSVal WebGPUCompareFunctionLessequal
          = toJSVal js_WebGPUCompareFunctionLessequal
        toJSVal WebGPUCompareFunctionGreater
          = toJSVal js_WebGPUCompareFunctionGreater
        toJSVal WebGPUCompareFunctionNotequal
          = toJSVal js_WebGPUCompareFunctionNotequal
        toJSVal WebGPUCompareFunctionGreaterequal
          = toJSVal js_WebGPUCompareFunctionGreaterequal
        toJSVal WebGPUCompareFunctionAlways
          = toJSVal js_WebGPUCompareFunctionAlways
 
instance FromJSVal WebGPUCompareFunction where
        fromJSVal x
          = x `strictEqual` js_WebGPUCompareFunctionNever >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUCompareFunctionNever)
                    False
                      -> x `strictEqual` js_WebGPUCompareFunctionLess >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUCompareFunctionLess)
                                 False
                                   -> x `strictEqual` js_WebGPUCompareFunctionEqual >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUCompareFunctionEqual)
                                              False
                                                -> x `strictEqual` js_WebGPUCompareFunctionLessequal
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     WebGPUCompareFunctionLessequal)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUCompareFunctionGreater
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUCompareFunctionGreater)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_WebGPUCompareFunctionNotequal
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               WebGPUCompareFunctionNotequal)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_WebGPUCompareFunctionGreaterequal
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            WebGPUCompareFunctionGreaterequal)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_WebGPUCompareFunctionAlways
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         WebGPUCompareFunctionAlways)
                                                                                                               False
                                                                                                                 -> return
                                                                                                                      Nothing
js_WebGPUCompareFunctionNever = "never"
js_WebGPUCompareFunctionLess = "less"
js_WebGPUCompareFunctionEqual = "equal"
js_WebGPUCompareFunctionLessequal = "lessequal"
js_WebGPUCompareFunctionGreater = "greater"
js_WebGPUCompareFunctionNotequal = "notequal"
js_WebGPUCompareFunctionGreaterequal = "greaterequal"
js_WebGPUCompareFunctionAlways = "always"
 
data WebGPUPixelFormat = WebGPUPixelFormatBGRA8Unorm
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUPixelFormat where
        toJSVal WebGPUPixelFormatBGRA8Unorm
          = toJSVal js_WebGPUPixelFormatBGRA8Unorm
 
instance FromJSVal WebGPUPixelFormat where
        fromJSVal x
          = x `strictEqual` js_WebGPUPixelFormatBGRA8Unorm >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUPixelFormatBGRA8Unorm)
                    False -> return Nothing
js_WebGPUPixelFormatBGRA8Unorm = "BGRA8Unorm"
 
data WebGPULoadAction = WebGPULoadActionDontcare
                      | WebGPULoadActionLoad
                      | WebGPULoadActionClear
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPULoadAction where
        toJSVal WebGPULoadActionDontcare
          = toJSVal js_WebGPULoadActionDontcare
        toJSVal WebGPULoadActionLoad = toJSVal js_WebGPULoadActionLoad
        toJSVal WebGPULoadActionClear = toJSVal js_WebGPULoadActionClear
 
instance FromJSVal WebGPULoadAction where
        fromJSVal x
          = x `strictEqual` js_WebGPULoadActionDontcare >>=
              \ r ->
                case r of
                    True -> return (Just WebGPULoadActionDontcare)
                    False
                      -> x `strictEqual` js_WebGPULoadActionLoad >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPULoadActionLoad)
                                 False
                                   -> x `strictEqual` js_WebGPULoadActionClear >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPULoadActionClear)
                                              False -> return Nothing
js_WebGPULoadActionDontcare = "dontcare"
js_WebGPULoadActionLoad = "load"
js_WebGPULoadActionClear = "clear"
 
data WebGPUStoreAction = WebGPUStoreActionDontcare
                       | WebGPUStoreActionStore
                       | WebGPUStoreActionMultisampleresolve
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUStoreAction where
        toJSVal WebGPUStoreActionDontcare
          = toJSVal js_WebGPUStoreActionDontcare
        toJSVal WebGPUStoreActionStore = toJSVal js_WebGPUStoreActionStore
        toJSVal WebGPUStoreActionMultisampleresolve
          = toJSVal js_WebGPUStoreActionMultisampleresolve
 
instance FromJSVal WebGPUStoreAction where
        fromJSVal x
          = x `strictEqual` js_WebGPUStoreActionDontcare >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUStoreActionDontcare)
                    False
                      -> x `strictEqual` js_WebGPUStoreActionStore >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUStoreActionStore)
                                 False
                                   -> x `strictEqual` js_WebGPUStoreActionMultisampleresolve >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return (Just WebGPUStoreActionMultisampleresolve)
                                              False -> return Nothing
js_WebGPUStoreActionDontcare = "dontcare"
js_WebGPUStoreActionStore = "store"
js_WebGPUStoreActionMultisampleresolve = "multisampleresolve"
 
data WebGPUPrimitiveType = WebGPUPrimitiveTypePoint
                         | WebGPUPrimitiveTypeLine
                         | WebGPUPrimitiveTypeLinestrip
                         | WebGPUPrimitiveTypeTriangle
                         | WebGPUPrimitiveTypeTrianglestrip
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUPrimitiveType where
        toJSVal WebGPUPrimitiveTypePoint
          = toJSVal js_WebGPUPrimitiveTypePoint
        toJSVal WebGPUPrimitiveTypeLine
          = toJSVal js_WebGPUPrimitiveTypeLine
        toJSVal WebGPUPrimitiveTypeLinestrip
          = toJSVal js_WebGPUPrimitiveTypeLinestrip
        toJSVal WebGPUPrimitiveTypeTriangle
          = toJSVal js_WebGPUPrimitiveTypeTriangle
        toJSVal WebGPUPrimitiveTypeTrianglestrip
          = toJSVal js_WebGPUPrimitiveTypeTrianglestrip
 
instance FromJSVal WebGPUPrimitiveType where
        fromJSVal x
          = x `strictEqual` js_WebGPUPrimitiveTypePoint >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUPrimitiveTypePoint)
                    False
                      -> x `strictEqual` js_WebGPUPrimitiveTypeLine >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUPrimitiveTypeLine)
                                 False
                                   -> x `strictEqual` js_WebGPUPrimitiveTypeLinestrip >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUPrimitiveTypeLinestrip)
                                              False
                                                -> x `strictEqual` js_WebGPUPrimitiveTypeTriangle
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just WebGPUPrimitiveTypeTriangle)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUPrimitiveTypeTrianglestrip
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUPrimitiveTypeTrianglestrip)
                                                                        False -> return Nothing
js_WebGPUPrimitiveTypePoint = "point"
js_WebGPUPrimitiveTypeLine = "line"
js_WebGPUPrimitiveTypeLinestrip = "linestrip"
js_WebGPUPrimitiveTypeTriangle = "triangle"
js_WebGPUPrimitiveTypeTrianglestrip = "trianglestrip"
 
data WebGPUFunctionType = WebGPUFunctionTypeFragment
                        | WebGPUFunctionTypeVertex
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUFunctionType where
        toJSVal WebGPUFunctionTypeFragment
          = toJSVal js_WebGPUFunctionTypeFragment
        toJSVal WebGPUFunctionTypeVertex
          = toJSVal js_WebGPUFunctionTypeVertex
 
instance FromJSVal WebGPUFunctionType where
        fromJSVal x
          = x `strictEqual` js_WebGPUFunctionTypeFragment >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUFunctionTypeFragment)
                    False
                      -> x `strictEqual` js_WebGPUFunctionTypeVertex >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUFunctionTypeVertex)
                                 False -> return Nothing
js_WebGPUFunctionTypeFragment = "fragment"
js_WebGPUFunctionTypeVertex = "vertex"
 
data WebGPUStencilOperation = WebGPUStencilOperationKeep
                            | WebGPUStencilOperationZero
                            | WebGPUStencilOperationReplace
                            | WebGPUStencilOperationIncrementclamp
                            | WebGPUStencilOperationDecrementclamp
                            | WebGPUStencilOperationInvert
                            | WebGPUStencilOperationIncrementwrap
                            | WebGPUStencilOperationDecrementwrap
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUStencilOperation where
        toJSVal WebGPUStencilOperationKeep
          = toJSVal js_WebGPUStencilOperationKeep
        toJSVal WebGPUStencilOperationZero
          = toJSVal js_WebGPUStencilOperationZero
        toJSVal WebGPUStencilOperationReplace
          = toJSVal js_WebGPUStencilOperationReplace
        toJSVal WebGPUStencilOperationIncrementclamp
          = toJSVal js_WebGPUStencilOperationIncrementclamp
        toJSVal WebGPUStencilOperationDecrementclamp
          = toJSVal js_WebGPUStencilOperationDecrementclamp
        toJSVal WebGPUStencilOperationInvert
          = toJSVal js_WebGPUStencilOperationInvert
        toJSVal WebGPUStencilOperationIncrementwrap
          = toJSVal js_WebGPUStencilOperationIncrementwrap
        toJSVal WebGPUStencilOperationDecrementwrap
          = toJSVal js_WebGPUStencilOperationDecrementwrap
 
instance FromJSVal WebGPUStencilOperation where
        fromJSVal x
          = x `strictEqual` js_WebGPUStencilOperationKeep >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUStencilOperationKeep)
                    False
                      -> x `strictEqual` js_WebGPUStencilOperationZero >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUStencilOperationZero)
                                 False
                                   -> x `strictEqual` js_WebGPUStencilOperationReplace >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUStencilOperationReplace)
                                              False
                                                -> x `strictEqual`
                                                     js_WebGPUStencilOperationIncrementclamp
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     WebGPUStencilOperationIncrementclamp)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUStencilOperationDecrementclamp
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUStencilOperationDecrementclamp)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_WebGPUStencilOperationInvert
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               WebGPUStencilOperationInvert)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_WebGPUStencilOperationIncrementwrap
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            WebGPUStencilOperationIncrementwrap)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_WebGPUStencilOperationDecrementwrap
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         WebGPUStencilOperationDecrementwrap)
                                                                                                               False
                                                                                                                 -> return
                                                                                                                      Nothing
js_WebGPUStencilOperationKeep = "keep"
js_WebGPUStencilOperationZero = "zero"
js_WebGPUStencilOperationReplace = "replace"
js_WebGPUStencilOperationIncrementclamp = "incrementclamp"
js_WebGPUStencilOperationDecrementclamp = "decrementclamp"
js_WebGPUStencilOperationInvert = "invert"
js_WebGPUStencilOperationIncrementwrap = "incrementwrap"
js_WebGPUStencilOperationDecrementwrap = "decrementwrap"
 
data WebGPUStatus = WebGPUStatusNotenqueued
                  | WebGPUStatusEnqueued
                  | WebGPUStatusCommitted
                  | WebGPUStatusScheduled
                  | WebGPUStatusCompleted
                  | WebGPUStatusError
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUStatus where
        toJSVal WebGPUStatusNotenqueued
          = toJSVal js_WebGPUStatusNotenqueued
        toJSVal WebGPUStatusEnqueued = toJSVal js_WebGPUStatusEnqueued
        toJSVal WebGPUStatusCommitted = toJSVal js_WebGPUStatusCommitted
        toJSVal WebGPUStatusScheduled = toJSVal js_WebGPUStatusScheduled
        toJSVal WebGPUStatusCompleted = toJSVal js_WebGPUStatusCompleted
        toJSVal WebGPUStatusError = toJSVal js_WebGPUStatusError
 
instance FromJSVal WebGPUStatus where
        fromJSVal x
          = x `strictEqual` js_WebGPUStatusNotenqueued >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUStatusNotenqueued)
                    False
                      -> x `strictEqual` js_WebGPUStatusEnqueued >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUStatusEnqueued)
                                 False
                                   -> x `strictEqual` js_WebGPUStatusCommitted >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUStatusCommitted)
                                              False
                                                -> x `strictEqual` js_WebGPUStatusScheduled >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return (Just WebGPUStatusScheduled)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUStatusCompleted
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUStatusCompleted)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_WebGPUStatusError
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               WebGPUStatusError)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_WebGPUStatusNotenqueued = "notenqueued"
js_WebGPUStatusEnqueued = "enqueued"
js_WebGPUStatusCommitted = "committed"
js_WebGPUStatusScheduled = "scheduled"
js_WebGPUStatusCompleted = "completed"
js_WebGPUStatusError = "error"
 
data WebGPUSamplerAddressMode = WebGPUSamplerAddressModeClamptoedge
                              | WebGPUSamplerAddressModeMirrorclamptoedge
                              | WebGPUSamplerAddressModeRepeat
                              | WebGPUSamplerAddressModeMirrorrepeat
                              | WebGPUSamplerAddressModeClamptozero
                              deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUSamplerAddressMode where
        toJSVal WebGPUSamplerAddressModeClamptoedge
          = toJSVal js_WebGPUSamplerAddressModeClamptoedge
        toJSVal WebGPUSamplerAddressModeMirrorclamptoedge
          = toJSVal js_WebGPUSamplerAddressModeMirrorclamptoedge
        toJSVal WebGPUSamplerAddressModeRepeat
          = toJSVal js_WebGPUSamplerAddressModeRepeat
        toJSVal WebGPUSamplerAddressModeMirrorrepeat
          = toJSVal js_WebGPUSamplerAddressModeMirrorrepeat
        toJSVal WebGPUSamplerAddressModeClamptozero
          = toJSVal js_WebGPUSamplerAddressModeClamptozero
 
instance FromJSVal WebGPUSamplerAddressMode where
        fromJSVal x
          = x `strictEqual` js_WebGPUSamplerAddressModeClamptoedge >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUSamplerAddressModeClamptoedge)
                    False
                      -> x `strictEqual` js_WebGPUSamplerAddressModeMirrorclamptoedge >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUSamplerAddressModeMirrorclamptoedge)
                                 False
                                   -> x `strictEqual` js_WebGPUSamplerAddressModeRepeat >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUSamplerAddressModeRepeat)
                                              False
                                                -> x `strictEqual`
                                                     js_WebGPUSamplerAddressModeMirrorrepeat
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     WebGPUSamplerAddressModeMirrorrepeat)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUSamplerAddressModeClamptozero
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUSamplerAddressModeClamptozero)
                                                                        False -> return Nothing
js_WebGPUSamplerAddressModeClamptoedge = "clamptoedge"
js_WebGPUSamplerAddressModeMirrorclamptoedge = "mirrorclamptoedge"
js_WebGPUSamplerAddressModeRepeat = "repeat"
js_WebGPUSamplerAddressModeMirrorrepeat = "mirrorrepeat"
js_WebGPUSamplerAddressModeClamptozero = "clamptozero"
 
data WebGPUSamplerMinMagFilter = WebGPUSamplerMinMagFilterNearest
                               | WebGPUSamplerMinMagFilterLinear
                               deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUSamplerMinMagFilter where
        toJSVal WebGPUSamplerMinMagFilterNearest
          = toJSVal js_WebGPUSamplerMinMagFilterNearest
        toJSVal WebGPUSamplerMinMagFilterLinear
          = toJSVal js_WebGPUSamplerMinMagFilterLinear
 
instance FromJSVal WebGPUSamplerMinMagFilter where
        fromJSVal x
          = x `strictEqual` js_WebGPUSamplerMinMagFilterNearest >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUSamplerMinMagFilterNearest)
                    False
                      -> x `strictEqual` js_WebGPUSamplerMinMagFilterLinear >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUSamplerMinMagFilterLinear)
                                 False -> return Nothing
js_WebGPUSamplerMinMagFilterNearest = "nearest"
js_WebGPUSamplerMinMagFilterLinear = "linear"
 
data WebGPUSamplerMipFilter = WebGPUSamplerMipFilterNotmipmapped
                            | WebGPUSamplerMipFilterNearest
                            | WebGPUSamplerMipFilterLinear
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUSamplerMipFilter where
        toJSVal WebGPUSamplerMipFilterNotmipmapped
          = toJSVal js_WebGPUSamplerMipFilterNotmipmapped
        toJSVal WebGPUSamplerMipFilterNearest
          = toJSVal js_WebGPUSamplerMipFilterNearest
        toJSVal WebGPUSamplerMipFilterLinear
          = toJSVal js_WebGPUSamplerMipFilterLinear
 
instance FromJSVal WebGPUSamplerMipFilter where
        fromJSVal x
          = x `strictEqual` js_WebGPUSamplerMipFilterNotmipmapped >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUSamplerMipFilterNotmipmapped)
                    False
                      -> x `strictEqual` js_WebGPUSamplerMipFilterNearest >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUSamplerMipFilterNearest)
                                 False
                                   -> x `strictEqual` js_WebGPUSamplerMipFilterLinear >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUSamplerMipFilterLinear)
                                              False -> return Nothing
js_WebGPUSamplerMipFilterNotmipmapped = "notmipmapped"
js_WebGPUSamplerMipFilterNearest = "nearest"
js_WebGPUSamplerMipFilterLinear = "linear"
 
data WebGPUCullMode = WebGPUCullModeNone
                    | WebGPUCullModeFront
                    | WebGPUCullModeBack
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUCullMode where
        toJSVal WebGPUCullModeNone = toJSVal js_WebGPUCullModeNone
        toJSVal WebGPUCullModeFront = toJSVal js_WebGPUCullModeFront
        toJSVal WebGPUCullModeBack = toJSVal js_WebGPUCullModeBack
 
instance FromJSVal WebGPUCullMode where
        fromJSVal x
          = x `strictEqual` js_WebGPUCullModeNone >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUCullModeNone)
                    False
                      -> x `strictEqual` js_WebGPUCullModeFront >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUCullModeFront)
                                 False
                                   -> x `strictEqual` js_WebGPUCullModeBack >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUCullModeBack)
                                              False -> return Nothing
js_WebGPUCullModeNone = "none"
js_WebGPUCullModeFront = "front"
js_WebGPUCullModeBack = "back"
 
data WebGPUIndexType = WebGPUIndexTypeUint16
                     | WebGPUIndexTypeUint32
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUIndexType where
        toJSVal WebGPUIndexTypeUint16 = toJSVal js_WebGPUIndexTypeUint16
        toJSVal WebGPUIndexTypeUint32 = toJSVal js_WebGPUIndexTypeUint32
 
instance FromJSVal WebGPUIndexType where
        fromJSVal x
          = x `strictEqual` js_WebGPUIndexTypeUint16 >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUIndexTypeUint16)
                    False
                      -> x `strictEqual` js_WebGPUIndexTypeUint32 >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUIndexTypeUint32)
                                 False -> return Nothing
js_WebGPUIndexTypeUint16 = "uint16"
js_WebGPUIndexTypeUint32 = "uint32"
 
data WebGPUVisibilityResultMode = WebGPUVisibilityResultModeDisabled
                                | WebGPUVisibilityResultModeBoolean
                                | WebGPUVisibilityResultModeCounting
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUVisibilityResultMode where
        toJSVal WebGPUVisibilityResultModeDisabled
          = toJSVal js_WebGPUVisibilityResultModeDisabled
        toJSVal WebGPUVisibilityResultModeBoolean
          = toJSVal js_WebGPUVisibilityResultModeBoolean
        toJSVal WebGPUVisibilityResultModeCounting
          = toJSVal js_WebGPUVisibilityResultModeCounting
 
instance FromJSVal WebGPUVisibilityResultMode where
        fromJSVal x
          = x `strictEqual` js_WebGPUVisibilityResultModeDisabled >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUVisibilityResultModeDisabled)
                    False
                      -> x `strictEqual` js_WebGPUVisibilityResultModeBoolean >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUVisibilityResultModeBoolean)
                                 False
                                   -> x `strictEqual` js_WebGPUVisibilityResultModeCounting >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return (Just WebGPUVisibilityResultModeCounting)
                                              False -> return Nothing
js_WebGPUVisibilityResultModeDisabled = "disabled"
js_WebGPUVisibilityResultModeBoolean = "boolean"
js_WebGPUVisibilityResultModeCounting = "counting"
 
data WebGPUWinding = WebGPUWindingClockwise
                   | WebGPUWindingCounterclockwise
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUWinding where
        toJSVal WebGPUWindingClockwise = toJSVal js_WebGPUWindingClockwise
        toJSVal WebGPUWindingCounterclockwise
          = toJSVal js_WebGPUWindingCounterclockwise
 
instance FromJSVal WebGPUWinding where
        fromJSVal x
          = x `strictEqual` js_WebGPUWindingClockwise >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUWindingClockwise)
                    False
                      -> x `strictEqual` js_WebGPUWindingCounterclockwise >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUWindingCounterclockwise)
                                 False -> return Nothing
js_WebGPUWindingClockwise = "clockwise"
js_WebGPUWindingCounterclockwise = "counterclockwise"
 
data WebGPUDepthClipMode = WebGPUDepthClipModeClip
                         | WebGPUDepthClipModeClamp
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUDepthClipMode where
        toJSVal WebGPUDepthClipModeClip
          = toJSVal js_WebGPUDepthClipModeClip
        toJSVal WebGPUDepthClipModeClamp
          = toJSVal js_WebGPUDepthClipModeClamp
 
instance FromJSVal WebGPUDepthClipMode where
        fromJSVal x
          = x `strictEqual` js_WebGPUDepthClipModeClip >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUDepthClipModeClip)
                    False
                      -> x `strictEqual` js_WebGPUDepthClipModeClamp >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUDepthClipModeClamp)
                                 False -> return Nothing
js_WebGPUDepthClipModeClip = "clip"
js_WebGPUDepthClipModeClamp = "clamp"
 
data WebGPUTriangleFillMode = WebGPUTriangleFillModeFill
                            | WebGPUTriangleFillModeLines
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUTriangleFillMode where
        toJSVal WebGPUTriangleFillModeFill
          = toJSVal js_WebGPUTriangleFillModeFill
        toJSVal WebGPUTriangleFillModeLines
          = toJSVal js_WebGPUTriangleFillModeLines
 
instance FromJSVal WebGPUTriangleFillMode where
        fromJSVal x
          = x `strictEqual` js_WebGPUTriangleFillModeFill >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUTriangleFillModeFill)
                    False
                      -> x `strictEqual` js_WebGPUTriangleFillModeLines >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUTriangleFillModeLines)
                                 False -> return Nothing
js_WebGPUTriangleFillModeFill = "fill"
js_WebGPUTriangleFillModeLines = "lines"
 
data WebGPUCPUCacheMode = WebGPUCPUCacheModeDefaultcache
                        | WebGPUCPUCacheModeWritecombined
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUCPUCacheMode where
        toJSVal WebGPUCPUCacheModeDefaultcache
          = toJSVal js_WebGPUCPUCacheModeDefaultcache
        toJSVal WebGPUCPUCacheModeWritecombined
          = toJSVal js_WebGPUCPUCacheModeWritecombined
 
instance FromJSVal WebGPUCPUCacheMode where
        fromJSVal x
          = x `strictEqual` js_WebGPUCPUCacheModeDefaultcache >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUCPUCacheModeDefaultcache)
                    False
                      -> x `strictEqual` js_WebGPUCPUCacheModeWritecombined >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUCPUCacheModeWritecombined)
                                 False -> return Nothing
js_WebGPUCPUCacheModeDefaultcache = "defaultcache"
js_WebGPUCPUCacheModeWritecombined = "writecombined"
 
data WebGPUStorageMode = WebGPUStorageModeShared
                       | WebGPUStorageModeManaged
                       | WebGPUStorageModePrivate
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUStorageMode where
        toJSVal WebGPUStorageModeShared
          = toJSVal js_WebGPUStorageModeShared
        toJSVal WebGPUStorageModeManaged
          = toJSVal js_WebGPUStorageModeManaged
        toJSVal WebGPUStorageModePrivate
          = toJSVal js_WebGPUStorageModePrivate
 
instance FromJSVal WebGPUStorageMode where
        fromJSVal x
          = x `strictEqual` js_WebGPUStorageModeShared >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUStorageModeShared)
                    False
                      -> x `strictEqual` js_WebGPUStorageModeManaged >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUStorageModeManaged)
                                 False
                                   -> x `strictEqual` js_WebGPUStorageModePrivate >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUStorageModePrivate)
                                              False -> return Nothing
js_WebGPUStorageModeShared = "shared"
js_WebGPUStorageModeManaged = "managed"
js_WebGPUStorageModePrivate = "private"
 
data WebGPUResourceOptions = WebGPUResourceOptionsCpucachemodedefaultcache
                           | WebGPUResourceOptionsCpucachemodewritecombined
                           | WebGPUResourceOptionsStoragemodeshared
                           | WebGPUResourceOptionsStoragemodemanaged
                           | WebGPUResourceOptionsStoragemodeprivate
                           | WebGPUResourceOptionsOptioncpucachemodedefaultcache
                           | WebGPUResourceOptionsOptioncpucachemodewritecombined
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUResourceOptions where
        toJSVal WebGPUResourceOptionsCpucachemodedefaultcache
          = toJSVal js_WebGPUResourceOptionsCpucachemodedefaultcache
        toJSVal WebGPUResourceOptionsCpucachemodewritecombined
          = toJSVal js_WebGPUResourceOptionsCpucachemodewritecombined
        toJSVal WebGPUResourceOptionsStoragemodeshared
          = toJSVal js_WebGPUResourceOptionsStoragemodeshared
        toJSVal WebGPUResourceOptionsStoragemodemanaged
          = toJSVal js_WebGPUResourceOptionsStoragemodemanaged
        toJSVal WebGPUResourceOptionsStoragemodeprivate
          = toJSVal js_WebGPUResourceOptionsStoragemodeprivate
        toJSVal WebGPUResourceOptionsOptioncpucachemodedefaultcache
          = toJSVal js_WebGPUResourceOptionsOptioncpucachemodedefaultcache
        toJSVal WebGPUResourceOptionsOptioncpucachemodewritecombined
          = toJSVal js_WebGPUResourceOptionsOptioncpucachemodewritecombined
 
instance FromJSVal WebGPUResourceOptions where
        fromJSVal x
          = x `strictEqual` js_WebGPUResourceOptionsCpucachemodedefaultcache
              >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUResourceOptionsCpucachemodedefaultcache)
                    False
                      -> x `strictEqual`
                           js_WebGPUResourceOptionsCpucachemodewritecombined
                           >>=
                           \ r ->
                             case r of
                                 True
                                   -> return (Just WebGPUResourceOptionsCpucachemodewritecombined)
                                 False
                                   -> x `strictEqual` js_WebGPUResourceOptionsStoragemodeshared >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return
                                                     (Just WebGPUResourceOptionsStoragemodeshared)
                                              False
                                                -> x `strictEqual`
                                                     js_WebGPUResourceOptionsStoragemodemanaged
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     WebGPUResourceOptionsStoragemodemanaged)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUResourceOptionsStoragemodeprivate
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUResourceOptionsStoragemodeprivate)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_WebGPUResourceOptionsOptioncpucachemodedefaultcache
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               WebGPUResourceOptionsOptioncpucachemodedefaultcache)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_WebGPUResourceOptionsOptioncpucachemodewritecombined
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            WebGPUResourceOptionsOptioncpucachemodewritecombined)
                                                                                                  False
                                                                                                    -> return
                                                                                                         Nothing
js_WebGPUResourceOptionsCpucachemodedefaultcache
  = "cpucachemodedefaultcache"
js_WebGPUResourceOptionsCpucachemodewritecombined
  = "cpucachemodewritecombined"
js_WebGPUResourceOptionsStoragemodeshared = "storagemodeshared"
js_WebGPUResourceOptionsStoragemodemanaged = "storagemodemanaged"
js_WebGPUResourceOptionsStoragemodeprivate = "storagemodeprivate"
js_WebGPUResourceOptionsOptioncpucachemodedefaultcache
  = "optioncpucachemodedefaultcache"
js_WebGPUResourceOptionsOptioncpucachemodewritecombined
  = "optioncpucachemodewritecombined"
 
data WebGPUTextureUsage = WebGPUTextureUsageUnknown
                        | WebGPUTextureUsageShaderread
                        | WebGPUTextureUsageShaderwrite
                        | WebGPUTextureUsageRendertarget
                        | WebGPUTextureUsagePixelformatview
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUTextureUsage where
        toJSVal WebGPUTextureUsageUnknown
          = toJSVal js_WebGPUTextureUsageUnknown
        toJSVal WebGPUTextureUsageShaderread
          = toJSVal js_WebGPUTextureUsageShaderread
        toJSVal WebGPUTextureUsageShaderwrite
          = toJSVal js_WebGPUTextureUsageShaderwrite
        toJSVal WebGPUTextureUsageRendertarget
          = toJSVal js_WebGPUTextureUsageRendertarget
        toJSVal WebGPUTextureUsagePixelformatview
          = toJSVal js_WebGPUTextureUsagePixelformatview
 
instance FromJSVal WebGPUTextureUsage where
        fromJSVal x
          = x `strictEqual` js_WebGPUTextureUsageUnknown >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUTextureUsageUnknown)
                    False
                      -> x `strictEqual` js_WebGPUTextureUsageShaderread >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUTextureUsageShaderread)
                                 False
                                   -> x `strictEqual` js_WebGPUTextureUsageShaderwrite >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUTextureUsageShaderwrite)
                                              False
                                                -> x `strictEqual` js_WebGPUTextureUsageRendertarget
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     WebGPUTextureUsageRendertarget)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUTextureUsagePixelformatview
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUTextureUsagePixelformatview)
                                                                        False -> return Nothing
js_WebGPUTextureUsageUnknown = "unknown"
js_WebGPUTextureUsageShaderread = "shaderread"
js_WebGPUTextureUsageShaderwrite = "shaderwrite"
js_WebGPUTextureUsageRendertarget = "rendertarget"
js_WebGPUTextureUsagePixelformatview = "pixelformatview"
 
data WebGPUBlendOperation = WebGPUBlendOperationAdd
                          | WebGPUBlendOperationSubtract
                          | WebGPUBlendOperationReversesubtract
                          | WebGPUBlendOperationMin
                          | WebGPUBlendOperationMax
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUBlendOperation where
        toJSVal WebGPUBlendOperationAdd
          = toJSVal js_WebGPUBlendOperationAdd
        toJSVal WebGPUBlendOperationSubtract
          = toJSVal js_WebGPUBlendOperationSubtract
        toJSVal WebGPUBlendOperationReversesubtract
          = toJSVal js_WebGPUBlendOperationReversesubtract
        toJSVal WebGPUBlendOperationMin
          = toJSVal js_WebGPUBlendOperationMin
        toJSVal WebGPUBlendOperationMax
          = toJSVal js_WebGPUBlendOperationMax
 
instance FromJSVal WebGPUBlendOperation where
        fromJSVal x
          = x `strictEqual` js_WebGPUBlendOperationAdd >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUBlendOperationAdd)
                    False
                      -> x `strictEqual` js_WebGPUBlendOperationSubtract >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUBlendOperationSubtract)
                                 False
                                   -> x `strictEqual` js_WebGPUBlendOperationReversesubtract >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return (Just WebGPUBlendOperationReversesubtract)
                                              False
                                                -> x `strictEqual` js_WebGPUBlendOperationMin >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just WebGPUBlendOperationMin)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUBlendOperationMax
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUBlendOperationMax)
                                                                        False -> return Nothing
js_WebGPUBlendOperationAdd = "add"
js_WebGPUBlendOperationSubtract = "subtract"
js_WebGPUBlendOperationReversesubtract = "reversesubtract"
js_WebGPUBlendOperationMin = "min"
js_WebGPUBlendOperationMax = "max"
 
data WebGPUBlendFactor = WebGPUBlendFactorZero
                       | WebGPUBlendFactorOne
                       | WebGPUBlendFactorSourcecolor
                       | WebGPUBlendFactorOneminussourcecolor
                       | WebGPUBlendFactorSourcealpha
                       | WebGPUBlendFactorOneminussourcealpha
                       | WebGPUBlendFactorDestinationcolor
                       | WebGPUBlendFactorOneminusdestinationcolor
                       | WebGPUBlendFactorDestinationalpha
                       | WebGPUBlendFactorOneminusdestinationalpha
                       | WebGPUBlendFactorSourcealphasaturated
                       | WebGPUBlendFactorBlendcolor
                       | WebGPUBlendFactorOneminusblendcolor
                       | WebGPUBlendFactorBlendalpha
                       | WebGPUBlendFactorOneminusblendalpha
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUBlendFactor where
        toJSVal WebGPUBlendFactorZero = toJSVal js_WebGPUBlendFactorZero
        toJSVal WebGPUBlendFactorOne = toJSVal js_WebGPUBlendFactorOne
        toJSVal WebGPUBlendFactorSourcecolor
          = toJSVal js_WebGPUBlendFactorSourcecolor
        toJSVal WebGPUBlendFactorOneminussourcecolor
          = toJSVal js_WebGPUBlendFactorOneminussourcecolor
        toJSVal WebGPUBlendFactorSourcealpha
          = toJSVal js_WebGPUBlendFactorSourcealpha
        toJSVal WebGPUBlendFactorOneminussourcealpha
          = toJSVal js_WebGPUBlendFactorOneminussourcealpha
        toJSVal WebGPUBlendFactorDestinationcolor
          = toJSVal js_WebGPUBlendFactorDestinationcolor
        toJSVal WebGPUBlendFactorOneminusdestinationcolor
          = toJSVal js_WebGPUBlendFactorOneminusdestinationcolor
        toJSVal WebGPUBlendFactorDestinationalpha
          = toJSVal js_WebGPUBlendFactorDestinationalpha
        toJSVal WebGPUBlendFactorOneminusdestinationalpha
          = toJSVal js_WebGPUBlendFactorOneminusdestinationalpha
        toJSVal WebGPUBlendFactorSourcealphasaturated
          = toJSVal js_WebGPUBlendFactorSourcealphasaturated
        toJSVal WebGPUBlendFactorBlendcolor
          = toJSVal js_WebGPUBlendFactorBlendcolor
        toJSVal WebGPUBlendFactorOneminusblendcolor
          = toJSVal js_WebGPUBlendFactorOneminusblendcolor
        toJSVal WebGPUBlendFactorBlendalpha
          = toJSVal js_WebGPUBlendFactorBlendalpha
        toJSVal WebGPUBlendFactorOneminusblendalpha
          = toJSVal js_WebGPUBlendFactorOneminusblendalpha
 
instance FromJSVal WebGPUBlendFactor where
        fromJSVal x
          = x `strictEqual` js_WebGPUBlendFactorZero >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUBlendFactorZero)
                    False
                      -> x `strictEqual` js_WebGPUBlendFactorOne >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUBlendFactorOne)
                                 False
                                   -> x `strictEqual` js_WebGPUBlendFactorSourcecolor >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUBlendFactorSourcecolor)
                                              False
                                                -> x `strictEqual`
                                                     js_WebGPUBlendFactorOneminussourcecolor
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     WebGPUBlendFactorOneminussourcecolor)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUBlendFactorSourcealpha
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUBlendFactorSourcealpha)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_WebGPUBlendFactorOneminussourcealpha
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               WebGPUBlendFactorOneminussourcealpha)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_WebGPUBlendFactorDestinationcolor
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            WebGPUBlendFactorDestinationcolor)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_WebGPUBlendFactorOneminusdestinationcolor
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         WebGPUBlendFactorOneminusdestinationcolor)
                                                                                                               False
                                                                                                                 -> x `strictEqual`
                                                                                                                      js_WebGPUBlendFactorDestinationalpha
                                                                                                                      >>=
                                                                                                                      \ r
                                                                                                                        ->
                                                                                                                        case
                                                                                                                          r
                                                                                                                          of
                                                                                                                            True
                                                                                                                              -> return
                                                                                                                                   (Just
                                                                                                                                      WebGPUBlendFactorDestinationalpha)
                                                                                                                            False
                                                                                                                              -> x `strictEqual`
                                                                                                                                   js_WebGPUBlendFactorOneminusdestinationalpha
                                                                                                                                   >>=
                                                                                                                                   \ r
                                                                                                                                     ->
                                                                                                                                     case
                                                                                                                                       r
                                                                                                                                       of
                                                                                                                                         True
                                                                                                                                           -> return
                                                                                                                                                (Just
                                                                                                                                                   WebGPUBlendFactorOneminusdestinationalpha)
                                                                                                                                         False
                                                                                                                                           -> x `strictEqual`
                                                                                                                                                js_WebGPUBlendFactorSourcealphasaturated
                                                                                                                                                >>=
                                                                                                                                                \ r
                                                                                                                                                  ->
                                                                                                                                                  case
                                                                                                                                                    r
                                                                                                                                                    of
                                                                                                                                                      True
                                                                                                                                                        -> return
                                                                                                                                                             (Just
                                                                                                                                                                WebGPUBlendFactorSourcealphasaturated)
                                                                                                                                                      False
                                                                                                                                                        -> x `strictEqual`
                                                                                                                                                             js_WebGPUBlendFactorBlendcolor
                                                                                                                                                             >>=
                                                                                                                                                             \ r
                                                                                                                                                               ->
                                                                                                                                                               case
                                                                                                                                                                 r
                                                                                                                                                                 of
                                                                                                                                                                   True
                                                                                                                                                                     -> return
                                                                                                                                                                          (Just
                                                                                                                                                                             WebGPUBlendFactorBlendcolor)
                                                                                                                                                                   False
                                                                                                                                                                     -> x `strictEqual`
                                                                                                                                                                          js_WebGPUBlendFactorOneminusblendcolor
                                                                                                                                                                          >>=
                                                                                                                                                                          \ r
                                                                                                                                                                            ->
                                                                                                                                                                            case
                                                                                                                                                                              r
                                                                                                                                                                              of
                                                                                                                                                                                True
                                                                                                                                                                                  -> return
                                                                                                                                                                                       (Just
                                                                                                                                                                                          WebGPUBlendFactorOneminusblendcolor)
                                                                                                                                                                                False
                                                                                                                                                                                  -> x `strictEqual`
                                                                                                                                                                                       js_WebGPUBlendFactorBlendalpha
                                                                                                                                                                                       >>=
                                                                                                                                                                                       \ r
                                                                                                                                                                                         ->
                                                                                                                                                                                         case
                                                                                                                                                                                           r
                                                                                                                                                                                           of
                                                                                                                                                                                             True
                                                                                                                                                                                               -> return
                                                                                                                                                                                                    (Just
                                                                                                                                                                                                       WebGPUBlendFactorBlendalpha)
                                                                                                                                                                                             False
                                                                                                                                                                                               -> x `strictEqual`
                                                                                                                                                                                                    js_WebGPUBlendFactorOneminusblendalpha
                                                                                                                                                                                                    >>=
                                                                                                                                                                                                    \ r
                                                                                                                                                                                                      ->
                                                                                                                                                                                                      case
                                                                                                                                                                                                        r
                                                                                                                                                                                                        of
                                                                                                                                                                                                          True
                                                                                                                                                                                                            -> return
                                                                                                                                                                                                                 (Just
                                                                                                                                                                                                                    WebGPUBlendFactorOneminusblendalpha)
                                                                                                                                                                                                          False
                                                                                                                                                                                                            -> return
                                                                                                                                                                                                                 Nothing
js_WebGPUBlendFactorZero = "zero"
js_WebGPUBlendFactorOne = "one"
js_WebGPUBlendFactorSourcecolor = "sourcecolor"
js_WebGPUBlendFactorOneminussourcecolor = "oneminussourcecolor"
js_WebGPUBlendFactorSourcealpha = "sourcealpha"
js_WebGPUBlendFactorOneminussourcealpha = "oneminussourcealpha"
js_WebGPUBlendFactorDestinationcolor = "destinationcolor"
js_WebGPUBlendFactorOneminusdestinationcolor
  = "oneminusdestinationcolor"
js_WebGPUBlendFactorDestinationalpha = "destinationalpha"
js_WebGPUBlendFactorOneminusdestinationalpha
  = "oneminusdestinationalpha"
js_WebGPUBlendFactorSourcealphasaturated = "sourcealphasaturated"
js_WebGPUBlendFactorBlendcolor = "blendcolor"
js_WebGPUBlendFactorOneminusblendcolor = "oneminusblendcolor"
js_WebGPUBlendFactorBlendalpha = "blendalpha"
js_WebGPUBlendFactorOneminusblendalpha = "oneminusblendalpha"
 
data WebGPUColorWriteMask = WebGPUColorWriteMaskNone
                          | WebGPUColorWriteMaskRed
                          | WebGPUColorWriteMaskGreen
                          | WebGPUColorWriteMaskBlue
                          | WebGPUColorWriteMaskAlpha
                          | WebGPUColorWriteMaskAll
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUColorWriteMask where
        toJSVal WebGPUColorWriteMaskNone
          = toJSVal js_WebGPUColorWriteMaskNone
        toJSVal WebGPUColorWriteMaskRed
          = toJSVal js_WebGPUColorWriteMaskRed
        toJSVal WebGPUColorWriteMaskGreen
          = toJSVal js_WebGPUColorWriteMaskGreen
        toJSVal WebGPUColorWriteMaskBlue
          = toJSVal js_WebGPUColorWriteMaskBlue
        toJSVal WebGPUColorWriteMaskAlpha
          = toJSVal js_WebGPUColorWriteMaskAlpha
        toJSVal WebGPUColorWriteMaskAll
          = toJSVal js_WebGPUColorWriteMaskAll
 
instance FromJSVal WebGPUColorWriteMask where
        fromJSVal x
          = x `strictEqual` js_WebGPUColorWriteMaskNone >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUColorWriteMaskNone)
                    False
                      -> x `strictEqual` js_WebGPUColorWriteMaskRed >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUColorWriteMaskRed)
                                 False
                                   -> x `strictEqual` js_WebGPUColorWriteMaskGreen >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just WebGPUColorWriteMaskGreen)
                                              False
                                                -> x `strictEqual` js_WebGPUColorWriteMaskBlue >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just WebGPUColorWriteMaskBlue)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_WebGPUColorWriteMaskAlpha
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  WebGPUColorWriteMaskAlpha)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_WebGPUColorWriteMaskAll
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               WebGPUColorWriteMaskAll)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_WebGPUColorWriteMaskNone = "none"
js_WebGPUColorWriteMaskRed = "red"
js_WebGPUColorWriteMaskGreen = "green"
js_WebGPUColorWriteMaskBlue = "blue"
js_WebGPUColorWriteMaskAlpha = "alpha"
js_WebGPUColorWriteMaskAll = "all"
 
data WebGPUMultisampleDepthResolveFilter = WebGPUMultisampleDepthResolveFilterSample0
                                         | WebGPUMultisampleDepthResolveFilterMin
                                         | WebGPUMultisampleDepthResolveFilterMax
                                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUMultisampleDepthResolveFilter where
        toJSVal WebGPUMultisampleDepthResolveFilterSample0
          = toJSVal js_WebGPUMultisampleDepthResolveFilterSample0
        toJSVal WebGPUMultisampleDepthResolveFilterMin
          = toJSVal js_WebGPUMultisampleDepthResolveFilterMin
        toJSVal WebGPUMultisampleDepthResolveFilterMax
          = toJSVal js_WebGPUMultisampleDepthResolveFilterMax
 
instance FromJSVal WebGPUMultisampleDepthResolveFilter where
        fromJSVal x
          = x `strictEqual` js_WebGPUMultisampleDepthResolveFilterSample0 >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUMultisampleDepthResolveFilterSample0)
                    False
                      -> x `strictEqual` js_WebGPUMultisampleDepthResolveFilterMin >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUMultisampleDepthResolveFilterMin)
                                 False
                                   -> x `strictEqual` js_WebGPUMultisampleDepthResolveFilterMax >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return
                                                     (Just WebGPUMultisampleDepthResolveFilterMax)
                                              False -> return Nothing
js_WebGPUMultisampleDepthResolveFilterSample0 = "sample0"
js_WebGPUMultisampleDepthResolveFilterMin = "min"
js_WebGPUMultisampleDepthResolveFilterMax = "max"
 
data WebGPUFeatureSet = WebGPUFeatureSetLevel1
                      | WebGPUFeatureSetLevel2
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal WebGPUFeatureSet where
        toJSVal WebGPUFeatureSetLevel1 = toJSVal js_WebGPUFeatureSetLevel1
        toJSVal WebGPUFeatureSetLevel2 = toJSVal js_WebGPUFeatureSetLevel2
 
instance FromJSVal WebGPUFeatureSet where
        fromJSVal x
          = x `strictEqual` js_WebGPUFeatureSetLevel1 >>=
              \ r ->
                case r of
                    True -> return (Just WebGPUFeatureSetLevel1)
                    False
                      -> x `strictEqual` js_WebGPUFeatureSetLevel2 >>=
                           \ r ->
                             case r of
                                 True -> return (Just WebGPUFeatureSetLevel2)
                                 False -> return Nothing
js_WebGPUFeatureSetLevel1 = "level1"
js_WebGPUFeatureSetLevel2 = "level2"
 
data VideoPresentationMode = VideoPresentationModeFullscreen
                           | VideoPresentationModePictureInPicture
                           | VideoPresentationModeInline
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal VideoPresentationMode where
        toJSVal VideoPresentationModeFullscreen
          = toJSVal js_VideoPresentationModeFullscreen
        toJSVal VideoPresentationModePictureInPicture
          = toJSVal js_VideoPresentationModePictureInPicture
        toJSVal VideoPresentationModeInline
          = toJSVal js_VideoPresentationModeInline
 
instance FromJSVal VideoPresentationMode where
        fromJSVal x
          = x `strictEqual` js_VideoPresentationModeFullscreen >>=
              \ r ->
                case r of
                    True -> return (Just VideoPresentationModeFullscreen)
                    False
                      -> x `strictEqual` js_VideoPresentationModePictureInPicture >>=
                           \ r ->
                             case r of
                                 True -> return (Just VideoPresentationModePictureInPicture)
                                 False
                                   -> x `strictEqual` js_VideoPresentationModeInline >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just VideoPresentationModeInline)
                                              False -> return Nothing
js_VideoPresentationModeFullscreen = "fullscreen"
js_VideoPresentationModePictureInPicture = "picture-in-picture"
js_VideoPresentationModeInline = "inline"
 
data TextTrackMode = TextTrackModeDisabled
                   | TextTrackModeHidden
                   | TextTrackModeShowing
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal TextTrackMode where
        toJSVal TextTrackModeDisabled = toJSVal js_TextTrackModeDisabled
        toJSVal TextTrackModeHidden = toJSVal js_TextTrackModeHidden
        toJSVal TextTrackModeShowing = toJSVal js_TextTrackModeShowing
 
instance FromJSVal TextTrackMode where
        fromJSVal x
          = x `strictEqual` js_TextTrackModeDisabled >>=
              \ r ->
                case r of
                    True -> return (Just TextTrackModeDisabled)
                    False
                      -> x `strictEqual` js_TextTrackModeHidden >>=
                           \ r ->
                             case r of
                                 True -> return (Just TextTrackModeHidden)
                                 False
                                   -> x `strictEqual` js_TextTrackModeShowing >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just TextTrackModeShowing)
                                              False -> return Nothing
js_TextTrackModeDisabled = "disabled"
js_TextTrackModeHidden = "hidden"
js_TextTrackModeShowing = "showing"
 
data TextTrackKind = TextTrackKindSubtitles
                   | TextTrackKindCaptions
                   | TextTrackKindDescriptions
                   | TextTrackKindChapters
                   | TextTrackKindMetadata
                   | TextTrackKindForced
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal TextTrackKind where
        toJSVal TextTrackKindSubtitles = toJSVal js_TextTrackKindSubtitles
        toJSVal TextTrackKindCaptions = toJSVal js_TextTrackKindCaptions
        toJSVal TextTrackKindDescriptions
          = toJSVal js_TextTrackKindDescriptions
        toJSVal TextTrackKindChapters = toJSVal js_TextTrackKindChapters
        toJSVal TextTrackKindMetadata = toJSVal js_TextTrackKindMetadata
        toJSVal TextTrackKindForced = toJSVal js_TextTrackKindForced
 
instance FromJSVal TextTrackKind where
        fromJSVal x
          = x `strictEqual` js_TextTrackKindSubtitles >>=
              \ r ->
                case r of
                    True -> return (Just TextTrackKindSubtitles)
                    False
                      -> x `strictEqual` js_TextTrackKindCaptions >>=
                           \ r ->
                             case r of
                                 True -> return (Just TextTrackKindCaptions)
                                 False
                                   -> x `strictEqual` js_TextTrackKindDescriptions >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just TextTrackKindDescriptions)
                                              False
                                                -> x `strictEqual` js_TextTrackKindChapters >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return (Just TextTrackKindChapters)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_TextTrackKindMetadata
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  TextTrackKindMetadata)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_TextTrackKindForced
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               TextTrackKindForced)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_TextTrackKindSubtitles = "subtitles"
js_TextTrackKindCaptions = "captions"
js_TextTrackKindDescriptions = "descriptions"
js_TextTrackKindChapters = "chapters"
js_TextTrackKindMetadata = "metadata"
js_TextTrackKindForced = "forced"
 
data ApplePayErrorCode = ApplePayErrorCodeUnknown
                       | ApplePayErrorCodeShippingContactInvalid
                       | ApplePayErrorCodeBillingContactInvalid
                       | ApplePayErrorCodeAddressUnservicable
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayErrorCode where
        toJSVal ApplePayErrorCodeUnknown
          = toJSVal js_ApplePayErrorCodeUnknown
        toJSVal ApplePayErrorCodeShippingContactInvalid
          = toJSVal js_ApplePayErrorCodeShippingContactInvalid
        toJSVal ApplePayErrorCodeBillingContactInvalid
          = toJSVal js_ApplePayErrorCodeBillingContactInvalid
        toJSVal ApplePayErrorCodeAddressUnservicable
          = toJSVal js_ApplePayErrorCodeAddressUnservicable
 
instance FromJSVal ApplePayErrorCode where
        fromJSVal x
          = x `strictEqual` js_ApplePayErrorCodeUnknown >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayErrorCodeUnknown)
                    False
                      -> x `strictEqual` js_ApplePayErrorCodeShippingContactInvalid >>=
                           \ r ->
                             case r of
                                 True -> return (Just ApplePayErrorCodeShippingContactInvalid)
                                 False
                                   -> x `strictEqual` js_ApplePayErrorCodeBillingContactInvalid >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return
                                                     (Just ApplePayErrorCodeBillingContactInvalid)
                                              False
                                                -> x `strictEqual`
                                                     js_ApplePayErrorCodeAddressUnservicable
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ApplePayErrorCodeAddressUnservicable)
                                                           False -> return Nothing
js_ApplePayErrorCodeUnknown = "unknown"
js_ApplePayErrorCodeShippingContactInvalid
  = "shippingContactInvalid"
js_ApplePayErrorCodeBillingContactInvalid = "billingContactInvalid"
js_ApplePayErrorCodeAddressUnservicable = "addressUnservicable"
 
data ApplePayErrorContactField = ApplePayErrorContactFieldPhoneNumber
                               | ApplePayErrorContactFieldEmailAddress
                               | ApplePayErrorContactFieldName
                               | ApplePayErrorContactFieldPostalAddress
                               | ApplePayErrorContactFieldAddressLines
                               | ApplePayErrorContactFieldLocality
                               | ApplePayErrorContactFieldPostalCode
                               | ApplePayErrorContactFieldAdministrativeArea
                               | ApplePayErrorContactFieldCountry
                               deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayErrorContactField where
        toJSVal ApplePayErrorContactFieldPhoneNumber
          = toJSVal js_ApplePayErrorContactFieldPhoneNumber
        toJSVal ApplePayErrorContactFieldEmailAddress
          = toJSVal js_ApplePayErrorContactFieldEmailAddress
        toJSVal ApplePayErrorContactFieldName
          = toJSVal js_ApplePayErrorContactFieldName
        toJSVal ApplePayErrorContactFieldPostalAddress
          = toJSVal js_ApplePayErrorContactFieldPostalAddress
        toJSVal ApplePayErrorContactFieldAddressLines
          = toJSVal js_ApplePayErrorContactFieldAddressLines
        toJSVal ApplePayErrorContactFieldLocality
          = toJSVal js_ApplePayErrorContactFieldLocality
        toJSVal ApplePayErrorContactFieldPostalCode
          = toJSVal js_ApplePayErrorContactFieldPostalCode
        toJSVal ApplePayErrorContactFieldAdministrativeArea
          = toJSVal js_ApplePayErrorContactFieldAdministrativeArea
        toJSVal ApplePayErrorContactFieldCountry
          = toJSVal js_ApplePayErrorContactFieldCountry
 
instance FromJSVal ApplePayErrorContactField where
        fromJSVal x
          = x `strictEqual` js_ApplePayErrorContactFieldPhoneNumber >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayErrorContactFieldPhoneNumber)
                    False
                      -> x `strictEqual` js_ApplePayErrorContactFieldEmailAddress >>=
                           \ r ->
                             case r of
                                 True -> return (Just ApplePayErrorContactFieldEmailAddress)
                                 False
                                   -> x `strictEqual` js_ApplePayErrorContactFieldName >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ApplePayErrorContactFieldName)
                                              False
                                                -> x `strictEqual`
                                                     js_ApplePayErrorContactFieldPostalAddress
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ApplePayErrorContactFieldPostalAddress)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_ApplePayErrorContactFieldAddressLines
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  ApplePayErrorContactFieldAddressLines)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_ApplePayErrorContactFieldLocality
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               ApplePayErrorContactFieldLocality)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_ApplePayErrorContactFieldPostalCode
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            ApplePayErrorContactFieldPostalCode)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_ApplePayErrorContactFieldAdministrativeArea
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         ApplePayErrorContactFieldAdministrativeArea)
                                                                                                               False
                                                                                                                 -> x `strictEqual`
                                                                                                                      js_ApplePayErrorContactFieldCountry
                                                                                                                      >>=
                                                                                                                      \ r
                                                                                                                        ->
                                                                                                                        case
                                                                                                                          r
                                                                                                                          of
                                                                                                                            True
                                                                                                                              -> return
                                                                                                                                   (Just
                                                                                                                                      ApplePayErrorContactFieldCountry)
                                                                                                                            False
                                                                                                                              -> return
                                                                                                                                   Nothing
js_ApplePayErrorContactFieldPhoneNumber = "phoneNumber"
js_ApplePayErrorContactFieldEmailAddress = "emailAddress"
js_ApplePayErrorContactFieldName = "name"
js_ApplePayErrorContactFieldPostalAddress = "postalAddress"
js_ApplePayErrorContactFieldAddressLines = "addressLines"
js_ApplePayErrorContactFieldLocality = "locality"
js_ApplePayErrorContactFieldPostalCode = "postalCode"
js_ApplePayErrorContactFieldAdministrativeArea
  = "administrativeArea"
js_ApplePayErrorContactFieldCountry = "country"
 
data ApplePayLineItemType = ApplePayLineItemTypePending
                          | ApplePayLineItemTypeFinal
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayLineItemType where
        toJSVal ApplePayLineItemTypePending
          = toJSVal js_ApplePayLineItemTypePending
        toJSVal ApplePayLineItemTypeFinal
          = toJSVal js_ApplePayLineItemTypeFinal
 
instance FromJSVal ApplePayLineItemType where
        fromJSVal x
          = x `strictEqual` js_ApplePayLineItemTypePending >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayLineItemTypePending)
                    False
                      -> x `strictEqual` js_ApplePayLineItemTypeFinal >>=
                           \ r ->
                             case r of
                                 True -> return (Just ApplePayLineItemTypeFinal)
                                 False -> return Nothing
js_ApplePayLineItemTypePending = "pending"
js_ApplePayLineItemTypeFinal = "final"
 
data ApplePayPaymentMethodType = ApplePayPaymentMethodTypeDebit
                               | ApplePayPaymentMethodTypeCredit
                               | ApplePayPaymentMethodTypePrepaid
                               | ApplePayPaymentMethodTypeStore
                               deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayPaymentMethodType where
        toJSVal ApplePayPaymentMethodTypeDebit
          = toJSVal js_ApplePayPaymentMethodTypeDebit
        toJSVal ApplePayPaymentMethodTypeCredit
          = toJSVal js_ApplePayPaymentMethodTypeCredit
        toJSVal ApplePayPaymentMethodTypePrepaid
          = toJSVal js_ApplePayPaymentMethodTypePrepaid
        toJSVal ApplePayPaymentMethodTypeStore
          = toJSVal js_ApplePayPaymentMethodTypeStore
 
instance FromJSVal ApplePayPaymentMethodType where
        fromJSVal x
          = x `strictEqual` js_ApplePayPaymentMethodTypeDebit >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayPaymentMethodTypeDebit)
                    False
                      -> x `strictEqual` js_ApplePayPaymentMethodTypeCredit >>=
                           \ r ->
                             case r of
                                 True -> return (Just ApplePayPaymentMethodTypeCredit)
                                 False
                                   -> x `strictEqual` js_ApplePayPaymentMethodTypePrepaid >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ApplePayPaymentMethodTypePrepaid)
                                              False
                                                -> x `strictEqual` js_ApplePayPaymentMethodTypeStore
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ApplePayPaymentMethodTypeStore)
                                                           False -> return Nothing
js_ApplePayPaymentMethodTypeDebit = "debit"
js_ApplePayPaymentMethodTypeCredit = "credit"
js_ApplePayPaymentMethodTypePrepaid = "prepaid"
js_ApplePayPaymentMethodTypeStore = "store"
 
data ApplePayPaymentPassActivationState = ApplePayPaymentPassActivationStateActivated
                                        | ApplePayPaymentPassActivationStateRequiresActivation
                                        | ApplePayPaymentPassActivationStateActivating
                                        | ApplePayPaymentPassActivationStateSuspended
                                        | ApplePayPaymentPassActivationStateDeactivated
                                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayPaymentPassActivationState where
        toJSVal ApplePayPaymentPassActivationStateActivated
          = toJSVal js_ApplePayPaymentPassActivationStateActivated
        toJSVal ApplePayPaymentPassActivationStateRequiresActivation
          = toJSVal js_ApplePayPaymentPassActivationStateRequiresActivation
        toJSVal ApplePayPaymentPassActivationStateActivating
          = toJSVal js_ApplePayPaymentPassActivationStateActivating
        toJSVal ApplePayPaymentPassActivationStateSuspended
          = toJSVal js_ApplePayPaymentPassActivationStateSuspended
        toJSVal ApplePayPaymentPassActivationStateDeactivated
          = toJSVal js_ApplePayPaymentPassActivationStateDeactivated
 
instance FromJSVal ApplePayPaymentPassActivationState where
        fromJSVal x
          = x `strictEqual` js_ApplePayPaymentPassActivationStateActivated
              >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayPaymentPassActivationStateActivated)
                    False
                      -> x `strictEqual`
                           js_ApplePayPaymentPassActivationStateRequiresActivation
                           >>=
                           \ r ->
                             case r of
                                 True
                                   -> return
                                        (Just ApplePayPaymentPassActivationStateRequiresActivation)
                                 False
                                   -> x `strictEqual`
                                        js_ApplePayPaymentPassActivationStateActivating
                                        >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return
                                                     (Just
                                                        ApplePayPaymentPassActivationStateActivating)
                                              False
                                                -> x `strictEqual`
                                                     js_ApplePayPaymentPassActivationStateSuspended
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ApplePayPaymentPassActivationStateSuspended)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_ApplePayPaymentPassActivationStateDeactivated
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  ApplePayPaymentPassActivationStateDeactivated)
                                                                        False -> return Nothing
js_ApplePayPaymentPassActivationStateActivated = "activated"
js_ApplePayPaymentPassActivationStateRequiresActivation
  = "requiresActivation"
js_ApplePayPaymentPassActivationStateActivating = "activating"
js_ApplePayPaymentPassActivationStateSuspended = "suspended"
js_ApplePayPaymentPassActivationStateDeactivated = "deactivated"
 
data ApplePayMerchantCapability = ApplePayMerchantCapabilitySupports3DS
                                | ApplePayMerchantCapabilitySupportsEMV
                                | ApplePayMerchantCapabilitySupportsCredit
                                | ApplePayMerchantCapabilitySupportsDebit
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayMerchantCapability where
        toJSVal ApplePayMerchantCapabilitySupports3DS
          = toJSVal js_ApplePayMerchantCapabilitySupports3DS
        toJSVal ApplePayMerchantCapabilitySupportsEMV
          = toJSVal js_ApplePayMerchantCapabilitySupportsEMV
        toJSVal ApplePayMerchantCapabilitySupportsCredit
          = toJSVal js_ApplePayMerchantCapabilitySupportsCredit
        toJSVal ApplePayMerchantCapabilitySupportsDebit
          = toJSVal js_ApplePayMerchantCapabilitySupportsDebit
 
instance FromJSVal ApplePayMerchantCapability where
        fromJSVal x
          = x `strictEqual` js_ApplePayMerchantCapabilitySupports3DS >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayMerchantCapabilitySupports3DS)
                    False
                      -> x `strictEqual` js_ApplePayMerchantCapabilitySupportsEMV >>=
                           \ r ->
                             case r of
                                 True -> return (Just ApplePayMerchantCapabilitySupportsEMV)
                                 False
                                   -> x `strictEqual` js_ApplePayMerchantCapabilitySupportsCredit
                                        >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return
                                                     (Just ApplePayMerchantCapabilitySupportsCredit)
                                              False
                                                -> x `strictEqual`
                                                     js_ApplePayMerchantCapabilitySupportsDebit
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ApplePayMerchantCapabilitySupportsDebit)
                                                           False -> return Nothing
js_ApplePayMerchantCapabilitySupports3DS = "supports3DS"
js_ApplePayMerchantCapabilitySupportsEMV = "supportsEMV"
js_ApplePayMerchantCapabilitySupportsCredit = "supportsCredit"
js_ApplePayMerchantCapabilitySupportsDebit = "supportsDebit"
 
data ApplePayContactField = ApplePayContactFieldEmail
                          | ApplePayContactFieldName
                          | ApplePayContactFieldPhone
                          | ApplePayContactFieldPostalAddress
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayContactField where
        toJSVal ApplePayContactFieldEmail
          = toJSVal js_ApplePayContactFieldEmail
        toJSVal ApplePayContactFieldName
          = toJSVal js_ApplePayContactFieldName
        toJSVal ApplePayContactFieldPhone
          = toJSVal js_ApplePayContactFieldPhone
        toJSVal ApplePayContactFieldPostalAddress
          = toJSVal js_ApplePayContactFieldPostalAddress
 
instance FromJSVal ApplePayContactField where
        fromJSVal x
          = x `strictEqual` js_ApplePayContactFieldEmail >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayContactFieldEmail)
                    False
                      -> x `strictEqual` js_ApplePayContactFieldName >>=
                           \ r ->
                             case r of
                                 True -> return (Just ApplePayContactFieldName)
                                 False
                                   -> x `strictEqual` js_ApplePayContactFieldPhone >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ApplePayContactFieldPhone)
                                              False
                                                -> x `strictEqual`
                                                     js_ApplePayContactFieldPostalAddress
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ApplePayContactFieldPostalAddress)
                                                           False -> return Nothing
js_ApplePayContactFieldEmail = "email"
js_ApplePayContactFieldName = "name"
js_ApplePayContactFieldPhone = "phone"
js_ApplePayContactFieldPostalAddress = "postalAddress"
 
data ApplePayShippingType = ApplePayShippingTypeShipping
                          | ApplePayShippingTypeDelivery
                          | ApplePayShippingTypeStorePickup
                          | ApplePayShippingTypeServicePickup
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ApplePayShippingType where
        toJSVal ApplePayShippingTypeShipping
          = toJSVal js_ApplePayShippingTypeShipping
        toJSVal ApplePayShippingTypeDelivery
          = toJSVal js_ApplePayShippingTypeDelivery
        toJSVal ApplePayShippingTypeStorePickup
          = toJSVal js_ApplePayShippingTypeStorePickup
        toJSVal ApplePayShippingTypeServicePickup
          = toJSVal js_ApplePayShippingTypeServicePickup
 
instance FromJSVal ApplePayShippingType where
        fromJSVal x
          = x `strictEqual` js_ApplePayShippingTypeShipping >>=
              \ r ->
                case r of
                    True -> return (Just ApplePayShippingTypeShipping)
                    False
                      -> x `strictEqual` js_ApplePayShippingTypeDelivery >>=
                           \ r ->
                             case r of
                                 True -> return (Just ApplePayShippingTypeDelivery)
                                 False
                                   -> x `strictEqual` js_ApplePayShippingTypeStorePickup >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ApplePayShippingTypeStorePickup)
                                              False
                                                -> x `strictEqual`
                                                     js_ApplePayShippingTypeServicePickup
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ApplePayShippingTypeServicePickup)
                                                           False -> return Nothing
js_ApplePayShippingTypeShipping = "shipping"
js_ApplePayShippingTypeDelivery = "delivery"
js_ApplePayShippingTypeStorePickup = "storePickup"
js_ApplePayShippingTypeServicePickup = "servicePickup"
 
data MediaKeyMessageType = MediaKeyMessageTypeLicenseRequest
                         | MediaKeyMessageTypeLicenseRenewal
                         | MediaKeyMessageTypeLicenseRelease
                         | MediaKeyMessageTypeIndividualizationRequest
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaKeyMessageType where
        toJSVal MediaKeyMessageTypeLicenseRequest
          = toJSVal js_MediaKeyMessageTypeLicenseRequest
        toJSVal MediaKeyMessageTypeLicenseRenewal
          = toJSVal js_MediaKeyMessageTypeLicenseRenewal
        toJSVal MediaKeyMessageTypeLicenseRelease
          = toJSVal js_MediaKeyMessageTypeLicenseRelease
        toJSVal MediaKeyMessageTypeIndividualizationRequest
          = toJSVal js_MediaKeyMessageTypeIndividualizationRequest
 
instance FromJSVal MediaKeyMessageType where
        fromJSVal x
          = x `strictEqual` js_MediaKeyMessageTypeLicenseRequest >>=
              \ r ->
                case r of
                    True -> return (Just MediaKeyMessageTypeLicenseRequest)
                    False
                      -> x `strictEqual` js_MediaKeyMessageTypeLicenseRenewal >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaKeyMessageTypeLicenseRenewal)
                                 False
                                   -> x `strictEqual` js_MediaKeyMessageTypeLicenseRelease >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return (Just MediaKeyMessageTypeLicenseRelease)
                                              False
                                                -> x `strictEqual`
                                                     js_MediaKeyMessageTypeIndividualizationRequest
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     MediaKeyMessageTypeIndividualizationRequest)
                                                           False -> return Nothing
js_MediaKeyMessageTypeLicenseRequest = "license-request"
js_MediaKeyMessageTypeLicenseRenewal = "license-renewal"
js_MediaKeyMessageTypeLicenseRelease = "license-release"
js_MediaKeyMessageTypeIndividualizationRequest
  = "individualization-request"
 
data MediaKeySessionType = MediaKeySessionTypeTemporary
                         | MediaKeySessionTypePersistentUsageRecord
                         | MediaKeySessionTypePersistentLicense
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaKeySessionType where
        toJSVal MediaKeySessionTypeTemporary
          = toJSVal js_MediaKeySessionTypeTemporary
        toJSVal MediaKeySessionTypePersistentUsageRecord
          = toJSVal js_MediaKeySessionTypePersistentUsageRecord
        toJSVal MediaKeySessionTypePersistentLicense
          = toJSVal js_MediaKeySessionTypePersistentLicense
 
instance FromJSVal MediaKeySessionType where
        fromJSVal x
          = x `strictEqual` js_MediaKeySessionTypeTemporary >>=
              \ r ->
                case r of
                    True -> return (Just MediaKeySessionTypeTemporary)
                    False
                      -> x `strictEqual` js_MediaKeySessionTypePersistentUsageRecord >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaKeySessionTypePersistentUsageRecord)
                                 False
                                   -> x `strictEqual` js_MediaKeySessionTypePersistentLicense >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return
                                                     (Just MediaKeySessionTypePersistentLicense)
                                              False -> return Nothing
js_MediaKeySessionTypeTemporary = "temporary"
js_MediaKeySessionTypePersistentUsageRecord
  = "persistent-usage-record"
js_MediaKeySessionTypePersistentLicense = "persistent-license"
 
data MediaKeysRequirement = MediaKeysRequirementRequired
                          | MediaKeysRequirementOptional
                          | MediaKeysRequirementNotAllowed
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaKeysRequirement where
        toJSVal MediaKeysRequirementRequired
          = toJSVal js_MediaKeysRequirementRequired
        toJSVal MediaKeysRequirementOptional
          = toJSVal js_MediaKeysRequirementOptional
        toJSVal MediaKeysRequirementNotAllowed
          = toJSVal js_MediaKeysRequirementNotAllowed
 
instance FromJSVal MediaKeysRequirement where
        fromJSVal x
          = x `strictEqual` js_MediaKeysRequirementRequired >>=
              \ r ->
                case r of
                    True -> return (Just MediaKeysRequirementRequired)
                    False
                      -> x `strictEqual` js_MediaKeysRequirementOptional >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaKeysRequirementOptional)
                                 False
                                   -> x `strictEqual` js_MediaKeysRequirementNotAllowed >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just MediaKeysRequirementNotAllowed)
                                              False -> return Nothing
js_MediaKeysRequirementRequired = "required"
js_MediaKeysRequirementOptional = "optional"
js_MediaKeysRequirementNotAllowed = "not-allowed"
 
data MediaKeyStatus = MediaKeyStatusUsable
                    | MediaKeyStatusExpired
                    | MediaKeyStatusReleased
                    | MediaKeyStatusOutputRestricted
                    | MediaKeyStatusOutputDownscaled
                    | MediaKeyStatusStatusPending
                    | MediaKeyStatusInternalError
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaKeyStatus where
        toJSVal MediaKeyStatusUsable = toJSVal js_MediaKeyStatusUsable
        toJSVal MediaKeyStatusExpired = toJSVal js_MediaKeyStatusExpired
        toJSVal MediaKeyStatusReleased = toJSVal js_MediaKeyStatusReleased
        toJSVal MediaKeyStatusOutputRestricted
          = toJSVal js_MediaKeyStatusOutputRestricted
        toJSVal MediaKeyStatusOutputDownscaled
          = toJSVal js_MediaKeyStatusOutputDownscaled
        toJSVal MediaKeyStatusStatusPending
          = toJSVal js_MediaKeyStatusStatusPending
        toJSVal MediaKeyStatusInternalError
          = toJSVal js_MediaKeyStatusInternalError
 
instance FromJSVal MediaKeyStatus where
        fromJSVal x
          = x `strictEqual` js_MediaKeyStatusUsable >>=
              \ r ->
                case r of
                    True -> return (Just MediaKeyStatusUsable)
                    False
                      -> x `strictEqual` js_MediaKeyStatusExpired >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaKeyStatusExpired)
                                 False
                                   -> x `strictEqual` js_MediaKeyStatusReleased >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just MediaKeyStatusReleased)
                                              False
                                                -> x `strictEqual` js_MediaKeyStatusOutputRestricted
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     MediaKeyStatusOutputRestricted)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_MediaKeyStatusOutputDownscaled
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  MediaKeyStatusOutputDownscaled)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_MediaKeyStatusStatusPending
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               MediaKeyStatusStatusPending)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_MediaKeyStatusInternalError
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            MediaKeyStatusInternalError)
                                                                                                  False
                                                                                                    -> return
                                                                                                         Nothing
js_MediaKeyStatusUsable = "usable"
js_MediaKeyStatusExpired = "expired"
js_MediaKeyStatusReleased = "released"
js_MediaKeyStatusOutputRestricted = "output-restricted"
js_MediaKeyStatusOutputDownscaled = "output-downscaled"
js_MediaKeyStatusStatusPending = "status-pending"
js_MediaKeyStatusInternalError = "internal-error"
 
data RequestType = RequestType
                 | RequestTypeAudio
                 | RequestTypeFont
                 | RequestTypeImage
                 | RequestTypeScript
                 | RequestTypeStyle
                 | RequestTypeTrack
                 | RequestTypeVideo
                 deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RequestType where
        toJSVal RequestType = toJSVal js_RequestType
        toJSVal RequestTypeAudio = toJSVal js_RequestTypeAudio
        toJSVal RequestTypeFont = toJSVal js_RequestTypeFont
        toJSVal RequestTypeImage = toJSVal js_RequestTypeImage
        toJSVal RequestTypeScript = toJSVal js_RequestTypeScript
        toJSVal RequestTypeStyle = toJSVal js_RequestTypeStyle
        toJSVal RequestTypeTrack = toJSVal js_RequestTypeTrack
        toJSVal RequestTypeVideo = toJSVal js_RequestTypeVideo
 
instance FromJSVal RequestType where
        fromJSVal x
          = x `strictEqual` js_RequestType >>=
              \ r ->
                case r of
                    True -> return (Just RequestType)
                    False
                      -> x `strictEqual` js_RequestTypeAudio >>=
                           \ r ->
                             case r of
                                 True -> return (Just RequestTypeAudio)
                                 False
                                   -> x `strictEqual` js_RequestTypeFont >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RequestTypeFont)
                                              False
                                                -> x `strictEqual` js_RequestTypeImage >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just RequestTypeImage)
                                                           False
                                                             -> x `strictEqual` js_RequestTypeScript
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RequestTypeScript)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_RequestTypeStyle
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               RequestTypeStyle)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_RequestTypeTrack
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            RequestTypeTrack)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_RequestTypeVideo
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         RequestTypeVideo)
                                                                                                               False
                                                                                                                 -> return
                                                                                                                      Nothing
js_RequestType = ""
js_RequestTypeAudio = "audio"
js_RequestTypeFont = "font"
js_RequestTypeImage = "image"
js_RequestTypeScript = "script"
js_RequestTypeStyle = "style"
js_RequestTypeTrack = "track"
js_RequestTypeVideo = "video"
 
data RequestDestination = RequestDestination
                        | RequestDestinationDocument
                        | RequestDestinationSharedworker
                        | RequestDestinationSubresource
                        | RequestDestinationUnknown
                        | RequestDestinationWorker
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RequestDestination where
        toJSVal RequestDestination = toJSVal js_RequestDestination
        toJSVal RequestDestinationDocument
          = toJSVal js_RequestDestinationDocument
        toJSVal RequestDestinationSharedworker
          = toJSVal js_RequestDestinationSharedworker
        toJSVal RequestDestinationSubresource
          = toJSVal js_RequestDestinationSubresource
        toJSVal RequestDestinationUnknown
          = toJSVal js_RequestDestinationUnknown
        toJSVal RequestDestinationWorker
          = toJSVal js_RequestDestinationWorker
 
instance FromJSVal RequestDestination where
        fromJSVal x
          = x `strictEqual` js_RequestDestination >>=
              \ r ->
                case r of
                    True -> return (Just RequestDestination)
                    False
                      -> x `strictEqual` js_RequestDestinationDocument >>=
                           \ r ->
                             case r of
                                 True -> return (Just RequestDestinationDocument)
                                 False
                                   -> x `strictEqual` js_RequestDestinationSharedworker >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RequestDestinationSharedworker)
                                              False
                                                -> x `strictEqual` js_RequestDestinationSubresource
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     RequestDestinationSubresource)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_RequestDestinationUnknown
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RequestDestinationUnknown)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_RequestDestinationWorker
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               RequestDestinationWorker)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_RequestDestination = ""
js_RequestDestinationDocument = "document"
js_RequestDestinationSharedworker = "sharedworker"
js_RequestDestinationSubresource = "subresource"
js_RequestDestinationUnknown = "unknown"
js_RequestDestinationWorker = "worker"
 
data RequestMode = RequestModeNavigate
                 | RequestModeSameOrigin
                 | RequestModeNoCors
                 | RequestModeCors
                 deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RequestMode where
        toJSVal RequestModeNavigate = toJSVal js_RequestModeNavigate
        toJSVal RequestModeSameOrigin = toJSVal js_RequestModeSameOrigin
        toJSVal RequestModeNoCors = toJSVal js_RequestModeNoCors
        toJSVal RequestModeCors = toJSVal js_RequestModeCors
 
instance FromJSVal RequestMode where
        fromJSVal x
          = x `strictEqual` js_RequestModeNavigate >>=
              \ r ->
                case r of
                    True -> return (Just RequestModeNavigate)
                    False
                      -> x `strictEqual` js_RequestModeSameOrigin >>=
                           \ r ->
                             case r of
                                 True -> return (Just RequestModeSameOrigin)
                                 False
                                   -> x `strictEqual` js_RequestModeNoCors >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RequestModeNoCors)
                                              False
                                                -> x `strictEqual` js_RequestModeCors >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just RequestModeCors)
                                                           False -> return Nothing
js_RequestModeNavigate = "navigate"
js_RequestModeSameOrigin = "same-origin"
js_RequestModeNoCors = "no-cors"
js_RequestModeCors = "cors"
 
data RequestCredentials = RequestCredentialsOmit
                        | RequestCredentialsSameOrigin
                        | RequestCredentialsInclude
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RequestCredentials where
        toJSVal RequestCredentialsOmit = toJSVal js_RequestCredentialsOmit
        toJSVal RequestCredentialsSameOrigin
          = toJSVal js_RequestCredentialsSameOrigin
        toJSVal RequestCredentialsInclude
          = toJSVal js_RequestCredentialsInclude
 
instance FromJSVal RequestCredentials where
        fromJSVal x
          = x `strictEqual` js_RequestCredentialsOmit >>=
              \ r ->
                case r of
                    True -> return (Just RequestCredentialsOmit)
                    False
                      -> x `strictEqual` js_RequestCredentialsSameOrigin >>=
                           \ r ->
                             case r of
                                 True -> return (Just RequestCredentialsSameOrigin)
                                 False
                                   -> x `strictEqual` js_RequestCredentialsInclude >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RequestCredentialsInclude)
                                              False -> return Nothing
js_RequestCredentialsOmit = "omit"
js_RequestCredentialsSameOrigin = "same-origin"
js_RequestCredentialsInclude = "include"
 
data RequestCache = RequestCacheDefault
                  | RequestCacheNoStore
                  | RequestCacheReload
                  | RequestCacheNoCache
                  | RequestCacheForceCache
                  | RequestCacheOnlyIfCached
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RequestCache where
        toJSVal RequestCacheDefault = toJSVal js_RequestCacheDefault
        toJSVal RequestCacheNoStore = toJSVal js_RequestCacheNoStore
        toJSVal RequestCacheReload = toJSVal js_RequestCacheReload
        toJSVal RequestCacheNoCache = toJSVal js_RequestCacheNoCache
        toJSVal RequestCacheForceCache = toJSVal js_RequestCacheForceCache
        toJSVal RequestCacheOnlyIfCached
          = toJSVal js_RequestCacheOnlyIfCached
 
instance FromJSVal RequestCache where
        fromJSVal x
          = x `strictEqual` js_RequestCacheDefault >>=
              \ r ->
                case r of
                    True -> return (Just RequestCacheDefault)
                    False
                      -> x `strictEqual` js_RequestCacheNoStore >>=
                           \ r ->
                             case r of
                                 True -> return (Just RequestCacheNoStore)
                                 False
                                   -> x `strictEqual` js_RequestCacheReload >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RequestCacheReload)
                                              False
                                                -> x `strictEqual` js_RequestCacheNoCache >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just RequestCacheNoCache)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_RequestCacheForceCache
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RequestCacheForceCache)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_RequestCacheOnlyIfCached
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               RequestCacheOnlyIfCached)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_RequestCacheDefault = "default"
js_RequestCacheNoStore = "no-store"
js_RequestCacheReload = "reload"
js_RequestCacheNoCache = "no-cache"
js_RequestCacheForceCache = "force-cache"
js_RequestCacheOnlyIfCached = "only-if-cached"
 
data RequestRedirect = RequestRedirectFollow
                     | RequestRedirectError
                     | RequestRedirectManual
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RequestRedirect where
        toJSVal RequestRedirectFollow = toJSVal js_RequestRedirectFollow
        toJSVal RequestRedirectError = toJSVal js_RequestRedirectError
        toJSVal RequestRedirectManual = toJSVal js_RequestRedirectManual
 
instance FromJSVal RequestRedirect where
        fromJSVal x
          = x `strictEqual` js_RequestRedirectFollow >>=
              \ r ->
                case r of
                    True -> return (Just RequestRedirectFollow)
                    False
                      -> x `strictEqual` js_RequestRedirectError >>=
                           \ r ->
                             case r of
                                 True -> return (Just RequestRedirectError)
                                 False
                                   -> x `strictEqual` js_RequestRedirectManual >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RequestRedirectManual)
                                              False -> return Nothing
js_RequestRedirectFollow = "follow"
js_RequestRedirectError = "error"
js_RequestRedirectManual = "manual"
 
data ReferrerPolicy = ReferrerPolicy
                    | ReferrerPolicyNoReferrer
                    | ReferrerPolicyNoReferrerWhenDowngrade
                    | ReferrerPolicyOrigin
                    | ReferrerPolicyOriginWhenCrossOrigin
                    | ReferrerPolicyUnsafeUrl
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ReferrerPolicy where
        toJSVal ReferrerPolicy = toJSVal js_ReferrerPolicy
        toJSVal ReferrerPolicyNoReferrer
          = toJSVal js_ReferrerPolicyNoReferrer
        toJSVal ReferrerPolicyNoReferrerWhenDowngrade
          = toJSVal js_ReferrerPolicyNoReferrerWhenDowngrade
        toJSVal ReferrerPolicyOrigin = toJSVal js_ReferrerPolicyOrigin
        toJSVal ReferrerPolicyOriginWhenCrossOrigin
          = toJSVal js_ReferrerPolicyOriginWhenCrossOrigin
        toJSVal ReferrerPolicyUnsafeUrl
          = toJSVal js_ReferrerPolicyUnsafeUrl
 
instance FromJSVal ReferrerPolicy where
        fromJSVal x
          = x `strictEqual` js_ReferrerPolicy >>=
              \ r ->
                case r of
                    True -> return (Just ReferrerPolicy)
                    False
                      -> x `strictEqual` js_ReferrerPolicyNoReferrer >>=
                           \ r ->
                             case r of
                                 True -> return (Just ReferrerPolicyNoReferrer)
                                 False
                                   -> x `strictEqual` js_ReferrerPolicyNoReferrerWhenDowngrade >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return
                                                     (Just ReferrerPolicyNoReferrerWhenDowngrade)
                                              False
                                                -> x `strictEqual` js_ReferrerPolicyOrigin >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return (Just ReferrerPolicyOrigin)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_ReferrerPolicyOriginWhenCrossOrigin
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  ReferrerPolicyOriginWhenCrossOrigin)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_ReferrerPolicyUnsafeUrl
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               ReferrerPolicyUnsafeUrl)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_ReferrerPolicy = ""
js_ReferrerPolicyNoReferrer = "no-referrer"
js_ReferrerPolicyNoReferrerWhenDowngrade
  = "no-referrer-when-downgrade"
js_ReferrerPolicyOrigin = "origin"
js_ReferrerPolicyOriginWhenCrossOrigin = "origin-when-cross-origin"
js_ReferrerPolicyUnsafeUrl = "unsafe-url"
 
data ResponseType = ResponseTypeBasic
                  | ResponseTypeCors
                  | ResponseTypeDefault
                  | ResponseTypeError
                  | ResponseTypeOpaque
                  | ResponseTypeOpaqueredirect
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ResponseType where
        toJSVal ResponseTypeBasic = toJSVal js_ResponseTypeBasic
        toJSVal ResponseTypeCors = toJSVal js_ResponseTypeCors
        toJSVal ResponseTypeDefault = toJSVal js_ResponseTypeDefault
        toJSVal ResponseTypeError = toJSVal js_ResponseTypeError
        toJSVal ResponseTypeOpaque = toJSVal js_ResponseTypeOpaque
        toJSVal ResponseTypeOpaqueredirect
          = toJSVal js_ResponseTypeOpaqueredirect
 
instance FromJSVal ResponseType where
        fromJSVal x
          = x `strictEqual` js_ResponseTypeBasic >>=
              \ r ->
                case r of
                    True -> return (Just ResponseTypeBasic)
                    False
                      -> x `strictEqual` js_ResponseTypeCors >>=
                           \ r ->
                             case r of
                                 True -> return (Just ResponseTypeCors)
                                 False
                                   -> x `strictEqual` js_ResponseTypeDefault >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ResponseTypeDefault)
                                              False
                                                -> x `strictEqual` js_ResponseTypeError >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just ResponseTypeError)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_ResponseTypeOpaque
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  ResponseTypeOpaque)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_ResponseTypeOpaqueredirect
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               ResponseTypeOpaqueredirect)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_ResponseTypeBasic = "basic"
js_ResponseTypeCors = "cors"
js_ResponseTypeDefault = "default"
js_ResponseTypeError = "error"
js_ResponseTypeOpaque = "opaque"
js_ResponseTypeOpaqueredirect = "opaqueredirect"
 
data IDBCursorDirection = IDBCursorDirectionNext
                        | IDBCursorDirectionNextunique
                        | IDBCursorDirectionPrev
                        | IDBCursorDirectionPrevunique
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal IDBCursorDirection where
        toJSVal IDBCursorDirectionNext = toJSVal js_IDBCursorDirectionNext
        toJSVal IDBCursorDirectionNextunique
          = toJSVal js_IDBCursorDirectionNextunique
        toJSVal IDBCursorDirectionPrev = toJSVal js_IDBCursorDirectionPrev
        toJSVal IDBCursorDirectionPrevunique
          = toJSVal js_IDBCursorDirectionPrevunique
 
instance FromJSVal IDBCursorDirection where
        fromJSVal x
          = x `strictEqual` js_IDBCursorDirectionNext >>=
              \ r ->
                case r of
                    True -> return (Just IDBCursorDirectionNext)
                    False
                      -> x `strictEqual` js_IDBCursorDirectionNextunique >>=
                           \ r ->
                             case r of
                                 True -> return (Just IDBCursorDirectionNextunique)
                                 False
                                   -> x `strictEqual` js_IDBCursorDirectionPrev >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just IDBCursorDirectionPrev)
                                              False
                                                -> x `strictEqual` js_IDBCursorDirectionPrevunique
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     IDBCursorDirectionPrevunique)
                                                           False -> return Nothing
js_IDBCursorDirectionNext = "next"
js_IDBCursorDirectionNextunique = "nextunique"
js_IDBCursorDirectionPrev = "prev"
js_IDBCursorDirectionPrevunique = "prevunique"
 
data IDBRequestReadyState = IDBRequestReadyStatePending
                          | IDBRequestReadyStateDone
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal IDBRequestReadyState where
        toJSVal IDBRequestReadyStatePending
          = toJSVal js_IDBRequestReadyStatePending
        toJSVal IDBRequestReadyStateDone
          = toJSVal js_IDBRequestReadyStateDone
 
instance FromJSVal IDBRequestReadyState where
        fromJSVal x
          = x `strictEqual` js_IDBRequestReadyStatePending >>=
              \ r ->
                case r of
                    True -> return (Just IDBRequestReadyStatePending)
                    False
                      -> x `strictEqual` js_IDBRequestReadyStateDone >>=
                           \ r ->
                             case r of
                                 True -> return (Just IDBRequestReadyStateDone)
                                 False -> return Nothing
js_IDBRequestReadyStatePending = "pending"
js_IDBRequestReadyStateDone = "done"
 
data IDBTransactionMode = IDBTransactionModeReadonly
                        | IDBTransactionModeReadwrite
                        | IDBTransactionModeVersionchange
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal IDBTransactionMode where
        toJSVal IDBTransactionModeReadonly
          = toJSVal js_IDBTransactionModeReadonly
        toJSVal IDBTransactionModeReadwrite
          = toJSVal js_IDBTransactionModeReadwrite
        toJSVal IDBTransactionModeVersionchange
          = toJSVal js_IDBTransactionModeVersionchange
 
instance FromJSVal IDBTransactionMode where
        fromJSVal x
          = x `strictEqual` js_IDBTransactionModeReadonly >>=
              \ r ->
                case r of
                    True -> return (Just IDBTransactionModeReadonly)
                    False
                      -> x `strictEqual` js_IDBTransactionModeReadwrite >>=
                           \ r ->
                             case r of
                                 True -> return (Just IDBTransactionModeReadwrite)
                                 False
                                   -> x `strictEqual` js_IDBTransactionModeVersionchange >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just IDBTransactionModeVersionchange)
                                              False -> return Nothing
js_IDBTransactionModeReadonly = "readonly"
js_IDBTransactionModeReadwrite = "readwrite"
js_IDBTransactionModeVersionchange = "versionchange"
 
data DeviceType = DeviceTypeNone
                | DeviceTypeAirplay
                | DeviceTypeTvout
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal DeviceType where
        toJSVal DeviceTypeNone = toJSVal js_DeviceTypeNone
        toJSVal DeviceTypeAirplay = toJSVal js_DeviceTypeAirplay
        toJSVal DeviceTypeTvout = toJSVal js_DeviceTypeTvout
 
instance FromJSVal DeviceType where
        fromJSVal x
          = x `strictEqual` js_DeviceTypeNone >>=
              \ r ->
                case r of
                    True -> return (Just DeviceTypeNone)
                    False
                      -> x `strictEqual` js_DeviceTypeAirplay >>=
                           \ r ->
                             case r of
                                 True -> return (Just DeviceTypeAirplay)
                                 False
                                   -> x `strictEqual` js_DeviceTypeTvout >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just DeviceTypeTvout)
                                              False -> return Nothing
js_DeviceTypeNone = "none"
js_DeviceTypeAirplay = "airplay"
js_DeviceTypeTvout = "tvout"
 
data MediaSessionKind = MediaSessionKindContent
                      | MediaSessionKindTransient
                      | MediaSessionKindTransientSolo
                      | MediaSessionKindAmbient
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaSessionKind where
        toJSVal MediaSessionKindContent
          = toJSVal js_MediaSessionKindContent
        toJSVal MediaSessionKindTransient
          = toJSVal js_MediaSessionKindTransient
        toJSVal MediaSessionKindTransientSolo
          = toJSVal js_MediaSessionKindTransientSolo
        toJSVal MediaSessionKindAmbient
          = toJSVal js_MediaSessionKindAmbient
 
instance FromJSVal MediaSessionKind where
        fromJSVal x
          = x `strictEqual` js_MediaSessionKindContent >>=
              \ r ->
                case r of
                    True -> return (Just MediaSessionKindContent)
                    False
                      -> x `strictEqual` js_MediaSessionKindTransient >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaSessionKindTransient)
                                 False
                                   -> x `strictEqual` js_MediaSessionKindTransientSolo >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just MediaSessionKindTransientSolo)
                                              False
                                                -> x `strictEqual` js_MediaSessionKindAmbient >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just MediaSessionKindAmbient)
                                                           False -> return Nothing
js_MediaSessionKindContent = "content"
js_MediaSessionKindTransient = "transient"
js_MediaSessionKindTransientSolo = "transient-solo"
js_MediaSessionKindAmbient = "ambient"
 
data EndOfStreamError = EndOfStreamErrorNetwork
                      | EndOfStreamErrorDecode
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal EndOfStreamError where
        toJSVal EndOfStreamErrorNetwork
          = toJSVal js_EndOfStreamErrorNetwork
        toJSVal EndOfStreamErrorDecode = toJSVal js_EndOfStreamErrorDecode
 
instance FromJSVal EndOfStreamError where
        fromJSVal x
          = x `strictEqual` js_EndOfStreamErrorNetwork >>=
              \ r ->
                case r of
                    True -> return (Just EndOfStreamErrorNetwork)
                    False
                      -> x `strictEqual` js_EndOfStreamErrorDecode >>=
                           \ r ->
                             case r of
                                 True -> return (Just EndOfStreamErrorDecode)
                                 False -> return Nothing
js_EndOfStreamErrorNetwork = "network"
js_EndOfStreamErrorDecode = "decode"
 
data ReadyState = ReadyStateClosed
                | ReadyStateOpen
                | ReadyStateEnded
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ReadyState where
        toJSVal ReadyStateClosed = toJSVal js_ReadyStateClosed
        toJSVal ReadyStateOpen = toJSVal js_ReadyStateOpen
        toJSVal ReadyStateEnded = toJSVal js_ReadyStateEnded
 
instance FromJSVal ReadyState where
        fromJSVal x
          = x `strictEqual` js_ReadyStateClosed >>=
              \ r ->
                case r of
                    True -> return (Just ReadyStateClosed)
                    False
                      -> x `strictEqual` js_ReadyStateOpen >>=
                           \ r ->
                             case r of
                                 True -> return (Just ReadyStateOpen)
                                 False
                                   -> x `strictEqual` js_ReadyStateEnded >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ReadyStateEnded)
                                              False -> return Nothing
js_ReadyStateClosed = "closed"
js_ReadyStateOpen = "open"
js_ReadyStateEnded = "ended"
 
data AppendMode = AppendModeSegments
                | AppendModeSequence
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal AppendMode where
        toJSVal AppendModeSegments = toJSVal js_AppendModeSegments
        toJSVal AppendModeSequence = toJSVal js_AppendModeSequence
 
instance FromJSVal AppendMode where
        fromJSVal x
          = x `strictEqual` js_AppendModeSegments >>=
              \ r ->
                case r of
                    True -> return (Just AppendModeSegments)
                    False
                      -> x `strictEqual` js_AppendModeSequence >>=
                           \ r ->
                             case r of
                                 True -> return (Just AppendModeSequence)
                                 False -> return Nothing
js_AppendModeSegments = "segments"
js_AppendModeSequence = "sequence"
 
data MediaDeviceKind = MediaDeviceKindAudioinput
                     | MediaDeviceKindAudiooutput
                     | MediaDeviceKindVideoinput
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaDeviceKind where
        toJSVal MediaDeviceKindAudioinput
          = toJSVal js_MediaDeviceKindAudioinput
        toJSVal MediaDeviceKindAudiooutput
          = toJSVal js_MediaDeviceKindAudiooutput
        toJSVal MediaDeviceKindVideoinput
          = toJSVal js_MediaDeviceKindVideoinput
 
instance FromJSVal MediaDeviceKind where
        fromJSVal x
          = x `strictEqual` js_MediaDeviceKindAudioinput >>=
              \ r ->
                case r of
                    True -> return (Just MediaDeviceKindAudioinput)
                    False
                      -> x `strictEqual` js_MediaDeviceKindAudiooutput >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaDeviceKindAudiooutput)
                                 False
                                   -> x `strictEqual` js_MediaDeviceKindVideoinput >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just MediaDeviceKindVideoinput)
                                              False -> return Nothing
js_MediaDeviceKindAudioinput = "audioinput"
js_MediaDeviceKindAudiooutput = "audiooutput"
js_MediaDeviceKindVideoinput = "videoinput"
 
data MediaStreamTrackState = MediaStreamTrackStateLive
                           | MediaStreamTrackStateEnded
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaStreamTrackState where
        toJSVal MediaStreamTrackStateLive
          = toJSVal js_MediaStreamTrackStateLive
        toJSVal MediaStreamTrackStateEnded
          = toJSVal js_MediaStreamTrackStateEnded
 
instance FromJSVal MediaStreamTrackState where
        fromJSVal x
          = x `strictEqual` js_MediaStreamTrackStateLive >>=
              \ r ->
                case r of
                    True -> return (Just MediaStreamTrackStateLive)
                    False
                      -> x `strictEqual` js_MediaStreamTrackStateEnded >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaStreamTrackStateEnded)
                                 False -> return Nothing
js_MediaStreamTrackStateLive = "live"
js_MediaStreamTrackStateEnded = "ended"
 
data RTCIceTransportPolicy = RTCIceTransportPolicyRelay
                           | RTCIceTransportPolicyAll
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCIceTransportPolicy where
        toJSVal RTCIceTransportPolicyRelay
          = toJSVal js_RTCIceTransportPolicyRelay
        toJSVal RTCIceTransportPolicyAll
          = toJSVal js_RTCIceTransportPolicyAll
 
instance FromJSVal RTCIceTransportPolicy where
        fromJSVal x
          = x `strictEqual` js_RTCIceTransportPolicyRelay >>=
              \ r ->
                case r of
                    True -> return (Just RTCIceTransportPolicyRelay)
                    False
                      -> x `strictEqual` js_RTCIceTransportPolicyAll >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCIceTransportPolicyAll)
                                 False -> return Nothing
js_RTCIceTransportPolicyRelay = "relay"
js_RTCIceTransportPolicyAll = "all"
 
data RTCBundlePolicy = RTCBundlePolicyBalanced
                     | RTCBundlePolicyMaxCompat
                     | RTCBundlePolicyMaxBundle
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCBundlePolicy where
        toJSVal RTCBundlePolicyBalanced
          = toJSVal js_RTCBundlePolicyBalanced
        toJSVal RTCBundlePolicyMaxCompat
          = toJSVal js_RTCBundlePolicyMaxCompat
        toJSVal RTCBundlePolicyMaxBundle
          = toJSVal js_RTCBundlePolicyMaxBundle
 
instance FromJSVal RTCBundlePolicy where
        fromJSVal x
          = x `strictEqual` js_RTCBundlePolicyBalanced >>=
              \ r ->
                case r of
                    True -> return (Just RTCBundlePolicyBalanced)
                    False
                      -> x `strictEqual` js_RTCBundlePolicyMaxCompat >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCBundlePolicyMaxCompat)
                                 False
                                   -> x `strictEqual` js_RTCBundlePolicyMaxBundle >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCBundlePolicyMaxBundle)
                                              False -> return Nothing
js_RTCBundlePolicyBalanced = "balanced"
js_RTCBundlePolicyMaxCompat = "max-compat"
js_RTCBundlePolicyMaxBundle = "max-bundle"
 
data RTCDataChannelState = RTCDataChannelStateConnecting
                         | RTCDataChannelStateOpen
                         | RTCDataChannelStateClosing
                         | RTCDataChannelStateClosed
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCDataChannelState where
        toJSVal RTCDataChannelStateConnecting
          = toJSVal js_RTCDataChannelStateConnecting
        toJSVal RTCDataChannelStateOpen
          = toJSVal js_RTCDataChannelStateOpen
        toJSVal RTCDataChannelStateClosing
          = toJSVal js_RTCDataChannelStateClosing
        toJSVal RTCDataChannelStateClosed
          = toJSVal js_RTCDataChannelStateClosed
 
instance FromJSVal RTCDataChannelState where
        fromJSVal x
          = x `strictEqual` js_RTCDataChannelStateConnecting >>=
              \ r ->
                case r of
                    True -> return (Just RTCDataChannelStateConnecting)
                    False
                      -> x `strictEqual` js_RTCDataChannelStateOpen >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCDataChannelStateOpen)
                                 False
                                   -> x `strictEqual` js_RTCDataChannelStateClosing >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCDataChannelStateClosing)
                                              False
                                                -> x `strictEqual` js_RTCDataChannelStateClosed >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just RTCDataChannelStateClosed)
                                                           False -> return Nothing
js_RTCDataChannelStateConnecting = "connecting"
js_RTCDataChannelStateOpen = "open"
js_RTCDataChannelStateClosing = "closing"
js_RTCDataChannelStateClosed = "closed"
 
data RTCIceConnectionState = RTCIceConnectionStateNew
                           | RTCIceConnectionStateChecking
                           | RTCIceConnectionStateConnected
                           | RTCIceConnectionStateCompleted
                           | RTCIceConnectionStateFailed
                           | RTCIceConnectionStateDisconnected
                           | RTCIceConnectionStateClosed
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCIceConnectionState where
        toJSVal RTCIceConnectionStateNew
          = toJSVal js_RTCIceConnectionStateNew
        toJSVal RTCIceConnectionStateChecking
          = toJSVal js_RTCIceConnectionStateChecking
        toJSVal RTCIceConnectionStateConnected
          = toJSVal js_RTCIceConnectionStateConnected
        toJSVal RTCIceConnectionStateCompleted
          = toJSVal js_RTCIceConnectionStateCompleted
        toJSVal RTCIceConnectionStateFailed
          = toJSVal js_RTCIceConnectionStateFailed
        toJSVal RTCIceConnectionStateDisconnected
          = toJSVal js_RTCIceConnectionStateDisconnected
        toJSVal RTCIceConnectionStateClosed
          = toJSVal js_RTCIceConnectionStateClosed
 
instance FromJSVal RTCIceConnectionState where
        fromJSVal x
          = x `strictEqual` js_RTCIceConnectionStateNew >>=
              \ r ->
                case r of
                    True -> return (Just RTCIceConnectionStateNew)
                    False
                      -> x `strictEqual` js_RTCIceConnectionStateChecking >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCIceConnectionStateChecking)
                                 False
                                   -> x `strictEqual` js_RTCIceConnectionStateConnected >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCIceConnectionStateConnected)
                                              False
                                                -> x `strictEqual` js_RTCIceConnectionStateCompleted
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     RTCIceConnectionStateCompleted)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_RTCIceConnectionStateFailed
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RTCIceConnectionStateFailed)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_RTCIceConnectionStateDisconnected
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               RTCIceConnectionStateDisconnected)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_RTCIceConnectionStateClosed
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            RTCIceConnectionStateClosed)
                                                                                                  False
                                                                                                    -> return
                                                                                                         Nothing
js_RTCIceConnectionStateNew = "new"
js_RTCIceConnectionStateChecking = "checking"
js_RTCIceConnectionStateConnected = "connected"
js_RTCIceConnectionStateCompleted = "completed"
js_RTCIceConnectionStateFailed = "failed"
js_RTCIceConnectionStateDisconnected = "disconnected"
js_RTCIceConnectionStateClosed = "closed"
 
data RTCIceGatheringState = RTCIceGatheringStateNew
                          | RTCIceGatheringStateGathering
                          | RTCIceGatheringStateComplete
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCIceGatheringState where
        toJSVal RTCIceGatheringStateNew
          = toJSVal js_RTCIceGatheringStateNew
        toJSVal RTCIceGatheringStateGathering
          = toJSVal js_RTCIceGatheringStateGathering
        toJSVal RTCIceGatheringStateComplete
          = toJSVal js_RTCIceGatheringStateComplete
 
instance FromJSVal RTCIceGatheringState where
        fromJSVal x
          = x `strictEqual` js_RTCIceGatheringStateNew >>=
              \ r ->
                case r of
                    True -> return (Just RTCIceGatheringStateNew)
                    False
                      -> x `strictEqual` js_RTCIceGatheringStateGathering >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCIceGatheringStateGathering)
                                 False
                                   -> x `strictEqual` js_RTCIceGatheringStateComplete >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCIceGatheringStateComplete)
                                              False -> return Nothing
js_RTCIceGatheringStateNew = "new"
js_RTCIceGatheringStateGathering = "gathering"
js_RTCIceGatheringStateComplete = "complete"
 
data RTCIceTransportState = RTCIceTransportStateNew
                          | RTCIceTransportStateChecking
                          | RTCIceTransportStateConnected
                          | RTCIceTransportStateCompleted
                          | RTCIceTransportStateFailed
                          | RTCIceTransportStateDisconnected
                          | RTCIceTransportStateClosed
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCIceTransportState where
        toJSVal RTCIceTransportStateNew
          = toJSVal js_RTCIceTransportStateNew
        toJSVal RTCIceTransportStateChecking
          = toJSVal js_RTCIceTransportStateChecking
        toJSVal RTCIceTransportStateConnected
          = toJSVal js_RTCIceTransportStateConnected
        toJSVal RTCIceTransportStateCompleted
          = toJSVal js_RTCIceTransportStateCompleted
        toJSVal RTCIceTransportStateFailed
          = toJSVal js_RTCIceTransportStateFailed
        toJSVal RTCIceTransportStateDisconnected
          = toJSVal js_RTCIceTransportStateDisconnected
        toJSVal RTCIceTransportStateClosed
          = toJSVal js_RTCIceTransportStateClosed
 
instance FromJSVal RTCIceTransportState where
        fromJSVal x
          = x `strictEqual` js_RTCIceTransportStateNew >>=
              \ r ->
                case r of
                    True -> return (Just RTCIceTransportStateNew)
                    False
                      -> x `strictEqual` js_RTCIceTransportStateChecking >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCIceTransportStateChecking)
                                 False
                                   -> x `strictEqual` js_RTCIceTransportStateConnected >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCIceTransportStateConnected)
                                              False
                                                -> x `strictEqual` js_RTCIceTransportStateCompleted
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     RTCIceTransportStateCompleted)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_RTCIceTransportStateFailed
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RTCIceTransportStateFailed)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_RTCIceTransportStateDisconnected
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               RTCIceTransportStateDisconnected)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_RTCIceTransportStateClosed
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            RTCIceTransportStateClosed)
                                                                                                  False
                                                                                                    -> return
                                                                                                         Nothing
js_RTCIceTransportStateNew = "new"
js_RTCIceTransportStateChecking = "checking"
js_RTCIceTransportStateConnected = "connected"
js_RTCIceTransportStateCompleted = "completed"
js_RTCIceTransportStateFailed = "failed"
js_RTCIceTransportStateDisconnected = "disconnected"
js_RTCIceTransportStateClosed = "closed"
 
data RTCPeerConnectionState = RTCPeerConnectionStateNew
                            | RTCPeerConnectionStateConnecting
                            | RTCPeerConnectionStateConnected
                            | RTCPeerConnectionStateDisconnected
                            | RTCPeerConnectionStateFailed
                            | RTCPeerConnectionStateClosed
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCPeerConnectionState where
        toJSVal RTCPeerConnectionStateNew
          = toJSVal js_RTCPeerConnectionStateNew
        toJSVal RTCPeerConnectionStateConnecting
          = toJSVal js_RTCPeerConnectionStateConnecting
        toJSVal RTCPeerConnectionStateConnected
          = toJSVal js_RTCPeerConnectionStateConnected
        toJSVal RTCPeerConnectionStateDisconnected
          = toJSVal js_RTCPeerConnectionStateDisconnected
        toJSVal RTCPeerConnectionStateFailed
          = toJSVal js_RTCPeerConnectionStateFailed
        toJSVal RTCPeerConnectionStateClosed
          = toJSVal js_RTCPeerConnectionStateClosed
 
instance FromJSVal RTCPeerConnectionState where
        fromJSVal x
          = x `strictEqual` js_RTCPeerConnectionStateNew >>=
              \ r ->
                case r of
                    True -> return (Just RTCPeerConnectionStateNew)
                    False
                      -> x `strictEqual` js_RTCPeerConnectionStateConnecting >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCPeerConnectionStateConnecting)
                                 False
                                   -> x `strictEqual` js_RTCPeerConnectionStateConnected >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCPeerConnectionStateConnected)
                                              False
                                                -> x `strictEqual`
                                                     js_RTCPeerConnectionStateDisconnected
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     RTCPeerConnectionStateDisconnected)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_RTCPeerConnectionStateFailed
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RTCPeerConnectionStateFailed)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_RTCPeerConnectionStateClosed
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               RTCPeerConnectionStateClosed)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_RTCPeerConnectionStateNew = "new"
js_RTCPeerConnectionStateConnecting = "connecting"
js_RTCPeerConnectionStateConnected = "connected"
js_RTCPeerConnectionStateDisconnected = "disconnected"
js_RTCPeerConnectionStateFailed = "failed"
js_RTCPeerConnectionStateClosed = "closed"
 
data RTCDegradationPreference = RTCDegradationPreferenceMaintainFramerate
                              | RTCDegradationPreferenceMaintainResolution
                              | RTCDegradationPreferenceBalanced
                              deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCDegradationPreference where
        toJSVal RTCDegradationPreferenceMaintainFramerate
          = toJSVal js_RTCDegradationPreferenceMaintainFramerate
        toJSVal RTCDegradationPreferenceMaintainResolution
          = toJSVal js_RTCDegradationPreferenceMaintainResolution
        toJSVal RTCDegradationPreferenceBalanced
          = toJSVal js_RTCDegradationPreferenceBalanced
 
instance FromJSVal RTCDegradationPreference where
        fromJSVal x
          = x `strictEqual` js_RTCDegradationPreferenceMaintainFramerate >>=
              \ r ->
                case r of
                    True -> return (Just RTCDegradationPreferenceMaintainFramerate)
                    False
                      -> x `strictEqual` js_RTCDegradationPreferenceMaintainResolution
                           >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCDegradationPreferenceMaintainResolution)
                                 False
                                   -> x `strictEqual` js_RTCDegradationPreferenceBalanced >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCDegradationPreferenceBalanced)
                                              False -> return Nothing
js_RTCDegradationPreferenceMaintainFramerate = "maintain-framerate"
js_RTCDegradationPreferenceMaintainResolution
  = "maintain-resolution"
js_RTCDegradationPreferenceBalanced = "balanced"
 
data RTCDtxStatus = RTCDtxStatusDisabled
                  | RTCDtxStatusEnabled
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCDtxStatus where
        toJSVal RTCDtxStatusDisabled = toJSVal js_RTCDtxStatusDisabled
        toJSVal RTCDtxStatusEnabled = toJSVal js_RTCDtxStatusEnabled
 
instance FromJSVal RTCDtxStatus where
        fromJSVal x
          = x `strictEqual` js_RTCDtxStatusDisabled >>=
              \ r ->
                case r of
                    True -> return (Just RTCDtxStatusDisabled)
                    False
                      -> x `strictEqual` js_RTCDtxStatusEnabled >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCDtxStatusEnabled)
                                 False -> return Nothing
js_RTCDtxStatusDisabled = "disabled"
js_RTCDtxStatusEnabled = "enabled"
 
data RTCPriorityType = RTCPriorityTypeVeryLow
                     | RTCPriorityTypeLow
                     | RTCPriorityTypeMedium
                     | RTCPriorityTypeHigh
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCPriorityType where
        toJSVal RTCPriorityTypeVeryLow = toJSVal js_RTCPriorityTypeVeryLow
        toJSVal RTCPriorityTypeLow = toJSVal js_RTCPriorityTypeLow
        toJSVal RTCPriorityTypeMedium = toJSVal js_RTCPriorityTypeMedium
        toJSVal RTCPriorityTypeHigh = toJSVal js_RTCPriorityTypeHigh
 
instance FromJSVal RTCPriorityType where
        fromJSVal x
          = x `strictEqual` js_RTCPriorityTypeVeryLow >>=
              \ r ->
                case r of
                    True -> return (Just RTCPriorityTypeVeryLow)
                    False
                      -> x `strictEqual` js_RTCPriorityTypeLow >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCPriorityTypeLow)
                                 False
                                   -> x `strictEqual` js_RTCPriorityTypeMedium >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCPriorityTypeMedium)
                                              False
                                                -> x `strictEqual` js_RTCPriorityTypeHigh >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just RTCPriorityTypeHigh)
                                                           False -> return Nothing
js_RTCPriorityTypeVeryLow = "very-low"
js_RTCPriorityTypeLow = "low"
js_RTCPriorityTypeMedium = "medium"
js_RTCPriorityTypeHigh = "high"
 
data RTCRtpTransceiverDirection = RTCRtpTransceiverDirectionSendrecv
                                | RTCRtpTransceiverDirectionSendonly
                                | RTCRtpTransceiverDirectionRecvonly
                                | RTCRtpTransceiverDirectionInactive
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCRtpTransceiverDirection where
        toJSVal RTCRtpTransceiverDirectionSendrecv
          = toJSVal js_RTCRtpTransceiverDirectionSendrecv
        toJSVal RTCRtpTransceiverDirectionSendonly
          = toJSVal js_RTCRtpTransceiverDirectionSendonly
        toJSVal RTCRtpTransceiverDirectionRecvonly
          = toJSVal js_RTCRtpTransceiverDirectionRecvonly
        toJSVal RTCRtpTransceiverDirectionInactive
          = toJSVal js_RTCRtpTransceiverDirectionInactive
 
instance FromJSVal RTCRtpTransceiverDirection where
        fromJSVal x
          = x `strictEqual` js_RTCRtpTransceiverDirectionSendrecv >>=
              \ r ->
                case r of
                    True -> return (Just RTCRtpTransceiverDirectionSendrecv)
                    False
                      -> x `strictEqual` js_RTCRtpTransceiverDirectionSendonly >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCRtpTransceiverDirectionSendonly)
                                 False
                                   -> x `strictEqual` js_RTCRtpTransceiverDirectionRecvonly >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return (Just RTCRtpTransceiverDirectionRecvonly)
                                              False
                                                -> x `strictEqual`
                                                     js_RTCRtpTransceiverDirectionInactive
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     RTCRtpTransceiverDirectionInactive)
                                                           False -> return Nothing
js_RTCRtpTransceiverDirectionSendrecv = "sendrecv"
js_RTCRtpTransceiverDirectionSendonly = "sendonly"
js_RTCRtpTransceiverDirectionRecvonly = "recvonly"
js_RTCRtpTransceiverDirectionInactive = "inactive"
 
data RTCSdpType = RTCSdpTypeOffer
                | RTCSdpTypePranswer
                | RTCSdpTypeAnswer
                | RTCSdpTypeRollback
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCSdpType where
        toJSVal RTCSdpTypeOffer = toJSVal js_RTCSdpTypeOffer
        toJSVal RTCSdpTypePranswer = toJSVal js_RTCSdpTypePranswer
        toJSVal RTCSdpTypeAnswer = toJSVal js_RTCSdpTypeAnswer
        toJSVal RTCSdpTypeRollback = toJSVal js_RTCSdpTypeRollback
 
instance FromJSVal RTCSdpType where
        fromJSVal x
          = x `strictEqual` js_RTCSdpTypeOffer >>=
              \ r ->
                case r of
                    True -> return (Just RTCSdpTypeOffer)
                    False
                      -> x `strictEqual` js_RTCSdpTypePranswer >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCSdpTypePranswer)
                                 False
                                   -> x `strictEqual` js_RTCSdpTypeAnswer >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCSdpTypeAnswer)
                                              False
                                                -> x `strictEqual` js_RTCSdpTypeRollback >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just RTCSdpTypeRollback)
                                                           False -> return Nothing
js_RTCSdpTypeOffer = "offer"
js_RTCSdpTypePranswer = "pranswer"
js_RTCSdpTypeAnswer = "answer"
js_RTCSdpTypeRollback = "rollback"
 
data RTCSignalingState = RTCSignalingStateStable
                       | RTCSignalingStateHaveLocalOffer
                       | RTCSignalingStateHaveRemoteOffer
                       | RTCSignalingStateHaveLocalPranswer
                       | RTCSignalingStateHaveRemotePranswer
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCSignalingState where
        toJSVal RTCSignalingStateStable
          = toJSVal js_RTCSignalingStateStable
        toJSVal RTCSignalingStateHaveLocalOffer
          = toJSVal js_RTCSignalingStateHaveLocalOffer
        toJSVal RTCSignalingStateHaveRemoteOffer
          = toJSVal js_RTCSignalingStateHaveRemoteOffer
        toJSVal RTCSignalingStateHaveLocalPranswer
          = toJSVal js_RTCSignalingStateHaveLocalPranswer
        toJSVal RTCSignalingStateHaveRemotePranswer
          = toJSVal js_RTCSignalingStateHaveRemotePranswer
 
instance FromJSVal RTCSignalingState where
        fromJSVal x
          = x `strictEqual` js_RTCSignalingStateStable >>=
              \ r ->
                case r of
                    True -> return (Just RTCSignalingStateStable)
                    False
                      -> x `strictEqual` js_RTCSignalingStateHaveLocalOffer >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCSignalingStateHaveLocalOffer)
                                 False
                                   -> x `strictEqual` js_RTCSignalingStateHaveRemoteOffer >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCSignalingStateHaveRemoteOffer)
                                              False
                                                -> x `strictEqual`
                                                     js_RTCSignalingStateHaveLocalPranswer
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     RTCSignalingStateHaveLocalPranswer)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_RTCSignalingStateHaveRemotePranswer
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RTCSignalingStateHaveRemotePranswer)
                                                                        False -> return Nothing
js_RTCSignalingStateStable = "stable"
js_RTCSignalingStateHaveLocalOffer = "have-local-offer"
js_RTCSignalingStateHaveRemoteOffer = "have-remote-offer"
js_RTCSignalingStateHaveLocalPranswer = "have-local-pranswer"
js_RTCSignalingStateHaveRemotePranswer = "have-remote-pranswer"
 
data RTCStatsType = RTCStatsTypeCodec
                  | RTCStatsTypeInboundRtp
                  | RTCStatsTypeOutboundRtp
                  | RTCStatsTypePeerConnection
                  | RTCStatsTypeDataChannel
                  | RTCStatsTypeTrack
                  | RTCStatsTypeTransport
                  | RTCStatsTypeCandidatePair
                  | RTCStatsTypeLocalCandidate
                  | RTCStatsTypeRemoteCandidate
                  | RTCStatsTypeCertificate
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCStatsType where
        toJSVal RTCStatsTypeCodec = toJSVal js_RTCStatsTypeCodec
        toJSVal RTCStatsTypeInboundRtp = toJSVal js_RTCStatsTypeInboundRtp
        toJSVal RTCStatsTypeOutboundRtp
          = toJSVal js_RTCStatsTypeOutboundRtp
        toJSVal RTCStatsTypePeerConnection
          = toJSVal js_RTCStatsTypePeerConnection
        toJSVal RTCStatsTypeDataChannel
          = toJSVal js_RTCStatsTypeDataChannel
        toJSVal RTCStatsTypeTrack = toJSVal js_RTCStatsTypeTrack
        toJSVal RTCStatsTypeTransport = toJSVal js_RTCStatsTypeTransport
        toJSVal RTCStatsTypeCandidatePair
          = toJSVal js_RTCStatsTypeCandidatePair
        toJSVal RTCStatsTypeLocalCandidate
          = toJSVal js_RTCStatsTypeLocalCandidate
        toJSVal RTCStatsTypeRemoteCandidate
          = toJSVal js_RTCStatsTypeRemoteCandidate
        toJSVal RTCStatsTypeCertificate
          = toJSVal js_RTCStatsTypeCertificate
 
instance FromJSVal RTCStatsType where
        fromJSVal x
          = x `strictEqual` js_RTCStatsTypeCodec >>=
              \ r ->
                case r of
                    True -> return (Just RTCStatsTypeCodec)
                    False
                      -> x `strictEqual` js_RTCStatsTypeInboundRtp >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCStatsTypeInboundRtp)
                                 False
                                   -> x `strictEqual` js_RTCStatsTypeOutboundRtp >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCStatsTypeOutboundRtp)
                                              False
                                                -> x `strictEqual` js_RTCStatsTypePeerConnection >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just RTCStatsTypePeerConnection)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_RTCStatsTypeDataChannel
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  RTCStatsTypeDataChannel)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_RTCStatsTypeTrack
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               RTCStatsTypeTrack)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_RTCStatsTypeTransport
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            RTCStatsTypeTransport)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_RTCStatsTypeCandidatePair
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         RTCStatsTypeCandidatePair)
                                                                                                               False
                                                                                                                 -> x `strictEqual`
                                                                                                                      js_RTCStatsTypeLocalCandidate
                                                                                                                      >>=
                                                                                                                      \ r
                                                                                                                        ->
                                                                                                                        case
                                                                                                                          r
                                                                                                                          of
                                                                                                                            True
                                                                                                                              -> return
                                                                                                                                   (Just
                                                                                                                                      RTCStatsTypeLocalCandidate)
                                                                                                                            False
                                                                                                                              -> x `strictEqual`
                                                                                                                                   js_RTCStatsTypeRemoteCandidate
                                                                                                                                   >>=
                                                                                                                                   \ r
                                                                                                                                     ->
                                                                                                                                     case
                                                                                                                                       r
                                                                                                                                       of
                                                                                                                                         True
                                                                                                                                           -> return
                                                                                                                                                (Just
                                                                                                                                                   RTCStatsTypeRemoteCandidate)
                                                                                                                                         False
                                                                                                                                           -> x `strictEqual`
                                                                                                                                                js_RTCStatsTypeCertificate
                                                                                                                                                >>=
                                                                                                                                                \ r
                                                                                                                                                  ->
                                                                                                                                                  case
                                                                                                                                                    r
                                                                                                                                                    of
                                                                                                                                                      True
                                                                                                                                                        -> return
                                                                                                                                                             (Just
                                                                                                                                                                RTCStatsTypeCertificate)
                                                                                                                                                      False
                                                                                                                                                        -> return
                                                                                                                                                             Nothing
js_RTCStatsTypeCodec = "codec"
js_RTCStatsTypeInboundRtp = "inbound-rtp"
js_RTCStatsTypeOutboundRtp = "outbound-rtp"
js_RTCStatsTypePeerConnection = "peer-connection"
js_RTCStatsTypeDataChannel = "data-channel"
js_RTCStatsTypeTrack = "track"
js_RTCStatsTypeTransport = "transport"
js_RTCStatsTypeCandidatePair = "candidate-pair"
js_RTCStatsTypeLocalCandidate = "local-candidate"
js_RTCStatsTypeRemoteCandidate = "remote-candidate"
js_RTCStatsTypeCertificate = "certificate"
 
data NotificationDirection = NotificationDirectionAuto
                           | NotificationDirectionLtr
                           | NotificationDirectionRtl
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal NotificationDirection where
        toJSVal NotificationDirectionAuto
          = toJSVal js_NotificationDirectionAuto
        toJSVal NotificationDirectionLtr
          = toJSVal js_NotificationDirectionLtr
        toJSVal NotificationDirectionRtl
          = toJSVal js_NotificationDirectionRtl
 
instance FromJSVal NotificationDirection where
        fromJSVal x
          = x `strictEqual` js_NotificationDirectionAuto >>=
              \ r ->
                case r of
                    True -> return (Just NotificationDirectionAuto)
                    False
                      -> x `strictEqual` js_NotificationDirectionLtr >>=
                           \ r ->
                             case r of
                                 True -> return (Just NotificationDirectionLtr)
                                 False
                                   -> x `strictEqual` js_NotificationDirectionRtl >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just NotificationDirectionRtl)
                                              False -> return Nothing
js_NotificationDirectionAuto = "auto"
js_NotificationDirectionLtr = "ltr"
js_NotificationDirectionRtl = "rtl"
 
data AudioContextState = AudioContextStateSuspended
                       | AudioContextStateRunning
                       | AudioContextStateInterrupted
                       | AudioContextStateClosed
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal AudioContextState where
        toJSVal AudioContextStateSuspended
          = toJSVal js_AudioContextStateSuspended
        toJSVal AudioContextStateRunning
          = toJSVal js_AudioContextStateRunning
        toJSVal AudioContextStateInterrupted
          = toJSVal js_AudioContextStateInterrupted
        toJSVal AudioContextStateClosed
          = toJSVal js_AudioContextStateClosed
 
instance FromJSVal AudioContextState where
        fromJSVal x
          = x `strictEqual` js_AudioContextStateSuspended >>=
              \ r ->
                case r of
                    True -> return (Just AudioContextStateSuspended)
                    False
                      -> x `strictEqual` js_AudioContextStateRunning >>=
                           \ r ->
                             case r of
                                 True -> return (Just AudioContextStateRunning)
                                 False
                                   -> x `strictEqual` js_AudioContextStateInterrupted >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just AudioContextStateInterrupted)
                                              False
                                                -> x `strictEqual` js_AudioContextStateClosed >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just AudioContextStateClosed)
                                                           False -> return Nothing
js_AudioContextStateSuspended = "suspended"
js_AudioContextStateRunning = "running"
js_AudioContextStateInterrupted = "interrupted"
js_AudioContextStateClosed = "closed"
 
data BiquadFilterType = BiquadFilterTypeLowpass
                      | BiquadFilterTypeHighpass
                      | BiquadFilterTypeBandpass
                      | BiquadFilterTypeLowshelf
                      | BiquadFilterTypeHighshelf
                      | BiquadFilterTypePeaking
                      | BiquadFilterTypeNotch
                      | BiquadFilterTypeAllpass
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal BiquadFilterType where
        toJSVal BiquadFilterTypeLowpass
          = toJSVal js_BiquadFilterTypeLowpass
        toJSVal BiquadFilterTypeHighpass
          = toJSVal js_BiquadFilterTypeHighpass
        toJSVal BiquadFilterTypeBandpass
          = toJSVal js_BiquadFilterTypeBandpass
        toJSVal BiquadFilterTypeLowshelf
          = toJSVal js_BiquadFilterTypeLowshelf
        toJSVal BiquadFilterTypeHighshelf
          = toJSVal js_BiquadFilterTypeHighshelf
        toJSVal BiquadFilterTypePeaking
          = toJSVal js_BiquadFilterTypePeaking
        toJSVal BiquadFilterTypeNotch = toJSVal js_BiquadFilterTypeNotch
        toJSVal BiquadFilterTypeAllpass
          = toJSVal js_BiquadFilterTypeAllpass
 
instance FromJSVal BiquadFilterType where
        fromJSVal x
          = x `strictEqual` js_BiquadFilterTypeLowpass >>=
              \ r ->
                case r of
                    True -> return (Just BiquadFilterTypeLowpass)
                    False
                      -> x `strictEqual` js_BiquadFilterTypeHighpass >>=
                           \ r ->
                             case r of
                                 True -> return (Just BiquadFilterTypeHighpass)
                                 False
                                   -> x `strictEqual` js_BiquadFilterTypeBandpass >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just BiquadFilterTypeBandpass)
                                              False
                                                -> x `strictEqual` js_BiquadFilterTypeLowshelf >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just BiquadFilterTypeLowshelf)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_BiquadFilterTypeHighshelf
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  BiquadFilterTypeHighshelf)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_BiquadFilterTypePeaking
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               BiquadFilterTypePeaking)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_BiquadFilterTypeNotch
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            BiquadFilterTypeNotch)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_BiquadFilterTypeAllpass
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         BiquadFilterTypeAllpass)
                                                                                                               False
                                                                                                                 -> return
                                                                                                                      Nothing
js_BiquadFilterTypeLowpass = "lowpass"
js_BiquadFilterTypeHighpass = "highpass"
js_BiquadFilterTypeBandpass = "bandpass"
js_BiquadFilterTypeLowshelf = "lowshelf"
js_BiquadFilterTypeHighshelf = "highshelf"
js_BiquadFilterTypePeaking = "peaking"
js_BiquadFilterTypeNotch = "notch"
js_BiquadFilterTypeAllpass = "allpass"
 
data OscillatorType = OscillatorTypeSine
                    | OscillatorTypeSquare
                    | OscillatorTypeSawtooth
                    | OscillatorTypeTriangle
                    | OscillatorTypeCustom
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal OscillatorType where
        toJSVal OscillatorTypeSine = toJSVal js_OscillatorTypeSine
        toJSVal OscillatorTypeSquare = toJSVal js_OscillatorTypeSquare
        toJSVal OscillatorTypeSawtooth = toJSVal js_OscillatorTypeSawtooth
        toJSVal OscillatorTypeTriangle = toJSVal js_OscillatorTypeTriangle
        toJSVal OscillatorTypeCustom = toJSVal js_OscillatorTypeCustom
 
instance FromJSVal OscillatorType where
        fromJSVal x
          = x `strictEqual` js_OscillatorTypeSine >>=
              \ r ->
                case r of
                    True -> return (Just OscillatorTypeSine)
                    False
                      -> x `strictEqual` js_OscillatorTypeSquare >>=
                           \ r ->
                             case r of
                                 True -> return (Just OscillatorTypeSquare)
                                 False
                                   -> x `strictEqual` js_OscillatorTypeSawtooth >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just OscillatorTypeSawtooth)
                                              False
                                                -> x `strictEqual` js_OscillatorTypeTriangle >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return (Just OscillatorTypeTriangle)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_OscillatorTypeCustom
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  OscillatorTypeCustom)
                                                                        False -> return Nothing
js_OscillatorTypeSine = "sine"
js_OscillatorTypeSquare = "square"
js_OscillatorTypeSawtooth = "sawtooth"
js_OscillatorTypeTriangle = "triangle"
js_OscillatorTypeCustom = "custom"
 
data PanningModelType = PanningModelTypeEqualpower
                      | PanningModelTypeHRTF
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal PanningModelType where
        toJSVal PanningModelTypeEqualpower
          = toJSVal js_PanningModelTypeEqualpower
        toJSVal PanningModelTypeHRTF = toJSVal js_PanningModelTypeHRTF
 
instance FromJSVal PanningModelType where
        fromJSVal x
          = x `strictEqual` js_PanningModelTypeEqualpower >>=
              \ r ->
                case r of
                    True -> return (Just PanningModelTypeEqualpower)
                    False
                      -> x `strictEqual` js_PanningModelTypeHRTF >>=
                           \ r ->
                             case r of
                                 True -> return (Just PanningModelTypeHRTF)
                                 False -> return Nothing
js_PanningModelTypeEqualpower = "equalpower"
js_PanningModelTypeHRTF = "HRTF"
 
data DistanceModelType = DistanceModelTypeLinear
                       | DistanceModelTypeInverse
                       | DistanceModelTypeExponential
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal DistanceModelType where
        toJSVal DistanceModelTypeLinear
          = toJSVal js_DistanceModelTypeLinear
        toJSVal DistanceModelTypeInverse
          = toJSVal js_DistanceModelTypeInverse
        toJSVal DistanceModelTypeExponential
          = toJSVal js_DistanceModelTypeExponential
 
instance FromJSVal DistanceModelType where
        fromJSVal x
          = x `strictEqual` js_DistanceModelTypeLinear >>=
              \ r ->
                case r of
                    True -> return (Just DistanceModelTypeLinear)
                    False
                      -> x `strictEqual` js_DistanceModelTypeInverse >>=
                           \ r ->
                             case r of
                                 True -> return (Just DistanceModelTypeInverse)
                                 False
                                   -> x `strictEqual` js_DistanceModelTypeExponential >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just DistanceModelTypeExponential)
                                              False -> return Nothing
js_DistanceModelTypeLinear = "linear"
js_DistanceModelTypeInverse = "inverse"
js_DistanceModelTypeExponential = "exponential"
 
data OverSampleType = OverSampleTypeNone
                    | OverSampleType2x
                    | OverSampleType4x
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal OverSampleType where
        toJSVal OverSampleTypeNone = toJSVal js_OverSampleTypeNone
        toJSVal OverSampleType2x = toJSVal js_OverSampleType2x
        toJSVal OverSampleType4x = toJSVal js_OverSampleType4x
 
instance FromJSVal OverSampleType where
        fromJSVal x
          = x `strictEqual` js_OverSampleTypeNone >>=
              \ r ->
                case r of
                    True -> return (Just OverSampleTypeNone)
                    False
                      -> x `strictEqual` js_OverSampleType2x >>=
                           \ r ->
                             case r of
                                 True -> return (Just OverSampleType2x)
                                 False
                                   -> x `strictEqual` js_OverSampleType4x >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just OverSampleType4x)
                                              False -> return Nothing
js_OverSampleTypeNone = "none"
js_OverSampleType2x = "2x"
js_OverSampleType4x = "4x"
 
data ScrollRestoration = ScrollRestorationAuto
                       | ScrollRestorationManual
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ScrollRestoration where
        toJSVal ScrollRestorationAuto = toJSVal js_ScrollRestorationAuto
        toJSVal ScrollRestorationManual
          = toJSVal js_ScrollRestorationManual
 
instance FromJSVal ScrollRestoration where
        fromJSVal x
          = x `strictEqual` js_ScrollRestorationAuto >>=
              \ r ->
                case r of
                    True -> return (Just ScrollRestorationAuto)
                    False
                      -> x `strictEqual` js_ScrollRestorationManual >>=
                           \ r ->
                             case r of
                                 True -> return (Just ScrollRestorationManual)
                                 False -> return Nothing
js_ScrollRestorationAuto = "auto"
js_ScrollRestorationManual = "manual"
 
data XMLHttpRequestResponseType = XMLHttpRequestResponseType
                                | XMLHttpRequestResponseTypeArraybuffer
                                | XMLHttpRequestResponseTypeBlob
                                | XMLHttpRequestResponseTypeDocument
                                | XMLHttpRequestResponseTypeJson
                                | XMLHttpRequestResponseTypeText
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal XMLHttpRequestResponseType where
        toJSVal XMLHttpRequestResponseType
          = toJSVal js_XMLHttpRequestResponseType
        toJSVal XMLHttpRequestResponseTypeArraybuffer
          = toJSVal js_XMLHttpRequestResponseTypeArraybuffer
        toJSVal XMLHttpRequestResponseTypeBlob
          = toJSVal js_XMLHttpRequestResponseTypeBlob
        toJSVal XMLHttpRequestResponseTypeDocument
          = toJSVal js_XMLHttpRequestResponseTypeDocument
        toJSVal XMLHttpRequestResponseTypeJson
          = toJSVal js_XMLHttpRequestResponseTypeJson
        toJSVal XMLHttpRequestResponseTypeText
          = toJSVal js_XMLHttpRequestResponseTypeText
 
instance FromJSVal XMLHttpRequestResponseType where
        fromJSVal x
          = x `strictEqual` js_XMLHttpRequestResponseType >>=
              \ r ->
                case r of
                    True -> return (Just XMLHttpRequestResponseType)
                    False
                      -> x `strictEqual` js_XMLHttpRequestResponseTypeArraybuffer >>=
                           \ r ->
                             case r of
                                 True -> return (Just XMLHttpRequestResponseTypeArraybuffer)
                                 False
                                   -> x `strictEqual` js_XMLHttpRequestResponseTypeBlob >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just XMLHttpRequestResponseTypeBlob)
                                              False
                                                -> x `strictEqual`
                                                     js_XMLHttpRequestResponseTypeDocument
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     XMLHttpRequestResponseTypeDocument)
                                                           False
                                                             -> x `strictEqual`
                                                                  js_XMLHttpRequestResponseTypeJson
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  XMLHttpRequestResponseTypeJson)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_XMLHttpRequestResponseTypeText
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               XMLHttpRequestResponseTypeText)
                                                                                     False
                                                                                       -> return
                                                                                            Nothing
js_XMLHttpRequestResponseType = ""
js_XMLHttpRequestResponseTypeArraybuffer = "arraybuffer"
js_XMLHttpRequestResponseTypeBlob = "blob"
js_XMLHttpRequestResponseTypeDocument = "document"
js_XMLHttpRequestResponseTypeJson = "json"
js_XMLHttpRequestResponseTypeText = "text"
