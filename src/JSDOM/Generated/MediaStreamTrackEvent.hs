{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaStreamTrackEvent
       (newMediaStreamTrackEvent, getTrack, MediaStreamTrackEvent(..),
        gTypeMediaStreamTrackEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent Mozilla MediaStreamTrackEvent documentation> 
newMediaStreamTrackEvent ::
                         (MonadDOM m, ToJSString type') =>
                           type' -> MediaStreamTrackEventInit -> m MediaStreamTrackEvent
newMediaStreamTrackEvent type' eventInitDict
  = liftDOM
      (MediaStreamTrackEvent <$>
         new (jsg "MediaStreamTrackEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent.track Mozilla MediaStreamTrackEvent.track documentation> 
getTrack ::
         (MonadDOM m) => MediaStreamTrackEvent -> m MediaStreamTrack
getTrack self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)
