{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGScriptElement
       (setType, getType, SVGScriptElement, castToSVGScriptElement,
        gTypeSVGScriptElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) =>
          SVGScriptElement -> Maybe val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) =>
          SVGScriptElement -> m (Maybe result)
getType self = liftDOM ((self ^. js "type") >>= fromMaybeJSString)
