{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGPathSegList
       (clear, initialize, getItem, insertItemBefore, replaceItem,
        removeItem, appendItem, getNumberOfItems, SVGPathSegList,
        castToSVGPathSegList, gTypeSVGPathSegList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.clear Mozilla SVGPathSegList.clear documentation> 
clear :: (MonadDOM m) => SVGPathSegList -> m ()
clear self = liftDOM (void (self ^. js "clear"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize ::
           (MonadDOM m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m (Maybe SVGPathSeg)
initialize self newItem
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal newItem]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGPathSegList -> Word -> m (Maybe SVGPathSeg)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m, IsSVGPathSeg newItem) =>
                   SVGPathSegList -> Maybe newItem -> Word -> m (Maybe SVGPathSeg)
insertItemBefore self newItem index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal newItem, toJSVal index])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> Word -> m (Maybe SVGPathSeg)
replaceItem self newItem index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal newItem, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGPathSegList -> Word -> m (Maybe SVGPathSeg)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem ::
           (MonadDOM m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m (Maybe SVGPathSeg)
appendItem self newItem
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal newItem]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.numberOfItems Mozilla SVGPathSegList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGPathSegList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))