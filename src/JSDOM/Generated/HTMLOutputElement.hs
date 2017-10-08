{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLOutputElement
       (checkValidity, checkValidity_, reportValidity, reportValidity_,
        setCustomValidity, getHtmlFor, getForm, setName, getName, getType,
        setDefaultValue, getDefaultValue, setValue, getValue,
        getWillValidate, getValidity, getValidationMessage, getLabels,
        HTMLOutputElement(..), gTypeHTMLOutputElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.checkValidity Mozilla HTMLOutputElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLOutputElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.checkValidity Mozilla HTMLOutputElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLOutputElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.reportValidity Mozilla HTMLOutputElement.reportValidity documentation> 
reportValidity :: (MonadDOM m) => HTMLOutputElement -> m Bool
reportValidity self
  = liftDOM ((self ^. jsf "reportValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.reportValidity Mozilla HTMLOutputElement.reportValidity documentation> 
reportValidity_ :: (MonadDOM m) => HTMLOutputElement -> m ()
reportValidity_ self
  = liftDOM (void (self ^. jsf "reportValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.setCustomValidity Mozilla HTMLOutputElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadDOM m, ToJSString error) =>
                    HTMLOutputElement -> error -> m ()
setCustomValidity self error
  = liftDOM (void (self ^. jsf "setCustomValidity" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.htmlFor Mozilla HTMLOutputElement.htmlFor documentation> 
getHtmlFor :: (MonadDOM m) => HTMLOutputElement -> m DOMTokenList
getHtmlFor self
  = liftDOM ((self ^. js "htmlFor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.form Mozilla HTMLOutputElement.form documentation> 
getForm :: (MonadDOM m) => HTMLOutputElement -> m HTMLFormElement
getForm self = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLOutputElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLOutputElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.type Mozilla HTMLOutputElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLOutputElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
setDefaultValue ::
                (MonadDOM m, ToJSString val) => HTMLOutputElement -> val -> m ()
setDefaultValue self val
  = liftDOM (self ^. jss "defaultValue" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
getDefaultValue ::
                (MonadDOM m, FromJSString result) => HTMLOutputElement -> m result
getDefaultValue self
  = liftDOM ((self ^. js "defaultValue") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => HTMLOutputElement -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => HTMLOutputElement -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.willValidate Mozilla HTMLOutputElement.willValidate documentation> 
getWillValidate :: (MonadDOM m) => HTMLOutputElement -> m Bool
getWillValidate self
  = liftDOM ((self ^. js "willValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validity Mozilla HTMLOutputElement.validity documentation> 
getValidity :: (MonadDOM m) => HTMLOutputElement -> m ValidityState
getValidity self
  = liftDOM ((self ^. js "validity") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validationMessage Mozilla HTMLOutputElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadDOM m, FromJSString result) => HTMLOutputElement -> m result
getValidationMessage self
  = liftDOM ((self ^. js "validationMessage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.labels Mozilla HTMLOutputElement.labels documentation> 
getLabels :: (MonadDOM m) => HTMLOutputElement -> m NodeList
getLabels self
  = liftDOM ((self ^. js "labels") >>= fromJSValUnchecked)
