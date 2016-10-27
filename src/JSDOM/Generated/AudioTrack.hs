{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioTrack
       (getId, setKind, getKind, getLabel, setLanguage, getLanguage,
        setEnabled, getEnabled, getSourceBuffer, getSourceBufferUnsafe,
        getSourceBufferUnchecked, AudioTrack(..), gTypeAudioTrack)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.id Mozilla AudioTrack.id documentation> 
getId ::
      (MonadDOM m, FromJSString result) => AudioTrack -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
setKind ::
        (MonadDOM m, ToJSString val) => AudioTrack -> val -> m ()
setKind self val = liftDOM (self ^. jss "kind" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
getKind ::
        (MonadDOM m, FromJSString result) => AudioTrack -> m result
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.label Mozilla AudioTrack.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => AudioTrack -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
setLanguage ::
            (MonadDOM m, ToJSString val) => AudioTrack -> val -> m ()
setLanguage self val
  = liftDOM (self ^. jss "language" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
getLanguage ::
            (MonadDOM m, FromJSString result) => AudioTrack -> m result
getLanguage self
  = liftDOM ((self ^. js "language") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
setEnabled :: (MonadDOM m) => AudioTrack -> Bool -> m ()
setEnabled self val = liftDOM (self ^. jss "enabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
getEnabled :: (MonadDOM m) => AudioTrack -> m Bool
getEnabled self = liftDOM ((self ^. js "enabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.sourceBuffer Mozilla AudioTrack.sourceBuffer documentation> 
getSourceBuffer ::
                (MonadDOM m) => AudioTrack -> m (Maybe SourceBuffer)
getSourceBuffer self
  = liftDOM ((self ^. js "sourceBuffer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.sourceBuffer Mozilla AudioTrack.sourceBuffer documentation> 
getSourceBufferUnsafe ::
                      (MonadDOM m, HasCallStack) => AudioTrack -> m SourceBuffer
getSourceBufferUnsafe self
  = liftDOM
      (((self ^. js "sourceBuffer") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.sourceBuffer Mozilla AudioTrack.sourceBuffer documentation> 
getSourceBufferUnchecked ::
                         (MonadDOM m) => AudioTrack -> m SourceBuffer
getSourceBufferUnchecked self
  = liftDOM ((self ^. js "sourceBuffer") >>= fromJSValUnchecked)
