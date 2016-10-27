{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaStreamTrack
       (getSources, getConstraints, getConstraints_, getConstraintsUnsafe,
        getConstraintsUnchecked, states, states_, statesUnsafe,
        statesUnchecked, getCapabilities, getCapabilities_,
        getCapabilitiesUnsafe, getCapabilitiesUnchecked, applyConstraints,
        clone, clone_, cloneUnsafe, cloneUnchecked, stop, getKind, getId,
        getLabel, setEnabled, getEnabled, getMuted, mute, unmute,
        get_readonly, getRemote, getReadyState, started, ended,
        overConstrained, MediaStreamTrack(..), gTypeMediaStreamTrack,
        IsMediaStreamTrack, toMediaStreamTrack)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSources Mozilla MediaStreamTrack.getSources documentation> 
getSources ::
           (MonadDOM m, IsMediaStreamTrack self) =>
             self -> Maybe MediaStreamTrackSourcesCallback -> m ()
getSources self callback
  = liftDOM
      (void
         ((toMediaStreamTrack self) ^. jsf "getSources" [toJSVal callback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints ::
               (MonadDOM m, IsMediaStreamTrack self) =>
                 self -> m (Maybe MediaTrackConstraints)
getConstraints self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "getConstraints" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints_ ::
                (MonadDOM m, IsMediaStreamTrack self) => self -> m ()
getConstraints_ self
  = liftDOM
      (void ((toMediaStreamTrack self) ^. jsf "getConstraints" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraintsUnsafe ::
                     (MonadDOM m, IsMediaStreamTrack self, HasCallStack) =>
                       self -> m MediaTrackConstraints
getConstraintsUnsafe self
  = liftDOM
      ((((toMediaStreamTrack self) ^. jsf "getConstraints" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraintsUnchecked ::
                        (MonadDOM m, IsMediaStreamTrack self) =>
                          self -> m MediaTrackConstraints
getConstraintsUnchecked self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "getConstraints" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
states ::
       (MonadDOM m, IsMediaStreamTrack self) =>
         self -> m (Maybe MediaSourceStates)
states self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "states" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
states_ :: (MonadDOM m, IsMediaStreamTrack self) => self -> m ()
states_ self
  = liftDOM (void ((toMediaStreamTrack self) ^. jsf "states" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
statesUnsafe ::
             (MonadDOM m, IsMediaStreamTrack self, HasCallStack) =>
               self -> m MediaSourceStates
statesUnsafe self
  = liftDOM
      ((((toMediaStreamTrack self) ^. jsf "states" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
statesUnchecked ::
                (MonadDOM m, IsMediaStreamTrack self) =>
                  self -> m MediaSourceStates
statesUnchecked self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "states" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities ::
                (MonadDOM m, IsMediaStreamTrack self) =>
                  self -> m (Maybe MediaStreamCapabilities)
getCapabilities self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "getCapabilities" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities_ ::
                 (MonadDOM m, IsMediaStreamTrack self) => self -> m ()
getCapabilities_ self
  = liftDOM
      (void ((toMediaStreamTrack self) ^. jsf "getCapabilities" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilitiesUnsafe ::
                      (MonadDOM m, IsMediaStreamTrack self, HasCallStack) =>
                        self -> m MediaStreamCapabilities
getCapabilitiesUnsafe self
  = liftDOM
      ((((toMediaStreamTrack self) ^. jsf "getCapabilities" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilitiesUnchecked ::
                         (MonadDOM m, IsMediaStreamTrack self) =>
                           self -> m MediaStreamCapabilities
getCapabilitiesUnchecked self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "getCapabilities" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.applyConstraints Mozilla MediaStreamTrack.applyConstraints documentation> 
applyConstraints ::
                 (MonadDOM m, IsMediaStreamTrack self, IsDictionary constraints) =>
                   self -> Maybe constraints -> m ()
applyConstraints self constraints
  = liftDOM
      (void
         ((toMediaStreamTrack self) ^. jsf "applyConstraints"
            [toJSVal constraints]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone ::
      (MonadDOM m, IsMediaStreamTrack self) =>
        self -> m (Maybe MediaStreamTrack)
clone self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "clone" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone_ :: (MonadDOM m, IsMediaStreamTrack self) => self -> m ()
clone_ self
  = liftDOM (void ((toMediaStreamTrack self) ^. jsf "clone" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
cloneUnsafe ::
            (MonadDOM m, IsMediaStreamTrack self, HasCallStack) =>
              self -> m MediaStreamTrack
cloneUnsafe self
  = liftDOM
      ((((toMediaStreamTrack self) ^. jsf "clone" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
cloneUnchecked ::
               (MonadDOM m, IsMediaStreamTrack self) => self -> m MediaStreamTrack
cloneUnchecked self
  = liftDOM
      (((toMediaStreamTrack self) ^. jsf "clone" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.stop Mozilla MediaStreamTrack.stop documentation> 
stop :: (MonadDOM m, IsMediaStreamTrack self) => self -> m ()
stop self
  = liftDOM (void ((toMediaStreamTrack self) ^. jsf "stop" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.kind Mozilla MediaStreamTrack.kind documentation> 
getKind ::
        (MonadDOM m, IsMediaStreamTrack self, FromJSString result) =>
          self -> m result
getKind self
  = liftDOM
      (((toMediaStreamTrack self) ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.id Mozilla MediaStreamTrack.id documentation> 
getId ::
      (MonadDOM m, IsMediaStreamTrack self, FromJSString result) =>
        self -> m result
getId self
  = liftDOM
      (((toMediaStreamTrack self) ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.label Mozilla MediaStreamTrack.label documentation> 
getLabel ::
         (MonadDOM m, IsMediaStreamTrack self, FromJSString result) =>
           self -> m result
getLabel self
  = liftDOM
      (((toMediaStreamTrack self) ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
setEnabled ::
           (MonadDOM m, IsMediaStreamTrack self) => self -> Bool -> m ()
setEnabled self val
  = liftDOM
      ((toMediaStreamTrack self) ^. jss "enabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
getEnabled ::
           (MonadDOM m, IsMediaStreamTrack self) => self -> m Bool
getEnabled self
  = liftDOM
      (((toMediaStreamTrack self) ^. js "enabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.muted Mozilla MediaStreamTrack.muted documentation> 
getMuted :: (MonadDOM m, IsMediaStreamTrack self) => self -> m Bool
getMuted self
  = liftDOM (((toMediaStreamTrack self) ^. js "muted") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onmute Mozilla MediaStreamTrack.onmute documentation> 
mute ::
     (IsMediaStreamTrack self, IsEventTarget self) =>
       EventName self Event
mute = unsafeEventName (toJSString "mute")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onunmute Mozilla MediaStreamTrack.onunmute documentation> 
unmute ::
       (IsMediaStreamTrack self, IsEventTarget self) =>
         EventName self Event
unmute = unsafeEventName (toJSString "unmute")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack._readonly Mozilla MediaStreamTrack._readonly documentation> 
get_readonly ::
             (MonadDOM m, IsMediaStreamTrack self) => self -> m Bool
get_readonly self
  = liftDOM
      (((toMediaStreamTrack self) ^. js "_readonly") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.remote Mozilla MediaStreamTrack.remote documentation> 
getRemote ::
          (MonadDOM m, IsMediaStreamTrack self) => self -> m Bool
getRemote self
  = liftDOM
      (((toMediaStreamTrack self) ^. js "remote") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.readyState Mozilla MediaStreamTrack.readyState documentation> 
getReadyState ::
              (MonadDOM m, IsMediaStreamTrack self) =>
                self -> m MediaStreamTrackState
getReadyState self
  = liftDOM
      (((toMediaStreamTrack self) ^. js "readyState") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onstarted Mozilla MediaStreamTrack.onstarted documentation> 
started ::
        (IsMediaStreamTrack self, IsEventTarget self) =>
          EventName self Event
started = unsafeEventName (toJSString "started")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onended Mozilla MediaStreamTrack.onended documentation> 
ended ::
      (IsMediaStreamTrack self, IsEventTarget self) =>
        EventName self Event
ended = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onoverconstrained Mozilla MediaStreamTrack.onoverconstrained documentation> 
overConstrained ::
                (IsMediaStreamTrack self, IsEventTarget self) =>
                  EventName self Event
overConstrained = unsafeEventName (toJSString "overconstrained")
