{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLBaseElement
       (setHref, getHref, getHrefUnchecked, setTarget, getTarget,
        HTMLBaseElement(..), gTypeHTMLBaseElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
setHref ::
        (MonadDOM m, ToJSString val) =>
          HTMLBaseElement -> Maybe val -> m ()
setHref self val = liftDOM (self ^. jss "href" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) =>
          HTMLBaseElement -> m (Maybe result)
getHref self = liftDOM ((self ^. js "href") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
getHrefUnchecked ::
                 (MonadDOM m, FromJSString result) => HTMLBaseElement -> m result
getHrefUnchecked self
  = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
setTarget ::
          (MonadDOM m, ToJSString val) => HTMLBaseElement -> val -> m ()
setTarget self val = liftDOM (self ^. jss "target" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
getTarget ::
          (MonadDOM m, FromJSString result) => HTMLBaseElement -> m result
getTarget self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)
