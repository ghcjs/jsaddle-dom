{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLUListElement
       (setCompact, getCompact, setType, getType, HTMLUListElement,
        castToHTMLUListElement, gTypeHTMLUListElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
setCompact :: (MonadDOM m) => HTMLUListElement -> Bool -> m ()
setCompact self val = liftDOM (self ^. jss "compact" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
getCompact :: (MonadDOM m) => HTMLUListElement -> m Bool
getCompact self = liftDOM ((self ^. js "compact") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.type Mozilla HTMLUListElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLUListElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.type Mozilla HTMLUListElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLUListElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)