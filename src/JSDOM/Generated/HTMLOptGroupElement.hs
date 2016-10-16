{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLOptGroupElement
       (setDisabled, getDisabled, setLabel, getLabel,
        HTMLOptGroupElement(..), gTypeHTMLOptGroupElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.disabled Mozilla HTMLOptGroupElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLOptGroupElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.disabled Mozilla HTMLOptGroupElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLOptGroupElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.label Mozilla HTMLOptGroupElement.label documentation> 
setLabel ::
         (MonadDOM m, ToJSString val) => HTMLOptGroupElement -> val -> m ()
setLabel self val = liftDOM (self ^. jss "label" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.label Mozilla HTMLOptGroupElement.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) =>
           HTMLOptGroupElement -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)
