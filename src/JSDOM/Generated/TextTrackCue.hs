{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextTrackCue
       (getTrack, setId, getId, setStartTime, getStartTime, setEndTime,
        getEndTime, setPauseOnExit, getPauseOnExit, enter, exit,
        TextTrackCue(..), gTypeTextTrackCue, IsTextTrackCue,
        toTextTrackCue)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
getTrack ::
         (MonadDOM m, IsTextTrackCue self) => self -> m TextTrack
getTrack self
  = liftDOM
      (((toTextTrackCue self) ^. js "track") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
setId ::
      (MonadDOM m, IsTextTrackCue self, ToJSString val) =>
        self -> val -> m ()
setId self val
  = liftDOM ((toTextTrackCue self) ^. jss "id" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
getId ::
      (MonadDOM m, IsTextTrackCue self, FromJSString result) =>
        self -> m result
getId self
  = liftDOM
      (((toTextTrackCue self) ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
setStartTime ::
             (MonadDOM m, IsTextTrackCue self) => self -> Double -> m ()
setStartTime self val
  = liftDOM ((toTextTrackCue self) ^. jss "startTime" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
getStartTime ::
             (MonadDOM m, IsTextTrackCue self) => self -> m Double
getStartTime self
  = liftDOM
      (((toTextTrackCue self) ^. js "startTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
setEndTime ::
           (MonadDOM m, IsTextTrackCue self) => self -> Double -> m ()
setEndTime self val
  = liftDOM ((toTextTrackCue self) ^. jss "endTime" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
getEndTime :: (MonadDOM m, IsTextTrackCue self) => self -> m Double
getEndTime self
  = liftDOM (((toTextTrackCue self) ^. js "endTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
setPauseOnExit ::
               (MonadDOM m, IsTextTrackCue self) => self -> Bool -> m ()
setPauseOnExit self val
  = liftDOM
      ((toTextTrackCue self) ^. jss "pauseOnExit" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
getPauseOnExit ::
               (MonadDOM m, IsTextTrackCue self) => self -> m Bool
getPauseOnExit self
  = liftDOM
      (((toTextTrackCue self) ^. js "pauseOnExit") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.onenter Mozilla TextTrackCue.onenter documentation> 
enter ::
      (IsTextTrackCue self, IsEventTarget self) => EventName self Event
enter = unsafeEventName (toJSString "enter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.onexit Mozilla TextTrackCue.onexit documentation> 
exit ::
     (IsTextTrackCue self, IsEventTarget self) => EventName self Event
exit = unsafeEventName (toJSString "exit")
