{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextEvent
       (initTextEvent, getData, TextEvent(..), gTypeTextEvent) where
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent.initTextEvent Mozilla TextEvent.initTextEvent documentation> 
initTextEvent ::
              (MonadDOM m, ToJSString typeArg, ToJSString dataArg) =>
                TextEvent ->
                  typeArg -> Bool -> Bool -> Maybe Window -> dataArg -> m ()
initTextEvent self typeArg canBubbleArg cancelableArg viewArg
  dataArg
  = liftDOM
      (void
         (self ^. jsf "initTextEvent"
            [toJSVal typeArg, toJSVal canBubbleArg, toJSVal cancelableArg,
             toJSVal viewArg, toJSVal dataArg]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent.data Mozilla TextEvent.data documentation> 
getData ::
        (MonadDOM m, FromJSString result) => TextEvent -> m result
getData self = liftDOM ((self ^. js "data") >>= fromJSValUnchecked)
