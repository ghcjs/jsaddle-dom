{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SubtleCrypto
       (encrypt, decrypt, sign, verify, digest, generateKey, importKey,
        exportKey, wrapKey, unwrapKey, SubtleCrypto, castToSubtleCrypto,
        gTypeSubtleCrypto)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadDOM m, ToJSString algorithm, IsCryptoOperationData data') =>
         SubtleCrypto -> algorithm -> [Maybe data'] -> m (Maybe Promise)
digest self algorithm data'
  = liftDOM
      ((self ^. jsf "digest" [toJSVal algorithm, toJSVal (array data')])
         >>= fromJSVal)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadDOM m, ToJSString format) =>
            SubtleCrypto -> format -> Maybe CryptoKey -> m (Maybe Promise)
exportKey self format key
  = liftDOM
      ((self ^. jsf "exportKey" [toJSVal format, toJSVal key]) >>=
         fromJSVal)

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
