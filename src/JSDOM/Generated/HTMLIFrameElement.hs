{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLIFrameElement
       (getSVGDocument, getSVGDocument_, getSVGDocumentUnsafe,
        getSVGDocumentUnchecked, setAlign, getAlign, setFrameBorder,
        getFrameBorder, setHeight, getHeight, setLongDesc, getLongDesc,
        setMarginHeight, getMarginHeight, setMarginWidth, getMarginWidth,
        setName, getName, setSandbox, getSandbox, setScrolling,
        getScrolling, setSrc, getSrc, setSrcdoc, getSrcdoc, setWidth,
        getWidth, getContentDocument, getContentDocumentUnchecked,
        getContentWindow, getContentWindowUnchecked, HTMLIFrameElement(..),
        gTypeHTMLIFrameElement)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.getSVGDocument Mozilla HTMLIFrameElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadDOM m) => HTMLIFrameElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftDOM ((self ^. jsf "getSVGDocument" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.getSVGDocument Mozilla HTMLIFrameElement.getSVGDocument documentation> 
getSVGDocument_ :: (MonadDOM m) => HTMLIFrameElement -> m ()
getSVGDocument_ self
  = liftDOM (void (self ^. jsf "getSVGDocument" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.getSVGDocument Mozilla HTMLIFrameElement.getSVGDocument documentation> 
getSVGDocumentUnsafe ::
                     (MonadDOM m, HasCallStack) => HTMLIFrameElement -> m SVGDocument
getSVGDocumentUnsafe self
  = liftDOM
      (((self ^. jsf "getSVGDocument" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.getSVGDocument Mozilla HTMLIFrameElement.getSVGDocument documentation> 
getSVGDocumentUnchecked ::
                        (MonadDOM m) => HTMLIFrameElement -> m SVGDocument
getSVGDocumentUnchecked self
  = liftDOM
      ((self ^. jsf "getSVGDocument" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
setFrameBorder ::
               (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setFrameBorder self val
  = liftDOM (self ^. jss "frameBorder" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
getFrameBorder ::
               (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getFrameBorder self
  = liftDOM ((self ^. js "frameBorder") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
setHeight ::
          (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
getHeight ::
          (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
setLongDesc ::
            (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setLongDesc self val
  = liftDOM (self ^. jss "longDesc" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
getLongDesc ::
            (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getLongDesc self
  = liftDOM ((self ^. js "longDesc") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
setMarginHeight ::
                (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setMarginHeight self val
  = liftDOM (self ^. jss "marginHeight" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
getMarginHeight ::
                (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getMarginHeight self
  = liftDOM ((self ^. js "marginHeight") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
setMarginWidth ::
               (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setMarginWidth self val
  = liftDOM (self ^. jss "marginWidth" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
getMarginWidth ::
               (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getMarginWidth self
  = liftDOM ((self ^. js "marginWidth") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
setSandbox ::
           (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setSandbox self val = liftDOM (self ^. jss "sandbox" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
getSandbox ::
           (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getSandbox self
  = liftDOM ((self ^. js "sandbox") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
setScrolling ::
             (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setScrolling self val
  = liftDOM (self ^. jss "scrolling" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
getScrolling ::
             (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getScrolling self
  = liftDOM ((self ^. js "scrolling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
setSrcdoc ::
          (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setSrcdoc self val = liftDOM (self ^. jss "srcdoc" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
getSrcdoc ::
          (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getSrcdoc self
  = liftDOM ((self ^. js "srcdoc") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) => HTMLIFrameElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentDocument Mozilla HTMLIFrameElement.contentDocument documentation> 
getContentDocument ::
                   (MonadDOM m) => HTMLIFrameElement -> m (Maybe Document)
getContentDocument self
  = liftDOM ((self ^. js "contentDocument") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentDocument Mozilla HTMLIFrameElement.contentDocument documentation> 
getContentDocumentUnchecked ::
                            (MonadDOM m) => HTMLIFrameElement -> m Document
getContentDocumentUnchecked self
  = liftDOM ((self ^. js "contentDocument") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentWindow Mozilla HTMLIFrameElement.contentWindow documentation> 
getContentWindow ::
                 (MonadDOM m) => HTMLIFrameElement -> m (Maybe Window)
getContentWindow self
  = liftDOM ((self ^. js "contentWindow") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentWindow Mozilla HTMLIFrameElement.contentWindow documentation> 
getContentWindowUnchecked ::
                          (MonadDOM m) => HTMLIFrameElement -> m Window
getContentWindowUnchecked self
  = liftDOM ((self ^. js "contentWindow") >>= fromJSValUnchecked)
