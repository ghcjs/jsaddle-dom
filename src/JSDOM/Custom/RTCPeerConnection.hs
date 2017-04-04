module JSDOM.Custom.RTCPeerConnection (
    module GeneratedExport
  , createOffer
  , createAnswer
) where

import Data.Maybe (fromJust)

import Control.Concurrent.MVar (takeMVar, putMVar, newEmptyMVar)
import Control.Monad.IO.Class (MonadIO(..))

import JSDOM.Types
       (RTCIceCandidate(..),
        withCallback, Callback(..), RTCSessionDescription(..), DOMError(..),
        Dictionary(..), RTCPeerConnection(..), MonadDOM,
        RTCSessionDescriptionCallback(..),
        RTCPeerConnectionErrorCallback(..),
        RTCStatsCallback(..), VoidCallback(..), RTCOfferOptions, RTCAnswerOptions)

import JSDOM.Custom.DOMError (throwDOMErrorException)

--import JSDOM.Generated.RTCSessionDescriptionCallback
--       (newRTCSessionDescriptionCallback)
--import JSDOM.Generated.RTCPeerConnectionErrorCallback
--       (newRTCPeerConnectionErrorCallback)
--import JSDOM.Generated.VoidCallback
--       (newVoidCallback)
--import JSDOM.Generated.RTCStatsCallback
--       (newRTCStatsCallback)

import JSDOM.Generated.RTCSessionDescription
       (newRTCSessionDescription)
import qualified
       JSDOM.Generated.RTCPeerConnection
       as Generated
       (createAnswer, createOffer)
import JSDOM.Generated.RTCPeerConnection
       as GeneratedExport hiding
       (createAnswer, createOffer)

---- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#createOffer Mozilla webkitRTCPeerConnection.createOffer documentation>
--createOffer' :: MonadDOM m => RTCPeerConnection -> Maybe Dictionary -> m (Either DOMError RTCSessionDescription)
--createOffer' self offerOptions = do
--    result <- liftIO newEmptyMVar
--    withCallback (newRTCSessionDescriptionCallback (liftIO . putMVar result . Right . fromJust)) $ \success ->
--        withCallback (newRTCPeerConnectionErrorCallback (liftIO . putMVar result . Left . fromJust)) $ \error -> do
--            Generated.createOffer self (Just success) (Just error) offerOptions
--            liftIO $ takeMVar result

createOffer :: MonadDOM m => RTCPeerConnection -> Maybe RTCOfferOptions -> m RTCSessionDescription
createOffer self offerOptions = Generated.createOffer self offerOptions >>= newRTCSessionDescription

---- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation>
--createAnswer' :: MonadDOM m => RTCPeerConnection -> Maybe Dictionary -> m (Either DOMError RTCSessionDescription)
--createAnswer' self answerOptions = do
--    result <- liftIO newEmptyMVar
--    withCallback (newRTCSessionDescriptionCallback (liftIO . putMVar result . Right . fromJust)) $ \success ->
--        withCallback (newRTCPeerConnectionErrorCallback (liftIO . putMVar result . Left . fromJust)) $ \error -> do
--            Generated.createAnswer self (Just success) (Just error) answerOptions
--            liftIO $ takeMVar result

createAnswer :: MonadDOM m => RTCPeerConnection -> Maybe RTCAnswerOptions -> m RTCSessionDescription
createAnswer self answerOptions = Generated.createAnswer self answerOptions  >>= newRTCSessionDescription

---- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#setLocalDescription Mozilla webkitRTCPeerConnection.setLocalDescription documentation>
--setLocalDescription' :: MonadDOM m => RTCPeerConnection -> RTCSessionDescription -> m (Maybe DOMError)
--setLocalDescription' self description = do
--    result <- liftIO newEmptyMVar
--    withCallback (newVoidCallback (liftIO $ putMVar result Nothing)) $ \success ->
--        withCallback (newRTCPeerConnectionErrorCallback (liftIO . putMVar result)) $ \error -> do
--            Generated.setLocalDescription self (Just description) (Just success) (Just error)
--            liftIO $ takeMVar result
--
--setLocalDescription :: MonadDOM m => RTCPeerConnection -> RTCSessionDescription -> m ()
--setLocalDescription self description = setLocalDescription' self description >>= maybe (return ()) throwDOMErrorException
--
---- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#setRemoteDescription Mozilla webkitRTCPeerConnection.setRemoteDescription documentation>
--setRemoteDescription' :: MonadDOM m => RTCPeerConnection -> RTCSessionDescription -> m (Maybe DOMError)
--setRemoteDescription' self description = do
--    result <- liftIO newEmptyMVar
--    withCallback (newVoidCallback (liftIO $ putMVar result Nothing)) $ \success ->
--        withCallback (newRTCPeerConnectionErrorCallback (liftIO . putMVar result)) $ \error -> do
--            Generated.setRemoteDescription self (Just description) (Just success) (Just error)
--            liftIO $ takeMVar result
--
--setRemoteDescription :: MonadDOM m => RTCPeerConnection -> RTCSessionDescription -> m ()
--setRemoteDescription self description = setRemoteDescription' self description >>= maybe (return ()) throwDOMErrorException
--
---- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation>
--addIceCandidate' :: MonadDOM m => RTCPeerConnection -> RTCIceCandidate -> m (Maybe DOMError)
--addIceCandidate' self candidate = do
--    result <- liftIO newEmptyMVar
--    withCallback (newVoidCallback (liftIO $ putMVar result Nothing)) $ \success ->
--        withCallback (newRTCPeerConnectionErrorCallback (liftIO . putMVar result)) $ \error -> do
--            Generated.addIceCandidate self (Just candidate) (Just success) (Just error)
--            liftIO $ takeMVar result
--
--addIceCandidate :: MonadDOM m => RTCPeerConnection -> RTCIceCandidate -> m ()
--addIceCandidate self candidate = addIceCandidate' self candidate >>= maybe (return ()) throwDOMErrorException
--

