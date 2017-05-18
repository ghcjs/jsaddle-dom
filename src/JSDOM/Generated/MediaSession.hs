{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaSession
       (newMediaSession, setMetadata, deactivate, getKind, getControls,
        getControlsUnsafe, getControlsUnchecked, MediaSession(..),
        gTypeMediaSession)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession Mozilla MediaSession documentation> 
newMediaSession ::
                (MonadDOM m) => Maybe MediaSessionKind -> m MediaSession
newMediaSession kind
  = liftDOM
      (MediaSession <$> new (jsg "MediaSession") [toJSVal kind])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.setMetadata Mozilla MediaSession.setMetadata documentation> 
setMetadata ::
            (MonadDOM m) => MediaSession -> Maybe MediaMetadata -> m ()
setMetadata self metadata
  = liftDOM (void (self ^. jsf "setMetadata" [toJSVal metadata]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.deactivate Mozilla MediaSession.deactivate documentation> 
deactivate :: (MonadDOM m) => MediaSession -> m ()
deactivate self = liftDOM (void (self ^. jsf "deactivate" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.kind Mozilla MediaSession.kind documentation> 
getKind :: (MonadDOM m) => MediaSession -> m MediaSessionKind
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.controls Mozilla MediaSession.controls documentation> 
getControls ::
            (MonadDOM m) => MediaSession -> m (Maybe MediaRemoteControls)
getControls self = liftDOM ((self ^. js "controls") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.controls Mozilla MediaSession.controls documentation> 
getControlsUnsafe ::
                  (MonadDOM m, HasCallStack) => MediaSession -> m MediaRemoteControls
getControlsUnsafe self
  = liftDOM
      (((self ^. js "controls") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.controls Mozilla MediaSession.controls documentation> 
getControlsUnchecked ::
                     (MonadDOM m) => MediaSession -> m MediaRemoteControls
getControlsUnchecked self
  = liftDOM ((self ^. js "controls") >>= fromJSValUnchecked)
