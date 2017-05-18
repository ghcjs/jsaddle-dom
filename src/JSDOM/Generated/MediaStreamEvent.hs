{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaStreamEvent
       (newMediaStreamEvent, getStream, getStreamUnsafe,
        getStreamUnchecked, MediaStreamEvent(..), gTypeMediaStreamEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent Mozilla MediaStreamEvent documentation> 
newMediaStreamEvent ::
                    (MonadDOM m, ToJSString type') =>
                      type' -> Maybe MediaStreamEventInit -> m MediaStreamEvent
newMediaStreamEvent type' eventInitDict
  = liftDOM
      (MediaStreamEvent <$>
         new (jsg "MediaStreamEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent.stream Mozilla MediaStreamEvent.stream documentation> 
getStream ::
          (MonadDOM m) => MediaStreamEvent -> m (Maybe MediaStream)
getStream self = liftDOM ((self ^. js "stream") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent.stream Mozilla MediaStreamEvent.stream documentation> 
getStreamUnsafe ::
                (MonadDOM m, HasCallStack) => MediaStreamEvent -> m MediaStream
getStreamUnsafe self
  = liftDOM
      (((self ^. js "stream") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent.stream Mozilla MediaStreamEvent.stream documentation> 
getStreamUnchecked ::
                   (MonadDOM m) => MediaStreamEvent -> m MediaStream
getStreamUnchecked self
  = liftDOM ((self ^. js "stream") >>= fromJSValUnchecked)
