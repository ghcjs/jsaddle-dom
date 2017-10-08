{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CustomEvent
       (newCustomEvent, initCustomEvent, getDetail, CustomEvent(..),
        gTypeCustomEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent Mozilla CustomEvent documentation> 
newCustomEvent ::
               (MonadDOM m, ToJSString type') =>
                 type' -> Maybe CustomEventInit -> m CustomEvent
newCustomEvent type' eventInitDict
  = liftDOM
      (CustomEvent <$>
         new (jsg "CustomEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.initCustomEvent Mozilla CustomEvent.initCustomEvent documentation> 
initCustomEvent ::
                (MonadDOM m, ToJSString type', ToJSVal detail) =>
                  CustomEvent -> type' -> Bool -> Bool -> Maybe detail -> m ()
initCustomEvent self type' bubbles cancelable detail
  = liftDOM
      (void
         (self ^. jsf "initCustomEvent"
            [toJSVal type', toJSVal bubbles, toJSVal cancelable,
             toJSVal detail]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.detail Mozilla CustomEvent.detail documentation> 
getDetail :: (MonadDOM m) => CustomEvent -> m JSVal
getDetail self = liftDOM ((self ^. js "detail") >>= toJSVal)
