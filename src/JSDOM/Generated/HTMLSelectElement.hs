{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLSelectElement
       (item, item_, itemUnsafe, itemUnchecked, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked, addBefore, removeThis, remove,
        checkValidity, checkValidity_, reportValidity, reportValidity_,
        setCustomValidity, setAutofocus, getAutofocus, setDisabled,
        getDisabled, getForm, getFormUnsafe, getFormUnchecked, setMultiple,
        getMultiple, setName, getName, setRequired, getRequired, setSize,
        getSize, getType, getOptions, setLength, getLength,
        getSelectedOptions, setSelectedIndex, getSelectedIndex, setValue,
        getValue, getWillValidate, getValidity, getValidationMessage,
        getLabels, setAutocomplete, getAutocomplete, HTMLSelectElement(..),
        gTypeHTMLSelectElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
item ::
     (MonadDOM m) =>
       HTMLSelectElement -> Word -> m (Maybe HTMLOptionElement)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
item_ :: (MonadDOM m) => HTMLSelectElement -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) =>
             HTMLSelectElement -> Word -> m HTMLOptionElement
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
itemUnchecked ::
              (MonadDOM m) => HTMLSelectElement -> Word -> m HTMLOptionElement
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            HTMLSelectElement -> name -> m (Maybe HTMLOptionElement)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) => HTMLSelectElement -> name -> m ()
namedItem_ self name
  = liftDOM (void (self ^. jsf "namedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, ToJSString name, HasCallStack) =>
                  HTMLSelectElement -> name -> m HTMLOptionElement
namedItemUnsafe self name
  = liftDOM
      (((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     HTMLSelectElement -> name -> m HTMLOptionElement
namedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.add Mozilla HTMLSelectElement.add documentation> 
addBefore ::
          (MonadDOM m, IsHTMLOptionElementOrGroup element,
           IsHTMLElementOrLong before) =>
            HTMLSelectElement -> element -> Maybe before -> m ()
addBefore self element before
  = liftDOM
      (void (self ^. jsf "add" [toJSVal element, toJSVal before]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.remove Mozilla HTMLSelectElement.remove documentation> 
removeThis :: (MonadDOM m) => HTMLSelectElement -> m ()
removeThis self = liftDOM (void (self ^. jsf "remove" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.remove Mozilla HTMLSelectElement.remove documentation> 
remove :: (MonadDOM m) => HTMLSelectElement -> Int -> m ()
remove self index
  = liftDOM (void (self ^. jsf "remove" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.checkValidity Mozilla HTMLSelectElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLSelectElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.checkValidity Mozilla HTMLSelectElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLSelectElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.reportValidity Mozilla HTMLSelectElement.reportValidity documentation> 
reportValidity :: (MonadDOM m) => HTMLSelectElement -> m Bool
reportValidity self
  = liftDOM ((self ^. jsf "reportValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.reportValidity Mozilla HTMLSelectElement.reportValidity documentation> 
reportValidity_ :: (MonadDOM m) => HTMLSelectElement -> m ()
reportValidity_ self
  = liftDOM (void (self ^. jsf "reportValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.setCustomValidity Mozilla HTMLSelectElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadDOM m, ToJSString error) =>
                    HTMLSelectElement -> error -> m ()
setCustomValidity self error
  = liftDOM (void (self ^. jsf "setCustomValidity" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
setAutofocus :: (MonadDOM m) => HTMLSelectElement -> Bool -> m ()
setAutofocus self val
  = liftDOM (self ^. jss "autofocus" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
getAutofocus :: (MonadDOM m) => HTMLSelectElement -> m Bool
getAutofocus self
  = liftDOM ((self ^. js "autofocus") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLSelectElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLSelectElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
getForm ::
        (MonadDOM m) => HTMLSelectElement -> m (Maybe HTMLFormElement)
getForm self = liftDOM ((self ^. js "form") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
getFormUnsafe ::
              (MonadDOM m, HasCallStack) =>
                HTMLSelectElement -> m HTMLFormElement
getFormUnsafe self
  = liftDOM
      (((self ^. js "form") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
getFormUnchecked ::
                 (MonadDOM m) => HTMLSelectElement -> m HTMLFormElement
getFormUnchecked self
  = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
setMultiple :: (MonadDOM m) => HTMLSelectElement -> Bool -> m ()
setMultiple self val
  = liftDOM (self ^. jss "multiple" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
getMultiple :: (MonadDOM m) => HTMLSelectElement -> m Bool
getMultiple self = liftDOM ((self ^. js "multiple") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLSelectElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLSelectElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
setRequired :: (MonadDOM m) => HTMLSelectElement -> Bool -> m ()
setRequired self val
  = liftDOM (self ^. jss "required" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
getRequired :: (MonadDOM m) => HTMLSelectElement -> m Bool
getRequired self = liftDOM ((self ^. js "required") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
setSize :: (MonadDOM m) => HTMLSelectElement -> Word -> m ()
setSize self val = liftDOM (self ^. jss "size" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
getSize :: (MonadDOM m) => HTMLSelectElement -> m Word
getSize self
  = liftDOM (round <$> ((self ^. js "size") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.type Mozilla HTMLSelectElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLSelectElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.options Mozilla HTMLSelectElement.options documentation> 
getOptions ::
           (MonadDOM m) => HTMLSelectElement -> m HTMLOptionsCollection
getOptions self
  = liftDOM ((self ^. js "options") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
setLength :: (MonadDOM m) => HTMLSelectElement -> Word -> m ()
setLength self val = liftDOM (self ^. jss "length" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
getLength :: (MonadDOM m) => HTMLSelectElement -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedOptions Mozilla HTMLSelectElement.selectedOptions documentation> 
getSelectedOptions ::
                   (MonadDOM m) => HTMLSelectElement -> m HTMLCollection
getSelectedOptions self
  = liftDOM ((self ^. js "selectedOptions") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
setSelectedIndex ::
                 (MonadDOM m) => HTMLSelectElement -> Int -> m ()
setSelectedIndex self val
  = liftDOM (self ^. jss "selectedIndex" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
getSelectedIndex :: (MonadDOM m) => HTMLSelectElement -> m Int
getSelectedIndex self
  = liftDOM
      (round <$> ((self ^. js "selectedIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => HTMLSelectElement -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => HTMLSelectElement -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.willValidate Mozilla HTMLSelectElement.willValidate documentation> 
getWillValidate :: (MonadDOM m) => HTMLSelectElement -> m Bool
getWillValidate self
  = liftDOM ((self ^. js "willValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validity Mozilla HTMLSelectElement.validity documentation> 
getValidity :: (MonadDOM m) => HTMLSelectElement -> m ValidityState
getValidity self
  = liftDOM ((self ^. js "validity") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validationMessage Mozilla HTMLSelectElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadDOM m, FromJSString result) => HTMLSelectElement -> m result
getValidationMessage self
  = liftDOM ((self ^. js "validationMessage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.labels Mozilla HTMLSelectElement.labels documentation> 
getLabels :: (MonadDOM m) => HTMLSelectElement -> m NodeList
getLabels self
  = liftDOM ((self ^. js "labels") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autocomplete Mozilla HTMLSelectElement.autocomplete documentation> 
setAutocomplete ::
                (MonadDOM m, ToJSString val) => HTMLSelectElement -> val -> m ()
setAutocomplete self val
  = liftDOM (self ^. jss "autocomplete" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autocomplete Mozilla HTMLSelectElement.autocomplete documentation> 
getAutocomplete ::
                (MonadDOM m, FromJSString result) => HTMLSelectElement -> m result
getAutocomplete self
  = liftDOM ((self ^. js "autocomplete") >>= fromJSValUnchecked)
