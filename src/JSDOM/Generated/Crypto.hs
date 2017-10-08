{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Crypto
       (getRandomValues, getRandomValues_, getSubtle, getWebkitSubtle,
        Crypto(..), gTypeCrypto)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues ::
                (MonadDOM m, IsArrayBufferView array) =>
                  Crypto -> array -> m ArrayBufferView
getRandomValues self array
  = liftDOM
      ((self ^. jsf "getRandomValues" [toJSVal array]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues_ ::
                 (MonadDOM m, IsArrayBufferView array) => Crypto -> array -> m ()
getRandomValues_ self array
  = liftDOM (void (self ^. jsf "getRandomValues" [toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.subtle Mozilla Crypto.subtle documentation> 
getSubtle :: (MonadDOM m) => Crypto -> m SubtleCrypto
getSubtle self
  = liftDOM ((self ^. js "subtle") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtle :: (MonadDOM m) => Crypto -> m WebKitSubtleCrypto
getWebkitSubtle self
  = liftDOM ((self ^. js "webkitSubtle") >>= fromJSValUnchecked)
