{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCDTMFSender
       (insertDTMF, toneChange, getToneBuffer, getCanInsertDTMF, getTrack,
        getDuration, getInterToneGap, RTCDTMFSender(..),
        gTypeRTCDTMFSender)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.insertDTMF Mozilla RTCDTMFSender.insertDTMF documentation> 
insertDTMF ::
           (MonadDOM m, ToJSString tones) =>
             RTCDTMFSender -> tones -> Maybe Int -> Maybe Int -> m ()
insertDTMF self tones duration interToneGap
  = liftDOM
      (void
         (self ^. jsf "insertDTMF"
            [toJSVal tones, toJSVal duration, toJSVal interToneGap]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.ontonechange Mozilla RTCDTMFSender.ontonechange documentation> 
toneChange :: EventName RTCDTMFSender Event
toneChange = unsafeEventName (toJSString "tonechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.toneBuffer Mozilla RTCDTMFSender.toneBuffer documentation> 
getToneBuffer ::
              (MonadDOM m, FromJSString result) => RTCDTMFSender -> m result
getToneBuffer self
  = liftDOM ((self ^. js "toneBuffer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.canInsertDTMF Mozilla RTCDTMFSender.canInsertDTMF documentation> 
getCanInsertDTMF :: (MonadDOM m) => RTCDTMFSender -> m Bool
getCanInsertDTMF self
  = liftDOM ((self ^. js "canInsertDTMF") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.track Mozilla RTCDTMFSender.track documentation> 
getTrack :: (MonadDOM m) => RTCDTMFSender -> m MediaStreamTrack
getTrack self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.duration Mozilla RTCDTMFSender.duration documentation> 
getDuration :: (MonadDOM m) => RTCDTMFSender -> m Int
getDuration self
  = liftDOM (round <$> ((self ^. js "duration") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.interToneGap Mozilla RTCDTMFSender.interToneGap documentation> 
getInterToneGap :: (MonadDOM m) => RTCDTMFSender -> m Int
getInterToneGap self
  = liftDOM (round <$> ((self ^. js "interToneGap") >>= valToNumber))
