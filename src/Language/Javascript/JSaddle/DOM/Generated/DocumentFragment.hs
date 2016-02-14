{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.DocumentFragment
       (newDocumentFragment, querySelector, querySelectorAll,
        DocumentFragment, castToDocumentFragment, gTypeDocumentFragment)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation> 
newDocumentFragment :: (MonadDOM m) => m DocumentFragment
newDocumentFragment
  = liftDOM (DocumentFragment <$> new (jsg "DocumentFragment") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelector ::
              (MonadDOM m, ToJSString selectors) =>
                DocumentFragment -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftDOM
      ((self ^. jsf "querySelector" [toJSVal selectors]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadDOM m, ToJSString selectors) =>
                   DocumentFragment -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftDOM
      ((self ^. jsf "querySelectorAll" [toJSVal selectors]) >>=
         fromJSVal)