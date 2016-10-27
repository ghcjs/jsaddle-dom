{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SpeechSynthesisVoice
       (getVoiceURI, getName, getLang, getLocalService, getDefault,
        SpeechSynthesisVoice(..), gTypeSpeechSynthesisVoice)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.voiceURI Mozilla SpeechSynthesisVoice.voiceURI documentation> 
getVoiceURI ::
            (MonadDOM m, FromJSString result) =>
              SpeechSynthesisVoice -> m result
getVoiceURI self
  = liftDOM ((self ^. js "voiceURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.name Mozilla SpeechSynthesisVoice.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) =>
          SpeechSynthesisVoice -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.lang Mozilla SpeechSynthesisVoice.lang documentation> 
getLang ::
        (MonadDOM m, FromJSString result) =>
          SpeechSynthesisVoice -> m result
getLang self = liftDOM ((self ^. js "lang") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.localService Mozilla SpeechSynthesisVoice.localService documentation> 
getLocalService :: (MonadDOM m) => SpeechSynthesisVoice -> m Bool
getLocalService self
  = liftDOM ((self ^. js "localService") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.default Mozilla SpeechSynthesisVoice.default documentation> 
getDefault :: (MonadDOM m) => SpeechSynthesisVoice -> m Bool
getDefault self = liftDOM ((self ^. js "default") >>= valToBool)
