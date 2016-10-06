{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Storage
       (key, getItem, setItem, removeItem, clear, getLength, Storage,
        castToStorage, gTypeStorage)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
key ::
    (MonadDOM m, FromJSString result) =>
      Storage -> Word -> m (Maybe result)
key self index
  = liftDOM
      ((self ^. jsf "key" [toJSVal index]) >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItem ::
        (MonadDOM m, ToJSString key, FromJSString result) =>
          Storage -> key -> m (Maybe result)
getItem self key
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal key]) >>= fromMaybeJSString)

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
