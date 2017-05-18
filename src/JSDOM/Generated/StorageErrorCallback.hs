{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StorageErrorCallback
       (newStorageErrorCallback, newStorageErrorCallbackSync,
        newStorageErrorCallbackAsync, StorageErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallback ::
                        (MonadDOM m) => (DOMException -> JSM ()) -> m StorageErrorCallback
newStorageErrorCallback callback
  = liftDOM
      (StorageErrorCallback . Callback <$>
         function
           (\ _ _ [error] ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackSync ::
                            (MonadDOM m) => (DOMException -> JSM ()) -> m StorageErrorCallback
newStorageErrorCallbackSync callback
  = liftDOM
      (StorageErrorCallback . Callback <$>
         function
           (\ _ _ [error] ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackAsync ::
                             (MonadDOM m) => (DOMException -> JSM ()) -> m StorageErrorCallback
newStorageErrorCallbackAsync callback
  = liftDOM
      (StorageErrorCallback . Callback <$>
         asyncFunction
           (\ _ _ [error] ->
              fromJSValUnchecked error >>= \ error' -> callback error'))
