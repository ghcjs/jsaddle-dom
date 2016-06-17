{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.PerformanceResourceTiming
       (getInitiatorType, getRedirectStart, getRedirectEnd, getFetchStart,
        getDomainLookupStart, getDomainLookupEnd, getConnectStart,
        getConnectEnd, getSecureConnectionStart, getRequestStart,
        getResponseEnd, PerformanceResourceTiming,
        castToPerformanceResourceTiming, gTypePerformanceResourceTiming)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.initiatorType Mozilla PerformanceResourceTiming.initiatorType documentation> 
getInitiatorType ::
                 (MonadDOM m, FromJSString result) =>
                   PerformanceResourceTiming -> m result
getInitiatorType self
  = liftDOM ((self ^. js "initiatorType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectStart Mozilla PerformanceResourceTiming.redirectStart documentation> 
getRedirectStart ::
                 (MonadDOM m) => PerformanceResourceTiming -> m Double
getRedirectStart self
  = liftDOM ((self ^. js "redirectStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectEnd Mozilla PerformanceResourceTiming.redirectEnd documentation> 
getRedirectEnd ::
               (MonadDOM m) => PerformanceResourceTiming -> m Double
getRedirectEnd self
  = liftDOM ((self ^. js "redirectEnd") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.fetchStart Mozilla PerformanceResourceTiming.fetchStart documentation> 
getFetchStart ::
              (MonadDOM m) => PerformanceResourceTiming -> m Double
getFetchStart self
  = liftDOM ((self ^. js "fetchStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupStart Mozilla PerformanceResourceTiming.domainLookupStart documentation> 
getDomainLookupStart ::
                     (MonadDOM m) => PerformanceResourceTiming -> m Double
getDomainLookupStart self
  = liftDOM ((self ^. js "domainLookupStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupEnd Mozilla PerformanceResourceTiming.domainLookupEnd documentation> 
getDomainLookupEnd ::
                   (MonadDOM m) => PerformanceResourceTiming -> m Double
getDomainLookupEnd self
  = liftDOM ((self ^. js "domainLookupEnd") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectStart Mozilla PerformanceResourceTiming.connectStart documentation> 
getConnectStart ::
                (MonadDOM m) => PerformanceResourceTiming -> m Double
getConnectStart self
  = liftDOM ((self ^. js "connectStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectEnd Mozilla PerformanceResourceTiming.connectEnd documentation> 
getConnectEnd ::
              (MonadDOM m) => PerformanceResourceTiming -> m Double
getConnectEnd self
  = liftDOM ((self ^. js "connectEnd") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.secureConnectionStart Mozilla PerformanceResourceTiming.secureConnectionStart documentation> 
getSecureConnectionStart ::
                         (MonadDOM m) => PerformanceResourceTiming -> m Double
getSecureConnectionStart self
  = liftDOM ((self ^. js "secureConnectionStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.requestStart Mozilla PerformanceResourceTiming.requestStart documentation> 
getRequestStart ::
                (MonadDOM m) => PerformanceResourceTiming -> m Double
getRequestStart self
  = liftDOM ((self ^. js "requestStart") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseEnd Mozilla PerformanceResourceTiming.responseEnd documentation> 
getResponseEnd ::
               (MonadDOM m) => PerformanceResourceTiming -> m Double
getResponseEnd self
  = liftDOM ((self ^. js "responseEnd") >>= valToNumber)
