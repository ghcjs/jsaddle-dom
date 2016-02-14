{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.PerformanceTiming
       (getNavigationStart, getUnloadEventStart, getUnloadEventEnd,
        getRedirectStart, getRedirectEnd, getFetchStart,
        getDomainLookupStart, getDomainLookupEnd, getConnectStart,
        getConnectEnd, getSecureConnectionStart, getRequestStart,
        getResponseStart, getResponseEnd, getDomLoading, getDomInteractive,
        getDomContentLoadedEventStart, getDomContentLoadedEventEnd,
        getDomComplete, getLoadEventStart, getLoadEventEnd,
        PerformanceTiming, castToPerformanceTiming, gTypePerformanceTiming)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.navigationStart Mozilla PerformanceTiming.navigationStart documentation> 
getNavigationStart :: (MonadDOM m) => PerformanceTiming -> m Word64
getNavigationStart self
  = liftDOM
      (round <$> ((self ^. js "navigationStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventStart Mozilla PerformanceTiming.unloadEventStart documentation> 
getUnloadEventStart ::
                    (MonadDOM m) => PerformanceTiming -> m Word64
getUnloadEventStart self
  = liftDOM
      (round <$> ((self ^. js "unloadEventStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventEnd Mozilla PerformanceTiming.unloadEventEnd documentation> 
getUnloadEventEnd :: (MonadDOM m) => PerformanceTiming -> m Word64
getUnloadEventEnd self
  = liftDOM
      (round <$> ((self ^. js "unloadEventEnd") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectStart Mozilla PerformanceTiming.redirectStart documentation> 
getRedirectStart :: (MonadDOM m) => PerformanceTiming -> m Word64
getRedirectStart self
  = liftDOM
      (round <$> ((self ^. js "redirectStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectEnd Mozilla PerformanceTiming.redirectEnd documentation> 
getRedirectEnd :: (MonadDOM m) => PerformanceTiming -> m Word64
getRedirectEnd self
  = liftDOM (round <$> ((self ^. js "redirectEnd") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.fetchStart Mozilla PerformanceTiming.fetchStart documentation> 
getFetchStart :: (MonadDOM m) => PerformanceTiming -> m Word64
getFetchStart self
  = liftDOM (round <$> ((self ^. js "fetchStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupStart Mozilla PerformanceTiming.domainLookupStart documentation> 
getDomainLookupStart ::
                     (MonadDOM m) => PerformanceTiming -> m Word64
getDomainLookupStart self
  = liftDOM
      (round <$> ((self ^. js "domainLookupStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupEnd Mozilla PerformanceTiming.domainLookupEnd documentation> 
getDomainLookupEnd :: (MonadDOM m) => PerformanceTiming -> m Word64
getDomainLookupEnd self
  = liftDOM
      (round <$> ((self ^. js "domainLookupEnd") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectStart Mozilla PerformanceTiming.connectStart documentation> 
getConnectStart :: (MonadDOM m) => PerformanceTiming -> m Word64
getConnectStart self
  = liftDOM (round <$> ((self ^. js "connectStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectEnd Mozilla PerformanceTiming.connectEnd documentation> 
getConnectEnd :: (MonadDOM m) => PerformanceTiming -> m Word64
getConnectEnd self
  = liftDOM (round <$> ((self ^. js "connectEnd") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.secureConnectionStart Mozilla PerformanceTiming.secureConnectionStart documentation> 
getSecureConnectionStart ::
                         (MonadDOM m) => PerformanceTiming -> m Word64
getSecureConnectionStart self
  = liftDOM
      (round <$> ((self ^. js "secureConnectionStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.requestStart Mozilla PerformanceTiming.requestStart documentation> 
getRequestStart :: (MonadDOM m) => PerformanceTiming -> m Word64
getRequestStart self
  = liftDOM (round <$> ((self ^. js "requestStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseStart Mozilla PerformanceTiming.responseStart documentation> 
getResponseStart :: (MonadDOM m) => PerformanceTiming -> m Word64
getResponseStart self
  = liftDOM
      (round <$> ((self ^. js "responseStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseEnd Mozilla PerformanceTiming.responseEnd documentation> 
getResponseEnd :: (MonadDOM m) => PerformanceTiming -> m Word64
getResponseEnd self
  = liftDOM (round <$> ((self ^. js "responseEnd") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domLoading Mozilla PerformanceTiming.domLoading documentation> 
getDomLoading :: (MonadDOM m) => PerformanceTiming -> m Word64
getDomLoading self
  = liftDOM (round <$> ((self ^. js "domLoading") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domInteractive Mozilla PerformanceTiming.domInteractive documentation> 
getDomInteractive :: (MonadDOM m) => PerformanceTiming -> m Word64
getDomInteractive self
  = liftDOM
      (round <$> ((self ^. js "domInteractive") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventStart Mozilla PerformanceTiming.domContentLoadedEventStart documentation> 
getDomContentLoadedEventStart ::
                              (MonadDOM m) => PerformanceTiming -> m Word64
getDomContentLoadedEventStart self
  = liftDOM
      (round <$>
         ((self ^. js "domContentLoadedEventStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventEnd Mozilla PerformanceTiming.domContentLoadedEventEnd documentation> 
getDomContentLoadedEventEnd ::
                            (MonadDOM m) => PerformanceTiming -> m Word64
getDomContentLoadedEventEnd self
  = liftDOM
      (round <$>
         ((self ^. js "domContentLoadedEventEnd") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domComplete Mozilla PerformanceTiming.domComplete documentation> 
getDomComplete :: (MonadDOM m) => PerformanceTiming -> m Word64
getDomComplete self
  = liftDOM (round <$> ((self ^. js "domComplete") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventStart Mozilla PerformanceTiming.loadEventStart documentation> 
getLoadEventStart :: (MonadDOM m) => PerformanceTiming -> m Word64
getLoadEventStart self
  = liftDOM
      (round <$> ((self ^. js "loadEventStart") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventEnd Mozilla PerformanceTiming.loadEventEnd documentation> 
getLoadEventEnd :: (MonadDOM m) => PerformanceTiming -> m Word64
getLoadEventEnd self
  = liftDOM (round <$> ((self ^. js "loadEventEnd") >>= valToNumber))