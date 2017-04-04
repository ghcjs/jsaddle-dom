{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.GamepadEvent
       (newGamepadEvent, getGamepad, getGamepadUnsafe,
        getGamepadUnchecked, GamepadEvent(..), gTypeGamepadEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent Mozilla GamepadEvent documentation> 
newGamepadEvent ::
                (MonadDOM m, ToJSString type') =>
                  type' -> GamepadEventInit -> m GamepadEvent
newGamepadEvent type' eventInitDict
  = liftDOM
      (GamepadEvent <$>
         new (jsg "GamepadEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepad :: (MonadDOM m) => GamepadEvent -> m (Maybe Gamepad)
getGamepad self = liftDOM ((self ^. js "gamepad") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepadUnsafe ::
                 (MonadDOM m, HasCallStack) => GamepadEvent -> m Gamepad
getGamepadUnsafe self
  = liftDOM
      (((self ^. js "gamepad") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepadUnchecked :: (MonadDOM m) => GamepadEvent -> m Gamepad
getGamepadUnchecked self
  = liftDOM ((self ^. js "gamepad") >>= fromJSValUnchecked)
