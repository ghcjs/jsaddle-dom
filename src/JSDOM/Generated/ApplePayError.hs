{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ApplePayError
       (newApplePayError, setCode, getCode, setContactField,
        getContactField, getContactFieldUnsafe, getContactFieldUnchecked,
        setMessage, getMessage, ApplePayError(..), gTypeApplePayError)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError Mozilla ApplePayError documentation> 
newApplePayError ::
                 (MonadDOM m, ToJSString message) =>
                   ApplePayErrorCode ->
                     Maybe ApplePayErrorContactField -> Maybe message -> m ApplePayError
newApplePayError errorCode contactField message
  = liftDOM
      (ApplePayError <$>
         new (jsg "ApplePayError")
           [toJSVal errorCode, toJSVal contactField, toJSVal message])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.code Mozilla ApplePayError.code documentation> 
setCode ::
        (MonadDOM m) => ApplePayError -> ApplePayErrorCode -> m ()
setCode self val = liftDOM (self ^. jss "code" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.code Mozilla ApplePayError.code documentation> 
getCode :: (MonadDOM m) => ApplePayError -> m ApplePayErrorCode
getCode self = liftDOM ((self ^. js "code") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
setContactField ::
                (MonadDOM m) =>
                  ApplePayError -> Maybe ApplePayErrorContactField -> m ()
setContactField self val
  = liftDOM (self ^. jss "contactField" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
getContactField ::
                (MonadDOM m) =>
                  ApplePayError -> m (Maybe ApplePayErrorContactField)
getContactField self
  = liftDOM ((self ^. js "contactField") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
getContactFieldUnsafe ::
                      (MonadDOM m, HasCallStack) =>
                        ApplePayError -> m ApplePayErrorContactField
getContactFieldUnsafe self
  = liftDOM
      (((self ^. js "contactField") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
getContactFieldUnchecked ::
                         (MonadDOM m) => ApplePayError -> m ApplePayErrorContactField
getContactFieldUnchecked self
  = liftDOM ((self ^. js "contactField") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.message Mozilla ApplePayError.message documentation> 
setMessage ::
           (MonadDOM m, ToJSString val) => ApplePayError -> val -> m ()
setMessage self val = liftDOM (self ^. jss "message" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.message Mozilla ApplePayError.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) => ApplePayError -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)
