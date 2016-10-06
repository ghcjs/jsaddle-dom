{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SpeechSynthesis
       (speak, cancel, pause, resume, getVoices, getPending, getSpeaking,
        getPaused, SpeechSynthesis, castToSpeechSynthesis,
        gTypeSpeechSynthesis)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speak Mozilla SpeechSynthesis.speak documentation> 
speak ::
      (MonadDOM m) =>
        SpeechSynthesis -> Maybe SpeechSynthesisUtterance -> m ()
speak self utterance
  = liftDOM (void (self ^. jsf "speak" [toJSVal utterance]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.cancel Mozilla SpeechSynthesis.cancel documentation> 
cancel :: (MonadDOM m) => SpeechSynthesis -> m ()
cancel self = liftDOM (void (self ^. jsf "cancel" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pause Mozilla SpeechSynthesis.pause documentation> 
pause :: (MonadDOM m) => SpeechSynthesis -> m ()
pause self = liftDOM (void (self ^. jsf "pause" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.resume Mozilla SpeechSynthesis.resume documentation> 
resume :: (MonadDOM m) => SpeechSynthesis -> m ()
resume self = liftDOM (void (self ^. jsf "resume" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.getVoices Mozilla SpeechSynthesis.getVoices documentation> 
getVoices ::
          (MonadDOM m) => SpeechSynthesis -> m [Maybe SpeechSynthesisVoice]
getVoices self
  = liftDOM ((self ^. jsf "getVoices" ()) >>= fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pending Mozilla SpeechSynthesis.pending documentation> 
getPending :: (MonadDOM m) => SpeechSynthesis -> m Bool
getPending self = liftDOM ((self ^. js "pending") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speaking Mozilla SpeechSynthesis.speaking documentation> 
getSpeaking :: (MonadDOM m) => SpeechSynthesis -> m Bool
getSpeaking self = liftDOM ((self ^. js "speaking") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.paused Mozilla SpeechSynthesis.paused documentation> 
getPaused :: (MonadDOM m) => SpeechSynthesis -> m Bool
getPaused self = liftDOM ((self ^. js "paused") >>= valToBool)
