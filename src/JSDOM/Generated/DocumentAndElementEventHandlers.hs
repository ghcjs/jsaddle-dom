{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DocumentAndElementEventHandlers
       (copy, cut, paste, beforeCopy, beforeCut, beforeinput, beforePaste,
        DocumentAndElementEventHandlers(..),
        gTypeDocumentAndElementEventHandlers,
        IsDocumentAndElementEventHandlers,
        toDocumentAndElementEventHandlers)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.oncopy Mozilla DocumentAndElementEventHandlers.oncopy documentation> 
copy ::
     (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
       EventName self ClipboardEvent
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.oncut Mozilla DocumentAndElementEventHandlers.oncut documentation> 
cut ::
    (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
      EventName self ClipboardEvent
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onpaste Mozilla DocumentAndElementEventHandlers.onpaste documentation> 
paste ::
      (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
        EventName self ClipboardEvent
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforecopy Mozilla DocumentAndElementEventHandlers.onbeforecopy documentation> 
beforeCopy ::
           (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
             EventName self ClipboardEvent
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforecut Mozilla DocumentAndElementEventHandlers.onbeforecut documentation> 
beforeCut ::
          (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
            EventName self ClipboardEvent
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforeinput Mozilla DocumentAndElementEventHandlers.onbeforeinput documentation> 
beforeinput ::
            (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
              EventName self onbeforeinput
beforeinput = unsafeEventName (toJSString "beforeinput")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforepaste Mozilla DocumentAndElementEventHandlers.onbeforepaste documentation> 
beforePaste ::
            (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
              EventName self ClipboardEvent
beforePaste = unsafeEventName (toJSString "beforepaste")
