{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLFormElement
       (_get, submit, reset, checkValidity, requestAutocomplete,
        setAcceptCharset, getAcceptCharset, setAction, getAction,
        setAutocomplete, getAutocomplete, setEnctype, getEnctype,
        setEncoding, getEncoding, setMethod, getMethod, setName, getName,
        setNoValidate, getNoValidate, setTarget, getTarget, getElements,
        getLength, setAutocorrect, getAutocorrect, setAutocapitalize,
        getAutocapitalize, autocomplete, autocompleteerror,
        HTMLFormElement, castToHTMLFormElement, gTypeHTMLFormElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement._get Mozilla HTMLFormElement._get documentation> 
_get ::
     (MonadDOM m) => HTMLFormElement -> Word -> m (Maybe Element)
_get self index
  = liftDOM ((self ^. jsf "_get" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.submit Mozilla HTMLFormElement.submit documentation> 
submit :: (MonadDOM m) => HTMLFormElement -> m ()
submit self = liftDOM (void (self ^. js "submit"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reset Mozilla HTMLFormElement.reset documentation> 
reset :: (MonadDOM m) => HTMLFormElement -> m ()
reset self = liftDOM (void (self ^. js "reset"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLFormElement -> m Bool
checkValidity self
  = liftDOM ((self ^. js "checkValidity") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.requestAutocomplete Mozilla HTMLFormElement.requestAutocomplete documentation> 
requestAutocomplete :: (MonadDOM m) => HTMLFormElement -> m ()
requestAutocomplete self
  = liftDOM (void (self ^. js "requestAutocomplete"))

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
           (MonadDOM m, ToJSString val) =>
             HTMLFormElement -> Maybe val -> m ()
setEnctype self val = liftDOM (self ^. jss "enctype" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
getEnctype ::
           (MonadDOM m, FromJSString result) =>
             HTMLFormElement -> m (Maybe result)
getEnctype self
  = liftDOM ((self ^. js "enctype") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
setEncoding ::
            (MonadDOM m, ToJSString val) =>
              HTMLFormElement -> Maybe val -> m ()
setEncoding self val
  = liftDOM (self ^. jss "encoding" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
getEncoding ::
            (MonadDOM m, FromJSString result) =>
              HTMLFormElement -> m (Maybe result)
getEncoding self
  = liftDOM ((self ^. js "encoding") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
setMethod ::
          (MonadDOM m, ToJSString val) =>
            HTMLFormElement -> Maybe val -> m ()
setMethod self val = liftDOM (self ^. jss "method" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
getMethod ::
          (MonadDOM m, FromJSString result) =>
            HTMLFormElement -> m (Maybe result)
getMethod self
  = liftDOM ((self ^. js "method") >>= fromMaybeJSString)

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
            (MonadDOM m) => HTMLFormElement -> m (Maybe HTMLCollection)
getElements self = liftDOM ((self ^. js "elements") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.length Mozilla HTMLFormElement.length documentation> 
getLength :: (MonadDOM m) => HTMLFormElement -> m Int
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
setAutocorrect :: (MonadDOM m) => HTMLFormElement -> Bool -> m ()
setAutocorrect self val
  = liftDOM (self ^. jss "autocorrect" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
getAutocorrect :: (MonadDOM m) => HTMLFormElement -> m Bool
getAutocorrect self
  = liftDOM ((self ^. js "autocorrect") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
setAutocapitalize ::
                  (MonadDOM m, ToJSString val) =>
                    HTMLFormElement -> Maybe val -> m ()
setAutocapitalize self val
  = liftDOM (self ^. jss "autocapitalize" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadDOM m, FromJSString result) =>
                    HTMLFormElement -> m (Maybe result)
getAutocapitalize self
  = liftDOM ((self ^. js "autocapitalize") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.onautocomplete Mozilla HTMLFormElement.onautocomplete documentation> 
autocomplete :: EventName HTMLFormElement onautocomplete
autocomplete = unsafeEventName (toJSString "autocomplete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.onautocompleteerror Mozilla HTMLFormElement.onautocompleteerror documentation> 
autocompleteerror :: EventName HTMLFormElement onautocompleteerror
autocompleteerror
  = unsafeEventName (toJSString "autocompleteerror")