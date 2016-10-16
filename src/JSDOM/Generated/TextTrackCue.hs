{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextTrackCue
       (newTextTrackCue, getTrack, getTrackUnsafe, getTrackUnchecked,
        setId, getId, setStartTime, getStartTime, setEndTime, getEndTime,
        setPauseOnExit, getPauseOnExit, enter, exit, TextTrackCue(..),
        gTypeTextTrackCue, IsTextTrackCue, toTextTrackCue)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation> 
newTextTrackCue ::
                (MonadDOM m, ToJSString text) =>
                  Double -> Double -> text -> m TextTrackCue
newTextTrackCue startTime endTime text
  = liftDOM
      (TextTrackCue <$>
         new (jsg "TextTrackCue")
           [toJSVal startTime, toJSVal endTime, toJSVal text])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
getTrack ::
         (MonadDOM m, IsTextTrackCue self) => self -> m (Maybe TextTrack)
getTrack self
  = liftDOM (((toTextTrackCue self) ^. js "track") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
getTrackUnsafe ::
               (MonadDOM m, IsTextTrackCue self, HasCallStack) =>
                 self -> m TextTrack
getTrackUnsafe self
  = liftDOM
      ((((toTextTrackCue self) ^. js "track") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
getTrackUnchecked ::
                  (MonadDOM m, IsTextTrackCue self) => self -> m TextTrack
getTrackUnchecked self
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
