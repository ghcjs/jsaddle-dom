{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Enums
       (KeyType(..), ToJSVal, FromJSVal, js_KeyTypeSecret,
        js_KeyTypePublic, js_KeyTypePrivate, KeyUsage(..),
        js_KeyUsageEncrypt, js_KeyUsageDecrypt, js_KeyUsageSign,
        js_KeyUsageVerify, js_KeyUsageDeriveKey, js_KeyUsageDeriveBits,
        js_KeyUsageWrapKey, js_KeyUsageUnwrapKey, CanvasWindingRule(..),
        js_CanvasWindingRuleNonzero, js_CanvasWindingRuleEvenodd,
        VideoPresentationMode(..), js_VideoPresentationModeFullscreen,
        js_VideoPresentationModeOptimized, js_VideoPresentationModeInline,
        TextTrackMode(..), js_TextTrackModeDisabled,
        js_TextTrackModeHidden, js_TextTrackModeShowing, TextTrackKind(..),
        js_TextTrackKindSubtitles, js_TextTrackKindCaptions,
        js_TextTrackKindDescriptions, js_TextTrackKindChapters,
        js_TextTrackKindMetadata, DeviceType(..), js_DeviceTypeNone,
        js_DeviceTypeAirplay, js_DeviceTypeTvout, MediaUIPartID(..),
        js_MediaUIPartIDOptimizedFullscreenButton,
        js_MediaUIPartIDOptimizedFullscreenPlaceholder,
        EndOfStreamError(..), js_EndOfStreamErrorNetwork,
        js_EndOfStreamErrorDecode, AppendMode(..), js_AppendModeSegments,
        js_AppendModeSequence, SourceTypeEnum(..), js_SourceTypeEnumNone,
        js_SourceTypeEnumCamera, js_SourceTypeEnumMicrophone,
        VideoFacingModeEnum(..), js_VideoFacingModeEnumUser,
        js_VideoFacingModeEnumEnvironment, js_VideoFacingModeEnumLeft,
        js_VideoFacingModeEnumRight, MediaStreamTrackState(..),
        js_MediaStreamTrackStateNew, js_MediaStreamTrackStateLive,
        js_MediaStreamTrackStateEnded, RTCIceTransportsEnum(..),
        js_RTCIceTransportsEnumNone, js_RTCIceTransportsEnumRelay,
        js_RTCIceTransportsEnumAll, RTCIdentityOptionEnum(..),
        js_RTCIdentityOptionEnumYes, js_RTCIdentityOptionEnumNo,
        js_RTCIdentityOptionEnumIfconfigured, ReadableStreamStateType(..),
        js_ReadableStreamStateTypeReadable,
        js_ReadableStreamStateTypeWaiting,
        js_ReadableStreamStateTypeClosed,
        js_ReadableStreamStateTypeErrored, OverSampleType(..),
        js_OverSampleTypeNone, js_OverSampleType2x, js_OverSampleType4x,
        PageOverlayType(..), js_PageOverlayTypeView,
        js_PageOverlayTypeDocument, XMLHttpRequestResponseType(..),
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
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
data KeyType = KeyTypeSecret
             | KeyTypePublic
             | KeyTypePrivate
             deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal KeyType where
        toJSVal KeyTypeSecret = toJSVal js_KeyTypeSecret
        toJSVal KeyTypePublic = toJSVal js_KeyTypePublic
        toJSVal KeyTypePrivate = toJSVal js_KeyTypePrivate
 
instance FromJSVal KeyType where
        fromJSVal x
          = x `strictEqual` js_KeyTypeSecret >>=
              \ r ->
                case r of
                    True -> return (Just KeyTypeSecret)
                    False
                      -> x `strictEqual` js_KeyTypePublic >>=
                           \ r ->
                             case r of
                                 True -> return (Just KeyTypePublic)
                                 False
                                   -> x `strictEqual` js_KeyTypePrivate >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just KeyTypePrivate)
                                              False -> return Nothing
js_KeyTypeSecret = "secret"
js_KeyTypePublic = "public"
js_KeyTypePrivate = "private"
 
data KeyUsage = KeyUsageEncrypt
              | KeyUsageDecrypt
              | KeyUsageSign
              | KeyUsageVerify
              | KeyUsageDeriveKey
              | KeyUsageDeriveBits
              | KeyUsageWrapKey
              | KeyUsageUnwrapKey
              deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal KeyUsage where
        toJSVal KeyUsageEncrypt = toJSVal js_KeyUsageEncrypt
        toJSVal KeyUsageDecrypt = toJSVal js_KeyUsageDecrypt
        toJSVal KeyUsageSign = toJSVal js_KeyUsageSign
        toJSVal KeyUsageVerify = toJSVal js_KeyUsageVerify
        toJSVal KeyUsageDeriveKey = toJSVal js_KeyUsageDeriveKey
        toJSVal KeyUsageDeriveBits = toJSVal js_KeyUsageDeriveBits
        toJSVal KeyUsageWrapKey = toJSVal js_KeyUsageWrapKey
        toJSVal KeyUsageUnwrapKey = toJSVal js_KeyUsageUnwrapKey
 
instance FromJSVal KeyUsage where
        fromJSVal x
          = x `strictEqual` js_KeyUsageEncrypt >>=
              \ r ->
                case r of
                    True -> return (Just KeyUsageEncrypt)
                    False
                      -> x `strictEqual` js_KeyUsageDecrypt >>=
                           \ r ->
                             case r of
                                 True -> return (Just KeyUsageDecrypt)
                                 False
                                   -> x `strictEqual` js_KeyUsageSign >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just KeyUsageSign)
                                              False
                                                -> x `strictEqual` js_KeyUsageVerify >>=
                                                     \ r ->
                                                       case r of
                                                           True -> return (Just KeyUsageVerify)
                                                           False
                                                             -> x `strictEqual` js_KeyUsageDeriveKey
                                                                  >>=
                                                                  \ r ->
                                                                    case r of
                                                                        True
                                                                          -> return
                                                                               (Just
                                                                                  KeyUsageDeriveKey)
                                                                        False
                                                                          -> x `strictEqual`
                                                                               js_KeyUsageDeriveBits
                                                                               >>=
                                                                               \ r ->
                                                                                 case r of
                                                                                     True
                                                                                       -> return
                                                                                            (Just
                                                                                               KeyUsageDeriveBits)
                                                                                     False
                                                                                       -> x `strictEqual`
                                                                                            js_KeyUsageWrapKey
                                                                                            >>=
                                                                                            \ r ->
                                                                                              case r
                                                                                                of
                                                                                                  True
                                                                                                    -> return
                                                                                                         (Just
                                                                                                            KeyUsageWrapKey)
                                                                                                  False
                                                                                                    -> x `strictEqual`
                                                                                                         js_KeyUsageUnwrapKey
                                                                                                         >>=
                                                                                                         \ r
                                                                                                           ->
                                                                                                           case
                                                                                                             r
                                                                                                             of
                                                                                                               True
                                                                                                                 -> return
                                                                                                                      (Just
                                                                                                                         KeyUsageUnwrapKey)
                                                                                                               False
                                                                                                                 -> return
                                                                                                                      Nothing
js_KeyUsageEncrypt = "encrypt"
js_KeyUsageDecrypt = "decrypt"
js_KeyUsageSign = "sign"
js_KeyUsageVerify = "verify"
js_KeyUsageDeriveKey = "deriveKey"
js_KeyUsageDeriveBits = "deriveBits"
js_KeyUsageWrapKey = "wrapKey"
js_KeyUsageUnwrapKey = "unwrapKey"
 
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
 
data VideoPresentationMode = VideoPresentationModeFullscreen
                           | VideoPresentationModeOptimized
                           | VideoPresentationModeInline
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal VideoPresentationMode where
        toJSVal VideoPresentationModeFullscreen
          = toJSVal js_VideoPresentationModeFullscreen
        toJSVal VideoPresentationModeOptimized
          = toJSVal js_VideoPresentationModeOptimized
        toJSVal VideoPresentationModeInline
          = toJSVal js_VideoPresentationModeInline
 
instance FromJSVal VideoPresentationMode where
        fromJSVal x
          = x `strictEqual` js_VideoPresentationModeFullscreen >>=
              \ r ->
                case r of
                    True -> return (Just VideoPresentationModeFullscreen)
                    False
                      -> x `strictEqual` js_VideoPresentationModeOptimized >>=
                           \ r ->
                             case r of
                                 True -> return (Just VideoPresentationModeOptimized)
                                 False
                                   -> x `strictEqual` js_VideoPresentationModeInline >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just VideoPresentationModeInline)
                                              False -> return Nothing
js_VideoPresentationModeFullscreen = "fullscreen"
js_VideoPresentationModeOptimized = "optimized"
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
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal TextTrackKind where
        toJSVal TextTrackKindSubtitles = toJSVal js_TextTrackKindSubtitles
        toJSVal TextTrackKindCaptions = toJSVal js_TextTrackKindCaptions
        toJSVal TextTrackKindDescriptions
          = toJSVal js_TextTrackKindDescriptions
        toJSVal TextTrackKindChapters = toJSVal js_TextTrackKindChapters
        toJSVal TextTrackKindMetadata = toJSVal js_TextTrackKindMetadata
 
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
                                                                        False -> return Nothing
js_TextTrackKindSubtitles = "subtitles"
js_TextTrackKindCaptions = "captions"
js_TextTrackKindDescriptions = "descriptions"
js_TextTrackKindChapters = "chapters"
js_TextTrackKindMetadata = "metadata"
 
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
 
data MediaUIPartID = MediaUIPartIDOptimizedFullscreenButton
                   | MediaUIPartIDOptimizedFullscreenPlaceholder
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal MediaUIPartID where
        toJSVal MediaUIPartIDOptimizedFullscreenButton
          = toJSVal js_MediaUIPartIDOptimizedFullscreenButton
        toJSVal MediaUIPartIDOptimizedFullscreenPlaceholder
          = toJSVal js_MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance FromJSVal MediaUIPartID where
        fromJSVal x
          = x `strictEqual` js_MediaUIPartIDOptimizedFullscreenButton >>=
              \ r ->
                case r of
                    True -> return (Just MediaUIPartIDOptimizedFullscreenButton)
                    False
                      -> x `strictEqual` js_MediaUIPartIDOptimizedFullscreenPlaceholder
                           >>=
                           \ r ->
                             case r of
                                 True -> return (Just MediaUIPartIDOptimizedFullscreenPlaceholder)
                                 False -> return Nothing
js_MediaUIPartIDOptimizedFullscreenButton
  = "optimized-fullscreen-button"
js_MediaUIPartIDOptimizedFullscreenPlaceholder
  = "optimized-fullscreen-placeholder"
 
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
 
data SourceTypeEnum = SourceTypeEnumNone
                    | SourceTypeEnumCamera
                    | SourceTypeEnumMicrophone
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal SourceTypeEnum where
        toJSVal SourceTypeEnumNone = toJSVal js_SourceTypeEnumNone
        toJSVal SourceTypeEnumCamera = toJSVal js_SourceTypeEnumCamera
        toJSVal SourceTypeEnumMicrophone
          = toJSVal js_SourceTypeEnumMicrophone
 
instance FromJSVal SourceTypeEnum where
        fromJSVal x
          = x `strictEqual` js_SourceTypeEnumNone >>=
              \ r ->
                case r of
                    True -> return (Just SourceTypeEnumNone)
                    False
                      -> x `strictEqual` js_SourceTypeEnumCamera >>=
                           \ r ->
                             case r of
                                 True -> return (Just SourceTypeEnumCamera)
                                 False
                                   -> x `strictEqual` js_SourceTypeEnumMicrophone >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just SourceTypeEnumMicrophone)
                                              False -> return Nothing
js_SourceTypeEnumNone = "none"
js_SourceTypeEnumCamera = "camera"
js_SourceTypeEnumMicrophone = "microphone"
 
data VideoFacingModeEnum = VideoFacingModeEnumUser
                         | VideoFacingModeEnumEnvironment
                         | VideoFacingModeEnumLeft
                         | VideoFacingModeEnumRight
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal VideoFacingModeEnum where
        toJSVal VideoFacingModeEnumUser
          = toJSVal js_VideoFacingModeEnumUser
        toJSVal VideoFacingModeEnumEnvironment
          = toJSVal js_VideoFacingModeEnumEnvironment
        toJSVal VideoFacingModeEnumLeft
          = toJSVal js_VideoFacingModeEnumLeft
        toJSVal VideoFacingModeEnumRight
          = toJSVal js_VideoFacingModeEnumRight
 
instance FromJSVal VideoFacingModeEnum where
        fromJSVal x
          = x `strictEqual` js_VideoFacingModeEnumUser >>=
              \ r ->
                case r of
                    True -> return (Just VideoFacingModeEnumUser)
                    False
                      -> x `strictEqual` js_VideoFacingModeEnumEnvironment >>=
                           \ r ->
                             case r of
                                 True -> return (Just VideoFacingModeEnumEnvironment)
                                 False
                                   -> x `strictEqual` js_VideoFacingModeEnumLeft >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just VideoFacingModeEnumLeft)
                                              False
                                                -> x `strictEqual` js_VideoFacingModeEnumRight >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just VideoFacingModeEnumRight)
                                                           False -> return Nothing
js_VideoFacingModeEnumUser = "user"
js_VideoFacingModeEnumEnvironment = "environment"
js_VideoFacingModeEnumLeft = "left"
js_VideoFacingModeEnumRight = "right"
 
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
 
data RTCIceTransportsEnum = RTCIceTransportsEnumNone
                          | RTCIceTransportsEnumRelay
                          | RTCIceTransportsEnumAll
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCIceTransportsEnum where
        toJSVal RTCIceTransportsEnumNone
          = toJSVal js_RTCIceTransportsEnumNone
        toJSVal RTCIceTransportsEnumRelay
          = toJSVal js_RTCIceTransportsEnumRelay
        toJSVal RTCIceTransportsEnumAll
          = toJSVal js_RTCIceTransportsEnumAll
 
instance FromJSVal RTCIceTransportsEnum where
        fromJSVal x
          = x `strictEqual` js_RTCIceTransportsEnumNone >>=
              \ r ->
                case r of
                    True -> return (Just RTCIceTransportsEnumNone)
                    False
                      -> x `strictEqual` js_RTCIceTransportsEnumRelay >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCIceTransportsEnumRelay)
                                 False
                                   -> x `strictEqual` js_RTCIceTransportsEnumAll >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just RTCIceTransportsEnumAll)
                                              False -> return Nothing
js_RTCIceTransportsEnumNone = "none"
js_RTCIceTransportsEnumRelay = "relay"
js_RTCIceTransportsEnumAll = "all"
 
data RTCIdentityOptionEnum = RTCIdentityOptionEnumYes
                           | RTCIdentityOptionEnumNo
                           | RTCIdentityOptionEnumIfconfigured
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal RTCIdentityOptionEnum where
        toJSVal RTCIdentityOptionEnumYes
          = toJSVal js_RTCIdentityOptionEnumYes
        toJSVal RTCIdentityOptionEnumNo
          = toJSVal js_RTCIdentityOptionEnumNo
        toJSVal RTCIdentityOptionEnumIfconfigured
          = toJSVal js_RTCIdentityOptionEnumIfconfigured
 
instance FromJSVal RTCIdentityOptionEnum where
        fromJSVal x
          = x `strictEqual` js_RTCIdentityOptionEnumYes >>=
              \ r ->
                case r of
                    True -> return (Just RTCIdentityOptionEnumYes)
                    False
                      -> x `strictEqual` js_RTCIdentityOptionEnumNo >>=
                           \ r ->
                             case r of
                                 True -> return (Just RTCIdentityOptionEnumNo)
                                 False
                                   -> x `strictEqual` js_RTCIdentityOptionEnumIfconfigured >>=
                                        \ r ->
                                          case r of
                                              True
                                                -> return (Just RTCIdentityOptionEnumIfconfigured)
                                              False -> return Nothing
js_RTCIdentityOptionEnumYes = "yes"
js_RTCIdentityOptionEnumNo = "no"
js_RTCIdentityOptionEnumIfconfigured = "ifconfigured"
 
data ReadableStreamStateType = ReadableStreamStateTypeReadable
                             | ReadableStreamStateTypeWaiting
                             | ReadableStreamStateTypeClosed
                             | ReadableStreamStateTypeErrored
                             deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal ReadableStreamStateType where
        toJSVal ReadableStreamStateTypeReadable
          = toJSVal js_ReadableStreamStateTypeReadable
        toJSVal ReadableStreamStateTypeWaiting
          = toJSVal js_ReadableStreamStateTypeWaiting
        toJSVal ReadableStreamStateTypeClosed
          = toJSVal js_ReadableStreamStateTypeClosed
        toJSVal ReadableStreamStateTypeErrored
          = toJSVal js_ReadableStreamStateTypeErrored
 
instance FromJSVal ReadableStreamStateType where
        fromJSVal x
          = x `strictEqual` js_ReadableStreamStateTypeReadable >>=
              \ r ->
                case r of
                    True -> return (Just ReadableStreamStateTypeReadable)
                    False
                      -> x `strictEqual` js_ReadableStreamStateTypeWaiting >>=
                           \ r ->
                             case r of
                                 True -> return (Just ReadableStreamStateTypeWaiting)
                                 False
                                   -> x `strictEqual` js_ReadableStreamStateTypeClosed >>=
                                        \ r ->
                                          case r of
                                              True -> return (Just ReadableStreamStateTypeClosed)
                                              False
                                                -> x `strictEqual` js_ReadableStreamStateTypeErrored
                                                     >>=
                                                     \ r ->
                                                       case r of
                                                           True
                                                             -> return
                                                                  (Just
                                                                     ReadableStreamStateTypeErrored)
                                                           False -> return Nothing
js_ReadableStreamStateTypeReadable = "readable"
js_ReadableStreamStateTypeWaiting = "waiting"
js_ReadableStreamStateTypeClosed = "closed"
js_ReadableStreamStateTypeErrored = "errored"
 
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
 
data PageOverlayType = PageOverlayTypeView
                     | PageOverlayTypeDocument
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance ToJSVal PageOverlayType where
        toJSVal PageOverlayTypeView = toJSVal js_PageOverlayTypeView
        toJSVal PageOverlayTypeDocument
          = toJSVal js_PageOverlayTypeDocument
 
instance FromJSVal PageOverlayType where
        fromJSVal x
          = x `strictEqual` js_PageOverlayTypeView >>=
              \ r ->
                case r of
                    True -> return (Just PageOverlayTypeView)
                    False
                      -> x `strictEqual` js_PageOverlayTypeDocument >>=
                           \ r ->
                             case r of
                                 True -> return (Just PageOverlayTypeDocument)
                                 False -> return Nothing
js_PageOverlayTypeView = "view"
js_PageOverlayTypeDocument = "document"
 
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
