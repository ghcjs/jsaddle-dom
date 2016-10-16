{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WorkerGlobalScope
       (close, importScripts, getSelf, getSelfUnsafe, getSelfUnchecked,
        getLocation, getLocationUnsafe, getLocationUnchecked, error,
        offline, online, getNavigator, getNavigatorUnsafe,
        getNavigatorUnchecked, WorkerGlobalScope(..),
        gTypeWorkerGlobalScope, IsWorkerGlobalScope, toWorkerGlobalScope)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.close Mozilla WorkerGlobalScope.close documentation> 
close :: (MonadDOM m, IsWorkerGlobalScope self) => self -> m ()
close self
  = liftDOM (void ((toWorkerGlobalScope self) ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.importScripts Mozilla WorkerGlobalScope.importScripts documentation> 
importScripts ::
              (MonadDOM m, IsWorkerGlobalScope self) => self -> m ()
importScripts self
  = liftDOM
      (void ((toWorkerGlobalScope self) ^. jsf "importScripts" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.self Mozilla WorkerGlobalScope.self documentation> 
getSelf ::
        (MonadDOM m, IsWorkerGlobalScope self) =>
          self -> m (Maybe WorkerGlobalScope)
getSelf self
  = liftDOM (((toWorkerGlobalScope self) ^. js "self") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.self Mozilla WorkerGlobalScope.self documentation> 
getSelfUnsafe ::
              (MonadDOM m, IsWorkerGlobalScope self, HasCallStack) =>
                self -> m WorkerGlobalScope
getSelfUnsafe self
  = liftDOM
      ((((toWorkerGlobalScope self) ^. js "self") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.self Mozilla WorkerGlobalScope.self documentation> 
getSelfUnchecked ::
                 (MonadDOM m, IsWorkerGlobalScope self) =>
                   self -> m WorkerGlobalScope
getSelfUnchecked self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "self") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.location Mozilla WorkerGlobalScope.location documentation> 
getLocation ::
            (MonadDOM m, IsWorkerGlobalScope self) =>
              self -> m (Maybe WorkerLocation)
getLocation self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "location") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.location Mozilla WorkerGlobalScope.location documentation> 
getLocationUnsafe ::
                  (MonadDOM m, IsWorkerGlobalScope self, HasCallStack) =>
                    self -> m WorkerLocation
getLocationUnsafe self
  = liftDOM
      ((((toWorkerGlobalScope self) ^. js "location") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.location Mozilla WorkerGlobalScope.location documentation> 
getLocationUnchecked ::
                     (MonadDOM m, IsWorkerGlobalScope self) => self -> m WorkerLocation
getLocationUnchecked self
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
             (MonadDOM m, IsWorkerGlobalScope self) =>
               self -> m (Maybe WorkerNavigator)
getNavigator self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "navigator") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.navigator Mozilla WorkerGlobalScope.navigator documentation> 
getNavigatorUnsafe ::
                   (MonadDOM m, IsWorkerGlobalScope self, HasCallStack) =>
                     self -> m WorkerNavigator
getNavigatorUnsafe self
  = liftDOM
      ((((toWorkerGlobalScope self) ^. js "navigator") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.navigator Mozilla WorkerGlobalScope.navigator documentation> 
getNavigatorUnchecked ::
                      (MonadDOM m, IsWorkerGlobalScope self) => self -> m WorkerNavigator
getNavigatorUnchecked self
  = liftDOM
      (((toWorkerGlobalScope self) ^. js "navigator") >>=
         fromJSValUnchecked)
