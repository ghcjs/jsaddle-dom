{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLScriptElement
       (setText, getText, getTextUnsafe, getTextUnchecked, setHtmlFor,
        getHtmlFor, setEvent, getEvent, setCharset, getCharset, setAsync,
        getAsync, setDefer, getDefer, setSrc, getSrc, setType, getType,
        setCrossOrigin, getCrossOrigin, setNonce, getNonce,
        HTMLScriptElement(..), gTypeHTMLScriptElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
setText ::
        (MonadDOM m, ToJSString val) =>
          HTMLScriptElement -> Maybe val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
getText ::
        (MonadDOM m, FromJSString result) =>
          HTMLScriptElement -> m (Maybe result)
getText self = liftDOM ((self ^. js "text") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
getTextUnsafe ::
              (MonadDOM m, HasCallStack, FromJSString result) =>
                HTMLScriptElement -> m result
getTextUnsafe self
  = liftDOM
      (((self ^. js "text") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
getTextUnchecked ::
                 (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getTextUnchecked self
  = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
setHtmlFor ::
           (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setHtmlFor self val = liftDOM (self ^. jss "htmlFor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
getHtmlFor ::
           (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getHtmlFor self
  = liftDOM ((self ^. js "htmlFor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
setEvent ::
         (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setEvent self val = liftDOM (self ^. jss "event" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
getEvent ::
         (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getEvent self
  = liftDOM ((self ^. js "event") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
setCharset ::
           (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setCharset self val = liftDOM (self ^. jss "charset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
getCharset ::
           (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getCharset self
  = liftDOM ((self ^. js "charset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
setAsync :: (MonadDOM m) => HTMLScriptElement -> Bool -> m ()
setAsync self val = liftDOM (self ^. jss "async" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
getAsync :: (MonadDOM m) => HTMLScriptElement -> m Bool
getAsync self = liftDOM ((self ^. js "async") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
setDefer :: (MonadDOM m) => HTMLScriptElement -> Bool -> m ()
setDefer self val = liftDOM (self ^. jss "defer" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
getDefer :: (MonadDOM m) => HTMLScriptElement -> m Bool
getDefer self = liftDOM ((self ^. js "defer") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.type Mozilla HTMLScriptElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.type Mozilla HTMLScriptElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setCrossOrigin self val
  = liftDOM (self ^. jss "crossOrigin" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getCrossOrigin self
  = liftDOM ((self ^. js "crossOrigin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
setNonce ::
         (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setNonce self val = liftDOM (self ^. jss "nonce" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
getNonce ::
         (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getNonce self
  = liftDOM ((self ^. js "nonce") >>= fromJSValUnchecked)
