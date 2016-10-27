{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MessageEvent
       (initMessageEvent, webkitInitMessageEvent, getOrigin,
        getLastEventId, getSource, getSourceUnsafe, getSourceUnchecked,
        getData, getPorts, MessageEvent(..), gTypeMessageEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.initMessageEvent Mozilla MessageEvent.initMessageEvent documentation> 
initMessageEvent ::
                 (MonadDOM m, ToJSString typeArg, ToJSString originArg,
                  ToJSString lastEventIdArg, IsArray messagePorts) =>
                   MessageEvent ->
                     typeArg ->
                       Bool ->
                         Bool ->
                           JSVal ->
                             originArg ->
                               lastEventIdArg -> Maybe Window -> Maybe messagePorts -> m ()
initMessageEvent self typeArg canBubbleArg cancelableArg dataArg
  originArg lastEventIdArg sourceArg messagePorts
  = liftDOM
      (void
         (self ^. jsf "initMessageEvent"
            [toJSVal typeArg, toJSVal canBubbleArg, toJSVal cancelableArg,
             toJSVal dataArg, toJSVal originArg, toJSVal lastEventIdArg,
             toJSVal sourceArg, toJSVal messagePorts]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.webkitInitMessageEvent Mozilla MessageEvent.webkitInitMessageEvent documentation> 
webkitInitMessageEvent ::
                       (MonadDOM m, ToJSString typeArg, ToJSString originArg,
                        ToJSString lastEventIdArg, IsArray transferables) =>
                         MessageEvent ->
                           typeArg ->
                             Bool ->
                               Bool ->
                                 JSVal ->
                                   originArg ->
                                     lastEventIdArg -> Maybe Window -> Maybe transferables -> m ()
webkitInitMessageEvent self typeArg canBubbleArg cancelableArg
  dataArg originArg lastEventIdArg sourceArg transferables
  = liftDOM
      (void
         (self ^. jsf "webkitInitMessageEvent"
            [toJSVal typeArg, toJSVal canBubbleArg, toJSVal cancelableArg,
             toJSVal dataArg, toJSVal originArg, toJSVal lastEventIdArg,
             toJSVal sourceArg, toJSVal transferables]))

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
getPorts :: (MonadDOM m) => MessageEvent -> m [Maybe MessagePort]
getPorts self = liftDOM ((self ^. js "ports") >>= fromJSArray)
