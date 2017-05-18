{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCDTMFToneChangeEvent
       (newRTCDTMFToneChangeEvent, getTone, RTCDTMFToneChangeEvent(..),
        gTypeRTCDTMFToneChangeEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent Mozilla RTCDTMFToneChangeEvent documentation> 
newRTCDTMFToneChangeEvent ::
                          (MonadDOM m, ToJSString type') =>
                            type' ->
                              Maybe RTCDTMFToneChangeEventInit -> m RTCDTMFToneChangeEvent
newRTCDTMFToneChangeEvent type' eventInitDict
  = liftDOM
      (RTCDTMFToneChangeEvent <$>
         new (jsg "RTCDTMFToneChangeEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent.tone Mozilla RTCDTMFToneChangeEvent.tone documentation> 
getTone ::
        (MonadDOM m, FromJSString result) =>
          RTCDTMFToneChangeEvent -> m result
getTone self = liftDOM ((self ^. js "tone") >>= fromJSValUnchecked)
