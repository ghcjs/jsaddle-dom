{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.MemoryInfo
       (getUsedJSHeapSize, getTotalJSHeapSize, MemoryInfo,
        castToMemoryInfo, gTypeMemoryInfo)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo.usedJSHeapSize Mozilla MemoryInfo.usedJSHeapSize documentation> 
getUsedJSHeapSize :: (MonadDOM m) => MemoryInfo -> m Word
getUsedJSHeapSize self
  = liftDOM
      (round <$> ((self ^. js "usedJSHeapSize") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo.totalJSHeapSize Mozilla MemoryInfo.totalJSHeapSize documentation> 
getTotalJSHeapSize :: (MonadDOM m) => MemoryInfo -> m Word
getTotalJSHeapSize self
  = liftDOM
      (round <$> ((self ^. js "totalJSHeapSize") >>= valToNumber))