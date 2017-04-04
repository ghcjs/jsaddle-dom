{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NotificationPermissionCallback
       (newNotificationPermissionCallback,
        newNotificationPermissionCallbackSync,
        newNotificationPermissionCallbackAsync,
        NotificationPermissionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
newNotificationPermissionCallback ::
                                  (MonadDOM m, FromJSString permission) =>
                                    (permission -> JSM ()) ->
                                      m (NotificationPermissionCallback permission)
newNotificationPermissionCallback callback
  = liftDOM
      (NotificationPermissionCallback . Callback <$>
         function
           (\ _ _ [permission] ->
              fromJSValUnchecked permission >>=
                \ permission' -> callback permission'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
newNotificationPermissionCallbackSync ::
                                      (MonadDOM m, FromJSString permission) =>
                                        (permission -> JSM ()) ->
                                          m (NotificationPermissionCallback permission)
newNotificationPermissionCallbackSync callback
  = liftDOM
      (NotificationPermissionCallback . Callback <$>
         function
           (\ _ _ [permission] ->
              fromJSValUnchecked permission >>=
                \ permission' -> callback permission'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
newNotificationPermissionCallbackAsync ::
                                       (MonadDOM m, FromJSString permission) =>
                                         (permission -> JSM ()) ->
                                           m (NotificationPermissionCallback permission)
newNotificationPermissionCallbackAsync callback
  = liftDOM
      (NotificationPermissionCallback . Callback <$>
         function
           (\ _ _ [permission] ->
              fromJSValUnchecked permission >>=
                \ permission' -> callback permission'))
