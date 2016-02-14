{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLBodyElement
       (setALink, getALink, setBackground, getBackground, setBgColor,
        getBgColor, setLink, getLink, setText, getText, setVLink, getVLink,
        beforeUnload, hashChange, message, offline, online, popState,
        resize, storage, unload, orientationChange, blur, error, focus,
        load, HTMLBodyElement, castToHTMLBodyElement, gTypeHTMLBodyElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
setALink ::
         (MonadDOM m, ToJSString val) => HTMLBodyElement -> val -> m ()
setALink self val = liftDOM (self ^. jss "aLink" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
getALink ::
         (MonadDOM m, FromJSString result) => HTMLBodyElement -> m result
getALink self
  = liftDOM ((self ^. js "aLink") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
setBackground ::
              (MonadDOM m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBackground self val
  = liftDOM (self ^. jss "background" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
getBackground ::
              (MonadDOM m, FromJSString result) => HTMLBodyElement -> m result
getBackground self
  = liftDOM ((self ^. js "background") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
setBgColor ::
           (MonadDOM m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBgColor self val = liftDOM (self ^. jss "bgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
getBgColor ::
           (MonadDOM m, FromJSString result) => HTMLBodyElement -> m result
getBgColor self
  = liftDOM ((self ^. js "bgColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
setLink ::
        (MonadDOM m, ToJSString val) => HTMLBodyElement -> val -> m ()
setLink self val = liftDOM (self ^. jss "link" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
getLink ::
        (MonadDOM m, FromJSString result) => HTMLBodyElement -> m result
getLink self = liftDOM ((self ^. js "link") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
setText ::
        (MonadDOM m, ToJSString val) => HTMLBodyElement -> val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
getText ::
        (MonadDOM m, FromJSString result) => HTMLBodyElement -> m result
getText self = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
setVLink ::
         (MonadDOM m, ToJSString val) => HTMLBodyElement -> val -> m ()
setVLink self val = liftDOM (self ^. jss "vLink" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
getVLink ::
         (MonadDOM m, FromJSString result) => HTMLBodyElement -> m result
getVLink self
  = liftDOM ((self ^. js "vLink") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onbeforeunload Mozilla HTMLBodyElement.onbeforeunload documentation> 
beforeUnload :: EventName HTMLBodyElement BeforeUnloadEvent
beforeUnload = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onhashchange Mozilla HTMLBodyElement.onhashchange documentation> 
hashChange :: EventName HTMLBodyElement HashChangeEvent
hashChange = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onmessage Mozilla HTMLBodyElement.onmessage documentation> 
message :: EventName HTMLBodyElement MessageEvent
message = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onoffline Mozilla HTMLBodyElement.onoffline documentation> 
offline :: EventName HTMLBodyElement Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.ononline Mozilla HTMLBodyElement.ononline documentation> 
online :: EventName HTMLBodyElement Event
online = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onpopstate Mozilla HTMLBodyElement.onpopstate documentation> 
popState :: EventName HTMLBodyElement PopStateEvent
popState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onresize Mozilla HTMLBodyElement.onresize documentation> 
resize :: EventName HTMLBodyElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onstorage Mozilla HTMLBodyElement.onstorage documentation> 
storage :: EventName HTMLBodyElement StorageEvent
storage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onunload Mozilla HTMLBodyElement.onunload documentation> 
unload :: EventName HTMLBodyElement UIEvent
unload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onorientationchange Mozilla HTMLBodyElement.onorientationchange documentation> 
orientationChange :: EventName HTMLBodyElement Event
orientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onblur Mozilla HTMLBodyElement.onblur documentation> 
blur :: EventName HTMLBodyElement FocusEvent
blur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onerror Mozilla HTMLBodyElement.onerror documentation> 
error :: EventName HTMLBodyElement UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocus Mozilla HTMLBodyElement.onfocus documentation> 
focus :: EventName HTMLBodyElement FocusEvent
focus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onload Mozilla HTMLBodyElement.onload documentation> 
load :: EventName HTMLBodyElement UIEvent
load = unsafeEventName (toJSString "load")