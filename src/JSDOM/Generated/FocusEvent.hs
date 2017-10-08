{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FocusEvent
       (newFocusEvent, getRelatedTarget, getRelatedTargetUnsafe,
        getRelatedTargetUnchecked, FocusEvent(..), gTypeFocusEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent Mozilla FocusEvent documentation> 
newFocusEvent ::
              (MonadDOM m, ToJSString type') =>
                type' -> Maybe FocusEventInit -> m FocusEvent
newFocusEvent type' eventInitDict
  = liftDOM
      (FocusEvent <$>
         new (jsg "FocusEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent.relatedTarget Mozilla FocusEvent.relatedTarget documentation> 
getRelatedTarget ::
                 (MonadDOM m) => FocusEvent -> m (Maybe EventTarget)
getRelatedTarget self
  = liftDOM ((self ^. js "relatedTarget") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent.relatedTarget Mozilla FocusEvent.relatedTarget documentation> 
getRelatedTargetUnsafe ::
                       (MonadDOM m, HasCallStack) => FocusEvent -> m EventTarget
getRelatedTargetUnsafe self
  = liftDOM
      (((self ^. js "relatedTarget") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent.relatedTarget Mozilla FocusEvent.relatedTarget documentation> 
getRelatedTargetUnchecked ::
                          (MonadDOM m) => FocusEvent -> m EventTarget
getRelatedTargetUnchecked self
  = liftDOM ((self ^. js "relatedTarget") >>= fromJSValUnchecked)
