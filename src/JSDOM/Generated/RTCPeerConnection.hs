{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCPeerConnection
       (newRTCPeerConnection, createOffer, createAnswer,
        setLocalDescription, setRemoteDescription, updateIce,
        addIceCandidate, getLocalStreams, getLocalStreams_,
        getRemoteStreams, getRemoteStreams_, getStreamById, getStreamById_,
        getStreamByIdUnchecked, getConfiguration, getConfiguration_,
        getConfigurationUnchecked, addStream, removeStream, getStats,
        createDataChannel, createDataChannel_, createDataChannelUnchecked,
        createDTMFSender, createDTMFSender_, createDTMFSenderUnchecked,
        close, getLocalDescription, getLocalDescriptionUnchecked,
        getRemoteDescription, getRemoteDescriptionUnchecked,
        getSignalingState, getIceGatheringState, getIceConnectionState,
        negotiationNeeded, iceCandidate, signalingStateChange,
        addStreamEvent, removeStreamEvent, iceConnectionStateChange,
        dataChannel, RTCPeerConnection(..), gTypeRTCPeerConnection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation> 
newRTCPeerConnection ::
                     (MonadDOM m, IsDictionary rtcConfiguration) =>
                       Maybe rtcConfiguration -> m RTCPeerConnection
newRTCPeerConnection rtcConfiguration
  = liftDOM
      (RTCPeerConnection <$>
         new (jsg "RTCPeerConnection") [toJSVal rtcConfiguration])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
createOffer ::
            (MonadDOM m, IsDictionary offerOptions) =>
              RTCPeerConnection ->
                Maybe RTCSessionDescriptionCallback ->
                  Maybe RTCPeerConnectionErrorCallback -> Maybe offerOptions -> m ()
createOffer self successCallback failureCallback offerOptions
  = liftDOM
      (void
         (self ^. jsf "createOffer"
            [toJSVal successCallback, toJSVal failureCallback,
             toJSVal offerOptions]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
createAnswer ::
             (MonadDOM m, IsDictionary answerOptions) =>
               RTCPeerConnection ->
                 Maybe RTCSessionDescriptionCallback ->
                   Maybe RTCPeerConnectionErrorCallback -> Maybe answerOptions -> m ()
createAnswer self successCallback failureCallback answerOptions
  = liftDOM
      (void
         (self ^. jsf "createAnswer"
            [toJSVal successCallback, toJSVal failureCallback,
             toJSVal answerOptions]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setLocalDescription Mozilla webkitRTCPeerConnection.setLocalDescription documentation> 
setLocalDescription ::
                    (MonadDOM m) =>
                      RTCPeerConnection ->
                        Maybe RTCSessionDescription ->
                          Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
setLocalDescription self description successCallback
  failureCallback
  = liftDOM
      (void
         (self ^. jsf "setLocalDescription"
            [toJSVal description, toJSVal successCallback,
             toJSVal failureCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setRemoteDescription Mozilla webkitRTCPeerConnection.setRemoteDescription documentation> 
setRemoteDescription ::
                     (MonadDOM m) =>
                       RTCPeerConnection ->
                         Maybe RTCSessionDescription ->
                           Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
setRemoteDescription self description successCallback
  failureCallback
  = liftDOM
      (void
         (self ^. jsf "setRemoteDescription"
            [toJSVal description, toJSVal successCallback,
             toJSVal failureCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.updateIce Mozilla webkitRTCPeerConnection.updateIce documentation> 
updateIce ::
          (MonadDOM m, IsDictionary configuration) =>
            RTCPeerConnection -> Maybe configuration -> m ()
updateIce self configuration
  = liftDOM (void (self ^. jsf "updateIce" [toJSVal configuration]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation> 
addIceCandidate ::
                (MonadDOM m) =>
                  RTCPeerConnection ->
                    Maybe RTCIceCandidate ->
                      Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
addIceCandidate self candidate successCallback failureCallback
  = liftDOM
      (void
         (self ^. jsf "addIceCandidate"
            [toJSVal candidate, toJSVal successCallback,
             toJSVal failureCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams ::
                (MonadDOM m) => RTCPeerConnection -> m [Maybe MediaStream]
getLocalStreams self
  = liftDOM ((self ^. jsf "getLocalStreams" ()) >>= fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getLocalStreams_ self
  = liftDOM (void (self ^. jsf "getLocalStreams" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams ::
                 (MonadDOM m) => RTCPeerConnection -> m [Maybe MediaStream]
getRemoteStreams self
  = liftDOM ((self ^. jsf "getRemoteStreams" ()) >>= fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getRemoteStreams_ self
  = liftDOM (void (self ^. jsf "getRemoteStreams" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById ::
              (MonadDOM m, ToJSString streamId) =>
                RTCPeerConnection -> streamId -> m (Maybe MediaStream)
getStreamById self streamId
  = liftDOM
      ((self ^. jsf "getStreamById" [toJSVal streamId]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById_ ::
               (MonadDOM m, ToJSString streamId) =>
                 RTCPeerConnection -> streamId -> m ()
getStreamById_ self streamId
  = liftDOM (void (self ^. jsf "getStreamById" [toJSVal streamId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamByIdUnchecked ::
                       (MonadDOM m, ToJSString streamId) =>
                         RTCPeerConnection -> streamId -> m MediaStream
getStreamByIdUnchecked self streamId
  = liftDOM
      ((self ^. jsf "getStreamById" [toJSVal streamId]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration ::
                 (MonadDOM m) => RTCPeerConnection -> m (Maybe RTCConfiguration)
getConfiguration self
  = liftDOM ((self ^. jsf "getConfiguration" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getConfiguration_ self
  = liftDOM (void (self ^. jsf "getConfiguration" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfigurationUnchecked ::
                          (MonadDOM m) => RTCPeerConnection -> m RTCConfiguration
getConfigurationUnchecked self
  = liftDOM
      ((self ^. jsf "getConfiguration" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStream Mozilla webkitRTCPeerConnection.addStream documentation> 
addStream ::
          (MonadDOM m) => RTCPeerConnection -> Maybe MediaStream -> m ()
addStream self stream
  = liftDOM (void (self ^. jsf "addStream" [toJSVal stream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStream Mozilla webkitRTCPeerConnection.removeStream documentation> 
removeStream ::
             (MonadDOM m) => RTCPeerConnection -> Maybe MediaStream -> m ()
removeStream self stream
  = liftDOM (void (self ^. jsf "removeStream" [toJSVal stream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStats Mozilla webkitRTCPeerConnection.getStats documentation> 
getStats ::
         (MonadDOM m, IsMediaStreamTrack selector) =>
           RTCPeerConnection ->
             Maybe RTCStatsCallback ->
               Maybe RTCPeerConnectionErrorCallback -> Maybe selector -> m ()
getStats self successCallback failureCallback selector
  = liftDOM
      (void
         (self ^. jsf "getStats"
            [toJSVal successCallback, toJSVal failureCallback,
             toJSVal selector]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel ::
                  (MonadDOM m, ToJSString label, IsDictionary options) =>
                    RTCPeerConnection ->
                      Maybe label -> Maybe options -> m (Maybe RTCDataChannel)
createDataChannel self label options
  = liftDOM
      ((self ^. jsf "createDataChannel" [toJSVal label, toJSVal options])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel_ ::
                   (MonadDOM m, ToJSString label, IsDictionary options) =>
                     RTCPeerConnection -> Maybe label -> Maybe options -> m ()
createDataChannel_ self label options
  = liftDOM
      (void
         (self ^. jsf "createDataChannel" [toJSVal label, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannelUnchecked ::
                           (MonadDOM m, ToJSString label, IsDictionary options) =>
                             RTCPeerConnection ->
                               Maybe label -> Maybe options -> m RTCDataChannel
createDataChannelUnchecked self label options
  = liftDOM
      ((self ^. jsf "createDataChannel" [toJSVal label, toJSVal options])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
createDTMFSender ::
                 (MonadDOM m, IsMediaStreamTrack track) =>
                   RTCPeerConnection -> Maybe track -> m (Maybe RTCDTMFSender)
createDTMFSender self track
  = liftDOM
      ((self ^. jsf "createDTMFSender" [toJSVal track]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
createDTMFSender_ ::
                  (MonadDOM m, IsMediaStreamTrack track) =>
                    RTCPeerConnection -> Maybe track -> m ()
createDTMFSender_ self track
  = liftDOM (void (self ^. jsf "createDTMFSender" [toJSVal track]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
createDTMFSenderUnchecked ::
                          (MonadDOM m, IsMediaStreamTrack track) =>
                            RTCPeerConnection -> Maybe track -> m RTCDTMFSender
createDTMFSenderUnchecked self track
  = liftDOM
      ((self ^. jsf "createDTMFSender" [toJSVal track]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.close Mozilla webkitRTCPeerConnection.close documentation> 
close :: (MonadDOM m) => RTCPeerConnection -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescription ::
                    (MonadDOM m) =>
                      RTCPeerConnection -> m (Maybe RTCSessionDescription)
getLocalDescription self
  = liftDOM ((self ^. js "localDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescriptionUnchecked ::
                             (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getLocalDescriptionUnchecked self
  = liftDOM ((self ^. js "localDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescription ::
                     (MonadDOM m) =>
                       RTCPeerConnection -> m (Maybe RTCSessionDescription)
getRemoteDescription self
  = liftDOM ((self ^. js "remoteDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescriptionUnchecked ::
                              (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getRemoteDescriptionUnchecked self
  = liftDOM ((self ^. js "remoteDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingState Mozilla webkitRTCPeerConnection.signalingState documentation> 
getSignalingState ::
                  (MonadDOM m, FromJSString result) => RTCPeerConnection -> m result
getSignalingState self
  = liftDOM ((self ^. js "signalingState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceGatheringState Mozilla webkitRTCPeerConnection.iceGatheringState documentation> 
getIceGatheringState ::
                     (MonadDOM m, FromJSString result) => RTCPeerConnection -> m result
getIceGatheringState self
  = liftDOM ((self ^. js "iceGatheringState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionState Mozilla webkitRTCPeerConnection.iceConnectionState documentation> 
getIceConnectionState ::
                      (MonadDOM m, FromJSString result) => RTCPeerConnection -> m result
getIceConnectionState self
  = liftDOM
      ((self ^. js "iceConnectionState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onnegotiationneeded Mozilla webkitRTCPeerConnection.onnegotiationneeded documentation> 
negotiationNeeded :: EventName RTCPeerConnection Event
negotiationNeeded
  = unsafeEventName (toJSString "negotiationneeded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onicecandidate Mozilla webkitRTCPeerConnection.onicecandidate documentation> 
iceCandidate :: EventName RTCPeerConnection RTCIceCandidateEvent
iceCandidate = unsafeEventName (toJSString "icecandidate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onsignalingstatechange Mozilla webkitRTCPeerConnection.onsignalingstatechange documentation> 
signalingStateChange :: EventName RTCPeerConnection Event
signalingStateChange
  = unsafeEventName (toJSString "signalingstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onaddstream Mozilla webkitRTCPeerConnection.onaddstream documentation> 
addStreamEvent :: EventName RTCPeerConnection Event
addStreamEvent = unsafeEventName (toJSString "addstream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onremovestream Mozilla webkitRTCPeerConnection.onremovestream documentation> 
removeStreamEvent :: EventName RTCPeerConnection Event
removeStreamEvent = unsafeEventName (toJSString "removestream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.oniceconnectionstatechange Mozilla webkitRTCPeerConnection.oniceconnectionstatechange documentation> 
iceConnectionStateChange :: EventName RTCPeerConnection Event
iceConnectionStateChange
  = unsafeEventName (toJSString "iceconnectionstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.ondatachannel Mozilla webkitRTCPeerConnection.ondatachannel documentation> 
dataChannel :: EventName RTCPeerConnection Event
dataChannel = unsafeEventName (toJSString "datachannel")
