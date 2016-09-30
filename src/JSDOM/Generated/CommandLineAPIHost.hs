{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CommandLineAPIHost
       (clearConsoleMessages, copyText, inspect, inspectedObject,
        getEventListeners, databaseId, storageId, CommandLineAPIHost,
        castToCommandLineAPIHost, gTypeCommandLineAPIHost)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.clearConsoleMessages Mozilla CommandLineAPIHost.clearConsoleMessages documentation> 
clearConsoleMessages :: (MonadDOM m) => CommandLineAPIHost -> m ()
clearConsoleMessages self
  = liftDOM (void (self ^. js "clearConsoleMessages"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.copyText Mozilla CommandLineAPIHost.copyText documentation> 
copyText ::
         (MonadDOM m, ToJSString text) => CommandLineAPIHost -> text -> m ()
copyText self text
  = liftDOM (void (self ^. jsf "copyText" [toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspect Mozilla CommandLineAPIHost.inspect documentation> 
inspect ::
        (MonadDOM m) => CommandLineAPIHost -> JSVal -> JSVal -> m ()
inspect self objectId hints
  = liftDOM
      (void (self ^. jsf "inspect" [toJSVal objectId, toJSVal hints]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspectedObject Mozilla CommandLineAPIHost.inspectedObject documentation> 
inspectedObject ::
                (MonadDOM m) => CommandLineAPIHost -> Int -> m JSVal
inspectedObject self num
  = liftDOM
      ((self ^. jsf "inspectedObject" [toJSVal num]) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.getEventListeners Mozilla CommandLineAPIHost.getEventListeners documentation> 
getEventListeners ::
                  (MonadDOM m, IsNode node) =>
                    CommandLineAPIHost -> Maybe node -> m (Maybe Array)
getEventListeners self node
  = liftDOM
      ((self ^. jsf "getEventListeners" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.databaseId Mozilla CommandLineAPIHost.databaseId documentation> 
databaseId ::
           (MonadDOM m, FromJSString result) =>
             CommandLineAPIHost -> JSVal -> m result
databaseId self database
  = liftDOM
      ((self ^. jsf "databaseId" [toJSVal database]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.storageId Mozilla CommandLineAPIHost.storageId documentation> 
storageId ::
          (MonadDOM m, FromJSString result) =>
            CommandLineAPIHost -> JSVal -> m result
storageId self storage
  = liftDOM
      ((self ^. jsf "storageId" [toJSVal storage]) >>=
         fromJSValUnchecked)
