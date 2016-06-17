{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.GamepadEvent
       (getGamepad, GamepadEvent, castToGamepadEvent, gTypeGamepadEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepad :: (MonadDOM m) => GamepadEvent -> m (Maybe Gamepad)
getGamepad self = liftDOM ((self ^. js "gamepad") >>= fromJSVal)
