{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XMLHttpRequestEventTarget
       (loadStart, progress, abortEvent, error, load, timeout, loadEnd,
        XMLHttpRequestEventTarget(..), gTypeXMLHttpRequestEventTarget,
        IsXMLHttpRequestEventTarget, toXMLHttpRequestEventTarget)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onloadstart Mozilla XMLHttpRequestEventTarget.onloadstart documentation> 
loadStart ::
          (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
            EventName self ProgressEvent
loadStart = unsafeEventNameAsync (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onprogress Mozilla XMLHttpRequestEventTarget.onprogress documentation> 
progress ::
         (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
           EventName self XMLHttpRequestProgressEvent
progress = unsafeEventNameAsync (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onabort Mozilla XMLHttpRequestEventTarget.onabort documentation> 
abortEvent ::
           (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
             EventName self XMLHttpRequestProgressEvent
abortEvent = unsafeEventNameAsync (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onerror Mozilla XMLHttpRequestEventTarget.onerror documentation> 
error ::
      (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
        EventName self XMLHttpRequestProgressEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onload Mozilla XMLHttpRequestEventTarget.onload documentation> 
load ::
     (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
       EventName self XMLHttpRequestProgressEvent
load = unsafeEventNameAsync (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.ontimeout Mozilla XMLHttpRequestEventTarget.ontimeout documentation> 
timeout ::
        (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
          EventName self ProgressEvent
timeout = unsafeEventNameAsync (toJSString "timeout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onloadend Mozilla XMLHttpRequestEventTarget.onloadend documentation> 
loadEnd ::
        (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
          EventName self ProgressEvent
loadEnd = unsafeEventNameAsync (toJSString "loadend")
