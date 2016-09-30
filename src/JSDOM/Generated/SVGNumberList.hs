{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGNumberList
       (clear, initialize, getItem, insertItemBefore, replaceItem,
        removeItem, appendItem, getNumberOfItems, SVGNumberList,
        castToSVGNumberList, gTypeSVGNumberList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
clear :: (MonadDOM m) => SVGNumberList -> m ()
clear self = liftDOM (void (self ^. js "clear"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGNumberList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
