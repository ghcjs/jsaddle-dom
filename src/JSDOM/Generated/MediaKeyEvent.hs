{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeyEvent
       (getKeySystem, getSessionId, getInitData, getInitDataUnchecked,
        getMessage, getMessageUnchecked, getDefaultURL, getErrorCode,
        getErrorCodeUnchecked, getSystemCode, MediaKeyEvent(..),
        gTypeMediaKeyEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.keySystem Mozilla MediaKeyEvent.keySystem documentation> 
getKeySystem ::
             (MonadDOM m, FromJSString result) => MediaKeyEvent -> m result
getKeySystem self
  = liftDOM ((self ^. js "keySystem") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.sessionId Mozilla MediaKeyEvent.sessionId documentation> 
getSessionId ::
             (MonadDOM m, FromJSString result) => MediaKeyEvent -> m result
getSessionId self
  = liftDOM ((self ^. js "sessionId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.initData Mozilla MediaKeyEvent.initData documentation> 
getInitData ::
            (MonadDOM m) => MediaKeyEvent -> m (Maybe Uint8Array)
getInitData self = liftDOM ((self ^. js "initData") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.initData Mozilla MediaKeyEvent.initData documentation> 
getInitDataUnchecked ::
                     (MonadDOM m) => MediaKeyEvent -> m Uint8Array
getInitDataUnchecked self
  = liftDOM ((self ^. js "initData") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.message Mozilla MediaKeyEvent.message documentation> 
getMessage :: (MonadDOM m) => MediaKeyEvent -> m (Maybe Uint8Array)
getMessage self = liftDOM ((self ^. js "message") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.message Mozilla MediaKeyEvent.message documentation> 
getMessageUnchecked ::
                    (MonadDOM m) => MediaKeyEvent -> m Uint8Array
getMessageUnchecked self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.defaultURL Mozilla MediaKeyEvent.defaultURL documentation> 
getDefaultURL ::
              (MonadDOM m, FromJSString result) => MediaKeyEvent -> m result
getDefaultURL self
  = liftDOM ((self ^. js "defaultURL") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.errorCode Mozilla MediaKeyEvent.errorCode documentation> 
getErrorCode ::
             (MonadDOM m) => MediaKeyEvent -> m (Maybe MediaKeyError)
getErrorCode self
  = liftDOM ((self ^. js "errorCode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.errorCode Mozilla MediaKeyEvent.errorCode documentation> 
getErrorCodeUnchecked ::
                      (MonadDOM m) => MediaKeyEvent -> m MediaKeyError
getErrorCodeUnchecked self
  = liftDOM ((self ^. js "errorCode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.systemCode Mozilla MediaKeyEvent.systemCode documentation> 
getSystemCode :: (MonadDOM m) => MediaKeyEvent -> m Word
getSystemCode self
  = liftDOM (round <$> ((self ^. js "systemCode") >>= valToNumber))
