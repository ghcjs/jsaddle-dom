{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WindowOrWorkerGlobalScope
       (setTimeout, setTimeout_, clearTimeout, setInterval, setInterval_,
        clearInterval, atob, atob_, btoa, btoa_, getOrigin,
        WindowOrWorkerGlobalScope(..), gTypeWindowOrWorkerGlobalScope,
        IsWindowOrWorkerGlobalScope, toWindowOrWorkerGlobalScope)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setTimeout Mozilla WindowOrWorkerGlobalScope.setTimeout documentation> 
setTimeout ::
           (MonadDOM m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
             self -> handler -> Maybe Int -> m Int
setTimeout self handler timeout
  = liftDOM
      (round <$>
         (((toWindowOrWorkerGlobalScope self) ^. jsf "setTimeout"
             [toJSVal handler, toJSVal timeout])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setTimeout Mozilla WindowOrWorkerGlobalScope.setTimeout documentation> 
setTimeout_ ::
            (MonadDOM m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
              self -> handler -> Maybe Int -> m ()
setTimeout_ self handler timeout
  = liftDOM
      (void
         ((toWindowOrWorkerGlobalScope self) ^. jsf "setTimeout"
            [toJSVal handler, toJSVal timeout]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.clearTimeout Mozilla WindowOrWorkerGlobalScope.clearTimeout documentation> 
clearTimeout ::
             (MonadDOM m, IsWindowOrWorkerGlobalScope self) =>
               self -> Maybe Int -> m ()
clearTimeout self handle
  = liftDOM
      (void
         ((toWindowOrWorkerGlobalScope self) ^. jsf "clearTimeout"
            [toJSVal handle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setInterval Mozilla WindowOrWorkerGlobalScope.setInterval documentation> 
setInterval ::
            (MonadDOM m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
              self -> handler -> Maybe Int -> m Int
setInterval self handler timeout
  = liftDOM
      (round <$>
         (((toWindowOrWorkerGlobalScope self) ^. jsf "setInterval"
             [toJSVal handler, toJSVal timeout])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setInterval Mozilla WindowOrWorkerGlobalScope.setInterval documentation> 
setInterval_ ::
             (MonadDOM m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
               self -> handler -> Maybe Int -> m ()
setInterval_ self handler timeout
  = liftDOM
      (void
         ((toWindowOrWorkerGlobalScope self) ^. jsf "setInterval"
            [toJSVal handler, toJSVal timeout]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.clearInterval Mozilla WindowOrWorkerGlobalScope.clearInterval documentation> 
clearInterval ::
              (MonadDOM m, IsWindowOrWorkerGlobalScope self) =>
                self -> Maybe Int -> m ()
clearInterval self handle
  = liftDOM
      (void
         ((toWindowOrWorkerGlobalScope self) ^. jsf "clearInterval"
            [toJSVal handle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.atob Mozilla WindowOrWorkerGlobalScope.atob documentation> 
atob ::
     (MonadDOM m, IsWindowOrWorkerGlobalScope self, ToJSString string,
      FromJSString result) =>
       self -> string -> m result
atob self string
  = liftDOM
      (((toWindowOrWorkerGlobalScope self) ^. jsf "atob"
          [toJSVal string])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.atob Mozilla WindowOrWorkerGlobalScope.atob documentation> 
atob_ ::
      (MonadDOM m, IsWindowOrWorkerGlobalScope self,
       ToJSString string) =>
        self -> string -> m ()
atob_ self string
  = liftDOM
      (void
         ((toWindowOrWorkerGlobalScope self) ^. jsf "atob"
            [toJSVal string]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.btoa Mozilla WindowOrWorkerGlobalScope.btoa documentation> 
btoa ::
     (MonadDOM m, IsWindowOrWorkerGlobalScope self, ToJSString string,
      FromJSString result) =>
       self -> string -> m result
btoa self string
  = liftDOM
      (((toWindowOrWorkerGlobalScope self) ^. jsf "btoa"
          [toJSVal string])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.btoa Mozilla WindowOrWorkerGlobalScope.btoa documentation> 
btoa_ ::
      (MonadDOM m, IsWindowOrWorkerGlobalScope self,
       ToJSString string) =>
        self -> string -> m ()
btoa_ self string
  = liftDOM
      (void
         ((toWindowOrWorkerGlobalScope self) ^. jsf "btoa"
            [toJSVal string]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.origin Mozilla WindowOrWorkerGlobalScope.origin documentation> 
getOrigin ::
          (MonadDOM m, IsWindowOrWorkerGlobalScope self,
           FromJSString result) =>
            self -> m result
getOrigin self
  = liftDOM
      (((toWindowOrWorkerGlobalScope self) ^. js "origin") >>=
         fromJSValUnchecked)
