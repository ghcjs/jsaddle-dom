{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Crypto
       (getRandomValues, getRandomValues_, getRandomValuesUnsafe,
        getRandomValuesUnchecked, getWebkitSubtle, getWebkitSubtleUnsafe,
        getWebkitSubtleUnchecked, Crypto(..), gTypeCrypto)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues ::
                (MonadDOM m, IsArrayBufferView array) =>
                  Crypto -> Maybe array -> m (Maybe ArrayBufferView)
getRandomValues self array
  = liftDOM
      ((self ^. jsf "getRandomValues" [toJSVal array]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues_ ::
                 (MonadDOM m, IsArrayBufferView array) =>
                   Crypto -> Maybe array -> m ()
getRandomValues_ self array
  = liftDOM (void (self ^. jsf "getRandomValues" [toJSVal array]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValuesUnsafe ::
                      (MonadDOM m, IsArrayBufferView array, HasCallStack) =>
                        Crypto -> Maybe array -> m ArrayBufferView
getRandomValuesUnsafe self array
  = liftDOM
      (((self ^. jsf "getRandomValues" [toJSVal array]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValuesUnchecked ::
                         (MonadDOM m, IsArrayBufferView array) =>
                           Crypto -> Maybe array -> m ArrayBufferView
getRandomValuesUnchecked self array
  = liftDOM
      ((self ^. jsf "getRandomValues" [toJSVal array]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtle :: (MonadDOM m) => Crypto -> m (Maybe SubtleCrypto)
getWebkitSubtle self
  = liftDOM ((self ^. js "webkitSubtle") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtleUnsafe ::
                      (MonadDOM m, HasCallStack) => Crypto -> m SubtleCrypto
getWebkitSubtleUnsafe self
  = liftDOM
      (((self ^. js "webkitSubtle") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtleUnchecked ::
                         (MonadDOM m) => Crypto -> m SubtleCrypto
getWebkitSubtleUnchecked self
  = liftDOM ((self ^. js "webkitSubtle") >>= fromJSValUnchecked)
