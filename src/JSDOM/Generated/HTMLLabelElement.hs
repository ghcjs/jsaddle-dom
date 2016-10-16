{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLLabelElement
       (getForm, getFormUnchecked, setHtmlFor, getHtmlFor, getControl,
        getControlUnchecked, HTMLLabelElement(..), gTypeHTMLLabelElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
getForm ::
        (MonadDOM m) => HTMLLabelElement -> m (Maybe HTMLFormElement)
getForm self = liftDOM ((self ^. js "form") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
getFormUnchecked ::
                 (MonadDOM m) => HTMLLabelElement -> m HTMLFormElement
getFormUnchecked self
  = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
setHtmlFor ::
           (MonadDOM m, ToJSString val) => HTMLLabelElement -> val -> m ()
setHtmlFor self val = liftDOM (self ^. jss "htmlFor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
getHtmlFor ::
           (MonadDOM m, FromJSString result) => HTMLLabelElement -> m result
getHtmlFor self
  = liftDOM ((self ^. js "htmlFor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.control Mozilla HTMLLabelElement.control documentation> 
getControl ::
           (MonadDOM m) => HTMLLabelElement -> m (Maybe HTMLElement)
getControl self = liftDOM ((self ^. js "control") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.control Mozilla HTMLLabelElement.control documentation> 
getControlUnchecked ::
                    (MonadDOM m) => HTMLLabelElement -> m HTMLElement
getControlUnchecked self
  = liftDOM ((self ^. js "control") >>= fromJSValUnchecked)
