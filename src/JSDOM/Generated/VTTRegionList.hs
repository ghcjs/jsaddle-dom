{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.VTTRegionList
       (item, item_, itemUnchecked, getRegionById, getRegionById_,
        getRegionByIdUnchecked, getLength, VTTRegionList(..),
        gTypeVTTRegionList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
item ::
     (MonadDOM m) => VTTRegionList -> Word -> m (Maybe VTTRegion)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
item_ :: (MonadDOM m) => VTTRegionList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
itemUnchecked ::
              (MonadDOM m) => VTTRegionList -> Word -> m VTTRegion
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionById ::
              (MonadDOM m, ToJSString id) =>
                VTTRegionList -> id -> m (Maybe VTTRegion)
getRegionById self id
  = liftDOM
      ((self ^. jsf "getRegionById" [toJSVal id]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionById_ ::
               (MonadDOM m, ToJSString id) => VTTRegionList -> id -> m ()
getRegionById_ self id
  = liftDOM (void (self ^. jsf "getRegionById" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionByIdUnchecked ::
                       (MonadDOM m, ToJSString id) => VTTRegionList -> id -> m VTTRegion
getRegionByIdUnchecked self id
  = liftDOM
      ((self ^. jsf "getRegionById" [toJSVal id]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.length Mozilla VTTRegionList.length documentation> 
getLength :: (MonadDOM m) => VTTRegionList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
