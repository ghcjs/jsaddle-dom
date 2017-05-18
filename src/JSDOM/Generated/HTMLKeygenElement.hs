{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLKeygenElement
       (checkValidity, checkValidity_, reportValidity, reportValidity_,
        setCustomValidity, setAutofocus, getAutofocus, setChallenge,
        getChallenge, setDisabled, getDisabled, getForm, setKeytype,
        getKeytype, setName, getName, getType, getWillValidate,
        getValidity, getValidationMessage, getLabels,
        HTMLKeygenElement(..), gTypeHTMLKeygenElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.checkValidity Mozilla HTMLKeygenElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLKeygenElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.checkValidity Mozilla HTMLKeygenElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLKeygenElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.reportValidity Mozilla HTMLKeygenElement.reportValidity documentation> 
reportValidity :: (MonadDOM m) => HTMLKeygenElement -> m Bool
reportValidity self
  = liftDOM ((self ^. jsf "reportValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.reportValidity Mozilla HTMLKeygenElement.reportValidity documentation> 
reportValidity_ :: (MonadDOM m) => HTMLKeygenElement -> m ()
reportValidity_ self
  = liftDOM (void (self ^. jsf "reportValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.setCustomValidity Mozilla HTMLKeygenElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadDOM m, ToJSString error) =>
                    HTMLKeygenElement -> error -> m ()
setCustomValidity self error
  = liftDOM (void (self ^. jsf "setCustomValidity" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
setAutofocus :: (MonadDOM m) => HTMLKeygenElement -> Bool -> m ()
setAutofocus self val
  = liftDOM (self ^. jss "autofocus" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
getAutofocus :: (MonadDOM m) => HTMLKeygenElement -> m Bool
getAutofocus self
  = liftDOM ((self ^. js "autofocus") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
setChallenge ::
             (MonadDOM m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setChallenge self val
  = liftDOM (self ^. jss "challenge" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
getChallenge ::
             (MonadDOM m, FromJSString result) => HTMLKeygenElement -> m result
getChallenge self
  = liftDOM ((self ^. js "challenge") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLKeygenElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLKeygenElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.form Mozilla HTMLKeygenElement.form documentation> 
getForm :: (MonadDOM m) => HTMLKeygenElement -> m HTMLFormElement
getForm self = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
setKeytype ::
           (MonadDOM m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setKeytype self val = liftDOM (self ^. jss "keytype" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
getKeytype ::
           (MonadDOM m, FromJSString result) => HTMLKeygenElement -> m result
getKeytype self
  = liftDOM ((self ^. js "keytype") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLKeygenElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.type Mozilla HTMLKeygenElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLKeygenElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.willValidate Mozilla HTMLKeygenElement.willValidate documentation> 
getWillValidate :: (MonadDOM m) => HTMLKeygenElement -> m Bool
getWillValidate self
  = liftDOM ((self ^. js "willValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validity Mozilla HTMLKeygenElement.validity documentation> 
getValidity :: (MonadDOM m) => HTMLKeygenElement -> m ValidityState
getValidity self
  = liftDOM ((self ^. js "validity") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validationMessage Mozilla HTMLKeygenElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadDOM m, FromJSString result) => HTMLKeygenElement -> m result
getValidationMessage self
  = liftDOM ((self ^. js "validationMessage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.labels Mozilla HTMLKeygenElement.labels documentation> 
getLabels :: (MonadDOM m) => HTMLKeygenElement -> m NodeList
getLabels self
  = liftDOM ((self ^. js "labels") >>= fromJSValUnchecked)
