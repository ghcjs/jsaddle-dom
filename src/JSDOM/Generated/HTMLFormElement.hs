{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLFormElement
       (getAt, getAt_, getAtUnsafe, getAtUnchecked, get, get_, getUnsafe,
        getUnchecked, submit, reset, checkValidity, checkValidity_,
        reportValidity, reportValidity_, requestAutocomplete,
        setAcceptCharset, getAcceptCharset, setAction, getAction,
        setAutocomplete, getAutocomplete, setEnctype, getEnctype,
        setEncoding, getEncoding, setMethod, getMethod, setName, getName,
        setNoValidate, getNoValidate, setTarget, getTarget, getElements,
        getLength, HTMLFormElement(..), gTypeHTMLFormElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAt ::
      (MonadDOM m) => HTMLFormElement -> Word -> m (Maybe Element)
getAt self index
  = liftDOM ((self ^. jsf "get" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAt_ :: (MonadDOM m) => HTMLFormElement -> Word -> m ()
getAt_ self index
  = liftDOM (void (self ^. jsf "get" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAtUnsafe ::
            (MonadDOM m, HasCallStack) => HTMLFormElement -> Word -> m Element
getAtUnsafe self index
  = liftDOM
      (((self ^. jsf "get" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAtUnchecked ::
               (MonadDOM m) => HTMLFormElement -> Word -> m Element
getAtUnchecked self index
  = liftDOM
      ((self ^. jsf "get" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
get ::
    (MonadDOM m, ToJSString name) =>
      HTMLFormElement -> name -> m (Maybe RadioNodeListOrElement)
get self name = liftDOM ((self ! name) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
get_ ::
     (MonadDOM m, ToJSString name) => HTMLFormElement -> name -> m ()
get_ self name = liftDOM (void (self ! name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getUnsafe ::
          (MonadDOM m, ToJSString name, HasCallStack) =>
            HTMLFormElement -> name -> m RadioNodeListOrElement
getUnsafe self name
  = liftDOM
      (((self ! name) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getUnchecked ::
             (MonadDOM m, ToJSString name) =>
               HTMLFormElement -> name -> m RadioNodeListOrElement
getUnchecked self name
  = liftDOM ((self ! name) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.submit Mozilla HTMLFormElement.submit documentation> 
submit :: (MonadDOM m) => HTMLFormElement -> m ()
submit self = liftDOM (void (self ^. jsf "submit" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reset Mozilla HTMLFormElement.reset documentation> 
reset :: (MonadDOM m) => HTMLFormElement -> m ()
reset self = liftDOM (void (self ^. jsf "reset" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLFormElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLFormElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reportValidity Mozilla HTMLFormElement.reportValidity documentation> 
reportValidity :: (MonadDOM m) => HTMLFormElement -> m Bool
reportValidity self
  = liftDOM ((self ^. jsf "reportValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reportValidity Mozilla HTMLFormElement.reportValidity documentation> 
reportValidity_ :: (MonadDOM m) => HTMLFormElement -> m ()
reportValidity_ self
  = liftDOM (void (self ^. jsf "reportValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.requestAutocomplete Mozilla HTMLFormElement.requestAutocomplete documentation> 
requestAutocomplete :: (MonadDOM m) => HTMLFormElement -> m ()
requestAutocomplete self
  = liftDOM (void (self ^. jsf "requestAutocomplete" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
setAcceptCharset ::
                 (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setAcceptCharset self val
  = liftDOM (self ^. jss "acceptCharset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
getAcceptCharset ::
                 (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getAcceptCharset self
  = liftDOM ((self ^. js "acceptCharset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
setAction ::
          (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setAction self val = liftDOM (self ^. jss "action" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
getAction ::
          (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getAction self
  = liftDOM ((self ^. js "action") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
setAutocomplete ::
                (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setAutocomplete self val
  = liftDOM (self ^. jss "autocomplete" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
getAutocomplete ::
                (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getAutocomplete self
  = liftDOM ((self ^. js "autocomplete") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
setEnctype ::
           (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setEnctype self val = liftDOM (self ^. jss "enctype" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
getEnctype ::
           (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getEnctype self
  = liftDOM ((self ^. js "enctype") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
setEncoding ::
            (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setEncoding self val
  = liftDOM (self ^. jss "encoding" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
getEncoding ::
            (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getEncoding self
  = liftDOM ((self ^. js "encoding") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
setMethod ::
          (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setMethod self val = liftDOM (self ^. jss "method" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
getMethod ::
          (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getMethod self
  = liftDOM ((self ^. js "method") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
setNoValidate :: (MonadDOM m) => HTMLFormElement -> Bool -> m ()
setNoValidate self val
  = liftDOM (self ^. jss "noValidate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
getNoValidate :: (MonadDOM m) => HTMLFormElement -> m Bool
getNoValidate self
  = liftDOM ((self ^. js "noValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
setTarget ::
          (MonadDOM m, ToJSString val) => HTMLFormElement -> val -> m ()
setTarget self val = liftDOM (self ^. jss "target" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
getTarget ::
          (MonadDOM m, FromJSString result) => HTMLFormElement -> m result
getTarget self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.elements Mozilla HTMLFormElement.elements documentation> 
getElements ::
            (MonadDOM m) => HTMLFormElement -> m HTMLFormControlsCollection
getElements self
  = liftDOM ((self ^. js "elements") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.length Mozilla HTMLFormElement.length documentation> 
getLength :: (MonadDOM m) => HTMLFormElement -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
