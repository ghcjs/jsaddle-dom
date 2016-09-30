{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SpeechSynthesisUtterance
       (newSpeechSynthesisUtterance, setText, getText, setLang, getLang,
        setVoice, getVoice, setVolume, getVolume, setRate, getRate,
        setPitch, getPitch, start, end, error, pause, resume, mark,
        boundary, SpeechSynthesisUtterance, castToSpeechSynthesisUtterance,
        gTypeSpeechSynthesisUtterance)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation> 
newSpeechSynthesisUtterance ::
                            (MonadDOM m, ToJSString text) => text -> m SpeechSynthesisUtterance
newSpeechSynthesisUtterance text
  = liftDOM
      (SpeechSynthesisUtterance <$>
         new (jsg "SpeechSynthesisUtterance") [toJSVal text])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
setText ::
        (MonadDOM m, ToJSString val) =>
          SpeechSynthesisUtterance -> val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
getText ::
        (MonadDOM m, FromJSString result) =>
          SpeechSynthesisUtterance -> m result
getText self = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
setLang ::
        (MonadDOM m, ToJSString val) =>
          SpeechSynthesisUtterance -> val -> m ()
setLang self val = liftDOM (self ^. jss "lang" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
getLang ::
        (MonadDOM m, FromJSString result) =>
          SpeechSynthesisUtterance -> m result
getLang self = liftDOM ((self ^. js "lang") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
setVoice ::
         (MonadDOM m) =>
           SpeechSynthesisUtterance -> Maybe SpeechSynthesisVoice -> m ()
setVoice self val = liftDOM (self ^. jss "voice" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
getVoice ::
         (MonadDOM m) =>
           SpeechSynthesisUtterance -> m (Maybe SpeechSynthesisVoice)
getVoice self = liftDOM ((self ^. js "voice") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
setVolume ::
          (MonadDOM m) => SpeechSynthesisUtterance -> Float -> m ()
setVolume self val = liftDOM (self ^. jss "volume" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
getVolume :: (MonadDOM m) => SpeechSynthesisUtterance -> m Float
getVolume self
  = liftDOM (realToFrac <$> ((self ^. js "volume") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
setRate ::
        (MonadDOM m) => SpeechSynthesisUtterance -> Float -> m ()
setRate self val = liftDOM (self ^. jss "rate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
getRate :: (MonadDOM m) => SpeechSynthesisUtterance -> m Float
getRate self
  = liftDOM (realToFrac <$> ((self ^. js "rate") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
setPitch ::
         (MonadDOM m) => SpeechSynthesisUtterance -> Float -> m ()
setPitch self val = liftDOM (self ^. jss "pitch" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
getPitch :: (MonadDOM m) => SpeechSynthesisUtterance -> m Float
getPitch self
  = liftDOM (realToFrac <$> ((self ^. js "pitch") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onstart Mozilla SpeechSynthesisUtterance.onstart documentation> 
start :: EventName SpeechSynthesisUtterance Event
start = unsafeEventName (toJSString "start")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onend Mozilla SpeechSynthesisUtterance.onend documentation> 
end :: EventName SpeechSynthesisUtterance Event
end = unsafeEventName (toJSString "end")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onerror Mozilla SpeechSynthesisUtterance.onerror documentation> 
error :: EventName SpeechSynthesisUtterance UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onpause Mozilla SpeechSynthesisUtterance.onpause documentation> 
pause :: EventName SpeechSynthesisUtterance Event
pause = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onresume Mozilla SpeechSynthesisUtterance.onresume documentation> 
resume :: EventName SpeechSynthesisUtterance Event
resume = unsafeEventName (toJSString "resume")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onmark Mozilla SpeechSynthesisUtterance.onmark documentation> 
mark :: EventName SpeechSynthesisUtterance Event
mark = unsafeEventName (toJSString "mark")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onboundary Mozilla SpeechSynthesisUtterance.onboundary documentation> 
boundary :: EventName SpeechSynthesisUtterance Event
boundary = unsafeEventName (toJSString "boundary")
