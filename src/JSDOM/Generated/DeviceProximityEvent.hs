{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DeviceProximityEvent
       (getValue, getMin, getMax, DeviceProximityEvent(..),
        gTypeDeviceProximityEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.value Mozilla DeviceProximityEvent.value documentation> 
getValue :: (MonadDOM m) => DeviceProximityEvent -> m Double
getValue self = liftDOM ((self ^. js "value") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.min Mozilla DeviceProximityEvent.min documentation> 
getMin :: (MonadDOM m) => DeviceProximityEvent -> m Double
getMin self = liftDOM ((self ^. js "min") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.max Mozilla DeviceProximityEvent.max documentation> 
getMax :: (MonadDOM m) => DeviceProximityEvent -> m Double
getMax self = liftDOM ((self ^. js "max") >>= valToNumber)
