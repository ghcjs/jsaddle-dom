{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.URLSearchParams
       (newURLSearchParams, append, delete, get, get_, getUnsafe,
        getUnchecked, getAll, getAll_, has, has_, set, sort, toString,
        toString_, URLSearchParams(..), gTypeURLSearchParams)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams Mozilla URLSearchParams documentation> 
newURLSearchParams ::
                   (MonadDOM m, IsURLSearchParamsInit init) =>
                     init -> m URLSearchParams
newURLSearchParams init
  = liftDOM
      (URLSearchParams <$> new (jsg "URLSearchParams") [toJSVal init])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.append Mozilla URLSearchParams.append documentation> 
append ::
       (MonadDOM m, ToJSString name, ToJSString value) =>
         URLSearchParams -> name -> value -> m ()
append self name value
  = liftDOM
      (void (self ^. jsf "append" [toJSVal name, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.delete Mozilla URLSearchParams.delete documentation> 
delete ::
       (MonadDOM m, ToJSString name) => URLSearchParams -> name -> m ()
delete self name
  = liftDOM (void (self ^. jsf "delete" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
get ::
    (MonadDOM m, ToJSString name, FromJSString result) =>
      URLSearchParams -> name -> m (Maybe result)
get self name
  = liftDOM ((self ^. jsf "get" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
get_ ::
     (MonadDOM m, ToJSString name) => URLSearchParams -> name -> m ()
get_ self name = liftDOM (void (self ^. jsf "get" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
getUnsafe ::
          (MonadDOM m, ToJSString name, HasCallStack, FromJSString result) =>
            URLSearchParams -> name -> m result
getUnsafe self name
  = liftDOM
      (((self ^. jsf "get" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
getUnchecked ::
             (MonadDOM m, ToJSString name, FromJSString result) =>
               URLSearchParams -> name -> m result
getUnchecked self name
  = liftDOM
      ((self ^. jsf "get" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.getAll Mozilla URLSearchParams.getAll documentation> 
getAll ::
       (MonadDOM m, ToJSString name, FromJSString result) =>
         URLSearchParams -> name -> m [result]
getAll self name
  = liftDOM
      ((self ^. jsf "getAll" [toJSVal name]) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.getAll Mozilla URLSearchParams.getAll documentation> 
getAll_ ::
        (MonadDOM m, ToJSString name) => URLSearchParams -> name -> m ()
getAll_ self name
  = liftDOM (void (self ^. jsf "getAll" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.has Mozilla URLSearchParams.has documentation> 
has ::
    (MonadDOM m, ToJSString name) => URLSearchParams -> name -> m Bool
has self name
  = liftDOM ((self ^. jsf "has" [toJSVal name]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.has Mozilla URLSearchParams.has documentation> 
has_ ::
     (MonadDOM m, ToJSString name) => URLSearchParams -> name -> m ()
has_ self name = liftDOM (void (self ^. jsf "has" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.set Mozilla URLSearchParams.set documentation> 
set ::
    (MonadDOM m, ToJSString name, ToJSString value) =>
      URLSearchParams -> name -> value -> m ()
set self name value
  = liftDOM (void (self ^. jsf "set" [toJSVal name, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.sort Mozilla URLSearchParams.sort documentation> 
sort :: (MonadDOM m) => URLSearchParams -> m ()
sort self = liftDOM (void (self ^. jsf "sort" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.toString Mozilla URLSearchParams.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => URLSearchParams -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.toString Mozilla URLSearchParams.toString documentation> 
toString_ :: (MonadDOM m) => URLSearchParams -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))
