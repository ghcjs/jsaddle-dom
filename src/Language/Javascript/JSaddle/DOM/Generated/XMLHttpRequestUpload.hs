{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.XMLHttpRequestUpload
       (abort, error, load, loadEnd, loadStart, progress,
        XMLHttpRequestUpload, castToXMLHttpRequestUpload,
        gTypeXMLHttpRequestUpload)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onabort Mozilla XMLHttpRequestUpload.onabort documentation> 
abort :: EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onerror Mozilla XMLHttpRequestUpload.onerror documentation> 
error :: EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onload Mozilla XMLHttpRequestUpload.onload documentation> 
load :: EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onloadend Mozilla XMLHttpRequestUpload.onloadend documentation> 
loadEnd :: EventName XMLHttpRequestUpload ProgressEvent
loadEnd = unsafeEventName (toJSString "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onloadstart Mozilla XMLHttpRequestUpload.onloadstart documentation> 
loadStart :: EventName XMLHttpRequestUpload ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onprogress Mozilla XMLHttpRequestUpload.onprogress documentation> 
progress ::
           EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
progress = unsafeEventName (toJSString "progress")