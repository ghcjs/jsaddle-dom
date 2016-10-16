{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XMLHttpRequestUpload
       (abort, error, load, loadEnd, loadStart, progress,
        XMLHttpRequestUpload(..), gTypeXMLHttpRequestUpload)
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
