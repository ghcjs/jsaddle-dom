{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DataTransferItemList
       (item, item_, clear, addFile, add, getLength,
        DataTransferItemList(..), gTypeDataTransferItemList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
item ::
     (MonadDOM m) => DataTransferItemList -> Word -> m DataTransferItem
item self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
item_ :: (MonadDOM m) => DataTransferItemList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.clear Mozilla DataTransferItemList.clear documentation> 
clear :: (MonadDOM m) => DataTransferItemList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
addFile ::
        (MonadDOM m) => DataTransferItemList -> Maybe File -> m ()
addFile self file
  = liftDOM (void (self ^. jsf "add" [toJSVal file]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
add ::
    (MonadDOM m, ToJSString data', ToJSString type') =>
      DataTransferItemList -> Maybe data' -> Maybe type' -> m ()
add self data' type'
  = liftDOM (void (self ^. jsf "add" [toJSVal data', toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.length Mozilla DataTransferItemList.length documentation> 
getLength :: (MonadDOM m) => DataTransferItemList -> m Int
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
