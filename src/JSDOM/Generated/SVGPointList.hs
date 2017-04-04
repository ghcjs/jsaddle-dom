{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPointList
       (clear, initialize, initialize_, getItem, getItem_,
        insertItemBefore, insertItemBefore_, replaceItem, replaceItem_,
        removeItem, removeItem_, appendItem, appendItem_, getNumberOfItems,
        SVGPointList(..), gTypeSVGPointList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.clear Mozilla SVGPointList.clear documentation> 
clear :: (MonadDOM m) => SVGPointList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize ::
           (MonadDOM m) => SVGPointList -> SVGPoint -> m SVGPoint
initialize self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize_ :: (MonadDOM m) => SVGPointList -> SVGPoint -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem :: (MonadDOM m) => SVGPointList -> Word -> m SVGPoint
getItem self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGPointList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) => SVGPointList -> SVGPoint -> Word -> m SVGPoint
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m) => SVGPointList -> SVGPoint -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) => SVGPointList -> SVGPoint -> Word -> m SVGPoint
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m) => SVGPointList -> SVGPoint -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem :: (MonadDOM m) => SVGPointList -> Word -> m SVGPoint
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGPointList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem ::
           (MonadDOM m) => SVGPointList -> SVGPoint -> m SVGPoint
appendItem self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem_ :: (MonadDOM m) => SVGPointList -> SVGPoint -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGPointList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
