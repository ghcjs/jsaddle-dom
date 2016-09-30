{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLBRElement
       (setClear, getClear, HTMLBRElement, castToHTMLBRElement,
        gTypeHTMLBRElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
setClear ::
         (MonadDOM m, ToJSString val) => HTMLBRElement -> val -> m ()
setClear self val = liftDOM (self ^. jss "clear" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
getClear ::
         (MonadDOM m, FromJSString result) => HTMLBRElement -> m result
getClear self
  = liftDOM ((self ^. js "clear") >>= fromJSValUnchecked)
