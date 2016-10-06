{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MessagePort
       (postMessage, start, close, message, MessagePort,
        castToMessagePort, gTypeMessagePort)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.postMessage Mozilla MessagePort.postMessage documentation> 
postMessage ::
            (MonadDOM m, IsArray messagePorts) =>
              MessagePort -> JSVal -> Maybe messagePorts -> m ()
postMessage self message messagePorts
  = liftDOM
      (void
         (self ^. jsf "postMessage"
            [toJSVal message, toJSVal messagePorts]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.start Mozilla MessagePort.start documentation> 
start :: (MonadDOM m) => MessagePort -> m ()
start self = liftDOM (void (self ^. jsf "start" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.close Mozilla MessagePort.close documentation> 
close :: (MonadDOM m) => MessagePort -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.onmessage Mozilla MessagePort.onmessage documentation> 
message :: EventName MessagePort MessageEvent
message = unsafeEventName (toJSString "message")
