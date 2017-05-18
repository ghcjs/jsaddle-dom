{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Notification
       (newNotification, show, close, requestPermission, getPermission,
        click, error, cLoseEvent, display, showEvent, setTag, getTag,
        Notification(..), gTypeNotification)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification Mozilla Notification documentation> 
newNotification ::
                (MonadDOM m, ToJSString title) =>
                  title -> Maybe NotificationOptions -> m Notification
newNotification title options
  = liftDOM
      (Notification <$>
         new (jsg "Notification") [toJSVal title, toJSVal options])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.show Mozilla Notification.show documentation> 
show :: (MonadDOM m) => Notification -> m ()
show self = liftDOM (void (self ^. jsf "show" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.close Mozilla Notification.close documentation> 
close :: (MonadDOM m) => Notification -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.requestPermission Mozilla Notification.requestPermission documentation> 
requestPermission ::
                  (MonadDOM m, ToJSString callback) =>
                    Notification ->
                      Maybe (NotificationPermissionCallback callback) -> m ()
requestPermission self callback
  = liftDOM
      (void (self ^. jsf "requestPermission" [toJSVal callback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.permission Mozilla Notification.permission documentation> 
getPermission ::
              (MonadDOM m, FromJSString result) => Notification -> m result
getPermission self
  = liftDOM ((self ^. js "permission") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onclick Mozilla Notification.onclick documentation> 
click :: EventName Notification MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onerror Mozilla Notification.onerror documentation> 
error :: EventName Notification UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onclose Mozilla Notification.onclose documentation> 
cLoseEvent :: EventName Notification CloseEvent
cLoseEvent = unsafeEventName (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.ondisplay Mozilla Notification.ondisplay documentation> 
display :: EventName Notification ondisplay
display = unsafeEventName (toJSString "display")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onshow Mozilla Notification.onshow documentation> 
showEvent :: EventName Notification MouseEvent
showEvent = unsafeEventName (toJSString "show")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.tag Mozilla Notification.tag documentation> 
setTag ::
       (MonadDOM m, ToJSString val) => Notification -> val -> m ()
setTag self val = liftDOM (self ^. jss "tag" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.tag Mozilla Notification.tag documentation> 
getTag ::
       (MonadDOM m, FromJSString result) => Notification -> m result
getTag self = liftDOM ((self ^. js "tag") >>= fromJSValUnchecked)
