{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.MallocStatistics
       (getReservedVMBytes, getCommittedVMBytes, getFreeListBytes,
        MallocStatistics, castToMallocStatistics, gTypeMallocStatistics)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.reservedVMBytes Mozilla MallocStatistics.reservedVMBytes documentation> 
getReservedVMBytes :: (MonadDOM m) => MallocStatistics -> m Word
getReservedVMBytes self
  = liftDOM
      (round <$> ((self ^. js "reservedVMBytes") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.committedVMBytes Mozilla MallocStatistics.committedVMBytes documentation> 
getCommittedVMBytes :: (MonadDOM m) => MallocStatistics -> m Word
getCommittedVMBytes self
  = liftDOM
      (round <$> ((self ^. js "committedVMBytes") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.freeListBytes Mozilla MallocStatistics.freeListBytes documentation> 
getFreeListBytes :: (MonadDOM m) => MallocStatistics -> m Word
getFreeListBytes self
  = liftDOM
      (round <$> ((self ^. js "freeListBytes") >>= valToNumber))
