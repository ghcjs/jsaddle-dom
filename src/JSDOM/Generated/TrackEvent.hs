{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TrackEvent
       (newTrackEvent, getTrack, getTrackUnsafe, getTrackUnchecked,
        TrackEvent(..), gTypeTrackEvent)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent Mozilla TrackEvent documentation> 
newTrackEvent ::
              (MonadDOM m, ToJSString type') =>
                type' -> Maybe TrackEventInit -> m TrackEvent
newTrackEvent type' eventInitDict
  = liftDOM
      (TrackEvent <$>
         new (jsg "TrackEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
getTrack :: (MonadDOM m) => TrackEvent -> m (Maybe Track)
getTrack self = liftDOM ((self ^. js "track") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
getTrackUnsafe ::
               (MonadDOM m, HasCallStack) => TrackEvent -> m Track
getTrackUnsafe self
  = liftDOM
      (((self ^. js "track") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
getTrackUnchecked :: (MonadDOM m) => TrackEvent -> m Track
getTrackUnchecked self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)
