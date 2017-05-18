{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MessageEvent
       (newMessageEvent, initMessageEvent, getOrigin, getLastEventId,
        getSource, getSourceUnsafe, getSourceUnchecked, getData, getPorts,
        MessageEvent(..), gTypeMessageEvent)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent Mozilla MessageEvent documentation> 
newMessageEvent ::
                (MonadDOM m, ToJSString type') =>
                  type' -> Maybe MessageEventInit -> m MessageEvent
newMessageEvent type' eventInitDict
  = liftDOM
      (MessageEvent <$>
         new (jsg "MessageEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.initMessageEvent Mozilla MessageEvent.initMessageEvent documentation> 
initMessageEvent ::
                 (MonadDOM m, ToJSString type', ToJSVal data', ToJSString originArg,
                  ToJSString lastEventId, IsMessageEventSource source) =>
                   MessageEvent ->
                     type' ->
                       Bool ->
                         Bool ->
                           Maybe data' ->
                             Maybe originArg ->
                               Maybe lastEventId -> Maybe source -> [MessagePort] -> m ()
initMessageEvent self type' bubbles cancelable data' originArg
  lastEventId source messagePorts
  = liftDOM
      (void
         (self ^. jsf "initMessageEvent"
            [toJSVal type', toJSVal bubbles, toJSVal cancelable, toJSVal data',
             toJSVal originArg, toJSVal lastEventId, toJSVal source,
             toJSVal (array messagePorts)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.origin Mozilla MessageEvent.origin documentation> 
getOrigin ::
          (MonadDOM m, FromJSString result) => MessageEvent -> m result
getOrigin self
  = liftDOM ((self ^. js "origin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.lastEventId Mozilla MessageEvent.lastEventId documentation> 
getLastEventId ::
               (MonadDOM m, FromJSString result) => MessageEvent -> m result
getLastEventId self
  = liftDOM ((self ^. js "lastEventId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSource :: (MonadDOM m) => MessageEvent -> m (Maybe EventTarget)
getSource self = liftDOM ((self ^. js "source") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSourceUnsafe ::
                (MonadDOM m, HasCallStack) => MessageEvent -> m EventTarget
getSourceUnsafe self
  = liftDOM
      (((self ^. js "source") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSourceUnchecked :: (MonadDOM m) => MessageEvent -> m EventTarget
getSourceUnchecked self
  = liftDOM ((self ^. js "source") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.data Mozilla MessageEvent.data documentation> 
getData :: (MonadDOM m) => MessageEvent -> m JSVal
getData self = liftDOM ((self ^. js "data") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.ports Mozilla MessageEvent.ports documentation> 
getPorts :: (MonadDOM m) => MessageEvent -> m [MessagePort]
getPorts self
  = liftDOM ((self ^. js "ports") >>= fromJSArrayUnchecked)
