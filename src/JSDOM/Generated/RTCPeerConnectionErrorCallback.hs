{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCPeerConnectionErrorCallback
       (newRTCPeerConnectionErrorCallback,
        newRTCPeerConnectionErrorCallbackSync,
        newRTCPeerConnectionErrorCallbackAsync,
        RTCPeerConnectionErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
newRTCPeerConnectionErrorCallback ::
                                  (MonadDOM m) =>
                                    (Maybe DOMError -> JSM ()) -> m RTCPeerConnectionErrorCallback
newRTCPeerConnectionErrorCallback callback
  = liftDOM
      (RTCPeerConnectionErrorCallback . Callback <$>
         function
           (\ _ _ [error] -> fromJSVal error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
newRTCPeerConnectionErrorCallbackSync ::
                                      (MonadDOM m) =>
                                        (Maybe DOMError -> JSM ()) ->
                                          m RTCPeerConnectionErrorCallback
newRTCPeerConnectionErrorCallbackSync callback
  = liftDOM
      (RTCPeerConnectionErrorCallback . Callback <$>
         function
           (\ _ _ [error] -> fromJSVal error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
newRTCPeerConnectionErrorCallbackAsync ::
                                       (MonadDOM m) =>
                                         (Maybe DOMError -> JSM ()) ->
                                           m RTCPeerConnectionErrorCallback
newRTCPeerConnectionErrorCallbackAsync callback
  = liftDOM
      (RTCPeerConnectionErrorCallback . Callback <$>
         function
           (\ _ _ [error] -> fromJSVal error >>= \ error' -> callback error'))
