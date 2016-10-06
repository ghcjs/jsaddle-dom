{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NotificationCenter
       (createNotification, checkPermission, requestPermission,
        NotificationCenter, castToNotificationCenter,
        gTypeNotificationCenter)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.createNotification Mozilla NotificationCenter.createNotification documentation> 
createNotification ::
                   (MonadDOM m, ToJSString iconUrl, ToJSString title,
                    ToJSString body) =>
                     NotificationCenter ->
                       iconUrl -> title -> body -> m (Maybe Notification)
createNotification self iconUrl title body
  = liftDOM
      ((self ^. jsf "createNotification"
          [toJSVal iconUrl, toJSVal title, toJSVal body])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.checkPermission Mozilla NotificationCenter.checkPermission documentation> 
checkPermission :: (MonadDOM m) => NotificationCenter -> m Int
checkPermission self
  = liftDOM
      (round <$> ((self ^. jsf "checkPermission" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.requestPermission Mozilla NotificationCenter.requestPermission documentation> 
requestPermission ::
                  (MonadDOM m) => NotificationCenter -> Maybe VoidCallback -> m ()
requestPermission self callback
  = liftDOM
      (void (self ^. jsf "requestPermission" [toJSVal callback]))
