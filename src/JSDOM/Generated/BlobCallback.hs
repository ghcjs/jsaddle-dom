{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.BlobCallback
       (newBlobCallback, newBlobCallbackSync, newBlobCallbackAsync,
        BlobCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BlobCallback Mozilla BlobCallback documentation> 
newBlobCallback ::
                (MonadDOM m) => (Maybe Blob -> JSM ()) -> m BlobCallback
newBlobCallback callback
  = liftDOM
      (BlobCallback . Callback <$>
         function
           (\ _ _ [blob] -> fromJSVal blob >>= \ blob' -> callback blob'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BlobCallback Mozilla BlobCallback documentation> 
newBlobCallbackSync ::
                    (MonadDOM m) => (Maybe Blob -> JSM ()) -> m BlobCallback
newBlobCallbackSync callback
  = liftDOM
      (BlobCallback . Callback <$>
         function
           (\ _ _ [blob] -> fromJSVal blob >>= \ blob' -> callback blob'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BlobCallback Mozilla BlobCallback documentation> 
newBlobCallbackAsync ::
                     (MonadDOM m) => (Maybe Blob -> JSM ()) -> m BlobCallback
newBlobCallbackAsync callback
  = liftDOM
      (BlobCallback . Callback <$>
         asyncFunction
           (\ _ _ [blob] -> fromJSVal blob >>= \ blob' -> callback blob'))
