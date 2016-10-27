{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.VTTRegionList
       (item, item_, itemUnsafe, itemUnchecked, getRegionById,
        getRegionById_, getRegionByIdUnsafe, getRegionByIdUnchecked,
        getLength, VTTRegionList(..), gTypeVTTRegionList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
itemUnsafe ::
           (MonadDOM m, HasCallStack) => VTTRegionList -> Word -> m VTTRegion
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
getRegionByIdUnsafe ::
                    (MonadDOM m, ToJSString id, HasCallStack) =>
                      VTTRegionList -> id -> m VTTRegion
getRegionByIdUnsafe self id
  = liftDOM
      (((self ^. jsf "getRegionById" [toJSVal id]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
