{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGLengthList
       (clear, initialize, initialize_, initializeUnchecked, getItem,
        getItem_, getItemUnchecked, insertItemBefore, insertItemBefore_,
        insertItemBeforeUnchecked, replaceItem, replaceItem_,
        replaceItemUnchecked, removeItem, removeItem_, removeItemUnchecked,
        appendItem, appendItem_, appendItemUnchecked, getNumberOfItems,
        SVGLengthList(..), gTypeSVGLengthList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.clear Mozilla SVGLengthList.clear documentation> 
clear :: (MonadDOM m) => SVGLengthList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize_ ::
            (MonadDOM m) => SVGLengthList -> Maybe SVGLength -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initializeUnchecked ::
                    (MonadDOM m) => SVGLengthList -> Maybe SVGLength -> m SVGLength
initializeUnchecked self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGLengthList -> Word -> m (Maybe SVGLength)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGLengthList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItemUnchecked ::
                 (MonadDOM m) => SVGLengthList -> Word -> m SVGLength
getItemUnchecked self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m) => SVGLengthList -> Maybe SVGLength -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadDOM m) =>
                            SVGLengthList -> Maybe SVGLength -> Word -> m SVGLength
insertItemBeforeUnchecked self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m) => SVGLengthList -> Maybe SVGLength -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadDOM m) =>
                       SVGLengthList -> Maybe SVGLength -> Word -> m SVGLength
replaceItemUnchecked self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGLengthList -> Word -> m (Maybe SVGLength)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGLengthList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadDOM m) => SVGLengthList -> Word -> m SVGLength
removeItemUnchecked self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem_ ::
            (MonadDOM m) => SVGLengthList -> Maybe SVGLength -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadDOM m) => SVGLengthList -> Maybe SVGLength -> m SVGLength
appendItemUnchecked self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.numberOfItems Mozilla SVGLengthList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGLengthList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
