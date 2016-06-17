{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.StorageUsageCallback
       (newStorageUsageCallback, newStorageUsageCallbackSync,
        newStorageUsageCallbackAsync, StorageUsageCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallback ::
                        (MonadDOM m) =>
                          (Double -> Double -> JSM ()) -> m StorageUsageCallback
newStorageUsageCallback callback
  = liftDOM
      (StorageUsageCallback . Callback <$>
         function ""
           (\ _ _ [currentUsageInBytes, currentQuotaInBytes] ->
              fromJSValUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSValUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallbackSync ::
                            (MonadDOM m) =>
                              (Double -> Double -> JSM ()) -> m StorageUsageCallback
newStorageUsageCallbackSync callback
  = liftDOM
      (StorageUsageCallback . Callback <$>
         function ""
           (\ _ _ [currentUsageInBytes, currentQuotaInBytes] ->
              fromJSValUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSValUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallbackAsync ::
                             (MonadDOM m) =>
                               (Double -> Double -> JSM ()) -> m StorageUsageCallback
newStorageUsageCallbackAsync callback
  = liftDOM
      (StorageUsageCallback . Callback <$>
         function ""
           (\ _ _ [currentUsageInBytes, currentQuotaInBytes] ->
              fromJSValUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSValUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))
