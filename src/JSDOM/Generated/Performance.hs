{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Performance
       (now, now_, getEntries, getEntries_, getEntriesByType,
        getEntriesByType_, getEntriesByName, getEntriesByName_,
        clearResourceTimings, setResourceTimingBufferSize, mark,
        clearMarks, measure, clearMeasures, getNavigation, getTiming,
        resourceTimingBufferFull, Performance(..), gTypePerformance)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now :: (MonadDOM m) => Performance -> m DOMHighResTimeStamp
now self = liftDOM ((self ^. jsf "now" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now_ :: (MonadDOM m) => Performance -> m ()
now_ self = liftDOM (void (self ^. jsf "now" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntries Mozilla Performance.getEntries documentation> 
getEntries :: (MonadDOM m) => Performance -> m PerformanceEntryList
getEntries self
  = liftDOM ((self ^. jsf "getEntries" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntries Mozilla Performance.getEntries documentation> 
getEntries_ :: (MonadDOM m) => Performance -> m ()
getEntries_ self = liftDOM (void (self ^. jsf "getEntries" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByType Mozilla Performance.getEntriesByType documentation> 
getEntriesByType ::
                 (MonadDOM m, ToJSString entryType) =>
                   Performance -> entryType -> m PerformanceEntryList
getEntriesByType self entryType
  = liftDOM
      ((self ^. jsf "getEntriesByType" [toJSVal entryType]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByType Mozilla Performance.getEntriesByType documentation> 
getEntriesByType_ ::
                  (MonadDOM m, ToJSString entryType) =>
                    Performance -> entryType -> m ()
getEntriesByType_ self entryType
  = liftDOM
      (void (self ^. jsf "getEntriesByType" [toJSVal entryType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByName Mozilla Performance.getEntriesByName documentation> 
getEntriesByName ::
                 (MonadDOM m, ToJSString name, ToJSString entryType) =>
                   Performance -> name -> Maybe entryType -> m PerformanceEntryList
getEntriesByName self name entryType
  = liftDOM
      ((self ^. jsf "getEntriesByName" [toJSVal name, toJSVal entryType])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByName Mozilla Performance.getEntriesByName documentation> 
getEntriesByName_ ::
                  (MonadDOM m, ToJSString name, ToJSString entryType) =>
                    Performance -> name -> Maybe entryType -> m ()
getEntriesByName_ self name entryType
  = liftDOM
      (void
         (self ^. jsf "getEntriesByName" [toJSVal name, toJSVal entryType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.clearResourceTimings Mozilla Performance.clearResourceTimings documentation> 
clearResourceTimings :: (MonadDOM m) => Performance -> m ()
clearResourceTimings self
  = liftDOM (void (self ^. jsf "clearResourceTimings" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.setResourceTimingBufferSize Mozilla Performance.setResourceTimingBufferSize documentation> 
setResourceTimingBufferSize ::
                            (MonadDOM m) => Performance -> Word -> m ()
setResourceTimingBufferSize self maxSize
  = liftDOM
      (void
         (self ^. jsf "setResourceTimingBufferSize" [toJSVal maxSize]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.mark Mozilla Performance.mark documentation> 
mark ::
     (MonadDOM m, ToJSString markName) =>
       Performance -> markName -> m ()
mark self markName
  = liftDOM (void (self ^. jsf "mark" [toJSVal markName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.clearMarks Mozilla Performance.clearMarks documentation> 
clearMarks ::
           (MonadDOM m, ToJSString markName) =>
             Performance -> Maybe markName -> m ()
clearMarks self markName
  = liftDOM (void (self ^. jsf "clearMarks" [toJSVal markName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.measure Mozilla Performance.measure documentation> 
measure ::
        (MonadDOM m, ToJSString measureName, ToJSString startMark,
         ToJSString endMark) =>
          Performance ->
            measureName -> Maybe startMark -> Maybe endMark -> m ()
measure self measureName startMark endMark
  = liftDOM
      (void
         (self ^. jsf "measure"
            [toJSVal measureName, toJSVal startMark, toJSVal endMark]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.clearMeasures Mozilla Performance.clearMeasures documentation> 
clearMeasures ::
              (MonadDOM m, ToJSString measureName) =>
                Performance -> Maybe measureName -> m ()
clearMeasures self measureName
  = liftDOM
      (void (self ^. jsf "clearMeasures" [toJSVal measureName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigation ::
              (MonadDOM m) => Performance -> m PerformanceNavigation
getNavigation self
  = liftDOM ((self ^. js "navigation") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTiming :: (MonadDOM m) => Performance -> m PerformanceTiming
getTiming self
  = liftDOM ((self ^. js "timing") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.onresourcetimingbufferfull Mozilla Performance.onresourcetimingbufferfull documentation> 
resourceTimingBufferFull ::
                           EventName Performance onresourcetimingbufferfull
resourceTimingBufferFull
  = unsafeEventName (toJSString "resourcetimingbufferfull")
