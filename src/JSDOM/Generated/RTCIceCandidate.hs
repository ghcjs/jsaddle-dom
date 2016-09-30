{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCIceCandidate
       (newRTCIceCandidate, getCandidate, getSdpMid, getSdpMLineIndex,
        RTCIceCandidate, castToRTCIceCandidate, gTypeRTCIceCandidate)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation> 
newRTCIceCandidate ::
                   (MonadDOM m, IsDictionary dictionary) =>
                     Maybe dictionary -> m RTCIceCandidate
newRTCIceCandidate dictionary
  = liftDOM
      (RTCIceCandidate <$>
         new (jsg "RTCIceCandidate") [toJSVal dictionary])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.candidate Mozilla RTCIceCandidate.candidate documentation> 
getCandidate ::
             (MonadDOM m, FromJSString result) => RTCIceCandidate -> m result
getCandidate self
  = liftDOM ((self ^. js "candidate") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMid ::
          (MonadDOM m, FromJSString result) => RTCIceCandidate -> m result
getSdpMid self
  = liftDOM ((self ^. js "sdpMid") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndex :: (MonadDOM m) => RTCIceCandidate -> m Word
getSdpMLineIndex self
  = liftDOM
      (round <$> ((self ^. js "sdpMLineIndex") >>= valToNumber))
