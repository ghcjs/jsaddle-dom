{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeyMessageEvent
       (getMessage, getMessageUnchecked, getDestinationURL,
        MediaKeyMessageEvent, castToMediaKeyMessageEvent,
        gTypeMediaKeyMessageEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage ::
           (MonadDOM m) => MediaKeyMessageEvent -> m (Maybe Uint8Array)
getMessage self = liftDOM ((self ^. js "message") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessageUnchecked ::
                    (MonadDOM m) => MediaKeyMessageEvent -> m Uint8Array
getMessageUnchecked self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.destinationURL Mozilla WebKitMediaKeyMessageEvent.destinationURL documentation> 
getDestinationURL ::
                  (MonadDOM m, FromJSString result) =>
                    MediaKeyMessageEvent -> m result
getDestinationURL self
  = liftDOM ((self ^. js "destinationURL") >>= fromJSValUnchecked)
