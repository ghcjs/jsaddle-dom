{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SpeechSynthesisEvent
       (getCharIndex, getElapsedTime, getName, SpeechSynthesisEvent(..),
        gTypeSpeechSynthesisEvent)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

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
