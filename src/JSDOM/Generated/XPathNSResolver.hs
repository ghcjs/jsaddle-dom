{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XPathNSResolver
       (lookupNamespaceURI, lookupNamespaceURI_, lookupNamespaceURIUnsafe,
        lookupNamespaceURIUnchecked, XPathNSResolver(..),
        gTypeXPathNSResolver)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadDOM m, ToJSString prefix, FromJSString result) =>
                     XPathNSResolver -> Maybe prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftDOM
      ((self ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURI_ ::
                    (MonadDOM m, ToJSString prefix) =>
                      XPathNSResolver -> Maybe prefix -> m ()
lookupNamespaceURI_ self prefix
  = liftDOM
      (void (self ^. jsf "lookupNamespaceURI" [toJSVal prefix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURIUnsafe ::
                         (MonadDOM m, ToJSString prefix, HasCallStack,
                          FromJSString result) =>
                           XPathNSResolver -> Maybe prefix -> m result
lookupNamespaceURIUnsafe self prefix
  = liftDOM
      (((self ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURIUnchecked ::
                            (MonadDOM m, ToJSString prefix, FromJSString result) =>
                              XPathNSResolver -> Maybe prefix -> m result
lookupNamespaceURIUnchecked self prefix
  = liftDOM
      ((self ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
         fromJSValUnchecked)
