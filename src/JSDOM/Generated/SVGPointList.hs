{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPointList
       (clear, initialize, getItem, insertItemBefore, replaceItem,
        removeItem, appendItem, getNumberOfItems, SVGPointList,
        castToSVGPointList, gTypeSVGPointList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.clear Mozilla SVGPointList.clear documentation> 
clear :: (MonadDOM m) => SVGPointList -> m ()
clear self = liftDOM (void (self ^. js "clear"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGPointList -> Word -> m (Maybe SVGPoint)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGPointList -> Word -> m (Maybe SVGPoint)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGPointList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
