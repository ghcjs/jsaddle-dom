{-# LANGUAGE CPP #-}
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadDOM m, ToJSString prefix, FromJSString result) =>
                     XPathNSResolver -> prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftDOM
      ((self ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURI_ ::
                    (MonadDOM m, ToJSString prefix) =>
                      XPathNSResolver -> prefix -> m ()
lookupNamespaceURI_ self prefix
  = liftDOM
      (void (self ^. jsf "lookupNamespaceURI" [toJSVal prefix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURIUnsafe ::
                         (MonadDOM m, ToJSString prefix, HasCallStack,
                          FromJSString result) =>
                           XPathNSResolver -> prefix -> m result
lookupNamespaceURIUnsafe self prefix
  = liftDOM
      (((self ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURIUnchecked ::
                            (MonadDOM m, ToJSString prefix, FromJSString result) =>
                              XPathNSResolver -> prefix -> m result
lookupNamespaceURIUnchecked self prefix
  = liftDOM
      ((self ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
         fromJSValUnchecked)
