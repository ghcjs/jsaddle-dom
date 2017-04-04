{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ApplePaySession
       (newApplePaySession, supportsVersion, supportsVersion_,
        canMakePayments, canMakePayments_, canMakePaymentsWithActiveCard,
        canMakePaymentsWithActiveCard_, openPaymentSetup,
        openPaymentSetup_, begin, abort, completeMerchantValidation,
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
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
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
supportsVersion ::
                (MonadDOM m) => ApplePaySession -> Word -> m Bool
supportsVersion self version
  = liftDOM
      ((self ^. jsf "supportsVersion" [toJSVal version]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.supportsVersion Mozilla ApplePaySession.supportsVersion documentation> 
supportsVersion_ :: (MonadDOM m) => ApplePaySession -> Word -> m ()
supportsVersion_ self version
  = liftDOM (void (self ^. jsf "supportsVersion" [toJSVal version]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments :: (MonadDOM m) => ApplePaySession -> m Bool
canMakePayments self
  = liftDOM ((self ^. jsf "canMakePayments" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments_ :: (MonadDOM m) => ApplePaySession -> m ()
canMakePayments_ self
  = liftDOM (void (self ^. jsf "canMakePayments" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard ::
                              (MonadDOM m, ToJSString merchantIdentifier) =>
                                ApplePaySession -> merchantIdentifier -> m Bool
canMakePaymentsWithActiveCard self merchantIdentifier
  = liftDOM
      (((self ^. jsf "canMakePaymentsWithActiveCard"
           [toJSVal merchantIdentifier])
          >>= readPromise)
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard_ ::
                               (MonadDOM m, ToJSString merchantIdentifier) =>
                                 ApplePaySession -> merchantIdentifier -> m ()
canMakePaymentsWithActiveCard_ self merchantIdentifier
  = liftDOM
      (void
         (self ^. jsf "canMakePaymentsWithActiveCard"
            [toJSVal merchantIdentifier]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup ::
                 (MonadDOM m, ToJSString merchantIdentifier) =>
                   ApplePaySession -> merchantIdentifier -> m Bool
openPaymentSetup self merchantIdentifier
  = liftDOM
      (((self ^. jsf "openPaymentSetup" [toJSVal merchantIdentifier]) >>=
          readPromise)
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup_ ::
                  (MonadDOM m, ToJSString merchantIdentifier) =>
                    ApplePaySession -> merchantIdentifier -> m ()
openPaymentSetup_ self merchantIdentifier
  = liftDOM
      (void
         (self ^. jsf "openPaymentSetup" [toJSVal merchantIdentifier]))

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
