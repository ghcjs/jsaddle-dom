{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.OverflowEvent
       (pattern HORIZONTAL, pattern VERTICAL, pattern BOTH, getOrient,
        getHorizontalOverflow, getVerticalOverflow, OverflowEvent(..),
        gTypeOverflowEvent)
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
pattern HORIZONTAL = 0
pattern VERTICAL = 1
pattern BOTH = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.orient Mozilla OverflowEvent.orient documentation> 
getOrient :: (MonadDOM m) => OverflowEvent -> m Word
getOrient self
  = liftDOM (round <$> ((self ^. js "orient") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.horizontalOverflow Mozilla OverflowEvent.horizontalOverflow documentation> 
getHorizontalOverflow :: (MonadDOM m) => OverflowEvent -> m Bool
getHorizontalOverflow self
  = liftDOM ((self ^. js "horizontalOverflow") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.verticalOverflow Mozilla OverflowEvent.verticalOverflow documentation> 
getVerticalOverflow :: (MonadDOM m) => OverflowEvent -> m Bool
getVerticalOverflow self
  = liftDOM ((self ^. js "verticalOverflow") >>= valToBool)
