{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.DOMStringList
       (item, contains, getLength, DOMStringList, castToDOMStringList,
        gTypeDOMStringList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
item ::
     (MonadDOM m, FromJSString result) =>
       DOMStringList -> Word -> m (Maybe result)
item self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.contains Mozilla DOMStringList.contains documentation> 
contains ::
         (MonadDOM m, ToJSString string) =>
           DOMStringList -> string -> m Bool
contains self string
  = liftDOM ((self ^. jsf "contains" [toJSVal string]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.length Mozilla DOMStringList.length documentation> 
getLength :: (MonadDOM m) => DOMStringList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
