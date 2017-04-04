{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ShadowRoot
       (getMode, getHost, setInnerHTML, getInnerHTML, getInnerHTMLUnsafe,
        getInnerHTMLUnchecked, ShadowRoot(..), gTypeShadowRoot)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.mode Mozilla ShadowRoot.mode documentation> 
getMode :: (MonadDOM m) => ShadowRoot -> m ShadowRootMode
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.host Mozilla ShadowRoot.host documentation> 
getHost :: (MonadDOM m) => ShadowRoot -> m Element
getHost self = liftDOM ((self ^. js "host") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
setInnerHTML ::
             (MonadDOM m, ToJSString val) => ShadowRoot -> Maybe val -> m ()
setInnerHTML self val
  = liftDOM (self ^. jss "innerHTML" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
getInnerHTML ::
             (MonadDOM m, FromJSString result) => ShadowRoot -> m (Maybe result)
getInnerHTML self
  = liftDOM ((self ^. js "innerHTML") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
getInnerHTMLUnsafe ::
                   (MonadDOM m, HasCallStack, FromJSString result) =>
                     ShadowRoot -> m result
getInnerHTMLUnsafe self
  = liftDOM
      (((self ^. js "innerHTML") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
getInnerHTMLUnchecked ::
                      (MonadDOM m, FromJSString result) => ShadowRoot -> m result
getInnerHTMLUnchecked self
  = liftDOM ((self ^. js "innerHTML") >>= fromJSValUnchecked)
