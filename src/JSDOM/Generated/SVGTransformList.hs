{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTransformList
       (clear, initialize, getItem, insertItemBefore, replaceItem,
        removeItem, appendItem, createSVGTransformFromMatrix, consolidate,
        getNumberOfItems, SVGTransformList, castToSVGTransformList,
        gTypeSVGTransformList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
clear :: (MonadDOM m) => SVGTransformList -> m ()
clear self = liftDOM (void (self ^. js "clear"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGTransformList ->
                     Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGTransformList ->
                Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadDOM m) =>
                               SVGTransformList -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftDOM
      ((self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate ::
            (MonadDOM m) => SVGTransformList -> m (Maybe SVGTransform)
consolidate self
  = liftDOM ((self ^. js "consolidate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGTransformList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
