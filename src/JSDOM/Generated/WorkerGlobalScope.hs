{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WorkerGlobalScope
       (fetch, fetch_, close, importScripts, getIndexedDB, getSelf,
        getLocation, error, offline, online, getNavigator,
        WorkerGlobalScope(..), gTypeWorkerGlobalScope, IsWorkerGlobalScope,
        toWorkerGlobalScope)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.fetch Mozilla WorkerGlobalScope.fetch documentation> 
fetch ::
      (MonadDOM m, IsWorkerGlobalScope self, ToJSVal input) =>
        self -> input -> Maybe RequestInit -> m Response
fetch self input init
  = liftDOM
      ((((toWorkerGlobalScope self) ^. jsf "fetch"
           [toJSVal input, toJSVal init])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.fetch Mozilla WorkerGlobalScope.fetch documentation> 
fetch_ ::
       (MonadDOM m, IsWorkerGlobalScope self, ToJSVal input) =>
         self -> input -> Maybe RequestInit -> m ()
fetch_ self input init
  = liftDOM
      (void
         ((toWorkerGlobalScope self) ^. jsf "fetch"
            [toJSVal input, toJSVal init]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.close Mozilla WorkerGlobalScope.close documentation> 
close :: (MonadDOM m, IsWorkerGlobalScope self) => self -> m ()
close self
  = liftDOM (void ((toWorkerGlobalScope self) ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.importScripts Mozilla WorkerGlobalScope.importScripts documentation> 
importScripts ::
              (MonadDOM m, IsWorkerGlobalScope self, ToJSString urls) =>
                self -> [urls] -> m ()
importScripts self urls
  = liftDOM
      (void
         ((toWorkerGlobalScope self) ^. jsf "importScripts"
            [toJSVal (array urls)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.indexedDB Mozilla WorkerGlobalScope.indexedDB documentation> 
getIndexedDB ::
             (MonadDOM m, IsWorkerGlobalScope self) => self -> m IDBFactory
getIndexedDB self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "indexedDB") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.self Mozilla WorkerGlobalScope.self documentation> 
getSelf ::
        (MonadDOM m, IsWorkerGlobalScope self) =>
          self -> m WorkerGlobalScope
getSelf self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "self") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.location Mozilla WorkerGlobalScope.location documentation> 
getLocation ::
            (MonadDOM m, IsWorkerGlobalScope self) => self -> m WorkerLocation
getLocation self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "location") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.onerror Mozilla WorkerGlobalScope.onerror documentation> 
error ::
      (IsWorkerGlobalScope self, IsEventTarget self) =>
        EventName self UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.onoffline Mozilla WorkerGlobalScope.onoffline documentation> 
offline ::
        (IsWorkerGlobalScope self, IsEventTarget self) =>
          EventName self Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.ononline Mozilla WorkerGlobalScope.ononline documentation> 
online ::
       (IsWorkerGlobalScope self, IsEventTarget self) =>
         EventName self Event
online = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.navigator Mozilla WorkerGlobalScope.navigator documentation> 
getNavigator ::
             (MonadDOM m, IsWorkerGlobalScope self) => self -> m WorkerNavigator
getNavigator self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "navigator") >>=
         fromJSValUnchecked)
