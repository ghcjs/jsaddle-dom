{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeySession
       (generateRequest, load, load_, update, close, remove, getSessionId,
        getExpiration, getClosed, getKeyStatuses, keystatuseschange,
        message, MediaKeySession(..), gTypeMediaKeySession)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.generateRequest Mozilla WebKitMediaKeySession.generateRequest documentation> 
generateRequest ::
                (MonadDOM m, ToJSString initDataType, IsBufferSource initData) =>
                  MediaKeySession -> initDataType -> initData -> m ()
generateRequest self initDataType initData
  = liftDOM
      (void
         ((self ^. jsf "generateRequest"
             [toJSVal initDataType, toJSVal initData])
            >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.load Mozilla WebKitMediaKeySession.load documentation> 
load ::
     (MonadDOM m, ToJSString sessionId) =>
       MediaKeySession -> sessionId -> m Bool
load self sessionId
  = liftDOM
      (((self ^. jsf "load" [toJSVal sessionId]) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.load Mozilla WebKitMediaKeySession.load documentation> 
load_ ::
      (MonadDOM m, ToJSString sessionId) =>
        MediaKeySession -> sessionId -> m ()
load_ self sessionId
  = liftDOM (void (self ^. jsf "load" [toJSVal sessionId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.update Mozilla WebKitMediaKeySession.update documentation> 
update ::
       (MonadDOM m, IsBufferSource response) =>
         MediaKeySession -> response -> m ()
update self response
  = liftDOM
      (void ((self ^. jsf "update" [toJSVal response]) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.close Mozilla WebKitMediaKeySession.close documentation> 
close :: (MonadDOM m) => MediaKeySession -> m ()
close self
  = liftDOM (void ((self ^. jsf "close" ()) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.remove Mozilla WebKitMediaKeySession.remove documentation> 
remove :: (MonadDOM m) => MediaKeySession -> m ()
remove self
  = liftDOM (void ((self ^. jsf "remove" ()) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.sessionId Mozilla WebKitMediaKeySession.sessionId documentation> 
getSessionId ::
             (MonadDOM m, FromJSString result) => MediaKeySession -> m result
getSessionId self
  = liftDOM ((self ^. js "sessionId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.expiration Mozilla WebKitMediaKeySession.expiration documentation> 
getExpiration :: (MonadDOM m) => MediaKeySession -> m Double
getExpiration self
  = liftDOM ((self ^. js "expiration") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.closed Mozilla WebKitMediaKeySession.closed documentation> 
getClosed :: (MonadDOM m) => MediaKeySession -> m ()
getClosed self
  = liftDOM (void ((self ^. js "closed") >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.keyStatuses Mozilla WebKitMediaKeySession.keyStatuses documentation> 
getKeyStatuses ::
               (MonadDOM m) => MediaKeySession -> m MediaKeyStatusMap
getKeyStatuses self
  = liftDOM ((self ^. js "keyStatuses") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onkeystatuseschange Mozilla WebKitMediaKeySession.onkeystatuseschange documentation> 
keystatuseschange :: EventName MediaKeySession onkeystatuseschange
keystatuseschange
  = unsafeEventName (toJSString "keystatuseschange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onmessage Mozilla WebKitMediaKeySession.onmessage documentation> 
message :: EventName MediaKeySession MessageEvent
message = unsafeEventName (toJSString "message")
