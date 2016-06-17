{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.HTMLCollection
       (item, namedItem, getLength, HTMLCollection, castToHTMLCollection,
        gTypeHTMLCollection, IsHTMLCollection, toHTMLCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
item ::
     (MonadDOM m, IsHTMLCollection self) =>
       self -> Word -> m (Maybe Node)
item self index
  = liftDOM
      (((toHTMLCollection self) ^. jsf "item" [toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, IsHTMLCollection self, ToJSString name) =>
            self -> name -> m (Maybe Node)
namedItem self name
  = liftDOM
      (((toHTMLCollection self) ^. jsf "namedItem" [toJSVal name]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.length Mozilla HTMLCollection.length documentation> 
getLength :: (MonadDOM m, IsHTMLCollection self) => self -> m Word
getLength self
  = liftDOM
      (round <$>
         (((toHTMLCollection self) ^. js "length") >>= valToNumber))
