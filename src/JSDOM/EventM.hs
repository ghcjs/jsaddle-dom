{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ConstraintKinds #-}
module JSDOM.EventM
(
  EventM(..)
, SaferEventListener(..)
, EventName
, newListener
, newListenerSync
, newListenerAsync
, addListener
, removeListener
, releaseListener
, on
, event
, eventTarget
, target
, eventCurrentTarget
, eventPhase
, bubbles
, cancelable
, timeStamp
, stopPropagation
, preventDefault
, defaultPrevented
, stopImmediatePropagation
, srcElement
, getCancelBubble
, cancelBubble
, getReturnValue
, returnValue
, uiView
, uiDetail
, uiKeyCode
, uiCharCode
, uiLayerX
, uiLayerY
, uiLayerXY
, uiPageX
, uiPageY
, uiPageXY
, uiWhich
, mouseScreenX
, mouseScreenY
, mouseScreenXY
, mouseClientX
, mouseClientY
, mouseClientXY
, mouseMovementX
, mouseMovementY
, mouseMovementXY
, mouseCtrlKey
, mouseShiftKey
, mouseAltKey
, mouseMetaKey
, mouseButton
, mouseRelatedTarget
, mouseOffsetX
, mouseOffsetY
, mouseOffsetXY
, mouseX
, mouseY
, mouseXY
, mouseFromElement
, mouseToElement
)
where
import           Control.Applicative ((<$>))
import           Control.Monad (join)
import           Control.Monad.Trans.Class (MonadTrans(..))
import           Control.Monad.Trans.Reader (ReaderT, ask, runReaderT)
import           JSDOM.Types
import qualified JSDOM.Generated.Event as Event
import qualified JSDOM.Generated.UIEvent as UIEvent
import qualified JSDOM.Generated.MouseEvent as MouseEvent
import           JSDOM.Generated.EventTarget
import           JSDOM.EventTargetClosures
import           Data.Word (Word)
import           Data.Foldable (forM_)
import           Data.Traversable (mapM)
import           Data.Coerce (coerce)

type EventM t e = ReaderT e DOM

newListener :: (IsEvent e) => EventM t e () -> DOM (SaferEventListener t e)
newListener f = eventListenerNew (runReaderT f)

newListenerSync :: (IsEvent e) => EventM t e () -> DOM (SaferEventListener t e)
newListenerSync f = eventListenerNewSync (runReaderT f)

newListenerAsync :: (IsEvent e) => EventM t e () -> DOM (SaferEventListener t e)
newListenerAsync f = eventListenerNewAsync (runReaderT f)

addListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> DOM ()
addListener target (EventName eventName) l useCapture = do
    raw <- EventListener <$> toJSVal l
    addEventListener target eventName (Just raw) useCapture

removeListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> DOM ()
removeListener target (EventName eventName) l useCapture = do
    raw <- EventListener <$> toJSVal l
    removeEventListener target eventName (Just raw) useCapture

releaseListener :: (IsEventTarget t, IsEvent e) => SaferEventListener t e -> DOM ()
releaseListener = eventListenerRelease

on :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> EventM t e () -> DOM (DOM ())
on target eventName callback = do
    l <- newListener callback
    addListener target eventName l False
    return $ do
        removeListener target eventName l False
        releaseListener l

onThese :: (IsEventTarget t, IsEvent e) => [(t, EventName t e)] -> EventM t e () -> DOM (DOM ())
onThese targetsAndEventNames callback = do
    l <- newListener callback
    forM_ targetsAndEventNames $ \(target, eventName) ->
        addListener target eventName l False
    return (do
        forM_ targetsAndEventNames (\(target, eventName) ->
            removeListener target eventName l False)
        releaseListener l)

event :: EventM t e e
event = ask

eventTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventTarget = event >>= (lift . Event.getTarget)

target :: (IsEvent e, IsGObject t) => EventM t e (Maybe t)
target = eventTarget >>= mapM (liftJSM . fromJSValUnchecked . coerce)

eventCurrentTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventCurrentTarget = event >>= (lift . Event.getCurrentTarget)

eventPhase :: IsEvent e => EventM t e Word
eventPhase = event >>= (lift . Event.getEventPhase)

bubbles :: IsEvent e => EventM t e Bool
bubbles = event >>= (lift . Event.getBubbles)

cancelable :: IsEvent e => EventM t e Bool
cancelable = event >>= (lift . Event.getCancelable)

timeStamp :: IsEvent e => EventM t e Word
timeStamp = event >>= (lift . Event.getTimeStamp)

stopPropagation :: IsEvent e => EventM t e ()
stopPropagation = event >>= (lift . Event.stopPropagation)

preventDefault :: IsEvent e => EventM t e ()
preventDefault = event >>= (lift . Event.preventDefault)

defaultPrevented :: IsEvent e => EventM t e Bool
defaultPrevented = event >>= (lift . Event.getDefaultPrevented)

stopImmediatePropagation :: IsEvent e => EventM t e ()
stopImmediatePropagation = event >>= (lift . Event.stopImmediatePropagation)

srcElement :: IsEvent e => EventM t e (Maybe EventTarget)
srcElement = event >>= (lift . Event.getSrcElement)

getCancelBubble :: IsEvent e => EventM t e Bool
getCancelBubble = event >>= (lift . Event.getCancelBubble)

cancelBubble :: IsEvent e => Bool -> EventM t e ()
cancelBubble f = event >>= (lift . flip Event.setCancelBubble f)

getReturnValue :: IsEvent e => EventM t e Bool
getReturnValue = event >>= (lift . Event.getReturnValue)

returnValue :: IsEvent e => Bool -> EventM t e ()
returnValue f = event >>= (lift . flip Event.setReturnValue f)

uiView :: IsUIEvent e => EventM t e (Maybe Window)
uiView = event >>= (lift . UIEvent.getView)

uiDetail :: IsUIEvent e => EventM t e Int
uiDetail = event >>= (lift . UIEvent.getDetail)

uiKeyCode :: IsUIEvent e => EventM t e Int
uiKeyCode = event >>= (lift . UIEvent.getKeyCode)

uiCharCode :: IsUIEvent e => EventM t e Int
uiCharCode = event >>= (lift . UIEvent.getCharCode)

uiLayerX :: IsUIEvent e => EventM t e Int
uiLayerX = event >>= (lift . UIEvent.getLayerX)

uiLayerY :: IsUIEvent e => EventM t e Int
uiLayerY = event >>= (lift . UIEvent.getLayerY)

uiLayerXY :: IsUIEvent e => EventM t e (Int, Int)
uiLayerXY = do
    e <- event
    x <- lift $ UIEvent.getLayerX e
    y <- lift $ UIEvent.getLayerY e
    return (x, y)

uiPageX :: IsUIEvent e => EventM t e Int
uiPageX = event >>= (lift . UIEvent.getPageX)

uiPageY :: IsUIEvent e => EventM t e Int
uiPageY = event >>= (lift . UIEvent.getPageY)

uiPageXY :: IsUIEvent e => EventM t e (Int, Int)
uiPageXY = do
    e <- event
    x <- lift $ UIEvent.getPageX e
    y <- lift $ UIEvent.getPageY e
    return (x, y)

uiWhich :: IsUIEvent e => EventM t e Int
uiWhich = event >>= (lift . UIEvent.getWhich)

mouseScreenX :: IsMouseEvent e => EventM t e Int
mouseScreenX = event >>= (lift . MouseEvent.getScreenX)

mouseScreenY :: IsMouseEvent e => EventM t e Int
mouseScreenY = event >>= (lift . MouseEvent.getScreenY)

mouseScreenXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseScreenXY = do
    e <- event
    x <- lift $ MouseEvent.getScreenX e
    y <- lift $ MouseEvent.getScreenY e
    return (x, y)

mouseClientX :: IsMouseEvent e => EventM t e Int
mouseClientX = event >>= (lift . MouseEvent.getClientX)

mouseClientY :: IsMouseEvent e => EventM t e Int
mouseClientY = event >>= (lift . MouseEvent.getClientY)

mouseClientXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseClientXY = do
    e <- event
    x <- lift $ MouseEvent.getClientX e
    y <- lift $ MouseEvent.getClientY e
    return (x, y)

mouseMovementX :: IsMouseEvent e => EventM t e Int
mouseMovementX = event >>= (lift . MouseEvent.getMovementX)

mouseMovementY :: IsMouseEvent e => EventM t e Int
mouseMovementY = event >>= (lift . MouseEvent.getMovementY)

mouseMovementXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseMovementXY = do
    e <- event
    x <- lift $ MouseEvent.getMovementX e
    y <- lift $ MouseEvent.getMovementY e
    return (x, y)

mouseCtrlKey :: IsMouseEvent e => EventM t e Bool
mouseCtrlKey = event >>= (lift . MouseEvent.getCtrlKey)

mouseShiftKey :: IsMouseEvent e => EventM t e Bool
mouseShiftKey = event >>= (lift . MouseEvent.getShiftKey)

mouseAltKey :: IsMouseEvent e => EventM t e Bool
mouseAltKey = event >>= (lift . MouseEvent.getAltKey)

mouseMetaKey :: IsMouseEvent e => EventM t e Bool
mouseMetaKey = event >>= (lift . MouseEvent.getMetaKey)

mouseButton :: IsMouseEvent e => EventM t e Word
mouseButton = event >>= (lift . MouseEvent.getButton)

mouseRelatedTarget :: IsMouseEvent e => EventM t e (Maybe EventTarget)
mouseRelatedTarget = event >>= (lift . MouseEvent.getRelatedTarget)

mouseOffsetX :: IsMouseEvent e => EventM t e Int
mouseOffsetX = event >>= (lift . MouseEvent.getOffsetX)

mouseOffsetY :: IsMouseEvent e => EventM t e Int
mouseOffsetY = event >>= (lift . MouseEvent.getOffsetY)

mouseOffsetXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseOffsetXY = do
    e <- event
    x <- lift $ MouseEvent.getOffsetX e
    y <- lift $ MouseEvent.getOffsetY e
    return (x, y)

mouseX :: IsMouseEvent e => EventM t e Int
mouseX = event >>= (lift . MouseEvent.getX)

mouseY :: IsMouseEvent e => EventM t e Int
mouseY = event >>= (lift . MouseEvent.getY)

mouseXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseXY = do
    e <- event
    x <- lift $ MouseEvent.getX e
    y <- lift $ MouseEvent.getY e
    return (x, y)

mouseFromElement :: IsMouseEvent e => EventM t e (Maybe Node)
mouseFromElement = event >>= (lift . MouseEvent.getFromElement)

mouseToElement :: IsMouseEvent e => EventM t e (Maybe Node)
mouseToElement = event >>= (lift . MouseEvent.getToElement)

