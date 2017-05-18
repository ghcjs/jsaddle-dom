{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeyMessageEvent
       (newMediaKeyMessageEvent, getMessageType, getMessage,
        MediaKeyMessageEvent(..), gTypeMediaKeyMessageEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent Mozilla WebKitMediaKeyMessageEvent documentation> 
newMediaKeyMessageEvent ::
                        (MonadDOM m, ToJSString type') =>
                          type' -> MediaKeyMessageEventInit -> m MediaKeyMessageEvent
newMediaKeyMessageEvent type' eventInitDict
  = liftDOM
      (MediaKeyMessageEvent <$>
         new (jsg "MediaKeyMessageEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.messageType Mozilla WebKitMediaKeyMessageEvent.messageType documentation> 
getMessageType ::
               (MonadDOM m) => MediaKeyMessageEvent -> m MediaKeyMessageType
getMessageType self
  = liftDOM ((self ^. js "messageType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage :: (MonadDOM m) => MediaKeyMessageEvent -> m ArrayBuffer
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)
