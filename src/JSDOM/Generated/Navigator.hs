{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Navigator
       (requestMediaKeySystemAccess, requestMediaKeySystemAccess_,
        getGamepads, getGamepads_, getUserMedia, registerProtocolHandler,
        isProtocolHandlerRegistered, isProtocolHandlerRegistered_,
        unregisterProtocolHandler, vibratePattern, vibratePattern_,
        vibrate, vibrate_, javaEnabled, javaEnabled_, getStorageUpdates,
        getGeolocation, getMediaDevices, getWebkitTemporaryStorage,
        getWebkitPersistentStorage, getWebdriver, getPlugins, getMimeTypes,
        getCookieEnabled, Navigator(..), gTypeNavigator)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.requestMediaKeySystemAccess Mozilla Navigator.requestMediaKeySystemAccess documentation> 
requestMediaKeySystemAccess ::
                            (MonadDOM m, ToJSString keySystem) =>
                              Navigator ->
                                keySystem ->
                                  [MediaKeySystemConfiguration] -> m MediaKeySystemAccess
requestMediaKeySystemAccess self keySystem supportedConfiguration
  = liftDOM
      (((self ^. jsf "requestMediaKeySystemAccess"
           [toJSVal keySystem, toJSVal (array supportedConfiguration)])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.requestMediaKeySystemAccess Mozilla Navigator.requestMediaKeySystemAccess documentation> 
requestMediaKeySystemAccess_ ::
                             (MonadDOM m, ToJSString keySystem) =>
                               Navigator -> keySystem -> [MediaKeySystemConfiguration] -> m ()
requestMediaKeySystemAccess_ self keySystem supportedConfiguration
  = liftDOM
      (void
         (self ^. jsf "requestMediaKeySystemAccess"
            [toJSVal keySystem, toJSVal (array supportedConfiguration)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getGamepads Mozilla Navigator.getGamepads documentation> 
getGamepads :: (MonadDOM m) => Navigator -> m [Gamepad]
getGamepads self
  = liftDOM ((self ^. jsf "getGamepads" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getGamepads Mozilla Navigator.getGamepads documentation> 
getGamepads_ :: (MonadDOM m) => Navigator -> m ()
getGamepads_ self = liftDOM (void (self ^. jsf "getGamepads" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getUserMedia Mozilla Navigator.getUserMedia documentation> 
getUserMedia ::
             (MonadDOM m) =>
               Navigator ->
                 MediaStreamConstraints ->
                   NavigatorUserMediaSuccessCallback ->
                     NavigatorUserMediaErrorCallback -> m ()
getUserMedia self constraints successCallback errorCallback
  = liftDOM
      (void
         (self ^. jsf "getUserMedia"
            [toJSVal constraints, toJSVal successCallback,
             toJSVal errorCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.registerProtocolHandler Mozilla Navigator.registerProtocolHandler documentation> 
registerProtocolHandler ::
                        (MonadDOM m, ToJSString scheme, ToJSString url,
                         ToJSString title) =>
                          Navigator -> scheme -> url -> title -> m ()
registerProtocolHandler self scheme url title
  = liftDOM
      (void
         (self ^. jsf "registerProtocolHandler"
            [toJSVal scheme, toJSVal url, toJSVal title]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.isProtocolHandlerRegistered Mozilla Navigator.isProtocolHandlerRegistered documentation> 
isProtocolHandlerRegistered ::
                            (MonadDOM m, ToJSString scheme, ToJSString url,
                             FromJSString result) =>
                              Navigator -> scheme -> url -> m result
isProtocolHandlerRegistered self scheme url
  = liftDOM
      ((self ^. jsf "isProtocolHandlerRegistered"
          [toJSVal scheme, toJSVal url])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.isProtocolHandlerRegistered Mozilla Navigator.isProtocolHandlerRegistered documentation> 
isProtocolHandlerRegistered_ ::
                             (MonadDOM m, ToJSString scheme, ToJSString url) =>
                               Navigator -> scheme -> url -> m ()
isProtocolHandlerRegistered_ self scheme url
  = liftDOM
      (void
         (self ^. jsf "isProtocolHandlerRegistered"
            [toJSVal scheme, toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.unregisterProtocolHandler Mozilla Navigator.unregisterProtocolHandler documentation> 
unregisterProtocolHandler ::
                          (MonadDOM m, ToJSString scheme, ToJSString url) =>
                            Navigator -> scheme -> url -> m ()
unregisterProtocolHandler self scheme url
  = liftDOM
      (void
         (self ^. jsf "unregisterProtocolHandler"
            [toJSVal scheme, toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibratePattern :: (MonadDOM m) => Navigator -> [Word] -> m Bool
vibratePattern self pattern'
  = liftDOM
      ((self ^. jsf "vibrate" [toJSVal (array pattern')]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibratePattern_ :: (MonadDOM m) => Navigator -> [Word] -> m ()
vibratePattern_ self pattern'
  = liftDOM (void (self ^. jsf "vibrate" [toJSVal (array pattern')]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibrate :: (MonadDOM m) => Navigator -> Word -> m Bool
vibrate self time
  = liftDOM ((self ^. jsf "vibrate" [toJSVal time]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibrate_ :: (MonadDOM m) => Navigator -> Word -> m ()
vibrate_ self time
  = liftDOM (void (self ^. jsf "vibrate" [toJSVal time]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.javaEnabled Mozilla Navigator.javaEnabled documentation> 
javaEnabled :: (MonadDOM m) => Navigator -> m Bool
javaEnabled self
  = liftDOM ((self ^. jsf "javaEnabled" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.javaEnabled Mozilla Navigator.javaEnabled documentation> 
javaEnabled_ :: (MonadDOM m) => Navigator -> m ()
javaEnabled_ self = liftDOM (void (self ^. jsf "javaEnabled" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getStorageUpdates Mozilla Navigator.getStorageUpdates documentation> 
getStorageUpdates :: (MonadDOM m) => Navigator -> m ()
getStorageUpdates self
  = liftDOM (void (self ^. jsf "getStorageUpdates" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.geolocation Mozilla Navigator.geolocation documentation> 
getGeolocation :: (MonadDOM m) => Navigator -> m Geolocation
getGeolocation self
  = liftDOM ((self ^. js "geolocation") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.mediaDevices Mozilla Navigator.mediaDevices documentation> 
getMediaDevices :: (MonadDOM m) => Navigator -> m MediaDevices
getMediaDevices self
  = liftDOM ((self ^. js "mediaDevices") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitTemporaryStorage Mozilla Navigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadDOM m) => Navigator -> m StorageQuota
getWebkitTemporaryStorage self
  = liftDOM
      ((self ^. js "webkitTemporaryStorage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitPersistentStorage Mozilla Navigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadDOM m) => Navigator -> m StorageQuota
getWebkitPersistentStorage self
  = liftDOM
      ((self ^. js "webkitPersistentStorage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webdriver Mozilla Navigator.webdriver documentation> 
getWebdriver :: (MonadDOM m) => Navigator -> m Bool
getWebdriver self
  = liftDOM ((self ^. js "webdriver") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.plugins Mozilla Navigator.plugins documentation> 
getPlugins :: (MonadDOM m) => Navigator -> m PluginArray
getPlugins self
  = liftDOM ((self ^. js "plugins") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.mimeTypes Mozilla Navigator.mimeTypes documentation> 
getMimeTypes :: (MonadDOM m) => Navigator -> m MimeTypeArray
getMimeTypes self
  = liftDOM ((self ^. js "mimeTypes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.cookieEnabled Mozilla Navigator.cookieEnabled documentation> 
getCookieEnabled :: (MonadDOM m) => Navigator -> m Bool
getCookieEnabled self
  = liftDOM ((self ^. js "cookieEnabled") >>= valToBool)
