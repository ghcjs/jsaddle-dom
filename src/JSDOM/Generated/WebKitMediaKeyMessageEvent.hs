{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitMediaKeyMessageEvent
       (newWebKitMediaKeyMessageEvent, getMessage, getDestinationURL,
        WebKitMediaKeyMessageEvent(..), gTypeWebKitMediaKeyMessageEvent)
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
newWebKitMediaKeyMessageEvent ::
                              (MonadDOM m, ToJSString type') =>
                                type' ->
                                  Maybe WebKitMediaKeyMessageEventInit ->
                                    m WebKitMediaKeyMessageEvent
newWebKitMediaKeyMessageEvent type' eventInitDict
  = liftDOM
      (WebKitMediaKeyMessageEvent <$>
         new (jsg "WebKitMediaKeyMessageEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage ::
           (MonadDOM m) => WebKitMediaKeyMessageEvent -> m Uint8Array
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.destinationURL Mozilla WebKitMediaKeyMessageEvent.destinationURL documentation> 
getDestinationURL ::
                  (MonadDOM m, FromJSString result) =>
                    WebKitMediaKeyMessageEvent -> m result
getDestinationURL self
  = liftDOM ((self ^. js "destinationURL") >>= fromJSValUnchecked)
