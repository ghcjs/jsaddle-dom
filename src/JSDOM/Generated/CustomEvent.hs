{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CustomEvent
       (initCustomEvent, getDetail, CustomEvent, castToCustomEvent,
        gTypeCustomEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.initCustomEvent Mozilla CustomEvent.initCustomEvent documentation> 
initCustomEvent ::
                (MonadDOM m, ToJSString typeArg) =>
                  CustomEvent -> typeArg -> Bool -> Bool -> JSVal -> m ()
initCustomEvent self typeArg canBubbleArg cancelableArg detailArg
  = liftDOM
      (void
         (self ^. jsf "initCustomEvent"
            [toJSVal typeArg, toJSVal canBubbleArg, toJSVal cancelableArg,
             toJSVal detailArg]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.detail Mozilla CustomEvent.detail documentation> 
getDetail :: (MonadDOM m) => CustomEvent -> m JSVal
getDetail self = liftDOM ((self ^. js "detail") >>= toJSVal)
