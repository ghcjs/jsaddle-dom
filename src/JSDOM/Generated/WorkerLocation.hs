{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WorkerLocation
       (toString, toString_, getHref, getProtocol, getHost, getHostname,
        getPort, getPathname, getSearch, getHash, WorkerLocation(..),
        gTypeWorkerLocation)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.toString Mozilla WorkerLocation.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => WorkerLocation -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.toString Mozilla WorkerLocation.toString documentation> 
toString_ :: (MonadDOM m) => WorkerLocation -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.href Mozilla WorkerLocation.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getHref self = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.protocol Mozilla WorkerLocation.protocol documentation> 
getProtocol ::
            (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getProtocol self
  = liftDOM ((self ^. js "protocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.host Mozilla WorkerLocation.host documentation> 
getHost ::
        (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getHost self = liftDOM ((self ^. js "host") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hostname Mozilla WorkerLocation.hostname documentation> 
getHostname ::
            (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getHostname self
  = liftDOM ((self ^. js "hostname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.port Mozilla WorkerLocation.port documentation> 
getPort ::
        (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getPort self = liftDOM ((self ^. js "port") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.pathname Mozilla WorkerLocation.pathname documentation> 
getPathname ::
            (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getPathname self
  = liftDOM ((self ^. js "pathname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.search Mozilla WorkerLocation.search documentation> 
getSearch ::
          (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getSearch self
  = liftDOM ((self ^. js "search") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hash Mozilla WorkerLocation.hash documentation> 
getHash ::
        (MonadDOM m, FromJSString result) => WorkerLocation -> m result
getHash self = liftDOM ((self ^. js "hash") >>= fromJSValUnchecked)
