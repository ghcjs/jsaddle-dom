{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CryptoKeyPair
       (getPublicKey, getPublicKeyUnsafe, getPublicKeyUnchecked,
        getPrivateKey, getPrivateKeyUnsafe, getPrivateKeyUnchecked,
        CryptoKeyPair(..), gTypeCryptoKeyPair)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKey ::
             (MonadDOM m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPublicKey self
  = liftDOM ((self ^. js "publicKey") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKeyUnsafe ::
                   (MonadDOM m, HasCallStack) => CryptoKeyPair -> m CryptoKey
getPublicKeyUnsafe self
  = liftDOM
      (((self ^. js "publicKey") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKeyUnchecked ::
                      (MonadDOM m) => CryptoKeyPair -> m CryptoKey
getPublicKeyUnchecked self
  = liftDOM ((self ^. js "publicKey") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKey ::
              (MonadDOM m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPrivateKey self
  = liftDOM ((self ^. js "privateKey") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKeyUnsafe ::
                    (MonadDOM m, HasCallStack) => CryptoKeyPair -> m CryptoKey
getPrivateKeyUnsafe self
  = liftDOM
      (((self ^. js "privateKey") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKeyUnchecked ::
                       (MonadDOM m) => CryptoKeyPair -> m CryptoKey
getPrivateKeyUnchecked self
  = liftDOM ((self ^. js "privateKey") >>= fromJSValUnchecked)
