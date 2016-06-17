{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.HTMLEmbedElement
       (getSVGDocument, setAlign, getAlign, setHeight, getHeight, setName,
        getName, setSrc, getSrc, setType, getType, setWidth, getWidth,
        HTMLEmbedElement, castToHTMLEmbedElement, gTypeHTMLEmbedElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.getSVGDocument Mozilla HTMLEmbedElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadDOM m) => HTMLEmbedElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftDOM ((self ^. js "getSVGDocument") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.align Mozilla HTMLEmbedElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.align Mozilla HTMLEmbedElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLEmbedElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.height Mozilla HTMLEmbedElement.height documentation> 
setHeight ::
          (MonadDOM m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.height Mozilla HTMLEmbedElement.height documentation> 
getHeight ::
          (MonadDOM m, FromJSString result) => HTMLEmbedElement -> m result
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.name Mozilla HTMLEmbedElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.name Mozilla HTMLEmbedElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLEmbedElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.src Mozilla HTMLEmbedElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.src Mozilla HTMLEmbedElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLEmbedElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.type Mozilla HTMLEmbedElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.type Mozilla HTMLEmbedElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLEmbedElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.width Mozilla HTMLEmbedElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.width Mozilla HTMLEmbedElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) => HTMLEmbedElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)
