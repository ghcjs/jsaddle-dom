{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SpeechSynthesisEvent
       (getCharIndex, getElapsedTime, getName, SpeechSynthesisEvent,
        castToSpeechSynthesisEvent, gTypeSpeechSynthesisEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.charIndex Mozilla SpeechSynthesisEvent.charIndex documentation> 
getCharIndex :: (MonadDOM m) => SpeechSynthesisEvent -> m Word
getCharIndex self
  = liftDOM (round <$> ((self ^. js "charIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.elapsedTime Mozilla SpeechSynthesisEvent.elapsedTime documentation> 
getElapsedTime :: (MonadDOM m) => SpeechSynthesisEvent -> m Float
getElapsedTime self
  = liftDOM
      (realToFrac <$> ((self ^. js "elapsedTime") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.name Mozilla SpeechSynthesisEvent.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) =>
          SpeechSynthesisEvent -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)