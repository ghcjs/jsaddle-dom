{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLFieldSetElement
       (checkValidity, checkValidity_, reportValidity, reportValidity_,
        setCustomValidity, setDisabled, getDisabled, getForm, setName,
        getName, getType, getElements, getWillValidate, getValidity,
        getValidationMessage, HTMLFieldSetElement(..),
        gTypeHTMLFieldSetElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.checkValidity Mozilla HTMLFieldSetElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLFieldSetElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.checkValidity Mozilla HTMLFieldSetElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLFieldSetElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.reportValidity Mozilla HTMLFieldSetElement.reportValidity documentation> 
reportValidity :: (MonadDOM m) => HTMLFieldSetElement -> m Bool
reportValidity self
  = liftDOM ((self ^. jsf "reportValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.reportValidity Mozilla HTMLFieldSetElement.reportValidity documentation> 
reportValidity_ :: (MonadDOM m) => HTMLFieldSetElement -> m ()
reportValidity_ self
  = liftDOM (void (self ^. jsf "reportValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.setCustomValidity Mozilla HTMLFieldSetElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadDOM m, ToJSString error) =>
                    HTMLFieldSetElement -> error -> m ()
setCustomValidity self error
  = liftDOM (void (self ^. jsf "setCustomValidity" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.disabled Mozilla HTMLFieldSetElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLFieldSetElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.disabled Mozilla HTMLFieldSetElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLFieldSetElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.form Mozilla HTMLFieldSetElement.form documentation> 
getForm :: (MonadDOM m) => HTMLFieldSetElement -> m HTMLFormElement
getForm self = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.name Mozilla HTMLFieldSetElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLFieldSetElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.name Mozilla HTMLFieldSetElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) =>
          HTMLFieldSetElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.type Mozilla HTMLFieldSetElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) =>
          HTMLFieldSetElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.elements Mozilla HTMLFieldSetElement.elements documentation> 
getElements ::
            (MonadDOM m) => HTMLFieldSetElement -> m HTMLFormControlsCollection
getElements self
  = liftDOM ((self ^. js "elements") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.willValidate Mozilla HTMLFieldSetElement.willValidate documentation> 
getWillValidate :: (MonadDOM m) => HTMLFieldSetElement -> m Bool
getWillValidate self
  = liftDOM ((self ^. js "willValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.validity Mozilla HTMLFieldSetElement.validity documentation> 
getValidity ::
            (MonadDOM m) => HTMLFieldSetElement -> m ValidityState
getValidity self
  = liftDOM ((self ^. js "validity") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.validationMessage Mozilla HTMLFieldSetElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadDOM m, FromJSString result) =>
                       HTMLFieldSetElement -> m result
getValidationMessage self
  = liftDOM ((self ^. js "validationMessage") >>= fromJSValUnchecked)
