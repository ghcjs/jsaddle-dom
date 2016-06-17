{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.Attr
       (getName, getSpecified, setValue, getValue, getOwnerElement,
        getIsId, Attr, castToAttr, gTypeAttr)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => Attr -> m (Maybe result)
getName self = liftDOM ((self ^. js "name") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
getSpecified :: (MonadDOM m) => Attr -> m Bool
getSpecified self
  = liftDOM ((self ^. js "specified") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => Attr -> Maybe val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => Attr -> m (Maybe result)
getValue self
  = liftDOM ((self ^. js "value") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElement :: (MonadDOM m) => Attr -> m (Maybe Element)
getOwnerElement self
  = liftDOM ((self ^. js "ownerElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.isId Mozilla Attr.isId documentation> 
getIsId :: (MonadDOM m) => Attr -> m Bool
getIsId self = liftDOM ((self ^. js "isId") >>= valToBool)
