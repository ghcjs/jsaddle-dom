{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.AudioBufferCallback
       (newAudioBufferCallback, newAudioBufferCallbackSync,
        newAudioBufferCallbackAsync, AudioBufferCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
newAudioBufferCallback ::
                       (MonadDOM m) =>
                         (Maybe AudioBuffer -> JSM ()) -> m AudioBufferCallback
newAudioBufferCallback callback
  = liftDOM
      (AudioBufferCallback . Callback <$>
         function ""
           (\ _ _ [audioBuffer] ->
              fromJSVal audioBuffer >>= \ audioBuffer' -> callback audioBuffer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
newAudioBufferCallbackSync ::
                           (MonadDOM m) =>
                             (Maybe AudioBuffer -> JSM ()) -> m AudioBufferCallback
newAudioBufferCallbackSync callback
  = liftDOM
      (AudioBufferCallback . Callback <$>
         function ""
           (\ _ _ [audioBuffer] ->
              fromJSVal audioBuffer >>= \ audioBuffer' -> callback audioBuffer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
newAudioBufferCallbackAsync ::
                            (MonadDOM m) =>
                              (Maybe AudioBuffer -> JSM ()) -> m AudioBufferCallback
newAudioBufferCallbackAsync callback
  = liftDOM
      (AudioBufferCallback . Callback <$>
         function ""
           (\ _ _ [audioBuffer] ->
              fromJSVal audioBuffer >>= \ audioBuffer' -> callback audioBuffer'))
