{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PasswordCredential
       (newPasswordCredential, newPasswordCredential', setIdName,
        getIdName, setPasswordName, getPasswordName, setAdditionalData,
        getAdditionalData, getAdditionalDataUnsafe,
        getAdditionalDataUnchecked, PasswordCredential(..),
        gTypePasswordCredential)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential Mozilla PasswordCredential documentation> 
newPasswordCredential ::
                      (MonadDOM m) => PasswordCredentialData -> m PasswordCredential
newPasswordCredential data'
  = liftDOM
      (PasswordCredential <$>
         new (jsg "PasswordCredential") [toJSVal data'])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential Mozilla PasswordCredential documentation> 
newPasswordCredential' ::
                       (MonadDOM m) => HTMLFormElement -> m PasswordCredential
newPasswordCredential' form
  = liftDOM
      (PasswordCredential <$>
         new (jsg "PasswordCredential") [toJSVal form])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.idName Mozilla PasswordCredential.idName documentation> 
setIdName ::
          (MonadDOM m, ToJSString val) => PasswordCredential -> val -> m ()
setIdName self val = liftDOM (self ^. jss "idName" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.idName Mozilla PasswordCredential.idName documentation> 
getIdName ::
          (MonadDOM m, FromJSString result) => PasswordCredential -> m result
getIdName self
  = liftDOM ((self ^. js "idName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.passwordName Mozilla PasswordCredential.passwordName documentation> 
setPasswordName ::
                (MonadDOM m, ToJSString val) => PasswordCredential -> val -> m ()
setPasswordName self val
  = liftDOM (self ^. jss "passwordName" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.passwordName Mozilla PasswordCredential.passwordName documentation> 
getPasswordName ::
                (MonadDOM m, FromJSString result) => PasswordCredential -> m result
getPasswordName self
  = liftDOM ((self ^. js "passwordName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
setAdditionalData ::
                  (MonadDOM m, IsCredentialBodyType val) =>
                    PasswordCredential -> Maybe val -> m ()
setAdditionalData self val
  = liftDOM (self ^. jss "additionalData" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
getAdditionalData ::
                  (MonadDOM m) => PasswordCredential -> m (Maybe CredentialBodyType)
getAdditionalData self
  = liftDOM ((self ^. js "additionalData") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
getAdditionalDataUnsafe ::
                        (MonadDOM m, HasCallStack) =>
                          PasswordCredential -> m CredentialBodyType
getAdditionalDataUnsafe self
  = liftDOM
      (((self ^. js "additionalData") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
getAdditionalDataUnchecked ::
                           (MonadDOM m) => PasswordCredential -> m CredentialBodyType
getAdditionalDataUnchecked self
  = liftDOM ((self ^. js "additionalData") >>= fromJSValUnchecked)
