{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StorageQuotaCallback
       (newStorageQuotaCallback, newStorageQuotaCallbackSync,
        newStorageQuotaCallbackAsync, StorageQuotaCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallback ::
                        (MonadDOM m) => (Double -> JSM ()) -> m StorageQuotaCallback
newStorageQuotaCallback callback
  = liftDOM
      (StorageQuotaCallback . Callback <$>
         function
           (\ _ _ [grantedQuotaInBytes] ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackSync ::
                            (MonadDOM m) => (Double -> JSM ()) -> m StorageQuotaCallback
newStorageQuotaCallbackSync callback
  = liftDOM
      (StorageQuotaCallback . Callback <$>
         function
           (\ _ _ [grantedQuotaInBytes] ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackAsync ::
                             (MonadDOM m) => (Double -> JSM ()) -> m StorageQuotaCallback
newStorageQuotaCallbackAsync callback
  = liftDOM
      (StorageQuotaCallback . Callback <$>
         asyncFunction
           (\ _ _ [grantedQuotaInBytes] ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))
