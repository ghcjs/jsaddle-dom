{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitMediaKeySession
       (update, close, getError, getKeySystem, getSessionId,
        webKitKeyAdded, webKitKeyError, webKitKeyMessage,
        WebKitMediaKeySession(..), gTypeWebKitMediaKeySession)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.update Mozilla WebKitMediaKeySession.update documentation> 
update ::
       (MonadDOM m, IsUint8Array key) =>
         WebKitMediaKeySession -> key -> m ()
update self key
  = liftDOM (void (self ^. jsf "update" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.close Mozilla WebKitMediaKeySession.close documentation> 
close :: (MonadDOM m) => WebKitMediaKeySession -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.error Mozilla WebKitMediaKeySession.error documentation> 
getError ::
         (MonadDOM m) => WebKitMediaKeySession -> m WebKitMediaKeyError
getError self
  = liftDOM ((self ^. js "error") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.keySystem Mozilla WebKitMediaKeySession.keySystem documentation> 
getKeySystem ::
             (MonadDOM m, FromJSString result) =>
               WebKitMediaKeySession -> m result
getKeySystem self
  = liftDOM ((self ^. js "keySystem") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.sessionId Mozilla WebKitMediaKeySession.sessionId documentation> 
getSessionId ::
             (MonadDOM m, FromJSString result) =>
               WebKitMediaKeySession -> m result
getSessionId self
  = liftDOM ((self ^. js "sessionId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyadded Mozilla WebKitMediaKeySession.onwebkitkeyadded documentation> 
webKitKeyAdded :: EventName WebKitMediaKeySession Event
webKitKeyAdded = unsafeEventName (toJSString "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyerror Mozilla WebKitMediaKeySession.onwebkitkeyerror documentation> 
webKitKeyError :: EventName WebKitMediaKeySession Event
webKitKeyError = unsafeEventName (toJSString "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeymessage Mozilla WebKitMediaKeySession.onwebkitkeymessage documentation> 
webKitKeyMessage :: EventName WebKitMediaKeySession Event
webKitKeyMessage = unsafeEventName (toJSString "webkitkeymessage")
