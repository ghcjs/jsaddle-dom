{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.StorageQuotaCallback
       (newStorageQuotaCallback, newStorageQuotaCallbackSync,
        newStorageQuotaCallbackAsync, StorageQuotaCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallback ::
                        (MonadDOM m) => (Double -> JSM ()) -> m StorageQuotaCallback
newStorageQuotaCallback callback
  = liftDOM
      (StorageQuotaCallback . Callback <$>
         function ""
           (\ _ _ [grantedQuotaInBytes] ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackSync ::
                            (MonadDOM m) => (Double -> JSM ()) -> m StorageQuotaCallback
newStorageQuotaCallbackSync callback
  = liftDOM
      (StorageQuotaCallback . Callback <$>
         function ""
           (\ _ _ [grantedQuotaInBytes] ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackAsync ::
                             (MonadDOM m) => (Double -> JSM ()) -> m StorageQuotaCallback
newStorageQuotaCallbackAsync callback
  = liftDOM
      (StorageQuotaCallback . Callback <$>
         function ""
           (\ _ _ [grantedQuotaInBytes] ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))