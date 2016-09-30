{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Navigator
       (getGamepads, webkitGetUserMedia, registerProtocolHandler,
        isProtocolHandlerRegistered, unregisterProtocolHandler,
        vibratePattern, vibrate, javaEnabled, getStorageUpdates,
        getWebkitBattery, getGeolocation, getWebkitTemporaryStorage,
        getWebkitPersistentStorage, getAppCodeName, getAppName,
        getAppVersion, getLanguage, getUserAgent, getPlatform, getPlugins,
        getMimeTypes, getProduct, getProductSub, getVendor, getVendorSub,
        getCookieEnabled, getOnLine, getHardwareConcurrency, Navigator,
        castToNavigator, gTypeNavigator)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getGamepads Mozilla Navigator.getGamepads documentation> 
getGamepads :: (MonadDOM m) => Navigator -> m [Maybe Gamepad]
getGamepads self
  = liftDOM ((self ^. js "getGamepads") >>= fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitGetUserMedia Mozilla Navigator.webkitGetUserMedia documentation> 
webkitGetUserMedia ::
                   (MonadDOM m, IsDictionary options) =>
                     Navigator ->
                       Maybe options ->
                         Maybe NavigatorUserMediaSuccessCallback ->
                           Maybe NavigatorUserMediaErrorCallback -> m ()
webkitGetUserMedia self options successCallback errorCallback
  = liftDOM
      (void
         (self ^. jsf "webkitGetUserMedia"
            [toJSVal options, toJSVal successCallback, toJSVal errorCallback]))

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
vibrate :: (MonadDOM m) => Navigator -> Word -> m Bool
vibrate self time
  = liftDOM ((self ^. jsf "vibrate" [toJSVal time]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.javaEnabled Mozilla Navigator.javaEnabled documentation> 
javaEnabled :: (MonadDOM m) => Navigator -> m Bool
javaEnabled self
  = liftDOM ((self ^. js "javaEnabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getStorageUpdates Mozilla Navigator.getStorageUpdates documentation> 
getStorageUpdates :: (MonadDOM m) => Navigator -> m ()
getStorageUpdates self
  = liftDOM (void (self ^. js "getStorageUpdates"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitBattery Mozilla Navigator.webkitBattery documentation> 
getWebkitBattery ::
                 (MonadDOM m) => Navigator -> m (Maybe BatteryManager)
getWebkitBattery self
  = liftDOM ((self ^. js "webkitBattery") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.geolocation Mozilla Navigator.geolocation documentation> 
getGeolocation ::
               (MonadDOM m) => Navigator -> m (Maybe Geolocation)
getGeolocation self
  = liftDOM ((self ^. js "geolocation") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitTemporaryStorage Mozilla Navigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadDOM m) => Navigator -> m (Maybe StorageQuota)
getWebkitTemporaryStorage self
  = liftDOM ((self ^. js "webkitTemporaryStorage") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitPersistentStorage Mozilla Navigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadDOM m) => Navigator -> m (Maybe StorageQuota)
getWebkitPersistentStorage self
  = liftDOM ((self ^. js "webkitPersistentStorage") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appCodeName Mozilla Navigator.appCodeName documentation> 
getAppCodeName ::
               (MonadDOM m, FromJSString result) => Navigator -> m result
getAppCodeName self
  = liftDOM ((self ^. js "appCodeName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appName Mozilla Navigator.appName documentation> 
getAppName ::
           (MonadDOM m, FromJSString result) => Navigator -> m result
getAppName self
  = liftDOM ((self ^. js "appName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appVersion Mozilla Navigator.appVersion documentation> 
getAppVersion ::
              (MonadDOM m, FromJSString result) => Navigator -> m result
getAppVersion self
  = liftDOM ((self ^. js "appVersion") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.language Mozilla Navigator.language documentation> 
getLanguage ::
            (MonadDOM m, FromJSString result) => Navigator -> m result
getLanguage self
  = liftDOM ((self ^. js "language") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.userAgent Mozilla Navigator.userAgent documentation> 
getUserAgent ::
             (MonadDOM m, FromJSString result) => Navigator -> m result
getUserAgent self
  = liftDOM ((self ^. js "userAgent") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.platform Mozilla Navigator.platform documentation> 
getPlatform ::
            (MonadDOM m, FromJSString result) => Navigator -> m result
getPlatform self
  = liftDOM ((self ^. js "platform") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.plugins Mozilla Navigator.plugins documentation> 
getPlugins :: (MonadDOM m) => Navigator -> m (Maybe PluginArray)
getPlugins self = liftDOM ((self ^. js "plugins") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.mimeTypes Mozilla Navigator.mimeTypes documentation> 
getMimeTypes ::
             (MonadDOM m) => Navigator -> m (Maybe MimeTypeArray)
getMimeTypes self
  = liftDOM ((self ^. js "mimeTypes") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.product Mozilla Navigator.product documentation> 
getProduct ::
           (MonadDOM m, FromJSString result) => Navigator -> m result
getProduct self
  = liftDOM ((self ^. js "product") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.productSub Mozilla Navigator.productSub documentation> 
getProductSub ::
              (MonadDOM m, FromJSString result) => Navigator -> m result
getProductSub self
  = liftDOM ((self ^. js "productSub") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vendor Mozilla Navigator.vendor documentation> 
getVendor ::
          (MonadDOM m, FromJSString result) => Navigator -> m result
getVendor self
  = liftDOM ((self ^. js "vendor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vendorSub Mozilla Navigator.vendorSub documentation> 
getVendorSub ::
             (MonadDOM m, FromJSString result) => Navigator -> m result
getVendorSub self
  = liftDOM ((self ^. js "vendorSub") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.cookieEnabled Mozilla Navigator.cookieEnabled documentation> 
getCookieEnabled :: (MonadDOM m) => Navigator -> m Bool
getCookieEnabled self
  = liftDOM ((self ^. js "cookieEnabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.onLine Mozilla Navigator.onLine documentation> 
getOnLine :: (MonadDOM m) => Navigator -> m Bool
getOnLine self = liftDOM ((self ^. js "onLine") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.hardwareConcurrency Mozilla Navigator.hardwareConcurrency documentation> 
getHardwareConcurrency :: (MonadDOM m) => Navigator -> m Int
getHardwareConcurrency self
  = liftDOM
      (round <$> ((self ^. js "hardwareConcurrency") >>= valToNumber))
