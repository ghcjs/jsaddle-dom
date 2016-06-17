{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.CompositionEvent
       (initCompositionEvent, getData, CompositionEvent,
        castToCompositionEvent, gTypeCompositionEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent.initCompositionEvent Mozilla CompositionEvent.initCompositionEvent documentation> 
initCompositionEvent ::
                     (MonadDOM m, ToJSString typeArg, ToJSString dataArg) =>
                       CompositionEvent ->
                         typeArg -> Bool -> Bool -> Maybe Window -> dataArg -> m ()
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
