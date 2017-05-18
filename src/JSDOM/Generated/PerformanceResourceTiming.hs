{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PerformanceResourceTiming
       (getInitiatorType, getNextHopProtocol, getWorkerStart,
        getRedirectStart, getRedirectEnd, getFetchStart,
        getDomainLookupStart, getDomainLookupEnd, getConnectStart,
        getConnectEnd, getSecureConnectionStart, getRequestStart,
        getResponseStart, getResponseEnd, PerformanceResourceTiming(..),
        gTypePerformanceResourceTiming)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.initiatorType Mozilla PerformanceResourceTiming.initiatorType documentation> 
getInitiatorType ::
                 (MonadDOM m, FromJSString result) =>
                   PerformanceResourceTiming -> m result
getInitiatorType self
  = liftDOM ((self ^. js "initiatorType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.nextHopProtocol Mozilla PerformanceResourceTiming.nextHopProtocol documentation> 
getNextHopProtocol ::
                   (MonadDOM m, FromJSString result) =>
                     PerformanceResourceTiming -> m result
getNextHopProtocol self
  = liftDOM ((self ^. js "nextHopProtocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.workerStart Mozilla PerformanceResourceTiming.workerStart documentation> 
getWorkerStart ::
               (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getWorkerStart self
  = liftDOM ((self ^. js "workerStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectStart Mozilla PerformanceResourceTiming.redirectStart documentation> 
getRedirectStart ::
                 (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getRedirectStart self
  = liftDOM ((self ^. js "redirectStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectEnd Mozilla PerformanceResourceTiming.redirectEnd documentation> 
getRedirectEnd ::
               (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getRedirectEnd self
  = liftDOM ((self ^. js "redirectEnd") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.fetchStart Mozilla PerformanceResourceTiming.fetchStart documentation> 
getFetchStart ::
              (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getFetchStart self
  = liftDOM ((self ^. js "fetchStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupStart Mozilla PerformanceResourceTiming.domainLookupStart documentation> 
getDomainLookupStart ::
                     (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getDomainLookupStart self
  = liftDOM ((self ^. js "domainLookupStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupEnd Mozilla PerformanceResourceTiming.domainLookupEnd documentation> 
getDomainLookupEnd ::
                   (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getDomainLookupEnd self
  = liftDOM ((self ^. js "domainLookupEnd") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectStart Mozilla PerformanceResourceTiming.connectStart documentation> 
getConnectStart ::
                (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getConnectStart self
  = liftDOM ((self ^. js "connectStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectEnd Mozilla PerformanceResourceTiming.connectEnd documentation> 
getConnectEnd ::
              (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getConnectEnd self
  = liftDOM ((self ^. js "connectEnd") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.secureConnectionStart Mozilla PerformanceResourceTiming.secureConnectionStart documentation> 
getSecureConnectionStart ::
                         (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getSecureConnectionStart self
  = liftDOM
      ((self ^. js "secureConnectionStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.requestStart Mozilla PerformanceResourceTiming.requestStart documentation> 
getRequestStart ::
                (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getRequestStart self
  = liftDOM ((self ^. js "requestStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseStart Mozilla PerformanceResourceTiming.responseStart documentation> 
getResponseStart ::
                 (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getResponseStart self
  = liftDOM ((self ^. js "responseStart") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseEnd Mozilla PerformanceResourceTiming.responseEnd documentation> 
getResponseEnd ::
               (MonadDOM m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getResponseEnd self
  = liftDOM ((self ^. js "responseEnd") >>= fromJSValUnchecked)
