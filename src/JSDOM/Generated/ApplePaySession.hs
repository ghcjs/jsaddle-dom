{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ApplePaySession
       (newApplePaySession, supportsVersion, supportsVersion_,
        canMakePayments, canMakePayments_, canMakePaymentsWithActiveCard,
        canMakePaymentsWithActiveCard_, openPaymentSetup,
        openPaymentSetup_, begin, abort, completeMerchantValidation,
        completeShippingMethodSelectionUpdate,
        completeShippingContactSelectionUpdate,
        completePaymentMethodSelectionUpdate, completePaymentResult,
        completeShippingMethodSelection, completeShippingContactSelection,
        completePaymentMethodSelection, completePayment,
        pattern STATUS_SUCCESS, pattern STATUS_FAILURE,
        pattern STATUS_INVALID_BILLING_POSTAL_ADDRESS,
        pattern STATUS_INVALID_SHIPPING_POSTAL_ADDRESS,
        pattern STATUS_INVALID_SHIPPING_CONTACT,
        pattern STATUS_PIN_REQUIRED, pattern STATUS_PIN_INCORRECT,
        pattern STATUS_PIN_LOCKOUT, validatemerchant,
        paymentmethodselected, paymentauthorized, shippingmethodselected,
        shippingcontactselected, cancel, ApplePaySession(..),
        gTypeApplePaySession)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession Mozilla ApplePaySession documentation> 
newApplePaySession ::
                   (MonadDOM m) => Word -> ApplePayPaymentRequest -> m ApplePaySession
newApplePaySession version paymentRequest
  = liftDOM
      (ApplePaySession <$>
         new (jsg "ApplePaySession")
           [toJSVal version, toJSVal paymentRequest])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.supportsVersion Mozilla ApplePaySession.supportsVersion documentation> 
supportsVersion :: (MonadDOM m) => Word -> m Bool
supportsVersion version
  = liftDOM
      (((jsg "ApplePaySession") ^. jsf "supportsVersion"
          [toJSVal version])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.supportsVersion Mozilla ApplePaySession.supportsVersion documentation> 
supportsVersion_ :: (MonadDOM m) => Word -> m ()
supportsVersion_ version
  = liftDOM
      (void
         ((jsg "ApplePaySession") ^. jsf "supportsVersion"
            [toJSVal version]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments :: (MonadDOM m) => m Bool
canMakePayments
  = liftDOM
      (((jsg "ApplePaySession") ^. jsf "canMakePayments" ()) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments_ :: (MonadDOM m) => m ()
canMakePayments_
  = liftDOM
      (void ((jsg "ApplePaySession") ^. jsf "canMakePayments" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard ::
                              (MonadDOM m, ToJSString merchantIdentifier) =>
                                merchantIdentifier -> m Bool
canMakePaymentsWithActiveCard merchantIdentifier
  = liftDOM
      ((((jsg "ApplePaySession") ^. jsf "canMakePaymentsWithActiveCard"
           [toJSVal merchantIdentifier])
          >>= readPromise)
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard_ ::
                               (MonadDOM m, ToJSString merchantIdentifier) =>
                                 merchantIdentifier -> m ()
canMakePaymentsWithActiveCard_ merchantIdentifier
  = liftDOM
      (void
         ((jsg "ApplePaySession") ^. jsf "canMakePaymentsWithActiveCard"
            [toJSVal merchantIdentifier]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup ::
                 (MonadDOM m, ToJSString merchantIdentifier) =>
                   merchantIdentifier -> m Bool
openPaymentSetup merchantIdentifier
  = liftDOM
      ((((jsg "ApplePaySession") ^. jsf "openPaymentSetup"
           [toJSVal merchantIdentifier])
          >>= readPromise)
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup_ ::
                  (MonadDOM m, ToJSString merchantIdentifier) =>
                    merchantIdentifier -> m ()
openPaymentSetup_ merchantIdentifier
  = liftDOM
      (void
         ((jsg "ApplePaySession") ^. jsf "openPaymentSetup"
            [toJSVal merchantIdentifier]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.begin Mozilla ApplePaySession.begin documentation> 
begin :: (MonadDOM m) => ApplePaySession -> m ()
begin self = liftDOM (void (self ^. jsf "begin" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.abort Mozilla ApplePaySession.abort documentation> 
abort :: (MonadDOM m) => ApplePaySession -> m ()
abort self = liftDOM (void (self ^. jsf "abort" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeMerchantValidation Mozilla ApplePaySession.completeMerchantValidation documentation> 
completeMerchantValidation ::
                           (MonadDOM m, ToJSVal merchantSession) =>
                             ApplePaySession -> merchantSession -> m ()
completeMerchantValidation self merchantSession
  = liftDOM
      (void
         (self ^. jsf "completeMerchantValidation"
            [toJSVal merchantSession]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingMethodSelection Mozilla ApplePaySession.completeShippingMethodSelection documentation> 
completeShippingMethodSelectionUpdate ::
                                      (MonadDOM m) =>
                                        ApplePaySession -> ApplePayShippingMethodUpdate -> m ()
completeShippingMethodSelectionUpdate self update
  = liftDOM
      (void
         (self ^. jsf "completeShippingMethodSelection" [toJSVal update]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingContactSelection Mozilla ApplePaySession.completeShippingContactSelection documentation> 
completeShippingContactSelectionUpdate ::
                                       (MonadDOM m) =>
                                         ApplePaySession -> ApplePayShippingContactUpdate -> m ()
completeShippingContactSelectionUpdate self update
  = liftDOM
      (void
         (self ^. jsf "completeShippingContactSelection" [toJSVal update]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePaymentMethodSelection Mozilla ApplePaySession.completePaymentMethodSelection documentation> 
completePaymentMethodSelectionUpdate ::
                                     (MonadDOM m) =>
                                       ApplePaySession -> ApplePayPaymentMethodUpdate -> m ()
completePaymentMethodSelectionUpdate self update
  = liftDOM
      (void
         (self ^. jsf "completePaymentMethodSelection" [toJSVal update]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePayment Mozilla ApplePaySession.completePayment documentation> 
completePaymentResult ::
                      (MonadDOM m) =>
                        ApplePaySession -> ApplePayPaymentAuthorizationResult -> m ()
completePaymentResult self result
  = liftDOM (void (self ^. jsf "completePayment" [toJSVal result]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingMethodSelection Mozilla ApplePaySession.completeShippingMethodSelection documentation> 
completeShippingMethodSelection ::
                                (MonadDOM m) =>
                                  ApplePaySession ->
                                    Word -> ApplePayLineItem -> [ApplePayLineItem] -> m ()
completeShippingMethodSelection self status newTotal newLineItems
  = liftDOM
      (void
         (self ^. jsf "completeShippingMethodSelection"
            [toJSVal status, toJSVal newTotal, toJSVal (array newLineItems)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingContactSelection Mozilla ApplePaySession.completeShippingContactSelection documentation> 
completeShippingContactSelection ::
                                 (MonadDOM m) =>
                                   ApplePaySession ->
                                     Word ->
                                       [ApplePayShippingMethod] ->
                                         ApplePayLineItem -> [ApplePayLineItem] -> m ()
completeShippingContactSelection self status newShippingMethods
  newTotal newLineItems
  = liftDOM
      (void
         (self ^. jsf "completeShippingContactSelection"
            [toJSVal status, toJSVal (array newShippingMethods),
             toJSVal newTotal, toJSVal (array newLineItems)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePaymentMethodSelection Mozilla ApplePaySession.completePaymentMethodSelection documentation> 
completePaymentMethodSelection ::
                               (MonadDOM m) =>
                                 ApplePaySession -> ApplePayLineItem -> [ApplePayLineItem] -> m ()
completePaymentMethodSelection self newTotal newLineItems
  = liftDOM
      (void
         (self ^. jsf "completePaymentMethodSelection"
            [toJSVal newTotal, toJSVal (array newLineItems)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePayment Mozilla ApplePaySession.completePayment documentation> 
completePayment :: (MonadDOM m) => ApplePaySession -> Word -> m ()
completePayment self status
  = liftDOM (void (self ^. jsf "completePayment" [toJSVal status]))
pattern STATUS_SUCCESS = 0
pattern STATUS_FAILURE = 1
pattern STATUS_INVALID_BILLING_POSTAL_ADDRESS = 2
pattern STATUS_INVALID_SHIPPING_POSTAL_ADDRESS = 3
pattern STATUS_INVALID_SHIPPING_CONTACT = 4
pattern STATUS_PIN_REQUIRED = 5
pattern STATUS_PIN_INCORRECT = 6
pattern STATUS_PIN_LOCKOUT = 7

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onvalidatemerchant Mozilla ApplePaySession.onvalidatemerchant documentation> 
validatemerchant :: EventName ApplePaySession onvalidatemerchant
validatemerchant = unsafeEventName (toJSString "validatemerchant")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onpaymentmethodselected Mozilla ApplePaySession.onpaymentmethodselected documentation> 
paymentmethodselected ::
                        EventName ApplePaySession onpaymentmethodselected
paymentmethodselected
  = unsafeEventName (toJSString "paymentmethodselected")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onpaymentauthorized Mozilla ApplePaySession.onpaymentauthorized documentation> 
paymentauthorized :: EventName ApplePaySession onpaymentauthorized
paymentauthorized
  = unsafeEventName (toJSString "paymentauthorized")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onshippingmethodselected Mozilla ApplePaySession.onshippingmethodselected documentation> 
shippingmethodselected ::
                         EventName ApplePaySession onshippingmethodselected
shippingmethodselected
  = unsafeEventName (toJSString "shippingmethodselected")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onshippingcontactselected Mozilla ApplePaySession.onshippingcontactselected documentation> 
shippingcontactselected ::
                          EventName ApplePaySession onshippingcontactselected
shippingcontactselected
  = unsafeEventName (toJSString "shippingcontactselected")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.oncancel Mozilla ApplePaySession.oncancel documentation> 
cancel :: EventName ApplePaySession oncancel
cancel = unsafeEventName (toJSString "cancel")
