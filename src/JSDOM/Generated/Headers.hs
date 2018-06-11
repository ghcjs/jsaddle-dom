{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Headers
       (append, delete, get, get_, getUnsafe, getUnchecked, has, has_,
        set, Headers(..), gTypeHeaders)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.append Mozilla Headers.append documentation> 
append ::
       (MonadDOM m, ToJSString name, ToJSString value) =>
         Headers -> name -> value -> m ()
append self name value
  = liftDOM
      (void (self ^. jsf "append" [toJSVal name, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.delete Mozilla Headers.delete documentation> 
delete :: (MonadDOM m, ToJSString name) => Headers -> name -> m ()
delete self name
  = liftDOM (void (self ^. jsf "delete" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
get ::
    (MonadDOM m, ToJSString name, FromJSString result) =>
      Headers -> name -> m (Maybe result)
get self name
  = liftDOM
      ((self ^. jsf "get" [toJSVal name]) >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
get_ :: (MonadDOM m, ToJSString name) => Headers -> name -> m ()
get_ self name = liftDOM (void (self ^. jsf "get" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
getUnsafe ::
          (MonadDOM m, ToJSString name, HasCallStack, FromJSString result) =>
            Headers -> name -> m result
getUnsafe self name
  = liftDOM
      (((self ^. jsf "get" [toJSVal name]) >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
getUnchecked ::
             (MonadDOM m, ToJSString name, FromJSString result) =>
               Headers -> name -> m result
getUnchecked self name
  = liftDOM
      ((self ^. jsf "get" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.has Mozilla Headers.has documentation> 
has :: (MonadDOM m, ToJSString name) => Headers -> name -> m Bool
has self name
  = liftDOM ((self ^. jsf "has" [toJSVal name]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.has Mozilla Headers.has documentation> 
has_ :: (MonadDOM m, ToJSString name) => Headers -> name -> m ()
has_ self name = liftDOM (void (self ^. jsf "has" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.set Mozilla Headers.set documentation> 
set ::
    (MonadDOM m, ToJSString name, ToJSString value) =>
      Headers -> name -> value -> m ()
set self name value
  = liftDOM (void (self ^. jsf "set" [toJSVal name, toJSVal value]))
