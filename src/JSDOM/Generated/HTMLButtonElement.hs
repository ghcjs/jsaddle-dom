{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLButtonElement
       (checkValidity, checkValidity_, setCustomValidity, setAutofocus,
        getAutofocus, setDisabled, getDisabled, getForm, getFormUnsafe,
        getFormUnchecked, setFormAction, getFormAction, setFormEnctype,
        getFormEnctype, getFormEnctypeUnsafe, getFormEnctypeUnchecked,
        setFormMethod, getFormMethod, getFormMethodUnsafe,
        getFormMethodUnchecked, setFormNoValidate, getFormNoValidate,
        setFormTarget, getFormTarget, setName, getName, setType, getType,
        getTypeUnsafe, getTypeUnchecked, setValue, getValue,
        getWillValidate, getValidity, getValidityUnsafe,
        getValidityUnchecked, getValidationMessage, getLabels,
        getLabelsUnsafe, getLabelsUnchecked, HTMLButtonElement(..),
        gTypeHTMLButtonElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.checkValidity Mozilla HTMLButtonElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLButtonElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.checkValidity Mozilla HTMLButtonElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLButtonElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.setCustomValidity Mozilla HTMLButtonElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadDOM m, ToJSString error) =>
                    HTMLButtonElement -> Maybe error -> m ()
setCustomValidity self error
  = liftDOM (void (self ^. jsf "setCustomValidity" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
setAutofocus :: (MonadDOM m) => HTMLButtonElement -> Bool -> m ()
setAutofocus self val
  = liftDOM (self ^. jss "autofocus" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
getAutofocus :: (MonadDOM m) => HTMLButtonElement -> m Bool
getAutofocus self
  = liftDOM ((self ^. js "autofocus") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLButtonElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLButtonElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.form Mozilla HTMLButtonElement.form documentation> 
getForm ::
        (MonadDOM m) => HTMLButtonElement -> m (Maybe HTMLFormElement)
getForm self = liftDOM ((self ^. js "form") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.form Mozilla HTMLButtonElement.form documentation> 
getFormUnsafe ::
              (MonadDOM m, HasCallStack) =>
                HTMLButtonElement -> m HTMLFormElement
getFormUnsafe self
  = liftDOM
      (((self ^. js "form") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.form Mozilla HTMLButtonElement.form documentation> 
getFormUnchecked ::
                 (MonadDOM m) => HTMLButtonElement -> m HTMLFormElement
getFormUnchecked self
  = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
setFormAction ::
              (MonadDOM m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormAction self val
  = liftDOM (self ^. jss "formAction" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
getFormAction ::
              (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getFormAction self
  = liftDOM ((self ^. js "formAction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
setFormEnctype ::
               (MonadDOM m, ToJSString val) =>
                 HTMLButtonElement -> Maybe val -> m ()
setFormEnctype self val
  = liftDOM (self ^. jss "formEnctype" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
getFormEnctype ::
               (MonadDOM m, FromJSString result) =>
                 HTMLButtonElement -> m (Maybe result)
getFormEnctype self
  = liftDOM ((self ^. js "formEnctype") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
getFormEnctypeUnsafe ::
                     (MonadDOM m, HasCallStack, FromJSString result) =>
                       HTMLButtonElement -> m result
getFormEnctypeUnsafe self
  = liftDOM
      (((self ^. js "formEnctype") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
getFormEnctypeUnchecked ::
                        (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getFormEnctypeUnchecked self
  = liftDOM ((self ^. js "formEnctype") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
setFormMethod ::
              (MonadDOM m, ToJSString val) =>
                HTMLButtonElement -> Maybe val -> m ()
setFormMethod self val
  = liftDOM (self ^. jss "formMethod" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
getFormMethod ::
              (MonadDOM m, FromJSString result) =>
                HTMLButtonElement -> m (Maybe result)
getFormMethod self
  = liftDOM ((self ^. js "formMethod") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
getFormMethodUnsafe ::
                    (MonadDOM m, HasCallStack, FromJSString result) =>
                      HTMLButtonElement -> m result
getFormMethodUnsafe self
  = liftDOM
      (((self ^. js "formMethod") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
getFormMethodUnchecked ::
                       (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getFormMethodUnchecked self
  = liftDOM ((self ^. js "formMethod") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
setFormNoValidate ::
                  (MonadDOM m) => HTMLButtonElement -> Bool -> m ()
setFormNoValidate self val
  = liftDOM (self ^. jss "formNoValidate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
getFormNoValidate :: (MonadDOM m) => HTMLButtonElement -> m Bool
getFormNoValidate self
  = liftDOM ((self ^. js "formNoValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
setFormTarget ::
              (MonadDOM m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormTarget self val
  = liftDOM (self ^. jss "formTarget" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
getFormTarget ::
              (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getFormTarget self
  = liftDOM ((self ^. js "formTarget") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLButtonElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.type Mozilla HTMLButtonElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) =>
          HTMLButtonElement -> Maybe val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.type Mozilla HTMLButtonElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) =>
          HTMLButtonElement -> m (Maybe result)
getType self = liftDOM ((self ^. js "type") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.type Mozilla HTMLButtonElement.type documentation> 
getTypeUnsafe ::
              (MonadDOM m, HasCallStack, FromJSString result) =>
                HTMLButtonElement -> m result
getTypeUnsafe self
  = liftDOM
      (((self ^. js "type") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.type Mozilla HTMLButtonElement.type documentation> 
getTypeUnchecked ::
                 (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getTypeUnchecked self
  = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => HTMLButtonElement -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.willValidate Mozilla HTMLButtonElement.willValidate documentation> 
getWillValidate :: (MonadDOM m) => HTMLButtonElement -> m Bool
getWillValidate self
  = liftDOM ((self ^. js "willValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validity Mozilla HTMLButtonElement.validity documentation> 
getValidity ::
            (MonadDOM m) => HTMLButtonElement -> m (Maybe ValidityState)
getValidity self = liftDOM ((self ^. js "validity") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validity Mozilla HTMLButtonElement.validity documentation> 
getValidityUnsafe ::
                  (MonadDOM m, HasCallStack) => HTMLButtonElement -> m ValidityState
getValidityUnsafe self
  = liftDOM
      (((self ^. js "validity") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validity Mozilla HTMLButtonElement.validity documentation> 
getValidityUnchecked ::
                     (MonadDOM m) => HTMLButtonElement -> m ValidityState
getValidityUnchecked self
  = liftDOM ((self ^. js "validity") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validationMessage Mozilla HTMLButtonElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadDOM m, FromJSString result) => HTMLButtonElement -> m result
getValidationMessage self
  = liftDOM ((self ^. js "validationMessage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.labels Mozilla HTMLButtonElement.labels documentation> 
getLabels ::
          (MonadDOM m) => HTMLButtonElement -> m (Maybe NodeList)
getLabels self = liftDOM ((self ^. js "labels") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.labels Mozilla HTMLButtonElement.labels documentation> 
getLabelsUnsafe ::
                (MonadDOM m, HasCallStack) => HTMLButtonElement -> m NodeList
getLabelsUnsafe self
  = liftDOM
      (((self ^. js "labels") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.labels Mozilla HTMLButtonElement.labels documentation> 
getLabelsUnchecked ::
                   (MonadDOM m) => HTMLButtonElement -> m NodeList
getLabelsUnchecked self
  = liftDOM ((self ^. js "labels") >>= fromJSValUnchecked)
