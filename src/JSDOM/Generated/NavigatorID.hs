{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NavigatorID
       (getAppCodeName, getAppName, getAppVersion, getPlatform,
        getProduct, getProductSub, getUserAgent, getVendor, getVendorSub,
        NavigatorID(..), gTypeNavigatorID, IsNavigatorID, toNavigatorID)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.appCodeName Mozilla NavigatorID.appCodeName documentation> 
getAppCodeName ::
               (MonadDOM m, IsNavigatorID self, FromJSString result) =>
                 self -> m result
getAppCodeName self
  = liftDOM
      (((toNavigatorID self) ^. js "appCodeName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.appName Mozilla NavigatorID.appName documentation> 
getAppName ::
           (MonadDOM m, IsNavigatorID self, FromJSString result) =>
             self -> m result
getAppName self
  = liftDOM
      (((toNavigatorID self) ^. js "appName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.appVersion Mozilla NavigatorID.appVersion documentation> 
getAppVersion ::
              (MonadDOM m, IsNavigatorID self, FromJSString result) =>
                self -> m result
getAppVersion self
  = liftDOM
      (((toNavigatorID self) ^. js "appVersion") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.platform Mozilla NavigatorID.platform documentation> 
getPlatform ::
            (MonadDOM m, IsNavigatorID self, FromJSString result) =>
              self -> m result
getPlatform self
  = liftDOM
      (((toNavigatorID self) ^. js "platform") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.product Mozilla NavigatorID.product documentation> 
getProduct ::
           (MonadDOM m, IsNavigatorID self, FromJSString result) =>
             self -> m result
getProduct self
  = liftDOM
      (((toNavigatorID self) ^. js "product") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.productSub Mozilla NavigatorID.productSub documentation> 
getProductSub ::
              (MonadDOM m, IsNavigatorID self, FromJSString result) =>
                self -> m result
getProductSub self
  = liftDOM
      (((toNavigatorID self) ^. js "productSub") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.userAgent Mozilla NavigatorID.userAgent documentation> 
getUserAgent ::
             (MonadDOM m, IsNavigatorID self, FromJSString result) =>
               self -> m result
getUserAgent self
  = liftDOM
      (((toNavigatorID self) ^. js "userAgent") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.vendor Mozilla NavigatorID.vendor documentation> 
getVendor ::
          (MonadDOM m, IsNavigatorID self, FromJSString result) =>
            self -> m result
getVendor self
  = liftDOM
      (((toNavigatorID self) ^. js "vendor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.vendorSub Mozilla NavigatorID.vendorSub documentation> 
getVendorSub ::
             (MonadDOM m, IsNavigatorID self, FromJSString result) =>
               self -> m result
getVendorSub self
  = liftDOM
      (((toNavigatorID self) ^. js "vendorSub") >>= fromJSValUnchecked)
