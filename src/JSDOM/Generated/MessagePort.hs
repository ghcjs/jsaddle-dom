{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MessagePort
       (postMessage, start, close, message, MessagePort(..),
        gTypeMessagePort)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.postMessage Mozilla MessagePort.postMessage documentation> 
postMessage ::
            (MonadDOM m, ToJSVal message, IsGObject transfer) =>
              MessagePort -> message -> [transfer] -> m ()
postMessage self message transfer
  = liftDOM
      (void
         (self ^. jsf "postMessage"
            [toJSVal message, toJSVal (array transfer)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.start Mozilla MessagePort.start documentation> 
start :: (MonadDOM m) => MessagePort -> m ()
start self = liftDOM (void (self ^. jsf "start" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.close Mozilla MessagePort.close documentation> 
close :: (MonadDOM m) => MessagePort -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.onmessage Mozilla MessagePort.onmessage documentation> 
message :: EventName MessagePort MessageEvent
message = unsafeEventNameAsync (toJSString "message")
