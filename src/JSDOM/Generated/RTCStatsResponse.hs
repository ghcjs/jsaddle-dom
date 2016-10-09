{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCStatsResponse
       (result, result_, namedItem, namedItem_, namedItemUnchecked,
        RTCStatsResponse, castToRTCStatsResponse, gTypeRTCStatsResponse)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.result Mozilla RTCStatsResponse.result documentation> 
result ::
       (MonadDOM m) => RTCStatsResponse -> m [Maybe RTCStatsReport]
result self = liftDOM ((self ^. jsf "result" ()) >>= fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.result Mozilla RTCStatsResponse.result documentation> 
result_ :: (MonadDOM m) => RTCStatsResponse -> m ()
result_ self = liftDOM (void (self ^. jsf "result" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.namedItem Mozilla RTCStatsResponse.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            RTCStatsResponse -> name -> m (Maybe RTCStatsReport)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.namedItem Mozilla RTCStatsResponse.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) => RTCStatsResponse -> name -> m ()
namedItem_ self name
  = liftDOM (void (self ^. jsf "namedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.namedItem Mozilla RTCStatsResponse.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     RTCStatsResponse -> name -> m RTCStatsReport
namedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSValUnchecked)
