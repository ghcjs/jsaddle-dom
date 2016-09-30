{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGLengthList
       (clear, initialize, getItem, insertItemBefore, replaceItem,
        removeItem, appendItem, getNumberOfItems, SVGLengthList,
        castToSVGLengthList, gTypeSVGLengthList)
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
clear self = liftDOM (void (self ^. js "clear"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGLengthList -> Word -> m (Maybe SVGLength)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGLengthList -> Word -> m (Maybe SVGLength)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.numberOfItems Mozilla SVGLengthList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGLengthList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
