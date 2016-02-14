{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLHtmlElement
       (setVersion, getVersion, setManifest, getManifest, HTMLHtmlElement,
        castToHTMLHtmlElement, gTypeHTMLHtmlElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
setVersion ::
           (MonadDOM m, ToJSString val) => HTMLHtmlElement -> val -> m ()
setVersion self val = liftDOM (self ^. jss "version" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
getVersion ::
           (MonadDOM m, FromJSString result) => HTMLHtmlElement -> m result
getVersion self
  = liftDOM ((self ^. js "version") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
setManifest ::
            (MonadDOM m, ToJSString val) => HTMLHtmlElement -> val -> m ()
setManifest self val
  = liftDOM (self ^. jss "manifest" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
getManifest ::
            (MonadDOM m, FromJSString result) => HTMLHtmlElement -> m result
getManifest self
  = liftDOM ((self ^. js "manifest") >>= fromJSValUnchecked)