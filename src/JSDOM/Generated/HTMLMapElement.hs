{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLMapElement
       (getAreas, getAreasUnchecked, setName, getName, HTMLMapElement(..),
        gTypeHTMLMapElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.areas Mozilla HTMLMapElement.areas documentation> 
getAreas ::
         (MonadDOM m) => HTMLMapElement -> m (Maybe HTMLCollection)
getAreas self = liftDOM ((self ^. js "areas") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.areas Mozilla HTMLMapElement.areas documentation> 
getAreasUnchecked ::
                  (MonadDOM m) => HTMLMapElement -> m HTMLCollection
getAreasUnchecked self
  = liftDOM ((self ^. js "areas") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.name Mozilla HTMLMapElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLMapElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.name Mozilla HTMLMapElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLMapElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)
