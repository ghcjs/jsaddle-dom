{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Event
       (newEvent, composedPath, composedPath_, stopPropagation,
        stopImmediatePropagation, preventDefault, initEvent, pattern NONE,
        pattern CAPTURING_PHASE, pattern AT_TARGET, pattern BUBBLING_PHASE,
        getType, getTarget, getTargetUnsafe, getTargetUnchecked,
        getCurrentTarget, getCurrentTargetUnsafe,
        getCurrentTargetUnchecked, getEventPhase, setCancelBubble,
        getCancelBubble, getBubbles, getCancelable, getDefaultPrevented,
        getComposed, getIsTrusted, getTimeStamp, getSrcElement,
        setReturnValue, getReturnValue, Event(..), gTypeEvent, IsEvent,
        toEvent)
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
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event Mozilla Event documentation> 
newEvent ::
         (MonadDOM m, ToJSString type', IsEventInit eventInitDict) =>
           type' -> Maybe eventInitDict -> m Event
newEvent type' eventInitDict
  = liftDOM
      (Event <$>
         new (jsg "Event") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.composedPath Mozilla Event.composedPath documentation> 
composedPath ::
             (MonadDOM m, IsEvent self) => self -> m [EventTarget]
composedPath self
  = liftDOM
      (((toEvent self) ^. jsf "composedPath" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.composedPath Mozilla Event.composedPath documentation> 
composedPath_ :: (MonadDOM m, IsEvent self) => self -> m ()
composedPath_ self
  = liftDOM (void ((toEvent self) ^. jsf "composedPath" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopPropagation Mozilla Event.stopPropagation documentation> 
stopPropagation :: (MonadDOM m, IsEvent self) => self -> m ()
stopPropagation self
  = liftDOM (void ((toEvent self) ^. jsf "stopPropagation" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopImmediatePropagation Mozilla Event.stopImmediatePropagation documentation> 
stopImmediatePropagation ::
                         (MonadDOM m, IsEvent self) => self -> m ()
stopImmediatePropagation self
  = liftDOM
      (void ((toEvent self) ^. jsf "stopImmediatePropagation" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.preventDefault Mozilla Event.preventDefault documentation> 
preventDefault :: (MonadDOM m, IsEvent self) => self -> m ()
preventDefault self
  = liftDOM (void ((toEvent self) ^. jsf "preventDefault" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.initEvent Mozilla Event.initEvent documentation> 
initEvent ::
          (MonadDOM m, IsEvent self, ToJSString type') =>
            self -> type' -> Bool -> Bool -> m ()
initEvent self type' bubbles cancelable
  = liftDOM
      (void
         ((toEvent self) ^. jsf "initEvent"
            [toJSVal type', toJSVal bubbles, toJSVal cancelable]))
pattern NONE = 0
pattern CAPTURING_PHASE = 1
pattern AT_TARGET = 2
pattern BUBBLING_PHASE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.type Mozilla Event.type documentation> 
getType ::
        (MonadDOM m, IsEvent self, FromJSString result) => self -> m result
getType self
  = liftDOM (((toEvent self) ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
getTarget ::
          (MonadDOM m, IsEvent self) => self -> m (Maybe EventTarget)
getTarget self
  = liftDOM (((toEvent self) ^. js "target") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
getTargetUnsafe ::
                (MonadDOM m, IsEvent self, HasCallStack) => self -> m EventTarget
getTargetUnsafe self
  = liftDOM
      ((((toEvent self) ^. js "target") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
getTargetUnchecked ::
                   (MonadDOM m, IsEvent self) => self -> m EventTarget
getTargetUnchecked self
  = liftDOM (((toEvent self) ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
getCurrentTarget ::
                 (MonadDOM m, IsEvent self) => self -> m (Maybe EventTarget)
getCurrentTarget self
  = liftDOM (((toEvent self) ^. js "currentTarget") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
getCurrentTargetUnsafe ::
                       (MonadDOM m, IsEvent self, HasCallStack) => self -> m EventTarget
getCurrentTargetUnsafe self
  = liftDOM
      ((((toEvent self) ^. js "currentTarget") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
getCurrentTargetUnchecked ::
                          (MonadDOM m, IsEvent self) => self -> m EventTarget
getCurrentTargetUnchecked self
  = liftDOM
      (((toEvent self) ^. js "currentTarget") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.eventPhase Mozilla Event.eventPhase documentation> 
getEventPhase :: (MonadDOM m, IsEvent self) => self -> m Word
getEventPhase self
  = liftDOM
      (round <$> (((toEvent self) ^. js "eventPhase") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
setCancelBubble ::
                (MonadDOM m, IsEvent self) => self -> Bool -> m ()
setCancelBubble self val
  = liftDOM ((toEvent self) ^. jss "cancelBubble" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
getCancelBubble :: (MonadDOM m, IsEvent self) => self -> m Bool
getCancelBubble self
  = liftDOM (((toEvent self) ^. js "cancelBubble") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.bubbles Mozilla Event.bubbles documentation> 
getBubbles :: (MonadDOM m, IsEvent self) => self -> m Bool
getBubbles self
  = liftDOM (((toEvent self) ^. js "bubbles") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelable Mozilla Event.cancelable documentation> 
getCancelable :: (MonadDOM m, IsEvent self) => self -> m Bool
getCancelable self
  = liftDOM (((toEvent self) ^. js "cancelable") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.defaultPrevented Mozilla Event.defaultPrevented documentation> 
getDefaultPrevented :: (MonadDOM m, IsEvent self) => self -> m Bool
getDefaultPrevented self
  = liftDOM (((toEvent self) ^. js "defaultPrevented") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.composed Mozilla Event.composed documentation> 
getComposed :: (MonadDOM m, IsEvent self) => self -> m Bool
getComposed self
  = liftDOM (((toEvent self) ^. js "composed") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.isTrusted Mozilla Event.isTrusted documentation> 
getIsTrusted :: (MonadDOM m, IsEvent self) => self -> m Bool
getIsTrusted self
  = liftDOM (((toEvent self) ^. js "isTrusted") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.timeStamp Mozilla Event.timeStamp documentation> 
getTimeStamp :: (MonadDOM m, IsEvent self) => self -> m Word
getTimeStamp self
  = liftDOM
      (round <$> (((toEvent self) ^. js "timeStamp") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.srcElement Mozilla Event.srcElement documentation> 
getSrcElement ::
              (MonadDOM m, IsEvent self) => self -> m EventTarget
getSrcElement self
  = liftDOM
      (((toEvent self) ^. js "srcElement") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
setReturnValue ::
               (MonadDOM m, IsEvent self) => self -> Bool -> m ()
setReturnValue self val
  = liftDOM ((toEvent self) ^. jss "returnValue" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
getReturnValue :: (MonadDOM m, IsEvent self) => self -> m Bool
getReturnValue self
  = liftDOM (((toEvent self) ^. js "returnValue") >>= valToBool)
