{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.BatteryManager
       (getCharging, getChargingTime, getDischargingTime, getLevel,
        chargingChange, chargingTimeChange, dischargingTimeChange,
        levelChange, BatteryManager, castToBatteryManager,
        gTypeBatteryManager)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.charging Mozilla BatteryManager.charging documentation> 
getCharging :: (MonadDOM m) => BatteryManager -> m Bool
getCharging self = liftDOM ((self ^. js "charging") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.chargingTime Mozilla BatteryManager.chargingTime documentation> 
getChargingTime :: (MonadDOM m) => BatteryManager -> m Double
getChargingTime self
  = liftDOM ((self ^. js "chargingTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.dischargingTime Mozilla BatteryManager.dischargingTime documentation> 
getDischargingTime :: (MonadDOM m) => BatteryManager -> m Double
getDischargingTime self
  = liftDOM ((self ^. js "dischargingTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.level Mozilla BatteryManager.level documentation> 
getLevel :: (MonadDOM m) => BatteryManager -> m Double
getLevel self = liftDOM ((self ^. js "level") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onchargingchange Mozilla BatteryManager.onchargingchange documentation> 
chargingChange :: EventName BatteryManager Event
chargingChange = unsafeEventName (toJSString "chargingchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onchargingtimechange Mozilla BatteryManager.onchargingtimechange documentation> 
chargingTimeChange :: EventName BatteryManager Event
chargingTimeChange
  = unsafeEventName (toJSString "chargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.ondischargingtimechange Mozilla BatteryManager.ondischargingtimechange documentation> 
dischargingTimeChange :: EventName BatteryManager Event
dischargingTimeChange
  = unsafeEventName (toJSString "dischargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onlevelchange Mozilla BatteryManager.onlevelchange documentation> 
levelChange :: EventName BatteryManager Event
levelChange = unsafeEventName (toJSString "levelchange")