{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLBodyElement
       (setALink, getALink, setBackground, getBackground, setBgColor,
        getBgColor, setLink, getLink, setText, getText, setVLink, getVLink,
        blur, error, focus, focusin, focusout, load, resize, scroll,
        webKitMouseForcechanged, webKitMouseForcedown,
        webKitMouseForcewillbegin, webKitMouseForceup,
        webKitWillRevealBottom, webKitWillRevealLeft,
        webKitWillRevealRight, webKitWillRevealTop, selectionchange,
        HTMLBodyElement(..), gTypeHTMLBodyElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onblur Mozilla HTMLBodyElement.onblur documentation> 
blur :: EventName HTMLBodyElement FocusEvent
blur = unsafeEventNameAsync (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onerror Mozilla HTMLBodyElement.onerror documentation> 
error :: EventName HTMLBodyElement UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocus Mozilla HTMLBodyElement.onfocus documentation> 
focus :: EventName HTMLBodyElement FocusEvent
focus = unsafeEventNameAsync (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocusin Mozilla HTMLBodyElement.onfocusin documentation> 
focusin :: EventName HTMLBodyElement onfocusin
focusin = unsafeEventName (toJSString "focusin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocusout Mozilla HTMLBodyElement.onfocusout documentation> 
focusout :: EventName HTMLBodyElement onfocusout
focusout = unsafeEventName (toJSString "focusout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onload Mozilla HTMLBodyElement.onload documentation> 
load :: EventName HTMLBodyElement UIEvent
load = unsafeEventNameAsync (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onresize Mozilla HTMLBodyElement.onresize documentation> 
resize :: EventName HTMLBodyElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onscroll Mozilla HTMLBodyElement.onscroll documentation> 
scroll :: EventName HTMLBodyElement UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforcechanged Mozilla HTMLBodyElement.onwebkitmouseforcechanged documentation> 
webKitMouseForcechanged ::
                          EventName HTMLBodyElement onwebkitmouseforcechanged
webKitMouseForcechanged
  = unsafeEventName (toJSString "webkitmouseforcechanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforcedown Mozilla HTMLBodyElement.onwebkitmouseforcedown documentation> 
webKitMouseForcedown ::
                       EventName HTMLBodyElement onwebkitmouseforcedown
webKitMouseForcedown
  = unsafeEventName (toJSString "webkitmouseforcedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforcewillbegin Mozilla HTMLBodyElement.onwebkitmouseforcewillbegin documentation> 
webKitMouseForcewillbegin ::
                            EventName HTMLBodyElement onwebkitmouseforcewillbegin
webKitMouseForcewillbegin
  = unsafeEventName (toJSString "webkitmouseforcewillbegin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforceup Mozilla HTMLBodyElement.onwebkitmouseforceup documentation> 
webKitMouseForceup ::
                     EventName HTMLBodyElement onwebkitmouseforceup
webKitMouseForceup
  = unsafeEventName (toJSString "webkitmouseforceup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealbottom Mozilla HTMLBodyElement.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom :: EventName HTMLBodyElement Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealleft Mozilla HTMLBodyElement.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft :: EventName HTMLBodyElement Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealright Mozilla HTMLBodyElement.onwebkitwillrevealright documentation> 
webKitWillRevealRight :: EventName HTMLBodyElement Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealtop Mozilla HTMLBodyElement.onwebkitwillrevealtop documentation> 
webKitWillRevealTop :: EventName HTMLBodyElement Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onselectionchange Mozilla HTMLBodyElement.onselectionchange documentation> 
selectionchange :: EventName HTMLBodyElement onselectionchange
selectionchange = unsafeEventName (toJSString "selectionchange")
