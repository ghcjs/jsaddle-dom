{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SubtleCrypto
       (encrypt, encrypt_, decrypt, decrypt_, sign, sign_, verify,
        verify_, digest, digest_, deriveKey, deriveKey_, deriveBits,
        deriveBits_, generateKey, generateKey_, importKey, importKey_,
        exportKey, exportKey_, wrapKey, wrapKey_, unwrapKey, unwrapKey_,
        SubtleCrypto(..), gTypeSubtleCrypto)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt ::
        (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
          SubtleCrypto -> algorithm -> CryptoKey -> data' -> m JSVal
encrypt self algorithm key data'
  = liftDOM
      (((self ^. jsf "encrypt"
           [toJSVal algorithm, toJSVal key, toJSVal data'])
          >>= readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt_ ::
         (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
           SubtleCrypto -> algorithm -> CryptoKey -> data' -> m ()
encrypt_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "encrypt"
            [toJSVal algorithm, toJSVal key, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt ::
        (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
          SubtleCrypto -> algorithm -> CryptoKey -> data' -> m JSVal
decrypt self algorithm key data'
  = liftDOM
      (((self ^. jsf "decrypt"
           [toJSVal algorithm, toJSVal key, toJSVal data'])
          >>= readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt_ ::
         (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
           SubtleCrypto -> algorithm -> CryptoKey -> data' -> m ()
decrypt_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "decrypt"
            [toJSVal algorithm, toJSVal key, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign ::
     (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
       SubtleCrypto -> algorithm -> CryptoKey -> data' -> m JSVal
sign self algorithm key data'
  = liftDOM
      (((self ^. jsf "sign"
           [toJSVal algorithm, toJSVal key, toJSVal data'])
          >>= readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign_ ::
      (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
        SubtleCrypto -> algorithm -> CryptoKey -> data' -> m ()
sign_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "sign"
            [toJSVal algorithm, toJSVal key, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify ::
       (MonadDOM m, ToJSString algorithm, IsBufferSource signature,
        IsBufferSource data') =>
         SubtleCrypto ->
           algorithm -> CryptoKey -> signature -> data' -> m JSVal
verify self algorithm key signature data'
  = liftDOM
      (((self ^. jsf "verify"
           [toJSVal algorithm, toJSVal key, toJSVal signature, toJSVal data'])
          >>= readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify_ ::
        (MonadDOM m, ToJSString algorithm, IsBufferSource signature,
         IsBufferSource data') =>
          SubtleCrypto ->
            algorithm -> CryptoKey -> signature -> data' -> m ()
verify_ self algorithm key signature data'
  = liftDOM
      (void
         (self ^. jsf "verify"
            [toJSVal algorithm, toJSVal key, toJSVal signature,
             toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
         SubtleCrypto -> algorithm -> data' -> m JSVal
digest self algorithm data'
  = liftDOM
      (((self ^. jsf "digest" [toJSVal algorithm, toJSVal data']) >>=
          readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest_ ::
        (MonadDOM m, ToJSString algorithm, IsBufferSource data') =>
          SubtleCrypto -> algorithm -> data' -> m ()
digest_ self algorithm data'
  = liftDOM
      (void (self ^. jsf "digest" [toJSVal algorithm, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveKey Mozilla WebKitSubtleCrypto.deriveKey documentation> 
deriveKey ::
          (MonadDOM m, ToJSString algorithm, ToJSString derivedKeyType) =>
            SubtleCrypto ->
              algorithm ->
                CryptoKey -> derivedKeyType -> Bool -> [CryptoKeyUsage] -> m JSVal
deriveKey self algorithm baseKey derivedKeyType extractable
  keyUsages
  = liftDOM
      (((self ^. jsf "deriveKey"
           [toJSVal algorithm, toJSVal baseKey, toJSVal derivedKeyType,
            toJSVal extractable, toJSVal (array keyUsages)])
          >>= readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveKey Mozilla WebKitSubtleCrypto.deriveKey documentation> 
deriveKey_ ::
           (MonadDOM m, ToJSString algorithm, ToJSString derivedKeyType) =>
             SubtleCrypto ->
               algorithm ->
                 CryptoKey -> derivedKeyType -> Bool -> [CryptoKeyUsage] -> m ()
deriveKey_ self algorithm baseKey derivedKeyType extractable
  keyUsages
  = liftDOM
      (void
         (self ^. jsf "deriveKey"
            [toJSVal algorithm, toJSVal baseKey, toJSVal derivedKeyType,
             toJSVal extractable, toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveBits Mozilla WebKitSubtleCrypto.deriveBits documentation> 
deriveBits ::
           (MonadDOM m, ToJSString algorithm) =>
             SubtleCrypto -> algorithm -> CryptoKey -> Word -> m ArrayBuffer
deriveBits self algorithm baseKey length
  = liftDOM
      (((self ^. jsf "deriveBits"
           [toJSVal algorithm, toJSVal baseKey, toJSVal length])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveBits Mozilla WebKitSubtleCrypto.deriveBits documentation> 
deriveBits_ ::
            (MonadDOM m, ToJSString algorithm) =>
              SubtleCrypto -> algorithm -> CryptoKey -> Word -> m ()
deriveBits_ self algorithm baseKey length
  = liftDOM
      (void
         (self ^. jsf "deriveBits"
            [toJSVal algorithm, toJSVal baseKey, toJSVal length]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey ::
            (MonadDOM m, ToJSString algorithm) =>
              SubtleCrypto -> algorithm -> Bool -> [CryptoKeyUsage] -> m JSVal
generateKey self algorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "generateKey"
           [toJSVal algorithm, toJSVal extractable,
            toJSVal (array keyUsages)])
          >>= readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey_ ::
             (MonadDOM m, ToJSString algorithm) =>
               SubtleCrypto -> algorithm -> Bool -> [CryptoKeyUsage] -> m ()
generateKey_ self algorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "generateKey"
            [toJSVal algorithm, toJSVal extractable,
             toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey ::
          (MonadDOM m, ToJSString format, IsKeyData keyData,
           ToJSString algorithm) =>
            SubtleCrypto ->
              format ->
                keyData -> algorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKey
importKey self format keyData algorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "importKey"
           [toJSVal format, toJSVal keyData, toJSVal algorithm,
            toJSVal extractable, toJSVal (array keyUsages)])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey_ ::
           (MonadDOM m, ToJSString format, IsKeyData keyData,
            ToJSString algorithm) =>
             SubtleCrypto ->
               format -> keyData -> algorithm -> Bool -> [CryptoKeyUsage] -> m ()
importKey_ self format keyData algorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "importKey"
            [toJSVal format, toJSVal keyData, toJSVal algorithm,
             toJSVal extractable, toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadDOM m, ToJSString format) =>
            SubtleCrypto -> format -> CryptoKey -> m JSVal
exportKey self format key
  = liftDOM
      (((self ^. jsf "exportKey" [toJSVal format, toJSVal key]) >>=
          readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey_ ::
           (MonadDOM m, ToJSString format) =>
             SubtleCrypto -> format -> CryptoKey -> m ()
exportKey_ self format key
  = liftDOM
      (void (self ^. jsf "exportKey" [toJSVal format, toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey ::
        (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm) =>
          SubtleCrypto ->
            format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m JSVal
wrapKey self format key wrappingKey wrapAlgorithm
  = liftDOM
      (((self ^. jsf "wrapKey"
           [toJSVal format, toJSVal key, toJSVal wrappingKey,
            toJSVal wrapAlgorithm])
          >>= readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey_ ::
         (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm) =>
           SubtleCrypto ->
             format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m ()
wrapKey_ self format key wrappingKey wrapAlgorithm
  = liftDOM
      (void
         (self ^. jsf "wrapKey"
            [toJSVal format, toJSVal key, toJSVal wrappingKey,
             toJSVal wrapAlgorithm]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey ::
          (MonadDOM m, ToJSString format, IsBufferSource wrappedKey,
           ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
            SubtleCrypto ->
              format ->
                wrappedKey ->
                  CryptoKey ->
                    unwrapAlgorithm ->
                      unwrappedKeyAlgorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKey
unwrapKey self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "unwrapKey"
           [toJSVal format, toJSVal wrappedKey, toJSVal unwrappingKey,
            toJSVal unwrapAlgorithm, toJSVal unwrappedKeyAlgorithm,
            toJSVal extractable, toJSVal (array keyUsages)])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey_ ::
           (MonadDOM m, ToJSString format, IsBufferSource wrappedKey,
            ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
             SubtleCrypto ->
               format ->
                 wrappedKey ->
                   CryptoKey ->
                     unwrapAlgorithm ->
                       unwrappedKeyAlgorithm -> Bool -> [CryptoKeyUsage] -> m ()
unwrapKey_ self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "unwrapKey"
            [toJSVal format, toJSVal wrappedKey, toJSVal unwrappingKey,
             toJSVal unwrapAlgorithm, toJSVal unwrappedKeyAlgorithm,
             toJSVal extractable, toJSVal (array keyUsages)]))
