{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StorageInfo
       (queryUsageAndQuota, requestQuota, pattern TEMPORARY,
        pattern PERSISTENT, StorageInfo(..), gTypeStorageInfo)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.queryUsageAndQuota Mozilla StorageInfo.queryUsageAndQuota documentation> 
queryUsageAndQuota ::
                   (MonadDOM m) =>
                     StorageInfo ->
                       Word ->
                         Maybe StorageUsageCallback -> Maybe StorageErrorCallback -> m ()
queryUsageAndQuota self storageType usageCallback errorCallback
  = liftDOM
      (void
         (self ^. jsf "queryUsageAndQuota"
            [toJSVal storageType, toJSVal usageCallback,
             toJSVal errorCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.requestQuota Mozilla StorageInfo.requestQuota documentation> 
requestQuota ::
             (MonadDOM m) =>
               StorageInfo ->
                 Word ->
                   Word64 ->
                     Maybe StorageQuotaCallback -> Maybe StorageErrorCallback -> m ()
requestQuota self storageType newQuotaInBytes quotaCallback
  errorCallback
  = liftDOM
      (void
         (self ^. jsf "requestQuota"
            [toJSVal storageType, toJSVal newQuotaInBytes,
             toJSVal quotaCallback, toJSVal errorCallback]))
pattern TEMPORARY = 0
pattern PERSISTENT = 1
