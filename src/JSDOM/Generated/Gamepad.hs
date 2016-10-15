{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Gamepad
       (getId, getIndex, getConnected, getTimestamp, getMapping, getAxes,
        getButtons, Gamepad(..), gTypeGamepad)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.id Mozilla Gamepad.id documentation> 
getId :: (MonadDOM m, FromJSString result) => Gamepad -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.index Mozilla Gamepad.index documentation> 
getIndex :: (MonadDOM m) => Gamepad -> m Word
getIndex self
  = liftDOM (round <$> ((self ^. js "index") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.connected Mozilla Gamepad.connected documentation> 
getConnected :: (MonadDOM m) => Gamepad -> m Bool
getConnected self
  = liftDOM ((self ^. js "connected") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.timestamp Mozilla Gamepad.timestamp documentation> 
getTimestamp :: (MonadDOM m) => Gamepad -> m Double
getTimestamp self
  = liftDOM ((self ^. js "timestamp") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.mapping Mozilla Gamepad.mapping documentation> 
getMapping ::
           (MonadDOM m, FromJSString result) => Gamepad -> m result
getMapping self
  = liftDOM ((self ^. js "mapping") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.axes Mozilla Gamepad.axes documentation> 
getAxes :: (MonadDOM m) => Gamepad -> m [Double]
getAxes self
  = liftDOM ((self ^. js "axes") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.buttons Mozilla Gamepad.buttons documentation> 
getButtons :: (MonadDOM m) => Gamepad -> m [Maybe GamepadButton]
getButtons self = liftDOM ((self ^. js "buttons") >>= fromJSArray)
