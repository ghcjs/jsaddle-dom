{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Screen
       (getHeight, getWidth, getColorDepth, getPixelDepth, getAvailLeft,
        getAvailTop, getAvailHeight, getAvailWidth, Screen, castToScreen,
        gTypeScreen)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.height Mozilla Screen.height documentation> 
getHeight :: (MonadDOM m) => Screen -> m Word
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.width Mozilla Screen.width documentation> 
getWidth :: (MonadDOM m) => Screen -> m Word
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.colorDepth Mozilla Screen.colorDepth documentation> 
getColorDepth :: (MonadDOM m) => Screen -> m Word
getColorDepth self
  = liftDOM (round <$> ((self ^. js "colorDepth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.pixelDepth Mozilla Screen.pixelDepth documentation> 
getPixelDepth :: (MonadDOM m) => Screen -> m Word
getPixelDepth self
  = liftDOM (round <$> ((self ^. js "pixelDepth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availLeft Mozilla Screen.availLeft documentation> 
getAvailLeft :: (MonadDOM m) => Screen -> m Int
getAvailLeft self
  = liftDOM (round <$> ((self ^. js "availLeft") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availTop Mozilla Screen.availTop documentation> 
getAvailTop :: (MonadDOM m) => Screen -> m Int
getAvailTop self
  = liftDOM (round <$> ((self ^. js "availTop") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availHeight Mozilla Screen.availHeight documentation> 
getAvailHeight :: (MonadDOM m) => Screen -> m Word
getAvailHeight self
  = liftDOM (round <$> ((self ^. js "availHeight") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availWidth Mozilla Screen.availWidth documentation> 
getAvailWidth :: (MonadDOM m) => Screen -> m Word
getAvailWidth self
  = liftDOM (round <$> ((self ^. js "availWidth") >>= valToNumber))
