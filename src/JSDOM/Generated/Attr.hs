{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Attr
       (getNamespaceURI, getNamespaceURIUnsafe, getNamespaceURIUnchecked,
        getPrefix, getPrefixUnsafe, getPrefixUnchecked, getLocalName,
        getName, setValue, getValue, getOwnerElement,
        getOwnerElementUnsafe, getOwnerElementUnchecked, getSpecified,
        Attr(..), gTypeAttr)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.namespaceURI Mozilla Attr.namespaceURI documentation> 
getNamespaceURI ::
                (MonadDOM m, FromJSString result) => Attr -> m (Maybe result)
getNamespaceURI self
  = liftDOM ((self ^. js "namespaceURI") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.namespaceURI Mozilla Attr.namespaceURI documentation> 
getNamespaceURIUnsafe ::
                      (MonadDOM m, HasCallStack, FromJSString result) => Attr -> m result
getNamespaceURIUnsafe self
  = liftDOM
      (((self ^. js "namespaceURI") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.namespaceURI Mozilla Attr.namespaceURI documentation> 
getNamespaceURIUnchecked ::
                         (MonadDOM m, FromJSString result) => Attr -> m result
getNamespaceURIUnchecked self
  = liftDOM ((self ^. js "namespaceURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.prefix Mozilla Attr.prefix documentation> 
getPrefix ::
          (MonadDOM m, FromJSString result) => Attr -> m (Maybe result)
getPrefix self
  = liftDOM ((self ^. js "prefix") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.prefix Mozilla Attr.prefix documentation> 
getPrefixUnsafe ::
                (MonadDOM m, HasCallStack, FromJSString result) => Attr -> m result
getPrefixUnsafe self
  = liftDOM
      (((self ^. js "prefix") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.prefix Mozilla Attr.prefix documentation> 
getPrefixUnchecked ::
                   (MonadDOM m, FromJSString result) => Attr -> m result
getPrefixUnchecked self
  = liftDOM ((self ^. js "prefix") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.localName Mozilla Attr.localName documentation> 
getLocalName ::
             (MonadDOM m, FromJSString result) => Attr -> m result
getLocalName self
  = liftDOM ((self ^. js "localName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getName :: (MonadDOM m, FromJSString result) => Attr -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
setValue :: (MonadDOM m, ToJSString val) => Attr -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValue :: (MonadDOM m, FromJSString result) => Attr -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElement :: (MonadDOM m) => Attr -> m (Maybe Element)
getOwnerElement self
  = liftDOM ((self ^. js "ownerElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElementUnsafe ::
                      (MonadDOM m, HasCallStack) => Attr -> m Element
getOwnerElementUnsafe self
  = liftDOM
      (((self ^. js "ownerElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElementUnchecked :: (MonadDOM m) => Attr -> m Element
getOwnerElementUnchecked self
  = liftDOM ((self ^. js "ownerElement") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
getSpecified :: (MonadDOM m) => Attr -> m Bool
getSpecified self
  = liftDOM ((self ^. js "specified") >>= valToBool)
