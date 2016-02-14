{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.RTCSessionDescription
       (newRTCSessionDescription, setType, getType, setSdp, getSdp,
        RTCSessionDescription, castToRTCSessionDescription,
        gTypeRTCSessionDescription)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation> 
newRTCSessionDescription ::
                         (MonadDOM m, IsDictionary dictionary) =>
                           Maybe dictionary -> m RTCSessionDescription
newRTCSessionDescription dictionary
  = liftDOM
      (RTCSessionDescription <$>
         new (jsg "RTCSessionDescription") [toJSVal dictionary])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.type Mozilla RTCSessionDescription.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) =>
          RTCSessionDescription -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.type Mozilla RTCSessionDescription.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) =>
          RTCSessionDescription -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
setSdp ::
       (MonadDOM m, ToJSString val) =>
         RTCSessionDescription -> val -> m ()
setSdp self val = liftDOM (self ^. jss "sdp" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
getSdp ::
       (MonadDOM m, FromJSString result) =>
         RTCSessionDescription -> m result
getSdp self = liftDOM ((self ^. js "sdp") >>= fromJSValUnchecked)