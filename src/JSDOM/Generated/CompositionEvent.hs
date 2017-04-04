{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CompositionEvent
       (newCompositionEvent, initCompositionEvent, getData,
        CompositionEvent(..), gTypeCompositionEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent Mozilla CompositionEvent documentation> 
newCompositionEvent ::
                    (MonadDOM m, ToJSString type') =>
                      type' -> Maybe CompositionEventInit -> m CompositionEvent
newCompositionEvent type' eventInitDict
  = liftDOM
      (CompositionEvent <$>
         new (jsg "CompositionEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent.initCompositionEvent Mozilla CompositionEvent.initCompositionEvent documentation> 
initCompositionEvent ::
                     (MonadDOM m, ToJSString typeArg, ToJSString dataArg) =>
                       CompositionEvent ->
                         Maybe typeArg ->
                           Bool -> Bool -> Maybe Window -> Maybe dataArg -> m ()
initCompositionEvent self typeArg canBubbleArg cancelableArg
  viewArg dataArg
  = liftDOM
      (void
         (self ^. jsf "initCompositionEvent"
            [toJSVal typeArg, toJSVal canBubbleArg, toJSVal cancelableArg,
             toJSVal viewArg, toJSVal dataArg]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent.data Mozilla CompositionEvent.data documentation> 
getData ::
        (MonadDOM m, FromJSString result) => CompositionEvent -> m result
getData self = liftDOM ((self ^. js "data") >>= fromJSValUnchecked)
