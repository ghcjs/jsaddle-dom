{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TimeRanges
       (start, start_, end, end_, getLength, TimeRanges(..),
        gTypeTimeRanges)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.start Mozilla TimeRanges.start documentation> 
start :: (MonadDOM m) => TimeRanges -> Word -> m Double
start self index
  = liftDOM ((self ^. jsf "start" [toJSVal index]) >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.start Mozilla TimeRanges.start documentation> 
start_ :: (MonadDOM m) => TimeRanges -> Word -> m ()
start_ self index
  = liftDOM (void (self ^. jsf "start" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.end Mozilla TimeRanges.end documentation> 
end :: (MonadDOM m) => TimeRanges -> Word -> m Double
end self index
  = liftDOM ((self ^. jsf "end" [toJSVal index]) >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.end Mozilla TimeRanges.end documentation> 
end_ :: (MonadDOM m) => TimeRanges -> Word -> m ()
end_ self index
  = liftDOM (void (self ^. jsf "end" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.length Mozilla TimeRanges.length documentation> 
getLength :: (MonadDOM m) => TimeRanges -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
