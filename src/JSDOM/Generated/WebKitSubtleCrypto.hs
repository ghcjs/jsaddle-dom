{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitSubtleCrypto
       (encrypt, encrypt_, decrypt, decrypt_, sign, sign_, verify,
        verify_, digest, digest_, generateKey, generateKey_, importKey,
        importKey_, exportKey, exportKey_, wrapKey, wrapKey_, unwrapKey,
        unwrapKey_, WebKitSubtleCrypto(..), gTypeWebKitSubtleCrypto)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
          WebKitSubtleCrypto ->
            algorithm -> CryptoKey -> [data'] -> m ArrayBuffer
encrypt self algorithm key data'
  = liftDOM
      (((self ^. jsf "encrypt"
           [toJSVal algorithm, toJSVal key, toJSVal (array data')])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt_ ::
         (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
           WebKitSubtleCrypto -> algorithm -> CryptoKey -> [data'] -> m ()
encrypt_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "encrypt"
            [toJSVal algorithm, toJSVal key, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
          WebKitSubtleCrypto ->
            algorithm -> CryptoKey -> [data'] -> m ArrayBuffer
decrypt self algorithm key data'
  = liftDOM
      (((self ^. jsf "decrypt"
           [toJSVal algorithm, toJSVal key, toJSVal (array data')])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt_ ::
         (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
           WebKitSubtleCrypto -> algorithm -> CryptoKey -> [data'] -> m ()
decrypt_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "decrypt"
            [toJSVal algorithm, toJSVal key, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign ::
     (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
       WebKitSubtleCrypto ->
         algorithm -> CryptoKey -> [data'] -> m ArrayBuffer
sign self algorithm key data'
  = liftDOM
      (((self ^. jsf "sign"
           [toJSVal algorithm, toJSVal key, toJSVal (array data')])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign_ ::
      (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
        WebKitSubtleCrypto -> algorithm -> CryptoKey -> [data'] -> m ()
sign_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "sign"
            [toJSVal algorithm, toJSVal key, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify ::
       (MonadDOM m, ToJSString algorithm, IsCryptoOperationData signature,
        IsCryptoOperationData data') =>
         WebKitSubtleCrypto ->
           algorithm -> CryptoKey -> signature -> [data'] -> m Bool
verify self algorithm key signature data'
  = liftDOM
      (((self ^. jsf "verify"
           [toJSVal algorithm, toJSVal key, toJSVal signature,
            toJSVal (array data')])
          >>= readPromise)
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify_ ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData signature,
         IsCryptoOperationData data') =>
          WebKitSubtleCrypto ->
            algorithm -> CryptoKey -> signature -> [data'] -> m ()
verify_ self algorithm key signature data'
  = liftDOM
      (void
         (self ^. jsf "verify"
            [toJSVal algorithm, toJSVal key, toJSVal signature,
             toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
         WebKitSubtleCrypto -> algorithm -> [data'] -> m ArrayBuffer
digest self algorithm data'
  = liftDOM
      (((self ^. jsf "digest" [toJSVal algorithm, toJSVal (array data')])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest_ ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
          WebKitSubtleCrypto -> algorithm -> [data'] -> m ()
digest_ self algorithm data'
  = liftDOM
      (void
         (self ^. jsf "digest" [toJSVal algorithm, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey ::
            (MonadDOM m, ToJSString algorithm) =>
              WebKitSubtleCrypto ->
                algorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKeyOrKeyPair
generateKey self algorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "generateKey"
           [toJSVal algorithm, toJSVal extractable,
            toJSVal (array keyUsages)])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey_ ::
             (MonadDOM m, ToJSString algorithm) =>
               WebKitSubtleCrypto -> algorithm -> Bool -> [CryptoKeyUsage] -> m ()
generateKey_ self algorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "generateKey"
            [toJSVal algorithm, toJSVal extractable,
             toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey ::
          (MonadDOM m, ToJSString format, IsCryptoOperationData keyData,
           ToJSString algorithm) =>
            WebKitSubtleCrypto ->
              format ->
                keyData ->
                  Maybe algorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKey
importKey self format keyData algorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "importKey"
           [toJSVal format, toJSVal keyData, toJSVal algorithm,
            toJSVal extractable, toJSVal (array keyUsages)])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey_ ::
           (MonadDOM m, ToJSString format, IsCryptoOperationData keyData,
            ToJSString algorithm) =>
             WebKitSubtleCrypto ->
               format ->
                 keyData -> Maybe algorithm -> Bool -> [CryptoKeyUsage] -> m ()
importKey_ self format keyData algorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "importKey"
            [toJSVal format, toJSVal keyData, toJSVal algorithm,
             toJSVal extractable, toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadDOM m, ToJSString format) =>
            WebKitSubtleCrypto -> format -> CryptoKey -> m ArrayBuffer
exportKey self format key
  = liftDOM
      (((self ^. jsf "exportKey" [toJSVal format, toJSVal key]) >>=
          readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey_ ::
           (MonadDOM m, ToJSString format) =>
             WebKitSubtleCrypto -> format -> CryptoKey -> m ()
exportKey_ self format key
  = liftDOM
      (void (self ^. jsf "exportKey" [toJSVal format, toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey ::
        (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm) =>
          WebKitSubtleCrypto ->
            format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m ArrayBuffer
wrapKey self format key wrappingKey wrapAlgorithm
  = liftDOM
      (((self ^. jsf "wrapKey"
           [toJSVal format, toJSVal key, toJSVal wrappingKey,
            toJSVal wrapAlgorithm])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey_ ::
         (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm) =>
           WebKitSubtleCrypto ->
             format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m ()
wrapKey_ self format key wrappingKey wrapAlgorithm
  = liftDOM
      (void
         (self ^. jsf "wrapKey"
            [toJSVal format, toJSVal key, toJSVal wrappingKey,
             toJSVal wrapAlgorithm]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey ::
          (MonadDOM m, ToJSString format, IsCryptoOperationData wrappedKey,
           ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
            WebKitSubtleCrypto ->
              format ->
                wrappedKey ->
                  CryptoKey ->
                    unwrapAlgorithm ->
                      Maybe unwrappedKeyAlgorithm ->
                        Bool -> [CryptoKeyUsage] -> m CryptoKey
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
           (MonadDOM m, ToJSString format, IsCryptoOperationData wrappedKey,
            ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
             WebKitSubtleCrypto ->
               format ->
                 wrappedKey ->
                   CryptoKey ->
                     unwrapAlgorithm ->
                       Maybe unwrappedKeyAlgorithm -> Bool -> [CryptoKeyUsage] -> m ()
unwrapKey_ self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "unwrapKey"
            [toJSVal format, toJSVal wrappedKey, toJSVal unwrappingKey,
             toJSVal unwrapAlgorithm, toJSVal unwrappedKeyAlgorithm,
             toJSVal extractable, toJSVal (array keyUsages)]))
