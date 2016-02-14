{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.DataTransferItemList
       (item, clear, addFile, add, getLength, DataTransferItemList,
        castToDataTransferItemList, gTypeDataTransferItemList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
item ::
     (MonadDOM m) =>
       DataTransferItemList -> Word -> m (Maybe DataTransferItem)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.clear Mozilla DataTransferItemList.clear documentation> 
clear :: (MonadDOM m) => DataTransferItemList -> m ()
clear self = liftDOM (void (self ^. js "clear"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
addFile ::
        (MonadDOM m) => DataTransferItemList -> Maybe File -> m ()
addFile self file
  = liftDOM (void (self ^. jsf "add" [toJSVal file]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
add ::
    (MonadDOM m, ToJSString data', ToJSString type') =>
      DataTransferItemList -> data' -> type' -> m ()
add self data' type'
  = liftDOM (void (self ^. jsf "add" [toJSVal data', toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.length Mozilla DataTransferItemList.length documentation> 
getLength :: (MonadDOM m) => DataTransferItemList -> m Int
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))