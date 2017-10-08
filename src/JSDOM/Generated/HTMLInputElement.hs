{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLInputElement
       (stepUp, stepDown, checkValidity, checkValidity_, reportValidity,
        reportValidity_, setCustomValidity, select, setRangeText,
        setRangeText4, setSelectionRange, setAccept, getAccept, setAlt,
        getAlt, setAutocomplete, getAutocomplete, setAutofocus,
        getAutofocus, setDefaultChecked, getDefaultChecked, setChecked,
        getChecked, setDirName, getDirName, setDisabled, getDisabled,
        getForm, setFiles, getFiles, getFilesUnsafe, getFilesUnchecked,
        setFormAction, getFormAction, setFormEnctype, getFormEnctype,
        setFormMethod, getFormMethod, setFormNoValidate, getFormNoValidate,
        setFormTarget, getFormTarget, setHeight, getHeight,
        setIndeterminate, getIndeterminate, getList, setMax, getMax,
        setMinLength, getMinLength, setMaxLength, getMaxLength, setMin,
        getMin, setMultiple, getMultiple, setName, getName, setPattern,
        getPattern, setPlaceholder, getPlaceholder, setReadOnly,
        getReadOnly, setRequired, getRequired, setSize, getSize, setSrc,
        getSrc, setStep, getStep, setType, getType, setDefaultValue,
        getDefaultValue, setValue, getValue, setValueAsDate,
        getValueAsDate, getValueAsDateUnsafe, getValueAsDateUnchecked,
        setValueAsNumber, getValueAsNumber, setWidth, getWidth,
        getWillValidate, getValidity, getValidationMessage, getLabels,
        setSelectionStart, getSelectionStart, setSelectionEnd,
        getSelectionEnd, setSelectionDirection, getSelectionDirection,
        setAlign, getAlign, setUseMap, getUseMap, setIncremental,
        getIncremental, setCapture, getCapture, HTMLInputElement(..),
        gTypeHTMLInputElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.stepUp Mozilla HTMLInputElement.stepUp documentation> 
stepUp :: (MonadDOM m) => HTMLInputElement -> Maybe Int -> m ()
stepUp self n = liftDOM (void (self ^. jsf "stepUp" [toJSVal n]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.stepDown Mozilla HTMLInputElement.stepDown documentation> 
stepDown :: (MonadDOM m) => HTMLInputElement -> Maybe Int -> m ()
stepDown self n
  = liftDOM (void (self ^. jsf "stepDown" [toJSVal n]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checkValidity Mozilla HTMLInputElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLInputElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checkValidity Mozilla HTMLInputElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLInputElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.reportValidity Mozilla HTMLInputElement.reportValidity documentation> 
reportValidity :: (MonadDOM m) => HTMLInputElement -> m Bool
reportValidity self
  = liftDOM ((self ^. jsf "reportValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.reportValidity Mozilla HTMLInputElement.reportValidity documentation> 
reportValidity_ :: (MonadDOM m) => HTMLInputElement -> m ()
reportValidity_ self
  = liftDOM (void (self ^. jsf "reportValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setCustomValidity Mozilla HTMLInputElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadDOM m, ToJSString error) => HTMLInputElement -> error -> m ()
setCustomValidity self error
  = liftDOM (void (self ^. jsf "setCustomValidity" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.select Mozilla HTMLInputElement.select documentation> 
select :: (MonadDOM m) => HTMLInputElement -> m ()
select self = liftDOM (void (self ^. jsf "select" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setRangeText Mozilla HTMLInputElement.setRangeText documentation> 
setRangeText ::
             (MonadDOM m, ToJSString replacement) =>
               HTMLInputElement -> replacement -> m ()
setRangeText self replacement
  = liftDOM (void (self ^. jsf "setRangeText" [toJSVal replacement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setRangeText Mozilla HTMLInputElement.setRangeText documentation> 
setRangeText4 ::
              (MonadDOM m, ToJSString replacement, ToJSString selectionMode) =>
                HTMLInputElement ->
                  replacement -> Word -> Word -> Maybe selectionMode -> m ()
setRangeText4 self replacement start end selectionMode
  = liftDOM
      (void
         (self ^. jsf "setRangeText"
            [toJSVal replacement, toJSVal start, toJSVal end,
             toJSVal selectionMode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setSelectionRange Mozilla HTMLInputElement.setSelectionRange documentation> 
setSelectionRange ::
                  (MonadDOM m, ToJSString direction) =>
                    HTMLInputElement -> Int -> Int -> Maybe direction -> m ()
setSelectionRange self start end direction
  = liftDOM
      (void
         (self ^. jsf "setSelectionRange"
            [toJSVal start, toJSVal end, toJSVal direction]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.accept Mozilla HTMLInputElement.accept documentation> 
setAccept ::
          (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setAccept self val = liftDOM (self ^. jss "accept" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.accept Mozilla HTMLInputElement.accept documentation> 
getAccept ::
          (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getAccept self
  = liftDOM ((self ^. js "accept") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.alt Mozilla HTMLInputElement.alt documentation> 
setAlt ::
       (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setAlt self val = liftDOM (self ^. jss "alt" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.alt Mozilla HTMLInputElement.alt documentation> 
getAlt ::
       (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getAlt self = liftDOM ((self ^. js "alt") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocomplete Mozilla HTMLInputElement.autocomplete documentation> 
setAutocomplete ::
                (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setAutocomplete self val
  = liftDOM (self ^. jss "autocomplete" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocomplete Mozilla HTMLInputElement.autocomplete documentation> 
getAutocomplete ::
                (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getAutocomplete self
  = liftDOM ((self ^. js "autocomplete") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autofocus Mozilla HTMLInputElement.autofocus documentation> 
setAutofocus :: (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setAutofocus self val
  = liftDOM (self ^. jss "autofocus" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autofocus Mozilla HTMLInputElement.autofocus documentation> 
getAutofocus :: (MonadDOM m) => HTMLInputElement -> m Bool
getAutofocus self
  = liftDOM ((self ^. js "autofocus") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultChecked Mozilla HTMLInputElement.defaultChecked documentation> 
setDefaultChecked ::
                  (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setDefaultChecked self val
  = liftDOM (self ^. jss "defaultChecked" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultChecked Mozilla HTMLInputElement.defaultChecked documentation> 
getDefaultChecked :: (MonadDOM m) => HTMLInputElement -> m Bool
getDefaultChecked self
  = liftDOM ((self ^. js "defaultChecked") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checked Mozilla HTMLInputElement.checked documentation> 
setChecked :: (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setChecked self val = liftDOM (self ^. jss "checked" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checked Mozilla HTMLInputElement.checked documentation> 
getChecked :: (MonadDOM m) => HTMLInputElement -> m Bool
getChecked self = liftDOM ((self ^. js "checked") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.dirName Mozilla HTMLInputElement.dirName documentation> 
setDirName ::
           (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setDirName self val = liftDOM (self ^. jss "dirName" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.dirName Mozilla HTMLInputElement.dirName documentation> 
getDirName ::
           (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getDirName self
  = liftDOM ((self ^. js "dirName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.disabled Mozilla HTMLInputElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.disabled Mozilla HTMLInputElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLInputElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.form Mozilla HTMLInputElement.form documentation> 
getForm :: (MonadDOM m) => HTMLInputElement -> m HTMLFormElement
getForm self = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
setFiles ::
         (MonadDOM m) => HTMLInputElement -> Maybe FileList -> m ()
setFiles self val = liftDOM (self ^. jss "files" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
getFiles :: (MonadDOM m) => HTMLInputElement -> m (Maybe FileList)
getFiles self = liftDOM ((self ^. js "files") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
getFilesUnsafe ::
               (MonadDOM m, HasCallStack) => HTMLInputElement -> m FileList
getFilesUnsafe self
  = liftDOM
      (((self ^. js "files") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
getFilesUnchecked :: (MonadDOM m) => HTMLInputElement -> m FileList
getFilesUnchecked self
  = liftDOM ((self ^. js "files") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formAction Mozilla HTMLInputElement.formAction documentation> 
setFormAction ::
              (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setFormAction self val
  = liftDOM (self ^. jss "formAction" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formAction Mozilla HTMLInputElement.formAction documentation> 
getFormAction ::
              (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getFormAction self
  = liftDOM ((self ^. js "formAction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formEnctype Mozilla HTMLInputElement.formEnctype documentation> 
setFormEnctype ::
               (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setFormEnctype self val
  = liftDOM (self ^. jss "formEnctype" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formEnctype Mozilla HTMLInputElement.formEnctype documentation> 
getFormEnctype ::
               (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getFormEnctype self
  = liftDOM ((self ^. js "formEnctype") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formMethod Mozilla HTMLInputElement.formMethod documentation> 
setFormMethod ::
              (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setFormMethod self val
  = liftDOM (self ^. jss "formMethod" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formMethod Mozilla HTMLInputElement.formMethod documentation> 
getFormMethod ::
              (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getFormMethod self
  = liftDOM ((self ^. js "formMethod") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formNoValidate Mozilla HTMLInputElement.formNoValidate documentation> 
setFormNoValidate ::
                  (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setFormNoValidate self val
  = liftDOM (self ^. jss "formNoValidate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formNoValidate Mozilla HTMLInputElement.formNoValidate documentation> 
getFormNoValidate :: (MonadDOM m) => HTMLInputElement -> m Bool
getFormNoValidate self
  = liftDOM ((self ^. js "formNoValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formTarget Mozilla HTMLInputElement.formTarget documentation> 
setFormTarget ::
              (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setFormTarget self val
  = liftDOM (self ^. jss "formTarget" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formTarget Mozilla HTMLInputElement.formTarget documentation> 
getFormTarget ::
              (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getFormTarget self
  = liftDOM ((self ^. js "formTarget") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.height Mozilla HTMLInputElement.height documentation> 
setHeight :: (MonadDOM m) => HTMLInputElement -> Word -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.height Mozilla HTMLInputElement.height documentation> 
getHeight :: (MonadDOM m) => HTMLInputElement -> m Word
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.indeterminate Mozilla HTMLInputElement.indeterminate documentation> 
setIndeterminate ::
                 (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setIndeterminate self val
  = liftDOM (self ^. jss "indeterminate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.indeterminate Mozilla HTMLInputElement.indeterminate documentation> 
getIndeterminate :: (MonadDOM m) => HTMLInputElement -> m Bool
getIndeterminate self
  = liftDOM ((self ^. js "indeterminate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.list Mozilla HTMLInputElement.list documentation> 
getList :: (MonadDOM m) => HTMLInputElement -> m HTMLElement
getList self = liftDOM ((self ^. js "list") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.max Mozilla HTMLInputElement.max documentation> 
setMax ::
       (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setMax self val = liftDOM (self ^. jss "max" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.max Mozilla HTMLInputElement.max documentation> 
getMax ::
       (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getMax self = liftDOM ((self ^. js "max") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.minLength Mozilla HTMLInputElement.minLength documentation> 
setMinLength :: (MonadDOM m) => HTMLInputElement -> Int -> m ()
setMinLength self val
  = liftDOM (self ^. jss "minLength" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.minLength Mozilla HTMLInputElement.minLength documentation> 
getMinLength :: (MonadDOM m) => HTMLInputElement -> m Int
getMinLength self
  = liftDOM (round <$> ((self ^. js "minLength") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.maxLength Mozilla HTMLInputElement.maxLength documentation> 
setMaxLength :: (MonadDOM m) => HTMLInputElement -> Int -> m ()
setMaxLength self val
  = liftDOM (self ^. jss "maxLength" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.maxLength Mozilla HTMLInputElement.maxLength documentation> 
getMaxLength :: (MonadDOM m) => HTMLInputElement -> m Int
getMaxLength self
  = liftDOM (round <$> ((self ^. js "maxLength") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.min Mozilla HTMLInputElement.min documentation> 
setMin ::
       (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setMin self val = liftDOM (self ^. jss "min" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.min Mozilla HTMLInputElement.min documentation> 
getMin ::
       (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getMin self = liftDOM ((self ^. js "min") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.multiple Mozilla HTMLInputElement.multiple documentation> 
setMultiple :: (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setMultiple self val
  = liftDOM (self ^. jss "multiple" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.multiple Mozilla HTMLInputElement.multiple documentation> 
getMultiple :: (MonadDOM m) => HTMLInputElement -> m Bool
getMultiple self = liftDOM ((self ^. js "multiple") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.name Mozilla HTMLInputElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.name Mozilla HTMLInputElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.pattern Mozilla HTMLInputElement.pattern documentation> 
setPattern ::
           (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setPattern self val = liftDOM (self ^. jss "pattern" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.pattern Mozilla HTMLInputElement.pattern documentation> 
getPattern ::
           (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getPattern self
  = liftDOM ((self ^. js "pattern") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.placeholder Mozilla HTMLInputElement.placeholder documentation> 
setPlaceholder ::
               (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setPlaceholder self val
  = liftDOM (self ^. jss "placeholder" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.placeholder Mozilla HTMLInputElement.placeholder documentation> 
getPlaceholder ::
               (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getPlaceholder self
  = liftDOM ((self ^. js "placeholder") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.readOnly Mozilla HTMLInputElement.readOnly documentation> 
setReadOnly :: (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setReadOnly self val
  = liftDOM (self ^. jss "readOnly" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.readOnly Mozilla HTMLInputElement.readOnly documentation> 
getReadOnly :: (MonadDOM m) => HTMLInputElement -> m Bool
getReadOnly self = liftDOM ((self ^. js "readOnly") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.required Mozilla HTMLInputElement.required documentation> 
setRequired :: (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setRequired self val
  = liftDOM (self ^. jss "required" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.required Mozilla HTMLInputElement.required documentation> 
getRequired :: (MonadDOM m) => HTMLInputElement -> m Bool
getRequired self = liftDOM ((self ^. js "required") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.size Mozilla HTMLInputElement.size documentation> 
setSize :: (MonadDOM m) => HTMLInputElement -> Word -> m ()
setSize self val = liftDOM (self ^. jss "size" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.size Mozilla HTMLInputElement.size documentation> 
getSize :: (MonadDOM m) => HTMLInputElement -> m Word
getSize self
  = liftDOM (round <$> ((self ^. js "size") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.src Mozilla HTMLInputElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.src Mozilla HTMLInputElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.step Mozilla HTMLInputElement.step documentation> 
setStep ::
        (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setStep self val = liftDOM (self ^. jss "step" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.step Mozilla HTMLInputElement.step documentation> 
getStep ::
        (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getStep self = liftDOM ((self ^. js "step") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.type Mozilla HTMLInputElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.type Mozilla HTMLInputElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultValue Mozilla HTMLInputElement.defaultValue documentation> 
setDefaultValue ::
                (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setDefaultValue self val
  = liftDOM (self ^. jss "defaultValue" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultValue Mozilla HTMLInputElement.defaultValue documentation> 
getDefaultValue ::
                (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getDefaultValue self
  = liftDOM ((self ^. js "defaultValue") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.value Mozilla HTMLInputElement.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.value Mozilla HTMLInputElement.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
setValueAsDate ::
               (MonadDOM m, IsDate val) => HTMLInputElement -> Maybe val -> m ()
setValueAsDate self val
  = liftDOM (self ^. jss "valueAsDate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
getValueAsDate ::
               (MonadDOM m) => HTMLInputElement -> m (Maybe Date)
getValueAsDate self
  = liftDOM ((self ^. js "valueAsDate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
getValueAsDateUnsafe ::
                     (MonadDOM m, HasCallStack) => HTMLInputElement -> m Date
getValueAsDateUnsafe self
  = liftDOM
      (((self ^. js "valueAsDate") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
getValueAsDateUnchecked ::
                        (MonadDOM m) => HTMLInputElement -> m Date
getValueAsDateUnchecked self
  = liftDOM ((self ^. js "valueAsDate") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsNumber Mozilla HTMLInputElement.valueAsNumber documentation> 
setValueAsNumber ::
                 (MonadDOM m) => HTMLInputElement -> Double -> m ()
setValueAsNumber self val
  = liftDOM (self ^. jss "valueAsNumber" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsNumber Mozilla HTMLInputElement.valueAsNumber documentation> 
getValueAsNumber :: (MonadDOM m) => HTMLInputElement -> m Double
getValueAsNumber self
  = liftDOM ((self ^. js "valueAsNumber") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.width Mozilla HTMLInputElement.width documentation> 
setWidth :: (MonadDOM m) => HTMLInputElement -> Word -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.width Mozilla HTMLInputElement.width documentation> 
getWidth :: (MonadDOM m) => HTMLInputElement -> m Word
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.willValidate Mozilla HTMLInputElement.willValidate documentation> 
getWillValidate :: (MonadDOM m) => HTMLInputElement -> m Bool
getWillValidate self
  = liftDOM ((self ^. js "willValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.validity Mozilla HTMLInputElement.validity documentation> 
getValidity :: (MonadDOM m) => HTMLInputElement -> m ValidityState
getValidity self
  = liftDOM ((self ^. js "validity") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.validationMessage Mozilla HTMLInputElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getValidationMessage self
  = liftDOM ((self ^. js "validationMessage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.labels Mozilla HTMLInputElement.labels documentation> 
getLabels :: (MonadDOM m) => HTMLInputElement -> m NodeList
getLabels self
  = liftDOM ((self ^. js "labels") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionStart Mozilla HTMLInputElement.selectionStart documentation> 
setSelectionStart ::
                  (MonadDOM m) => HTMLInputElement -> Int -> m ()
setSelectionStart self val
  = liftDOM (self ^. jss "selectionStart" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionStart Mozilla HTMLInputElement.selectionStart documentation> 
getSelectionStart :: (MonadDOM m) => HTMLInputElement -> m Int
getSelectionStart self
  = liftDOM
      (round <$> ((self ^. js "selectionStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionEnd Mozilla HTMLInputElement.selectionEnd documentation> 
setSelectionEnd :: (MonadDOM m) => HTMLInputElement -> Int -> m ()
setSelectionEnd self val
  = liftDOM (self ^. jss "selectionEnd" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionEnd Mozilla HTMLInputElement.selectionEnd documentation> 
getSelectionEnd :: (MonadDOM m) => HTMLInputElement -> m Int
getSelectionEnd self
  = liftDOM (round <$> ((self ^. js "selectionEnd") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionDirection Mozilla HTMLInputElement.selectionDirection documentation> 
setSelectionDirection ::
                      (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setSelectionDirection self val
  = liftDOM (self ^. jss "selectionDirection" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionDirection Mozilla HTMLInputElement.selectionDirection documentation> 
getSelectionDirection ::
                      (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getSelectionDirection self
  = liftDOM
      ((self ^. js "selectionDirection") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.align Mozilla HTMLInputElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.align Mozilla HTMLInputElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.useMap Mozilla HTMLInputElement.useMap documentation> 
setUseMap ::
          (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setUseMap self val = liftDOM (self ^. jss "useMap" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.useMap Mozilla HTMLInputElement.useMap documentation> 
getUseMap ::
          (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getUseMap self
  = liftDOM ((self ^. js "useMap") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.incremental Mozilla HTMLInputElement.incremental documentation> 
setIncremental :: (MonadDOM m) => HTMLInputElement -> Bool -> m ()
setIncremental self val
  = liftDOM (self ^. jss "incremental" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.incremental Mozilla HTMLInputElement.incremental documentation> 
getIncremental :: (MonadDOM m) => HTMLInputElement -> m Bool
getIncremental self
  = liftDOM ((self ^. js "incremental") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.capture Mozilla HTMLInputElement.capture documentation> 
setCapture ::
           (MonadDOM m, ToJSString val) => HTMLInputElement -> val -> m ()
setCapture self val = liftDOM (self ^. jss "capture" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.capture Mozilla HTMLInputElement.capture documentation> 
getCapture ::
           (MonadDOM m, FromJSString result) => HTMLInputElement -> m result
getCapture self
  = liftDOM ((self ^. js "capture") >>= fromJSValUnchecked)
