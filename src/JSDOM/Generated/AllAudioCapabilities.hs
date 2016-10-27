{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AllAudioCapabilities
       (getSourceId, getVolume, getVolumeUnsafe, getVolumeUnchecked,
        AllAudioCapabilities(..), gTypeAllAudioCapabilities)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.sourceId Mozilla AllAudioCapabilities.sourceId documentation> 
getSourceId ::
            (MonadDOM m, FromJSString result) =>
              AllAudioCapabilities -> m [result]
getSourceId self
  = liftDOM ((self ^. js "sourceId") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.volume Mozilla AllAudioCapabilities.volume documentation> 
getVolume ::
          (MonadDOM m) => AllAudioCapabilities -> m (Maybe CapabilityRange)
getVolume self = liftDOM ((self ^. js "volume") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.volume Mozilla AllAudioCapabilities.volume documentation> 
getVolumeUnsafe ::
                (MonadDOM m, HasCallStack) =>
                  AllAudioCapabilities -> m CapabilityRange
getVolumeUnsafe self
  = liftDOM
      (((self ^. js "volume") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.volume Mozilla AllAudioCapabilities.volume documentation> 
getVolumeUnchecked ::
                   (MonadDOM m) => AllAudioCapabilities -> m CapabilityRange
getVolumeUnchecked self
  = liftDOM ((self ^. js "volume") >>= fromJSValUnchecked)
