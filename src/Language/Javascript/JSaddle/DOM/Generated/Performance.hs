{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.Performance
       (webkitGetEntries, webkitGetEntriesByType, webkitGetEntriesByName,
        webkitClearResourceTimings, webkitSetResourceTimingBufferSize,
        webkitMark, webkitClearMarks, webkitMeasure, webkitClearMeasures,
        now, getNavigation, getTiming, webKitResourceTimingBufferFull,
        Performance, castToPerformance, gTypePerformance)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntries ::
                 (MonadDOM m) => Performance -> m (Maybe PerformanceEntryList)
webkitGetEntries self
  = liftDOM ((self ^. js "webkitGetEntries") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByType ::
                       (MonadDOM m, ToJSString entryType) =>
                         Performance -> entryType -> m (Maybe PerformanceEntryList)
webkitGetEntriesByType self entryType
  = liftDOM
      ((self ^. jsf "webkitGetEntriesByType" [toJSVal entryType]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByName ::
                       (MonadDOM m, ToJSString name, ToJSString entryType) =>
                         Performance -> name -> entryType -> m (Maybe PerformanceEntryList)
webkitGetEntriesByName self name entryType
  = liftDOM
      ((self ^. jsf "webkitGetEntriesByName"
          [toJSVal name, toJSVal entryType])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearResourceTimings Mozilla Performance.webkitClearResourceTimings documentation> 
webkitClearResourceTimings :: (MonadDOM m) => Performance -> m ()
webkitClearResourceTimings self
  = liftDOM (void (self ^. js "webkitClearResourceTimings"))

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
now self = liftDOM ((self ^. js "now") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigation ::
              (MonadDOM m) => Performance -> m (Maybe PerformanceNavigation)
getNavigation self
  = liftDOM ((self ^. js "navigation") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTiming ::
          (MonadDOM m) => Performance -> m (Maybe PerformanceTiming)
getTiming self = liftDOM ((self ^. js "timing") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.onwebkitresourcetimingbufferfull Mozilla Performance.onwebkitresourcetimingbufferfull documentation> 
webKitResourceTimingBufferFull :: EventName Performance Event
webKitResourceTimingBufferFull
  = unsafeEventName (toJSString "webkitresourcetimingbufferfull")