{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.CryptoKeyPair
       (getPublicKey, getPrivateKey, CryptoKeyPair, castToCryptoKeyPair,
        gTypeCryptoKeyPair)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKey ::
             (MonadDOM m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPublicKey self
  = liftDOM ((self ^. js "publicKey") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKey ::
              (MonadDOM m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPrivateKey self
  = liftDOM ((self ^. js "privateKey") >>= fromJSVal)
