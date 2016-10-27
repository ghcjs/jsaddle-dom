{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SubtleCrypto
       (encrypt, encrypt_, encryptUnsafe, encryptUnchecked, decrypt,
        decrypt_, decryptUnsafe, decryptUnchecked, sign, sign_, signUnsafe,
        signUnchecked, verify, verify_, verifyUnsafe, verifyUnchecked,
        digest, digest_, digestUnsafe, digestUnchecked, generateKey,
        generateKey_, generateKeyUnsafe, generateKeyUnchecked, importKey,
        importKey_, importKeyUnsafe, importKeyUnchecked, exportKey,
        exportKey_, exportKeyUnsafe, exportKeyUnchecked, wrapKey, wrapKey_,
        wrapKeyUnsafe, wrapKeyUnchecked, unwrapKey, unwrapKey_,
        unwrapKeyUnsafe, unwrapKeyUnchecked, SubtleCrypto(..),
        gTypeSubtleCrypto)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
encrypt self algorithm key data'
  = liftDOM
      ((self ^. jsf "encrypt"
          [toJSVal algorithm, toJSVal key, toJSVal (array data')])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt_ ::
         (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
           SubtleCrypto ->
             algorithm -> Maybe CryptoKey -> [Maybe data'] -> m ()
encrypt_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "encrypt"
            [toJSVal algorithm, toJSVal key, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encryptUnsafe ::
              (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data',
               HasCallStack) =>
                SubtleCrypto ->
                  algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
encryptUnsafe self algorithm key data'
  = liftDOM
      (((self ^. jsf "encrypt"
           [toJSVal algorithm, toJSVal key, toJSVal (array data')])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encryptUnchecked ::
                 (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
                   SubtleCrypto ->
                     algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
encryptUnchecked self algorithm key data'
  = liftDOM
      ((self ^. jsf "encrypt"
          [toJSVal algorithm, toJSVal key, toJSVal (array data')])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
decrypt self algorithm key data'
  = liftDOM
      ((self ^. jsf "decrypt"
          [toJSVal algorithm, toJSVal key, toJSVal (array data')])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt_ ::
         (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
           SubtleCrypto ->
             algorithm -> Maybe CryptoKey -> [Maybe data'] -> m ()
decrypt_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "decrypt"
            [toJSVal algorithm, toJSVal key, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decryptUnsafe ::
              (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data',
               HasCallStack) =>
                SubtleCrypto ->
                  algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
decryptUnsafe self algorithm key data'
  = liftDOM
      (((self ^. jsf "decrypt"
           [toJSVal algorithm, toJSVal key, toJSVal (array data')])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decryptUnchecked ::
                 (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
                   SubtleCrypto ->
                     algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
decryptUnchecked self algorithm key data'
  = liftDOM
      ((self ^. jsf "decrypt"
          [toJSVal algorithm, toJSVal key, toJSVal (array data')])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign ::
     (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
       SubtleCrypto ->
         algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
sign self algorithm key data'
  = liftDOM
      ((self ^. jsf "sign"
          [toJSVal algorithm, toJSVal key, toJSVal (array data')])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign_ ::
      (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
        SubtleCrypto ->
          algorithm -> Maybe CryptoKey -> [Maybe data'] -> m ()
sign_ self algorithm key data'
  = liftDOM
      (void
         (self ^. jsf "sign"
            [toJSVal algorithm, toJSVal key, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
signUnsafe ::
           (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data',
            HasCallStack) =>
             SubtleCrypto ->
               algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
signUnsafe self algorithm key data'
  = liftDOM
      (((self ^. jsf "sign"
           [toJSVal algorithm, toJSVal key, toJSVal (array data')])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
signUnchecked ::
              (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
                SubtleCrypto ->
                  algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
signUnchecked self algorithm key data'
  = liftDOM
      ((self ^. jsf "sign"
          [toJSVal algorithm, toJSVal key, toJSVal (array data')])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify ::
       (MonadDOM m, ToJSString algorithm, IsCryptoOperationData signature,
        IsCryptoOperationData data') =>
         SubtleCrypto ->
           algorithm ->
             Maybe CryptoKey ->
               Maybe signature -> [Maybe data'] -> m (Maybe Promise)
verify self algorithm key signature data'
  = liftDOM
      ((self ^. jsf "verify"
          [toJSVal algorithm, toJSVal key, toJSVal signature,
           toJSVal (array data')])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify_ ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData signature,
         IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm ->
              Maybe CryptoKey -> Maybe signature -> [Maybe data'] -> m ()
verify_ self algorithm key signature data'
  = liftDOM
      (void
         (self ^. jsf "verify"
            [toJSVal algorithm, toJSVal key, toJSVal signature,
             toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verifyUnsafe ::
             (MonadDOM m, ToJSString algorithm, IsCryptoOperationData signature,
              IsCryptoOperationData data', HasCallStack) =>
               SubtleCrypto ->
                 algorithm ->
                   Maybe CryptoKey -> Maybe signature -> [Maybe data'] -> m Promise
verifyUnsafe self algorithm key signature data'
  = liftDOM
      (((self ^. jsf "verify"
           [toJSVal algorithm, toJSVal key, toJSVal signature,
            toJSVal (array data')])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verifyUnchecked ::
                (MonadDOM m, ToJSString algorithm, IsCryptoOperationData signature,
                 IsCryptoOperationData data') =>
                  SubtleCrypto ->
                    algorithm ->
                      Maybe CryptoKey -> Maybe signature -> [Maybe data'] -> m Promise
verifyUnchecked self algorithm key signature data'
  = liftDOM
      ((self ^. jsf "verify"
          [toJSVal algorithm, toJSVal key, toJSVal signature,
           toJSVal (array data')])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
         SubtleCrypto -> algorithm -> [Maybe data'] -> m (Maybe Promise)
digest self algorithm data'
  = liftDOM
      ((self ^. jsf "digest" [toJSVal algorithm, toJSVal (array data')])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest_ ::
        (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto -> algorithm -> [Maybe data'] -> m ()
digest_ self algorithm data'
  = liftDOM
      (void
         (self ^. jsf "digest" [toJSVal algorithm, toJSVal (array data')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digestUnsafe ::
             (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data',
              HasCallStack) =>
               SubtleCrypto -> algorithm -> [Maybe data'] -> m Promise
digestUnsafe self algorithm data'
  = liftDOM
      (((self ^. jsf "digest" [toJSVal algorithm, toJSVal (array data')])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digestUnchecked ::
                (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
                  SubtleCrypto -> algorithm -> [Maybe data'] -> m Promise
digestUnchecked self algorithm data'
  = liftDOM
      ((self ^. jsf "digest" [toJSVal algorithm, toJSVal (array data')])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey ::
            (MonadDOM m, ToJSString algorithm) =>
              SubtleCrypto ->
                algorithm -> Bool -> [KeyUsage] -> m (Maybe Promise)
generateKey self algorithm extractable keyUsages
  = liftDOM
      ((self ^. jsf "generateKey"
          [toJSVal algorithm, toJSVal extractable,
           toJSVal (array keyUsages)])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey_ ::
             (MonadDOM m, ToJSString algorithm) =>
               SubtleCrypto -> algorithm -> Bool -> [KeyUsage] -> m ()
generateKey_ self algorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "generateKey"
            [toJSVal algorithm, toJSVal extractable,
             toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKeyUnsafe ::
                  (MonadDOM m, ToJSString algorithm, HasCallStack) =>
                    SubtleCrypto -> algorithm -> Bool -> [KeyUsage] -> m Promise
generateKeyUnsafe self algorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "generateKey"
           [toJSVal algorithm, toJSVal extractable,
            toJSVal (array keyUsages)])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKeyUnchecked ::
                     (MonadDOM m, ToJSString algorithm) =>
                       SubtleCrypto -> algorithm -> Bool -> [KeyUsage] -> m Promise
generateKeyUnchecked self algorithm extractable keyUsages
  = liftDOM
      ((self ^. jsf "generateKey"
          [toJSVal algorithm, toJSVal extractable,
           toJSVal (array keyUsages)])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey ::
          (MonadDOM m, ToJSString format, IsCryptoOperationData keyData,
           ToJSString algorithm) =>
            SubtleCrypto ->
              format ->
                Maybe keyData ->
                  algorithm -> Bool -> [KeyUsage] -> m (Maybe Promise)
importKey self format keyData algorithm extractable keyUsages
  = liftDOM
      ((self ^. jsf "importKey"
          [toJSVal format, toJSVal keyData, toJSVal algorithm,
           toJSVal extractable, toJSVal (array keyUsages)])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey_ ::
           (MonadDOM m, ToJSString format, IsCryptoOperationData keyData,
            ToJSString algorithm) =>
             SubtleCrypto ->
               format -> Maybe keyData -> algorithm -> Bool -> [KeyUsage] -> m ()
importKey_ self format keyData algorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "importKey"
            [toJSVal format, toJSVal keyData, toJSVal algorithm,
             toJSVal extractable, toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKeyUnsafe ::
                (MonadDOM m, ToJSString format, IsCryptoOperationData keyData,
                 ToJSString algorithm, HasCallStack) =>
                  SubtleCrypto ->
                    format ->
                      Maybe keyData -> algorithm -> Bool -> [KeyUsage] -> m Promise
importKeyUnsafe self format keyData algorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "importKey"
           [toJSVal format, toJSVal keyData, toJSVal algorithm,
            toJSVal extractable, toJSVal (array keyUsages)])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKeyUnchecked ::
                   (MonadDOM m, ToJSString format, IsCryptoOperationData keyData,
                    ToJSString algorithm) =>
                     SubtleCrypto ->
                       format ->
                         Maybe keyData -> algorithm -> Bool -> [KeyUsage] -> m Promise
importKeyUnchecked self format keyData algorithm extractable
  keyUsages
  = liftDOM
      ((self ^. jsf "importKey"
          [toJSVal format, toJSVal keyData, toJSVal algorithm,
           toJSVal extractable, toJSVal (array keyUsages)])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadDOM m, ToJSString format) =>
            SubtleCrypto -> format -> Maybe CryptoKey -> m (Maybe Promise)
exportKey self format key
  = liftDOM
      ((self ^. jsf "exportKey" [toJSVal format, toJSVal key]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey_ ::
           (MonadDOM m, ToJSString format) =>
             SubtleCrypto -> format -> Maybe CryptoKey -> m ()
exportKey_ self format key
  = liftDOM
      (void (self ^. jsf "exportKey" [toJSVal format, toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKeyUnsafe ::
                (MonadDOM m, ToJSString format, HasCallStack) =>
                  SubtleCrypto -> format -> Maybe CryptoKey -> m Promise
exportKeyUnsafe self format key
  = liftDOM
      (((self ^. jsf "exportKey" [toJSVal format, toJSVal key]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKeyUnchecked ::
                   (MonadDOM m, ToJSString format) =>
                     SubtleCrypto -> format -> Maybe CryptoKey -> m Promise
exportKeyUnchecked self format key
  = liftDOM
      ((self ^. jsf "exportKey" [toJSVal format, toJSVal key]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey ::
        (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm) =>
          SubtleCrypto ->
            format ->
              Maybe CryptoKey ->
                Maybe CryptoKey -> wrapAlgorithm -> m (Maybe Promise)
wrapKey self format key wrappingKey wrapAlgorithm
  = liftDOM
      ((self ^. jsf "wrapKey"
          [toJSVal format, toJSVal key, toJSVal wrappingKey,
           toJSVal wrapAlgorithm])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey_ ::
         (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm) =>
           SubtleCrypto ->
             format ->
               Maybe CryptoKey -> Maybe CryptoKey -> wrapAlgorithm -> m ()
wrapKey_ self format key wrappingKey wrapAlgorithm
  = liftDOM
      (void
         (self ^. jsf "wrapKey"
            [toJSVal format, toJSVal key, toJSVal wrappingKey,
             toJSVal wrapAlgorithm]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKeyUnsafe ::
              (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm,
               HasCallStack) =>
                SubtleCrypto ->
                  format ->
                    Maybe CryptoKey -> Maybe CryptoKey -> wrapAlgorithm -> m Promise
wrapKeyUnsafe self format key wrappingKey wrapAlgorithm
  = liftDOM
      (((self ^. jsf "wrapKey"
           [toJSVal format, toJSVal key, toJSVal wrappingKey,
            toJSVal wrapAlgorithm])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKeyUnchecked ::
                 (MonadDOM m, ToJSString format, ToJSString wrapAlgorithm) =>
                   SubtleCrypto ->
                     format ->
                       Maybe CryptoKey -> Maybe CryptoKey -> wrapAlgorithm -> m Promise
wrapKeyUnchecked self format key wrappingKey wrapAlgorithm
  = liftDOM
      ((self ^. jsf "wrapKey"
          [toJSVal format, toJSVal key, toJSVal wrappingKey,
           toJSVal wrapAlgorithm])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey ::
          (MonadDOM m, ToJSString format, IsCryptoOperationData wrappedKey,
           ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
            SubtleCrypto ->
              format ->
                Maybe wrappedKey ->
                  Maybe CryptoKey ->
                    unwrapAlgorithm ->
                      unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m (Maybe Promise)
unwrapKey self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftDOM
      ((self ^. jsf "unwrapKey"
          [toJSVal format, toJSVal wrappedKey, toJSVal unwrappingKey,
           toJSVal unwrapAlgorithm, toJSVal unwrappedKeyAlgorithm,
           toJSVal extractable, toJSVal (array keyUsages)])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey_ ::
           (MonadDOM m, ToJSString format, IsCryptoOperationData wrappedKey,
            ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
             SubtleCrypto ->
               format ->
                 Maybe wrappedKey ->
                   Maybe CryptoKey ->
                     unwrapAlgorithm ->
                       unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m ()
unwrapKey_ self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftDOM
      (void
         (self ^. jsf "unwrapKey"
            [toJSVal format, toJSVal wrappedKey, toJSVal unwrappingKey,
             toJSVal unwrapAlgorithm, toJSVal unwrappedKeyAlgorithm,
             toJSVal extractable, toJSVal (array keyUsages)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKeyUnsafe ::
                (MonadDOM m, ToJSString format, IsCryptoOperationData wrappedKey,
                 ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm,
                 HasCallStack) =>
                  SubtleCrypto ->
                    format ->
                      Maybe wrappedKey ->
                        Maybe CryptoKey ->
                          unwrapAlgorithm ->
                            unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m Promise
unwrapKeyUnsafe self format wrappedKey unwrappingKey
  unwrapAlgorithm unwrappedKeyAlgorithm extractable keyUsages
  = liftDOM
      (((self ^. jsf "unwrapKey"
           [toJSVal format, toJSVal wrappedKey, toJSVal unwrappingKey,
            toJSVal unwrapAlgorithm, toJSVal unwrappedKeyAlgorithm,
            toJSVal extractable, toJSVal (array keyUsages)])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKeyUnchecked ::
                   (MonadDOM m, ToJSString format, IsCryptoOperationData wrappedKey,
                    ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
                     SubtleCrypto ->
                       format ->
                         Maybe wrappedKey ->
                           Maybe CryptoKey ->
                             unwrapAlgorithm ->
                               unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m Promise
unwrapKeyUnchecked self format wrappedKey unwrappingKey
  unwrapAlgorithm unwrappedKeyAlgorithm extractable keyUsages
  = liftDOM
      ((self ^. jsf "unwrapKey"
          [toJSVal format, toJSVal wrappedKey, toJSVal unwrappingKey,
           toJSVal unwrapAlgorithm, toJSVal unwrappedKeyAlgorithm,
           toJSVal extractable, toJSVal (array keyUsages)])
         >>= fromJSValUnchecked)
