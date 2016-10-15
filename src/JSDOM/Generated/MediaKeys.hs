{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeys
       (newMediaKeys, createSession, createSession_,
        createSessionUnchecked, isTypeSupported, isTypeSupported_,
        getKeySystem, MediaKeys(..), gTypeMediaKeys)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation> 
newMediaKeys ::
             (MonadDOM m, ToJSString keySystem) => keySystem -> m MediaKeys
newMediaKeys keySystem
  = liftDOM (MediaKeys <$> new (jsg "MediaKeys") [toJSVal keySystem])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession ::
              (MonadDOM m, ToJSString type', IsUint8Array initData) =>
                MediaKeys -> type' -> Maybe initData -> m (Maybe MediaKeySession)
createSession self type' initData
  = liftDOM
      ((self ^. jsf "createSession" [toJSVal type', toJSVal initData])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession_ ::
               (MonadDOM m, ToJSString type', IsUint8Array initData) =>
                 MediaKeys -> type' -> Maybe initData -> m ()
createSession_ self type' initData
  = liftDOM
      (void
         (self ^. jsf "createSession" [toJSVal type', toJSVal initData]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSessionUnchecked ::
                       (MonadDOM m, ToJSString type', IsUint8Array initData) =>
                         MediaKeys -> type' -> Maybe initData -> m MediaKeySession
createSessionUnchecked self type' initData
  = liftDOM
      ((self ^. jsf "createSession" [toJSVal type', toJSVal initData])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported ::
                (MonadDOM m, ToJSString keySystem, ToJSString type') =>
                  MediaKeys -> keySystem -> type' -> m Bool
isTypeSupported self keySystem type'
  = liftDOM
      ((self ^. jsf "isTypeSupported" [toJSVal keySystem, toJSVal type'])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported_ ::
                 (MonadDOM m, ToJSString keySystem, ToJSString type') =>
                   MediaKeys -> keySystem -> type' -> m ()
isTypeSupported_ self keySystem type'
  = liftDOM
      (void
         (self ^. jsf "isTypeSupported" [toJSVal keySystem, toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.keySystem Mozilla WebKitMediaKeys.keySystem documentation> 
getKeySystem ::
             (MonadDOM m, FromJSString result) => MediaKeys -> m result
getKeySystem self
  = liftDOM ((self ^. js "keySystem") >>= fromJSValUnchecked)
