{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ShadowRoot
       (getMode, getHost, setInnerHTML, getInnerHTML, ShadowRoot(..),
        gTypeShadowRoot)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.mode Mozilla ShadowRoot.mode documentation> 
getMode :: (MonadDOM m) => ShadowRoot -> m ShadowRootMode
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.host Mozilla ShadowRoot.host documentation> 
getHost :: (MonadDOM m) => ShadowRoot -> m Element
getHost self = liftDOM ((self ^. js "host") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
setInnerHTML ::
             (MonadDOM m, ToJSString val) => ShadowRoot -> val -> m ()
setInnerHTML self val
  = liftDOM (self ^. jss "innerHTML" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
getInnerHTML ::
             (MonadDOM m, FromJSString result) => ShadowRoot -> m result
getInnerHTML self
  = liftDOM ((self ^. js "innerHTML") >>= fromJSValUnchecked)
