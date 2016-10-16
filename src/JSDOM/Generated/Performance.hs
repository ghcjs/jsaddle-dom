{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Performance
       (webkitGetEntries, webkitGetEntries_, webkitGetEntriesUnsafe,
        webkitGetEntriesUnchecked, webkitGetEntriesByType,
        webkitGetEntriesByType_, webkitGetEntriesByTypeUnsafe,
        webkitGetEntriesByTypeUnchecked, webkitGetEntriesByName,
        webkitGetEntriesByName_, webkitGetEntriesByNameUnsafe,
        webkitGetEntriesByNameUnchecked, webkitClearResourceTimings,
        webkitSetResourceTimingBufferSize, webkitMark, webkitClearMarks,
        webkitMeasure, webkitClearMeasures, now, now_, getNavigation,
        getNavigationUnchecked, getTiming, getTimingUnchecked,
        webKitResourceTimingBufferFull, Performance(..), gTypePerformance)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntries ::
                 (MonadDOM m) => Performance -> m (Maybe PerformanceEntryList)
webkitGetEntries self
  = liftDOM ((self ^. jsf "webkitGetEntries" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntries_ :: (MonadDOM m) => Performance -> m ()
webkitGetEntries_ self
  = liftDOM (void (self ^. jsf "webkitGetEntries" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntriesUnsafe ::
                       (MonadDOM m, HasCallStack) => Performance -> m PerformanceEntryList
webkitGetEntriesUnsafe self
  = liftDOM
      (((self ^. jsf "webkitGetEntries" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntriesUnchecked ::
                          (MonadDOM m) => Performance -> m PerformanceEntryList
webkitGetEntriesUnchecked self
  = liftDOM
      ((self ^. jsf "webkitGetEntries" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByType ::
                       (MonadDOM m, ToJSString entryType) =>
                         Performance -> entryType -> m (Maybe PerformanceEntryList)
webkitGetEntriesByType self entryType
  = liftDOM
      ((self ^. jsf "webkitGetEntriesByType" [toJSVal entryType]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByType_ ::
                        (MonadDOM m, ToJSString entryType) =>
                          Performance -> entryType -> m ()
webkitGetEntriesByType_ self entryType
  = liftDOM
      (void (self ^. jsf "webkitGetEntriesByType" [toJSVal entryType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByTypeUnsafe ::
                             (MonadDOM m, ToJSString entryType, HasCallStack) =>
                               Performance -> entryType -> m PerformanceEntryList
webkitGetEntriesByTypeUnsafe self entryType
  = liftDOM
      (((self ^. jsf "webkitGetEntriesByType" [toJSVal entryType]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByTypeUnchecked ::
                                (MonadDOM m, ToJSString entryType) =>
                                  Performance -> entryType -> m PerformanceEntryList
webkitGetEntriesByTypeUnchecked self entryType
  = liftDOM
      ((self ^. jsf "webkitGetEntriesByType" [toJSVal entryType]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByName ::
                       (MonadDOM m, ToJSString name, ToJSString entryType) =>
                         Performance -> name -> entryType -> m (Maybe PerformanceEntryList)
webkitGetEntriesByName self name entryType
  = liftDOM
      ((self ^. jsf "webkitGetEntriesByName"
          [toJSVal name, toJSVal entryType])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByName_ ::
                        (MonadDOM m, ToJSString name, ToJSString entryType) =>
                          Performance -> name -> entryType -> m ()
webkitGetEntriesByName_ self name entryType
  = liftDOM
      (void
         (self ^. jsf "webkitGetEntriesByName"
            [toJSVal name, toJSVal entryType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByNameUnsafe ::
                             (MonadDOM m, ToJSString name, ToJSString entryType,
                              HasCallStack) =>
                               Performance -> name -> entryType -> m PerformanceEntryList
webkitGetEntriesByNameUnsafe self name entryType
  = liftDOM
      (((self ^. jsf "webkitGetEntriesByName"
           [toJSVal name, toJSVal entryType])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByNameUnchecked ::
                                (MonadDOM m, ToJSString name, ToJSString entryType) =>
                                  Performance -> name -> entryType -> m PerformanceEntryList
webkitGetEntriesByNameUnchecked self name entryType
  = liftDOM
      ((self ^. jsf "webkitGetEntriesByName"
          [toJSVal name, toJSVal entryType])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearResourceTimings Mozilla Performance.webkitClearResourceTimings documentation> 
webkitClearResourceTimings :: (MonadDOM m) => Performance -> m ()
webkitClearResourceTimings self
  = liftDOM (void (self ^. jsf "webkitClearResourceTimings" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitSetResourceTimingBufferSize Mozilla Performance.webkitSetResourceTimingBufferSize documentation> 
webkitSetResourceTimingBufferSize ::
                                  (MonadDOM m) => Performance -> Word -> m ()
webkitSetResourceTimingBufferSize self maxSize
  = liftDOM
      (void
         (self ^. jsf "webkitSetResourceTimingBufferSize"
            [toJSVal maxSize]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitMark Mozilla Performance.webkitMark documentation> 
webkitMark ::
           (MonadDOM m, ToJSString markName) =>
             Performance -> markName -> m ()
webkitMark self markName
  = liftDOM (void (self ^. jsf "webkitMark" [toJSVal markName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearMarks Mozilla Performance.webkitClearMarks documentation> 
webkitClearMarks ::
                 (MonadDOM m, ToJSString markName) =>
                   Performance -> markName -> m ()
webkitClearMarks self markName
  = liftDOM
      (void (self ^. jsf "webkitClearMarks" [toJSVal markName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitMeasure Mozilla Performance.webkitMeasure documentation> 
webkitMeasure ::
              (MonadDOM m, ToJSString measureName, ToJSString startMark,
               ToJSString endMark) =>
                Performance -> measureName -> startMark -> endMark -> m ()
webkitMeasure self measureName startMark endMark
  = liftDOM
      (void
         (self ^. jsf "webkitMeasure"
            [toJSVal measureName, toJSVal startMark, toJSVal endMark]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearMeasures Mozilla Performance.webkitClearMeasures documentation> 
webkitClearMeasures ::
                    (MonadDOM m, ToJSString measureName) =>
                      Performance -> measureName -> m ()
webkitClearMeasures self measureName
  = liftDOM
      (void (self ^. jsf "webkitClearMeasures" [toJSVal measureName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now :: (MonadDOM m) => Performance -> m Double
now self = liftDOM ((self ^. jsf "now" ()) >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now_ :: (MonadDOM m) => Performance -> m ()
now_ self = liftDOM (void (self ^. jsf "now" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigation ::
              (MonadDOM m) => Performance -> m (Maybe PerformanceNavigation)
getNavigation self
  = liftDOM ((self ^. js "navigation") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigationUnchecked ::
                       (MonadDOM m) => Performance -> m PerformanceNavigation
getNavigationUnchecked self
  = liftDOM ((self ^. js "navigation") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTiming ::
          (MonadDOM m) => Performance -> m (Maybe PerformanceTiming)
getTiming self = liftDOM ((self ^. js "timing") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTimingUnchecked ::
                   (MonadDOM m) => Performance -> m PerformanceTiming
getTimingUnchecked self
  = liftDOM ((self ^. js "timing") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.onwebkitresourcetimingbufferfull Mozilla Performance.onwebkitresourcetimingbufferfull documentation> 
webKitResourceTimingBufferFull :: EventName Performance Event
webKitResourceTimingBufferFull
  = unsafeEventName (toJSString "webkitresourcetimingbufferfull")
