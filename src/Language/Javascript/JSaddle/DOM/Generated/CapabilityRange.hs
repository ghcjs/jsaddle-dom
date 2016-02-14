{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.CapabilityRange
       (getMax, getMin, getSupported, CapabilityRange,
        castToCapabilityRange, gTypeCapabilityRange)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.max Mozilla CapabilityRange.max documentation> 
getMax :: (MonadDOM m) => CapabilityRange -> m JSVal
getMax self = liftDOM ((self ^. js "max") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.min Mozilla CapabilityRange.min documentation> 
getMin :: (MonadDOM m) => CapabilityRange -> m JSVal
getMin self = liftDOM ((self ^. js "min") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.supported Mozilla CapabilityRange.supported documentation> 
getSupported :: (MonadDOM m) => CapabilityRange -> m Bool
getSupported self
  = liftDOM ((self ^. js "supported") >>= valToBool)