{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLScriptElement
       (setText, getText, setHtmlFor, getHtmlFor, setEvent, getEvent,
        setCharset, getCharset, setAsync, getAsync, setDefer, getDefer,
        setSrc, getSrc, setType, getType, setCrossOrigin, getCrossOrigin,
        getCrossOriginUnsafe, getCrossOriginUnchecked, setNonce, getNonce,
        setNoModule, getNoModule, setIntegrity, getIntegrity,
        HTMLScriptElement(..), gTypeHTMLScriptElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
setText ::
        (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
getText ::
        (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getText self = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)

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
               (MonadDOM m, ToJSString val) =>
                 HTMLScriptElement -> Maybe val -> m ()
setCrossOrigin self val
  = liftDOM (self ^. jss "crossOrigin" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadDOM m, FromJSString result) =>
                 HTMLScriptElement -> m (Maybe result)
getCrossOrigin self
  = liftDOM ((self ^. js "crossOrigin") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOriginUnsafe ::
                     (MonadDOM m, HasCallStack, FromJSString result) =>
                       HTMLScriptElement -> m result
getCrossOriginUnsafe self
  = liftDOM
      (((self ^. js "crossOrigin") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOriginUnchecked ::
                        (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getCrossOriginUnchecked self
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.noModule Mozilla HTMLScriptElement.noModule documentation> 
setNoModule :: (MonadDOM m) => HTMLScriptElement -> Bool -> m ()
setNoModule self val
  = liftDOM (self ^. jss "noModule" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.noModule Mozilla HTMLScriptElement.noModule documentation> 
getNoModule :: (MonadDOM m) => HTMLScriptElement -> m Bool
getNoModule self = liftDOM ((self ^. js "noModule") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.integrity Mozilla HTMLScriptElement.integrity documentation> 
setIntegrity ::
             (MonadDOM m, ToJSString val) => HTMLScriptElement -> val -> m ()
setIntegrity self val
  = liftDOM (self ^. jss "integrity" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.integrity Mozilla HTMLScriptElement.integrity documentation> 
getIntegrity ::
             (MonadDOM m, FromJSString result) => HTMLScriptElement -> m result
getIntegrity self
  = liftDOM ((self ^. js "integrity") >>= fromJSValUnchecked)
