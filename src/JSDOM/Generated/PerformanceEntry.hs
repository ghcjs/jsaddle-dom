{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PerformanceEntry
       (getName, getEntryType, getStartTime, getDuration,
        PerformanceEntry(..), gTypePerformanceEntry, IsPerformanceEntry,
        toPerformanceEntry)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.name Mozilla PerformanceEntry.name documentation> 
getName ::
        (MonadDOM m, IsPerformanceEntry self, FromJSString result) =>
          self -> m result
getName self
  = liftDOM
      (((toPerformanceEntry self) ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.entryType Mozilla PerformanceEntry.entryType documentation> 
getEntryType ::
             (MonadDOM m, IsPerformanceEntry self, FromJSString result) =>
               self -> m result
getEntryType self
  = liftDOM
      (((toPerformanceEntry self) ^. js "entryType") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.startTime Mozilla PerformanceEntry.startTime documentation> 
getStartTime ::
             (MonadDOM m, IsPerformanceEntry self) =>
               self -> m DOMHighResTimeStamp
getStartTime self
  = liftDOM
      (((toPerformanceEntry self) ^. js "startTime") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.duration Mozilla PerformanceEntry.duration documentation> 
getDuration ::
            (MonadDOM m, IsPerformanceEntry self) =>
              self -> m DOMHighResTimeStamp
getDuration self
  = liftDOM
      (((toPerformanceEntry self) ^. js "duration") >>=
         fromJSValUnchecked)
