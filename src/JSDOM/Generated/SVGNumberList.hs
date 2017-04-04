{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGNumberList
       (clear, initialize, initialize_, getItem, getItem_,
        insertItemBefore, insertItemBefore_, replaceItem, replaceItem_,
        removeItem, removeItem_, appendItem, appendItem_, getNumberOfItems,
        SVGNumberList(..), gTypeSVGNumberList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
clear :: (MonadDOM m) => SVGNumberList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize ::
           (MonadDOM m) => SVGNumberList -> SVGNumber -> m SVGNumber
initialize self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize_ :: (MonadDOM m) => SVGNumberList -> SVGNumber -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem :: (MonadDOM m) => SVGNumberList -> Word -> m SVGNumber
getItem self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGNumberList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) => SVGNumberList -> SVGNumber -> Word -> m SVGNumber
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m) => SVGNumberList -> SVGNumber -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) => SVGNumberList -> SVGNumber -> Word -> m SVGNumber
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m) => SVGNumberList -> SVGNumber -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem :: (MonadDOM m) => SVGNumberList -> Word -> m SVGNumber
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGNumberList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem ::
           (MonadDOM m) => SVGNumberList -> SVGNumber -> m SVGNumber
appendItem self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem_ :: (MonadDOM m) => SVGNumberList -> SVGNumber -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGNumberList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
