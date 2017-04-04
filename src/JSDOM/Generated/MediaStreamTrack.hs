{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaStreamTrack
       (clone, clone_, stop, getConstraints, getConstraints_, getSettings,
        getSettings_, getCapabilities, getCapabilities_, applyConstraints,
        getKind, getId, getLabel, setEnabled, getEnabled, getMuted, mute,
        unmute, get_readonly, getRemote, getReadyState, ended,
        overConstrained, MediaStreamTrack(..), gTypeMediaStreamTrack)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone :: (MonadDOM m) => MediaStreamTrack -> m MediaStreamTrack
clone self
  = liftDOM ((self ^. jsf "clone" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone_ :: (MonadDOM m) => MediaStreamTrack -> m ()
clone_ self = liftDOM (void (self ^. jsf "clone" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.stop Mozilla MediaStreamTrack.stop documentation> 
stop :: (MonadDOM m) => MediaStreamTrack -> m ()
stop self = liftDOM (void (self ^. jsf "stop" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints ::
               (MonadDOM m) => MediaStreamTrack -> m MediaTrackConstraints
getConstraints self
  = liftDOM
      ((self ^. jsf "getConstraints" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints_ :: (MonadDOM m) => MediaStreamTrack -> m ()
getConstraints_ self
  = liftDOM (void (self ^. jsf "getConstraints" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSettings Mozilla MediaStreamTrack.getSettings documentation> 
getSettings ::
            (MonadDOM m) => MediaStreamTrack -> m MediaTrackSettings
getSettings self
  = liftDOM ((self ^. jsf "getSettings" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSettings Mozilla MediaStreamTrack.getSettings documentation> 
getSettings_ :: (MonadDOM m) => MediaStreamTrack -> m ()
getSettings_ self = liftDOM (void (self ^. jsf "getSettings" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities ::
                (MonadDOM m) => MediaStreamTrack -> m MediaTrackCapabilities
getCapabilities self
  = liftDOM
      ((self ^. jsf "getCapabilities" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities_ :: (MonadDOM m) => MediaStreamTrack -> m ()
getCapabilities_ self
  = liftDOM (void (self ^. jsf "getCapabilities" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.applyConstraints Mozilla MediaStreamTrack.applyConstraints documentation> 
applyConstraints ::
                 (MonadDOM m) =>
                   MediaStreamTrack -> Maybe MediaTrackConstraints -> m ()
applyConstraints self constraints
  = liftDOM
      (void
         ((self ^. jsf "applyConstraints" [toJSVal constraints]) >>=
            readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.kind Mozilla MediaStreamTrack.kind documentation> 
getKind ::
        (MonadDOM m, FromJSString result) => MediaStreamTrack -> m result
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.id Mozilla MediaStreamTrack.id documentation> 
getId ::
      (MonadDOM m, FromJSString result) => MediaStreamTrack -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.label Mozilla MediaStreamTrack.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => MediaStreamTrack -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
setEnabled :: (MonadDOM m) => MediaStreamTrack -> Bool -> m ()
setEnabled self val = liftDOM (self ^. jss "enabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
getEnabled :: (MonadDOM m) => MediaStreamTrack -> m Bool
getEnabled self = liftDOM ((self ^. js "enabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.muted Mozilla MediaStreamTrack.muted documentation> 
getMuted :: (MonadDOM m) => MediaStreamTrack -> m Bool
getMuted self = liftDOM ((self ^. js "muted") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onmute Mozilla MediaStreamTrack.onmute documentation> 
mute :: EventName MediaStreamTrack Event
mute = unsafeEventName (toJSString "mute")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onunmute Mozilla MediaStreamTrack.onunmute documentation> 
unmute :: EventName MediaStreamTrack Event
unmute = unsafeEventName (toJSString "unmute")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack._readonly Mozilla MediaStreamTrack._readonly documentation> 
get_readonly :: (MonadDOM m) => MediaStreamTrack -> m Bool
get_readonly self
  = liftDOM ((self ^. js "_readonly") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.remote Mozilla MediaStreamTrack.remote documentation> 
getRemote :: (MonadDOM m) => MediaStreamTrack -> m Bool
getRemote self = liftDOM ((self ^. js "remote") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.readyState Mozilla MediaStreamTrack.readyState documentation> 
getReadyState ::
              (MonadDOM m) => MediaStreamTrack -> m MediaStreamTrackState
getReadyState self
  = liftDOM ((self ^. js "readyState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onended Mozilla MediaStreamTrack.onended documentation> 
ended :: EventName MediaStreamTrack Event
ended = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onoverconstrained Mozilla MediaStreamTrack.onoverconstrained documentation> 
overConstrained :: EventName MediaStreamTrack Event
overConstrained = unsafeEventName (toJSString "overconstrained")
