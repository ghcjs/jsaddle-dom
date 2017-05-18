{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.VoidCallback
       (newVoidCallback, newVoidCallbackSync, newVoidCallbackAsync,
        VoidCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallback :: (MonadDOM m) => JSM () -> m VoidCallback
newVoidCallback callback
  = liftDOM
      (VoidCallback . Callback <$> function (\ _ _ [] -> callback))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackSync :: (MonadDOM m) => JSM () -> m VoidCallback
newVoidCallbackSync callback
  = liftDOM
      (VoidCallback . Callback <$> function (\ _ _ [] -> callback))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackAsync :: (MonadDOM m) => JSM () -> m VoidCallback
newVoidCallbackAsync callback
  = liftDOM
      (VoidCallback . Callback <$> asyncFunction (\ _ _ [] -> callback))
