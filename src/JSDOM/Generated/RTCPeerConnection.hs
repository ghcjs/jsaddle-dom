{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCPeerConnection
       (createOffer, createOffer_, createAnswer, createAnswer_,
        setLocalDescription, setRemoteDescription, addIceCandidate,
        getConfiguration, getConfiguration_, setConfiguration, close,
        getSenders, getSenders_, getReceivers, getReceivers_,
        getTransceivers, getTransceivers_, addTrack, addTrack_,
        removeTrack, addTransceiverTrack, addTransceiverTrack_,
        createDataChannel, createDataChannel_, getStats, getStats_,
        getLocalStreams, getLocalStreams_, getRemoteStreams,
        getRemoteStreams_, getStreamById, getStreamById_, addStream,
        removeStream, getLocalDescription, getLocalDescriptionUnsafe,
        getLocalDescriptionUnchecked, getCurrentLocalDescription,
        getCurrentLocalDescriptionUnsafe,
        getCurrentLocalDescriptionUnchecked, getPendingLocalDescription,
        getPendingLocalDescriptionUnsafe,
        getPendingLocalDescriptionUnchecked, getRemoteDescription,
        getRemoteDescriptionUnsafe, getRemoteDescriptionUnchecked,
        getCurrentRemoteDescription, getCurrentRemoteDescriptionUnsafe,
        getCurrentRemoteDescriptionUnchecked, getPendingRemoteDescription,
        getPendingRemoteDescriptionUnsafe,
        getPendingRemoteDescriptionUnchecked, getSignalingState,
        getIceGatheringState, getIceConnectionState, getConnectionState,
        negotiationNeeded, iceCandidate, signalingStateChange,
        iceConnectionStateChange, icegatheringstatechange,
        connectionstatechange, track, dataChannel, addStreamEvent,
        RTCPeerConnection(..), gTypeRTCPeerConnection)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
createOffer ::
            (MonadDOM m) =>
              RTCPeerConnection ->
                Maybe RTCOfferOptions -> m RTCSessionDescriptionInit
createOffer self offerOptions
  = liftDOM
      (((self ^. jsf "createOffer" [toJSVal offerOptions]) >>=
          readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
createOffer_ ::
             (MonadDOM m) => RTCPeerConnection -> Maybe RTCOfferOptions -> m ()
createOffer_ self offerOptions
  = liftDOM (void (self ^. jsf "createOffer" [toJSVal offerOptions]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
createAnswer ::
             (MonadDOM m) =>
               RTCPeerConnection ->
                 Maybe RTCAnswerOptions -> m RTCSessionDescriptionInit
createAnswer self answerOptions
  = liftDOM
      (((self ^. jsf "createAnswer" [toJSVal answerOptions]) >>=
          readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
createAnswer_ ::
              (MonadDOM m) => RTCPeerConnection -> Maybe RTCAnswerOptions -> m ()
createAnswer_ self answerOptions
  = liftDOM
      (void (self ^. jsf "createAnswer" [toJSVal answerOptions]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setLocalDescription Mozilla webkitRTCPeerConnection.setLocalDescription documentation> 
setLocalDescription ::
                    (MonadDOM m) =>
                      RTCPeerConnection -> RTCSessionDescriptionInit -> m ()
setLocalDescription self description
  = liftDOM
      (void
         ((self ^. jsf "setLocalDescription" [toJSVal description]) >>=
            readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setRemoteDescription Mozilla webkitRTCPeerConnection.setRemoteDescription documentation> 
setRemoteDescription ::
                     (MonadDOM m) =>
                       RTCPeerConnection -> RTCSessionDescriptionInit -> m ()
setRemoteDescription self description
  = liftDOM
      (void
         ((self ^. jsf "setRemoteDescription" [toJSVal description]) >>=
            readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation> 
addIceCandidate ::
                (MonadDOM m, IsRTCIceCandidateOrInit candidate) =>
                  RTCPeerConnection -> candidate -> m ()
addIceCandidate self candidate
  = liftDOM
      (void
         ((self ^. jsf "addIceCandidate" [toJSVal candidate]) >>=
            readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration ::
                 (MonadDOM m) => RTCPeerConnection -> m RTCConfiguration
getConfiguration self
  = liftDOM
      ((self ^. jsf "getConfiguration" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getConfiguration_ self
  = liftDOM (void (self ^. jsf "getConfiguration" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setConfiguration Mozilla webkitRTCPeerConnection.setConfiguration documentation> 
setConfiguration ::
                 (MonadDOM m) => RTCPeerConnection -> RTCConfiguration -> m ()
setConfiguration self configuration
  = liftDOM
      (void (self ^. jsf "setConfiguration" [toJSVal configuration]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.close Mozilla webkitRTCPeerConnection.close documentation> 
close :: (MonadDOM m) => RTCPeerConnection -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getSenders Mozilla webkitRTCPeerConnection.getSenders documentation> 
getSenders :: (MonadDOM m) => RTCPeerConnection -> m [RTCRtpSender]
getSenders self
  = liftDOM ((self ^. jsf "getSenders" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getSenders Mozilla webkitRTCPeerConnection.getSenders documentation> 
getSenders_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getSenders_ self = liftDOM (void (self ^. jsf "getSenders" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getReceivers Mozilla webkitRTCPeerConnection.getReceivers documentation> 
getReceivers ::
             (MonadDOM m) => RTCPeerConnection -> m [RTCRtpReceiver]
getReceivers self
  = liftDOM
      ((self ^. jsf "getReceivers" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getReceivers Mozilla webkitRTCPeerConnection.getReceivers documentation> 
getReceivers_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getReceivers_ self = liftDOM (void (self ^. jsf "getReceivers" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getTransceivers Mozilla webkitRTCPeerConnection.getTransceivers documentation> 
getTransceivers ::
                (MonadDOM m) => RTCPeerConnection -> m [RTCRtpTransceiver]
getTransceivers self
  = liftDOM
      ((self ^. jsf "getTransceivers" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getTransceivers Mozilla webkitRTCPeerConnection.getTransceivers documentation> 
getTransceivers_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getTransceivers_ self
  = liftDOM (void (self ^. jsf "getTransceivers" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTrack Mozilla webkitRTCPeerConnection.addTrack documentation> 
addTrack ::
         (MonadDOM m, IsMediaStreamTrack track) =>
           RTCPeerConnection -> track -> [MediaStream] -> m RTCRtpSender
addTrack self track streams
  = liftDOM
      ((self ^. jsf "addTrack" [toJSVal track, toJSVal (array streams)])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTrack Mozilla webkitRTCPeerConnection.addTrack documentation> 
addTrack_ ::
          (MonadDOM m, IsMediaStreamTrack track) =>
            RTCPeerConnection -> track -> [MediaStream] -> m ()
addTrack_ self track streams
  = liftDOM
      (void
         (self ^. jsf "addTrack" [toJSVal track, toJSVal (array streams)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeTrack Mozilla webkitRTCPeerConnection.removeTrack documentation> 
removeTrack ::
            (MonadDOM m) => RTCPeerConnection -> RTCRtpSender -> m ()
removeTrack self sender
  = liftDOM (void (self ^. jsf "removeTrack" [toJSVal sender]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTransceiver Mozilla webkitRTCPeerConnection.addTransceiver documentation> 
addTransceiverTrack ::
                    (MonadDOM m, IsMediaStreamTrackOrKind track) =>
                      RTCPeerConnection ->
                        track -> Maybe RTCRtpTransceiverInit -> m RTCRtpTransceiver
addTransceiverTrack self track init
  = liftDOM
      ((self ^. jsf "addTransceiver" [toJSVal track, toJSVal init]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTransceiver Mozilla webkitRTCPeerConnection.addTransceiver documentation> 
addTransceiverTrack_ ::
                     (MonadDOM m, IsMediaStreamTrackOrKind track) =>
                       RTCPeerConnection -> track -> Maybe RTCRtpTransceiverInit -> m ()
addTransceiverTrack_ self track init
  = liftDOM
      (void (self ^. jsf "addTransceiver" [toJSVal track, toJSVal init]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel ::
                  (MonadDOM m, ToJSString label) =>
                    RTCPeerConnection ->
                      Maybe label -> Maybe RTCDataChannelInit -> m RTCDataChannel
createDataChannel self label options
  = liftDOM
      ((self ^. jsf "createDataChannel" [toJSVal label, toJSVal options])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel_ ::
                   (MonadDOM m, ToJSString label) =>
                     RTCPeerConnection ->
                       Maybe label -> Maybe RTCDataChannelInit -> m ()
createDataChannel_ self label options
  = liftDOM
      (void
         (self ^. jsf "createDataChannel" [toJSVal label, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStats Mozilla webkitRTCPeerConnection.getStats documentation> 
getStats ::
         (MonadDOM m, IsMediaStreamTrack selector) =>
           RTCPeerConnection -> Maybe selector -> m RTCStatsReport
getStats self selector
  = liftDOM
      (((self ^. jsf "getStats" [toJSVal selector]) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStats Mozilla webkitRTCPeerConnection.getStats documentation> 
getStats_ ::
          (MonadDOM m, IsMediaStreamTrack selector) =>
            RTCPeerConnection -> Maybe selector -> m ()
getStats_ self selector
  = liftDOM (void (self ^. jsf "getStats" [toJSVal selector]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams ::
                (MonadDOM m) => RTCPeerConnection -> m [MediaStream]
getLocalStreams self
  = liftDOM
      ((self ^. jsf "getLocalStreams" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getLocalStreams_ self
  = liftDOM (void (self ^. jsf "getLocalStreams" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams ::
                 (MonadDOM m) => RTCPeerConnection -> m [MediaStream]
getRemoteStreams self
  = liftDOM
      ((self ^. jsf "getRemoteStreams" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams_ :: (MonadDOM m) => RTCPeerConnection -> m ()
getRemoteStreams_ self
  = liftDOM (void (self ^. jsf "getRemoteStreams" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById ::
              (MonadDOM m, ToJSString streamId) =>
                RTCPeerConnection -> streamId -> m MediaStream
getStreamById self streamId
  = liftDOM
      ((self ^. jsf "getStreamById" [toJSVal streamId]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById_ ::
               (MonadDOM m, ToJSString streamId) =>
                 RTCPeerConnection -> streamId -> m ()
getStreamById_ self streamId
  = liftDOM (void (self ^. jsf "getStreamById" [toJSVal streamId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStream Mozilla webkitRTCPeerConnection.addStream documentation> 
addStream ::
          (MonadDOM m) => RTCPeerConnection -> MediaStream -> m ()
addStream self stream
  = liftDOM (void (self ^. jsf "addStream" [toJSVal stream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStream Mozilla webkitRTCPeerConnection.removeStream documentation> 
removeStream ::
             (MonadDOM m) => RTCPeerConnection -> MediaStream -> m ()
removeStream self stream
  = liftDOM (void (self ^. jsf "removeStream" [toJSVal stream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescription ::
                    (MonadDOM m) =>
                      RTCPeerConnection -> m (Maybe RTCSessionDescription)
getLocalDescription self
  = liftDOM ((self ^. js "localDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescriptionUnsafe ::
                          (MonadDOM m, HasCallStack) =>
                            RTCPeerConnection -> m RTCSessionDescription
getLocalDescriptionUnsafe self
  = liftDOM
      (((self ^. js "localDescription") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescriptionUnchecked ::
                             (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getLocalDescriptionUnchecked self
  = liftDOM ((self ^. js "localDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentLocalDescription Mozilla webkitRTCPeerConnection.currentLocalDescription documentation> 
getCurrentLocalDescription ::
                           (MonadDOM m) =>
                             RTCPeerConnection -> m (Maybe RTCSessionDescription)
getCurrentLocalDescription self
  = liftDOM ((self ^. js "currentLocalDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentLocalDescription Mozilla webkitRTCPeerConnection.currentLocalDescription documentation> 
getCurrentLocalDescriptionUnsafe ::
                                 (MonadDOM m, HasCallStack) =>
                                   RTCPeerConnection -> m RTCSessionDescription
getCurrentLocalDescriptionUnsafe self
  = liftDOM
      (((self ^. js "currentLocalDescription") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentLocalDescription Mozilla webkitRTCPeerConnection.currentLocalDescription documentation> 
getCurrentLocalDescriptionUnchecked ::
                                    (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getCurrentLocalDescriptionUnchecked self
  = liftDOM
      ((self ^. js "currentLocalDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingLocalDescription Mozilla webkitRTCPeerConnection.pendingLocalDescription documentation> 
getPendingLocalDescription ::
                           (MonadDOM m) =>
                             RTCPeerConnection -> m (Maybe RTCSessionDescription)
getPendingLocalDescription self
  = liftDOM ((self ^. js "pendingLocalDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingLocalDescription Mozilla webkitRTCPeerConnection.pendingLocalDescription documentation> 
getPendingLocalDescriptionUnsafe ::
                                 (MonadDOM m, HasCallStack) =>
                                   RTCPeerConnection -> m RTCSessionDescription
getPendingLocalDescriptionUnsafe self
  = liftDOM
      (((self ^. js "pendingLocalDescription") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingLocalDescription Mozilla webkitRTCPeerConnection.pendingLocalDescription documentation> 
getPendingLocalDescriptionUnchecked ::
                                    (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getPendingLocalDescriptionUnchecked self
  = liftDOM
      ((self ^. js "pendingLocalDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescription ::
                     (MonadDOM m) =>
                       RTCPeerConnection -> m (Maybe RTCSessionDescription)
getRemoteDescription self
  = liftDOM ((self ^. js "remoteDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescriptionUnsafe ::
                           (MonadDOM m, HasCallStack) =>
                             RTCPeerConnection -> m RTCSessionDescription
getRemoteDescriptionUnsafe self
  = liftDOM
      (((self ^. js "remoteDescription") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescriptionUnchecked ::
                              (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getRemoteDescriptionUnchecked self
  = liftDOM ((self ^. js "remoteDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentRemoteDescription Mozilla webkitRTCPeerConnection.currentRemoteDescription documentation> 
getCurrentRemoteDescription ::
                            (MonadDOM m) =>
                              RTCPeerConnection -> m (Maybe RTCSessionDescription)
getCurrentRemoteDescription self
  = liftDOM ((self ^. js "currentRemoteDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentRemoteDescription Mozilla webkitRTCPeerConnection.currentRemoteDescription documentation> 
getCurrentRemoteDescriptionUnsafe ::
                                  (MonadDOM m, HasCallStack) =>
                                    RTCPeerConnection -> m RTCSessionDescription
getCurrentRemoteDescriptionUnsafe self
  = liftDOM
      (((self ^. js "currentRemoteDescription") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentRemoteDescription Mozilla webkitRTCPeerConnection.currentRemoteDescription documentation> 
getCurrentRemoteDescriptionUnchecked ::
                                     (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getCurrentRemoteDescriptionUnchecked self
  = liftDOM
      ((self ^. js "currentRemoteDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingRemoteDescription Mozilla webkitRTCPeerConnection.pendingRemoteDescription documentation> 
getPendingRemoteDescription ::
                            (MonadDOM m) =>
                              RTCPeerConnection -> m (Maybe RTCSessionDescription)
getPendingRemoteDescription self
  = liftDOM ((self ^. js "pendingRemoteDescription") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingRemoteDescription Mozilla webkitRTCPeerConnection.pendingRemoteDescription documentation> 
getPendingRemoteDescriptionUnsafe ::
                                  (MonadDOM m, HasCallStack) =>
                                    RTCPeerConnection -> m RTCSessionDescription
getPendingRemoteDescriptionUnsafe self
  = liftDOM
      (((self ^. js "pendingRemoteDescription") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingRemoteDescription Mozilla webkitRTCPeerConnection.pendingRemoteDescription documentation> 
getPendingRemoteDescriptionUnchecked ::
                                     (MonadDOM m) => RTCPeerConnection -> m RTCSessionDescription
getPendingRemoteDescriptionUnchecked self
  = liftDOM
      ((self ^. js "pendingRemoteDescription") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingState Mozilla webkitRTCPeerConnection.signalingState documentation> 
getSignalingState ::
                  (MonadDOM m) => RTCPeerConnection -> m RTCSignalingState
getSignalingState self
  = liftDOM ((self ^. js "signalingState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceGatheringState Mozilla webkitRTCPeerConnection.iceGatheringState documentation> 
getIceGatheringState ::
                     (MonadDOM m) => RTCPeerConnection -> m RTCIceGatheringState
getIceGatheringState self
  = liftDOM ((self ^. js "iceGatheringState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionState Mozilla webkitRTCPeerConnection.iceConnectionState documentation> 
getIceConnectionState ::
                      (MonadDOM m) => RTCPeerConnection -> m RTCIceConnectionState
getIceConnectionState self
  = liftDOM
      ((self ^. js "iceConnectionState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.connectionState Mozilla webkitRTCPeerConnection.connectionState documentation> 
getConnectionState ::
                   (MonadDOM m) => RTCPeerConnection -> m RTCPeerConnectionState
getConnectionState self
  = liftDOM ((self ^. js "connectionState") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.oniceconnectionstatechange Mozilla webkitRTCPeerConnection.oniceconnectionstatechange documentation> 
iceConnectionStateChange :: EventName RTCPeerConnection Event
iceConnectionStateChange
  = unsafeEventName (toJSString "iceconnectionstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onicegatheringstatechange Mozilla webkitRTCPeerConnection.onicegatheringstatechange documentation> 
icegatheringstatechange ::
                          EventName RTCPeerConnection onicegatheringstatechange
icegatheringstatechange
  = unsafeEventName (toJSString "icegatheringstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onconnectionstatechange Mozilla webkitRTCPeerConnection.onconnectionstatechange documentation> 
connectionstatechange ::
                        EventName RTCPeerConnection onconnectionstatechange
connectionstatechange
  = unsafeEventName (toJSString "connectionstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.ontrack Mozilla webkitRTCPeerConnection.ontrack documentation> 
track :: EventName RTCPeerConnection ontrack
track = unsafeEventName (toJSString "track")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.ondatachannel Mozilla webkitRTCPeerConnection.ondatachannel documentation> 
dataChannel :: EventName RTCPeerConnection Event
dataChannel = unsafeEventName (toJSString "datachannel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onaddstream Mozilla webkitRTCPeerConnection.onaddstream documentation> 
addStreamEvent :: EventName RTCPeerConnection Event
addStreamEvent = unsafeEventName (toJSString "addstream")
