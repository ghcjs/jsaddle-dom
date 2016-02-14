{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLLegendElement
       (getForm, setAlign, getAlign, HTMLLegendElement,
        castToHTMLLegendElement, gTypeHTMLLegendElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.form Mozilla HTMLLegendElement.form documentation> 
getForm ::
        (MonadDOM m) => HTMLLegendElement -> m (Maybe HTMLFormElement)
getForm self = liftDOM ((self ^. js "form") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLLegendElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLLegendElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)