{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WindowTimers
       (setTimeout, clearTimeout, setInterval, clearInterval,
        WindowTimers, castToWindowTimers, gTypeWindowTimers)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setTimeout Mozilla WindowTimers.setTimeout documentation> 
setTimeout :: (MonadDOM m) => WindowTimers -> JSVal -> Int -> m Int
setTimeout self handler timeout
  = liftDOM
      (round <$>
         ((self ^. jsf "setTimeout" [toJSVal handler, toJSVal timeout]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearTimeout Mozilla WindowTimers.clearTimeout documentation> 
clearTimeout :: (MonadDOM m) => WindowTimers -> Int -> m ()
clearTimeout self handle
  = liftDOM (void (self ^. jsf "clearTimeout" [toJSVal handle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setInterval Mozilla WindowTimers.setInterval documentation> 
setInterval ::
            (MonadDOM m) => WindowTimers -> JSVal -> Int -> m Int
setInterval self handler timeout
  = liftDOM
      (round <$>
         ((self ^. jsf "setInterval" [toJSVal handler, toJSVal timeout]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearInterval Mozilla WindowTimers.clearInterval documentation> 
clearInterval :: (MonadDOM m) => WindowTimers -> Int -> m ()
clearInterval self handle
  = liftDOM (void (self ^. jsf "clearInterval" [toJSVal handle]))
