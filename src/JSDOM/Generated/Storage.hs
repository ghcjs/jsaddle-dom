{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Storage
       (key, key_, keyUnsafe, keyUnchecked, getItem, getItem_,
        getItemUnsafe, getItemUnchecked, setItem, removeItem, clear,
        getLength, Storage(..), gTypeStorage)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
key ::
    (MonadDOM m, FromJSString result) =>
      Storage -> Word -> m (Maybe result)
key self index
  = liftDOM
      ((self ^. jsf "key" [toJSVal index]) >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
key_ :: (MonadDOM m) => Storage -> Word -> m ()
key_ self index
  = liftDOM (void (self ^. jsf "key" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
keyUnsafe ::
          (MonadDOM m, HasCallStack, FromJSString result) =>
            Storage -> Word -> m result
keyUnsafe self index
  = liftDOM
      (((self ^. jsf "key" [toJSVal index]) >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
keyUnchecked ::
             (MonadDOM m, FromJSString result) => Storage -> Word -> m result
keyUnchecked self index
  = liftDOM
      ((self ^. jsf "key" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItem ::
        (MonadDOM m, ToJSString key, FromJSString result) =>
          Storage -> key -> m (Maybe result)
getItem self key = liftDOM ((self ! key) >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItem_ :: (MonadDOM m, ToJSString key) => Storage -> key -> m ()
getItem_ self key = liftDOM (void (self ! key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItemUnsafe ::
              (MonadDOM m, ToJSString key, HasCallStack, FromJSString result) =>
                Storage -> key -> m result
getItemUnsafe self key
  = liftDOM
      (((self ! key) >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItemUnchecked ::
                 (MonadDOM m, ToJSString key, FromJSString result) =>
                   Storage -> key -> m result
getItemUnchecked self key
  = liftDOM ((self ! key) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.setItem Mozilla Storage.setItem documentation> 
setItem ::
        (MonadDOM m, ToJSString key, ToJSString data') =>
          Storage -> key -> data' -> m ()
setItem self key data'
  = liftDOM
      (void (self ^. jsf "setItem" [toJSVal key, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.removeItem Mozilla Storage.removeItem documentation> 
removeItem ::
           (MonadDOM m, ToJSString key) => Storage -> key -> m ()
removeItem self key
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.clear Mozilla Storage.clear documentation> 
clear :: (MonadDOM m) => Storage -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.length Mozilla Storage.length documentation> 
getLength :: (MonadDOM m) => Storage -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
