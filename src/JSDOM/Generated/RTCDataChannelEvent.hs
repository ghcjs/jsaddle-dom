{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCDataChannelEvent
       (getChannel, getChannelUnsafe, getChannelUnchecked,
        RTCDataChannelEvent(..), gTypeRTCDataChannelEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent.channel Mozilla RTCDataChannelEvent.channel documentation> 
getChannel ::
           (MonadDOM m) => RTCDataChannelEvent -> m (Maybe RTCDataChannel)
getChannel self = liftDOM ((self ^. js "channel") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent.channel Mozilla RTCDataChannelEvent.channel documentation> 
getChannelUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   RTCDataChannelEvent -> m RTCDataChannel
getChannelUnsafe self
  = liftDOM
      (((self ^. js "channel") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent.channel Mozilla RTCDataChannelEvent.channel documentation> 
getChannelUnchecked ::
                    (MonadDOM m) => RTCDataChannelEvent -> m RTCDataChannel
getChannelUnchecked self
  = liftDOM ((self ^. js "channel") >>= fromJSValUnchecked)
