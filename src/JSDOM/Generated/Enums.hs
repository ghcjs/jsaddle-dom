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
        js_VisibilityStatePrerender, ShadowRootMode(..),
        js_ShadowRootModeUserAgent, js_ShadowRootModeClosed,
        js_ShadowRootModeOpen, BlobLineEndings(..),
        js_BlobLineEndingsTransparent, js_BlobLineEndingsNative,
        ImageSmoothingQuality(..), js_ImageSmoothingQualityLow,
        js_ImageSmoothingQualityMedium, js_ImageSmoothingQualityHigh,
        CanvasWindingRule(..), js_CanvasWindingRuleNonzero,
        js_CanvasWindingRuleEvenodd, WebGLPowerPreference(..),
        js_WebGLPowerPreferenceDefault, js_WebGLPowerPreferenceLowPower,
        js_WebGLPowerPreferenceHighPerformance, VideoPresentationMode(..),
        js_VideoPresentationModeFullscreen,
        js_VideoPresentationModePictureInPicture,
        js_VideoPresentationModeInline, TextTrackMode(..),
        js_TextTrackModeDisabled, js_TextTrackModeHidden,
        js_TextTrackModeShowing, TextTrackKind(..),
        js_TextTrackKindSubtitles, js_TextTrackKindCaptions,
        js_TextTrackKindDescriptions, js_TextTrackKindChapters,
        js_TextTrackKindMetadata, js_TextTrackKindForced,
        ApplePayLineItemType(..), js_ApplePayLineItemTypePending,
        js_ApplePayLineItemTypeFinal, ApplePayPaymentMethodType(..),
        js_ApplePayPaymentMethodTypeDebit,
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
        js_EndOfStreamErrorDecode, AppendMode(..), js_AppendModeSegments,
        js_AppendModeSequence, MediaDeviceKind(..),
        js_MediaDeviceKindAudioinput, js_MediaDeviceKindAudiooutput,
        js_MediaDeviceKindVideoinput, MediaStreamTrackState(..),
        js_MediaStreamTrackStateNew, js_MediaStreamTrackStateLive,
        js_MediaStreamTrackStateEnded, RTCIceTransportPolicy(..),
        js_RTCIceTransportPolicyRelay, js_RTCIceTransportPolicyAll,
        RTCBundlePolicy(..), js_RTCBundlePolicyBalanced,
        js_RTCBundlePolicyMaxCompat, js_RTCBundlePolicyMaxBundle,
        RTCRtpTransceiverDirection(..),
        js_RTCRtpTransceiverDirectionSendrecv,
        js_RTCRtpTransceiverDirectionSendonly,
        js_RTCRtpTransceiverDirectionRecvonly,
        js_RTCRtpTransceiverDirectionInactive, RTCSdpType(..),
        js_RTCSdpTypeOffer, js_RTCSdpTypePranswer, js_RTCSdpTypeAnswer,
        js_RTCSdpTypeRollback, NotificationDirection(..),
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
        js_OverSampleType4x, XMLHttpRequestResponseType(..),
        js_XMLHttpRequestResponseType,
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
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
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
 
data MediaStreamTrackState = MediaStreamTrackStateNew
                           | MediaStreamTrackStateLive
                           | MediaStreamTrackStateEnded
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaStreamTrackState where
        toJSVal MediaStreamTrackStateNew
          = toJSVal js_MediaStreamTrackStateNew
        toJSVal MediaStreamTrackStateLive
          = toJSVal js_MediaStreamTrackStateLive
        toJSVal MediaStreamTrackStateEnded
          = toJSVal js_MediaStreamTrackStateEnded
 
instance FromJSVal MediaStreamTrackState where
        fromJSVal x
          = x `strictEqual` js_MediaStreamTrackStateNew >>=
              \ r ->
                case r of
                    True -> return (Just MediaStreamTrackStateNew)
                    False
                      -> x `strictEqual` js_MediaStreamTrackStateLive >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaStreamTrackStateLive)
                                 False
                                   -> x `strictEqual` js_MediaStreamTrackStateEnded >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just MediaStreamTrackStateEnded)
                                              False -> return Nothing
js_MediaStreamTrackStateNew = "new"
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
