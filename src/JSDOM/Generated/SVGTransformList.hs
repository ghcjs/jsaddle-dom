{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTransformList
       (clear, initialize, initialize_, getItem, getItem_,
        insertItemBefore, insertItemBefore_, replaceItem, replaceItem_,
        removeItem, removeItem_, appendItem, appendItem_,
        createSVGTransformFromMatrix, createSVGTransformFromMatrix_,
        consolidate, consolidate_, getNumberOfItems, SVGTransformList(..),
        gTypeSVGTransformList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
clear :: (MonadDOM m) => SVGTransformList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize ::
           (MonadDOM m) => SVGTransformList -> SVGTransform -> m SVGTransform
initialize self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize_ ::
            (MonadDOM m) => SVGTransformList -> SVGTransform -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGTransformList -> Word -> m SVGTransform
getItem self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGTransformList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGTransformList -> SVGTransform -> Word -> m SVGTransform
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m) => SVGTransformList -> SVGTransform -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGTransformList -> SVGTransform -> Word -> m SVGTransform
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m) => SVGTransformList -> SVGTransform -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGTransformList -> Word -> m SVGTransform
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGTransformList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem ::
           (MonadDOM m) => SVGTransformList -> SVGTransform -> m SVGTransform
appendItem self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem_ ::
            (MonadDOM m) => SVGTransformList -> SVGTransform -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadDOM m) => SVGTransformList -> SVGMatrix -> m SVGTransform
createSVGTransformFromMatrix self matrix
  = liftDOM
      ((self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix_ ::
                              (MonadDOM m) => SVGTransformList -> SVGMatrix -> m ()
createSVGTransformFromMatrix_ self matrix
  = liftDOM
      (void
         (self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate :: (MonadDOM m) => SVGTransformList -> m SVGTransform
consolidate self
  = liftDOM ((self ^. jsf "consolidate" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate_ :: (MonadDOM m) => SVGTransformList -> m ()
consolidate_ self = liftDOM (void (self ^. jsf "consolidate" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGTransformList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
