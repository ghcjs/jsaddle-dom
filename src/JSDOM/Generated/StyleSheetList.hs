{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.StyleSheetList
       (item, _get, getLength, StyleSheetList, castToStyleSheetList,
        gTypeStyleSheetList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item ::
     (MonadDOM m) => StyleSheetList -> Word -> m (Maybe StyleSheet)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList._get Mozilla StyleSheetList._get documentation> 
_get ::
     (MonadDOM m, ToJSString name) =>
       StyleSheetList -> name -> m (Maybe CSSStyleSheet)
_get self name
  = liftDOM ((self ^. jsf "_get" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.length Mozilla StyleSheetList.length documentation> 
getLength :: (MonadDOM m) => StyleSheetList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
