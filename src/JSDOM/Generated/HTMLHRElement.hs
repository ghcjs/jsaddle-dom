{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLHRElement
       (setAlign, getAlign, setNoShade, getNoShade, setSize, getSize,
        setWidth, getWidth, HTMLHRElement(..), gTypeHTMLHRElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.align Mozilla HTMLHRElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLHRElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.align Mozilla HTMLHRElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLHRElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.noShade Mozilla HTMLHRElement.noShade documentation> 
setNoShade :: (MonadDOM m) => HTMLHRElement -> Bool -> m ()
setNoShade self val = liftDOM (self ^. jss "noShade" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.noShade Mozilla HTMLHRElement.noShade documentation> 
getNoShade :: (MonadDOM m) => HTMLHRElement -> m Bool
getNoShade self = liftDOM ((self ^. js "noShade") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.size Mozilla HTMLHRElement.size documentation> 
setSize ::
        (MonadDOM m, ToJSString val) => HTMLHRElement -> val -> m ()
setSize self val = liftDOM (self ^. jss "size" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.size Mozilla HTMLHRElement.size documentation> 
getSize ::
        (MonadDOM m, FromJSString result) => HTMLHRElement -> m result
getSize self = liftDOM ((self ^. js "size") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.width Mozilla HTMLHRElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLHRElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.width Mozilla HTMLHRElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) => HTMLHRElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)
