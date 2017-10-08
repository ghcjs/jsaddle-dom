{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{- | 'EventM' provides a convenient monadic interface for handling DOM events.

The <https://developer.mozilla.org/en-US/docs/Web/API/Event DOM Event interface>
is exposed, as well as functions for accessing UIEvents and MouseEvents.
-}
module JSDOM.EventM
(
-- $doc
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
, onSync
, onAsync
, onTheseSync
, onTheseAsync
-- * Event interface
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
-- * UIEvent helpers
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
-- * MouseEvent helpers
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
import qualified JSDOM.Generated.KeyboardEvent as KeyboardEvent
import           JSDOM.Generated.EventTarget
import           JSDOM.EventTargetClosures
import           Data.Word (Word)
import           Data.Foldable (forM_)
import           Data.Traversable (mapM)
import           Data.Coerce (coerce)

-- $doc
-- TODO: small tutorial w/ example function

-- | @IO@ with the current @Event@ in scope (read with 'event').
type EventM t e = ReaderT e DOM

-- | See 'eventListenerNew'.
newListener :: (IsEvent e) => EventM t e () -> DOM (SaferEventListener t e)
newListener f = eventListenerNew (runReaderT f)

-- | See 'eventListenerNewSync'.
newListenerSync :: (IsEvent e) => EventM t e () -> DOM (SaferEventListener t e)
newListenerSync f = eventListenerNewSync (runReaderT f)

-- | See 'eventListenerNewAsync'.
newListenerAsync :: (IsEvent e) => EventM t e () -> DOM (SaferEventListener t e)
newListenerAsync f = eventListenerNewAsync (runReaderT f)

-- | Add an EventListener to an EventTarget.
addListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> DOM ()
addListener target eventName l useCapture = do
    raw <- EventListener <$> toJSVal l
    addEventListener target (eventNameString eventName) (Just raw) useCapture

-- | Remove an EventListener from an EventTarget.
removeListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> DOM ()
removeListener target eventName l useCapture = do
    raw <- EventListener <$> toJSVal l
    removeEventListener target (eventNameString eventName) (Just raw) useCapture

-- | Release the listener (deallocates callbacks).
releaseListener :: (IsEventTarget t, IsEvent e) => SaferEventListener t e -> DOM ()
releaseListener = eventListenerRelease

-- | Shortcut for create, add and release:
--
-- @
-- releaseAction <- on element 'GHCJS.DOM.Document.click' $ do
--     w <- 'GHCJS.DOM.currentWindowUnchecked'
--     'GHCJS.DOM.Window.alert' w "I was clicked!"
-- -- remove click handler again
-- releaseAction
-- @
on :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> EventM t e () -> DOM (DOM ())
on target eventName@(EventNameSyncDefault _) = onSync target eventName
on target eventName@(EventNameAsyncDefault _) = onAsync target eventName

-- | Like 'on' but always uses 'newListenerSync'
onSync :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> EventM t e () -> DOM (DOM ())
onSync target eventName callback = do
    l <- newListenerSync callback
    addListener target eventName l False
    return $ do
        removeListener target eventName l False
        releaseListener l

-- | Like 'on' but always uses 'newListenerAsync'
onAsync :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> EventM t e () -> JSM (JSM ())
onAsync target eventName callback = do
    l <- newListenerAsync callback
    addListener target eventName l False
    return $ do
        removeListener target eventName l False
        releaseListener l

-- | 'onSync' for multiple targets & events.
--
--   The returned @IO@ action removes them all at once.
onTheseSync :: (IsEventTarget t, IsEvent e) => [(t, EventName t e)] -> EventM t e () -> DOM (DOM ())
onTheseSync targetsAndEventNames callback = do
    l <- newListenerSync callback
    forM_ targetsAndEventNames $ \(target, eventName) ->
        addListener target eventName l False
    return (do
        forM_ targetsAndEventNames (\(target, eventName) ->
            removeListener target eventName l False)
        releaseListener l)

-- | 'onAsync' for multiple targets & events.
--
--   The returned @IO@ action removes them all at once.
onTheseAsync :: (IsEventTarget t, IsEvent e) => [(t, EventName t e)] -> EventM t e () -> DOM (DOM ())
onTheseAsync targetsAndEventNames callback = do
    l <- newListenerAsync callback
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

eventTargetUnsafe :: IsEvent e => EventM t e EventTarget
eventTargetUnsafe = event >>= (lift . Event.getTargetUnsafe)

eventTargetUnchecked :: IsEvent e => EventM t e EventTarget
eventTargetUnchecked = event >>= (lift . Event.getTargetUnchecked)

target :: (IsEvent e, IsGObject t) => EventM t e (Maybe t)
target = eventTarget >>= mapM (liftJSM . fromJSValUnchecked . coerce)

targetUnsafe :: (IsEvent e, IsGObject t) => EventM t e t
targetUnsafe = eventTargetUnsafe >>= (liftJSM . fromJSValUnchecked . coerce)

targetUnchecked :: (IsEvent e, IsGObject t) => EventM t e t
targetUnchecked = eventTargetUnchecked >>= (liftJSM . fromJSValUnchecked . coerce)

eventCurrentTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventCurrentTarget = event >>= (lift . Event.getCurrentTarget)

eventCurrentTargetUnsafe :: IsEvent e => EventM t e EventTarget
eventCurrentTargetUnsafe = event >>= (lift . Event.getCurrentTargetUnsafe)

eventCurrentTargetUnchecked :: IsEvent e => EventM t e EventTarget
eventCurrentTargetUnchecked = event >>= (lift . Event.getCurrentTargetUnchecked)

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

srcElement :: IsEvent e => EventM t e EventTarget
srcElement = event >>= (lift . Event.getSrcElement)

getCancelBubble :: IsEvent e => EventM t e Bool
getCancelBubble = event >>= (lift . Event.getCancelBubble)

cancelBubble :: IsEvent e => Bool -> EventM t e ()
cancelBubble f = event >>= (lift . flip Event.setCancelBubble f)

getReturnValue :: IsEvent e => EventM t e Bool
getReturnValue = event >>= (lift . Event.getReturnValue)

returnValue :: IsEvent e => Bool -> EventM t e ()
returnValue f = event >>= (lift . flip Event.setReturnValue f)

uiView :: IsUIEvent e => EventM t e Window
uiView = event >>= (lift . UIEvent.getView)

uiDetail :: IsUIEvent e => EventM t e Int
uiDetail = event >>= (lift . UIEvent.getDetail)

uiKeyCode :: EventM t KeyboardEvent Word
uiKeyCode = event >>= (lift . KeyboardEvent.getKeyCode)

uiCharCode :: EventM t KeyboardEvent Word
uiCharCode = event >>= (lift . KeyboardEvent.getCharCode)

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

