{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.RTCSessionDescriptionCallback
       (newRTCSessionDescriptionCallback,
        newRTCSessionDescriptionCallbackSync,
        newRTCSessionDescriptionCallbackAsync,
        RTCSessionDescriptionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallback ::
                                 (MonadDOM m) =>
                                   (Maybe RTCSessionDescription -> JSM ()) ->
                                     m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallback callback
  = liftDOM
      (RTCSessionDescriptionCallback . Callback <$>
         function ""
           (\ _ _ [sdp] -> fromJSVal sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackSync ::
                                     (MonadDOM m) =>
                                       (Maybe RTCSessionDescription -> JSM ()) ->
                                         m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackSync callback
  = liftDOM
      (RTCSessionDescriptionCallback . Callback <$>
         function ""
           (\ _ _ [sdp] -> fromJSVal sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackAsync ::
                                      (MonadDOM m) =>
                                        (Maybe RTCSessionDescription -> JSM ()) ->
                                          m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackAsync callback
  = liftDOM
      (RTCSessionDescriptionCallback . Callback <$>
         function ""
           (\ _ _ [sdp] -> fromJSVal sdp >>= \ sdp' -> callback sdp'))