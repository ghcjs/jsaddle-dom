{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLFrameSetElement
       (setCols, getCols, setRows, getRows, beforeUnload, hashChange,
        message, offline, online, popState, resize, storage, unload,
        orientationChange, blur, error, focus, load, HTMLFrameSetElement,
        castToHTMLFrameSetElement, gTypeHTMLFrameSetElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
setCols ::
        (MonadDOM m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setCols self val = liftDOM (self ^. jss "cols" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
getCols ::
        (MonadDOM m, FromJSString result) =>
          HTMLFrameSetElement -> m result
getCols self = liftDOM ((self ^. js "cols") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
setRows ::
        (MonadDOM m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setRows self val = liftDOM (self ^. jss "rows" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
getRows ::
        (MonadDOM m, FromJSString result) =>
          HTMLFrameSetElement -> m result
getRows self = liftDOM ((self ^. js "rows") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onbeforeunload Mozilla HTMLFrameSetElement.onbeforeunload documentation> 
beforeUnload :: EventName HTMLFrameSetElement BeforeUnloadEvent
beforeUnload = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onhashchange Mozilla HTMLFrameSetElement.onhashchange documentation> 
hashChange :: EventName HTMLFrameSetElement HashChangeEvent
hashChange = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onmessage Mozilla HTMLFrameSetElement.onmessage documentation> 
message :: EventName HTMLFrameSetElement MessageEvent
message = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onoffline Mozilla HTMLFrameSetElement.onoffline documentation> 
offline :: EventName HTMLFrameSetElement Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.ononline Mozilla HTMLFrameSetElement.ononline documentation> 
online :: EventName HTMLFrameSetElement Event
online = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onpopstate Mozilla HTMLFrameSetElement.onpopstate documentation> 
popState :: EventName HTMLFrameSetElement PopStateEvent
popState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onresize Mozilla HTMLFrameSetElement.onresize documentation> 
resize :: EventName HTMLFrameSetElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onstorage Mozilla HTMLFrameSetElement.onstorage documentation> 
storage :: EventName HTMLFrameSetElement StorageEvent
storage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onunload Mozilla HTMLFrameSetElement.onunload documentation> 
unload :: EventName HTMLFrameSetElement UIEvent
unload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onorientationchange Mozilla HTMLFrameSetElement.onorientationchange documentation> 
orientationChange :: EventName HTMLFrameSetElement Event
orientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onblur Mozilla HTMLFrameSetElement.onblur documentation> 
blur :: EventName HTMLFrameSetElement FocusEvent
blur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onerror Mozilla HTMLFrameSetElement.onerror documentation> 
error :: EventName HTMLFrameSetElement UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocus Mozilla HTMLFrameSetElement.onfocus documentation> 
focus :: EventName HTMLFrameSetElement FocusEvent
focus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onload Mozilla HTMLFrameSetElement.onload documentation> 
load :: EventName HTMLFrameSetElement UIEvent
load = unsafeEventName (toJSString "load")