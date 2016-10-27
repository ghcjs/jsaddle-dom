{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTransformList
       (clear, initialize, initialize_, initializeUnsafe,
        initializeUnchecked, getItem, getItem_, getItemUnsafe,
        getItemUnchecked, insertItemBefore, insertItemBefore_,
        insertItemBeforeUnsafe, insertItemBeforeUnchecked, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked, removeItem,
        removeItem_, removeItemUnsafe, removeItemUnchecked, appendItem,
        appendItem_, appendItemUnsafe, appendItemUnchecked,
        createSVGTransformFromMatrix, createSVGTransformFromMatrix_,
        createSVGTransformFromMatrixUnsafe,
        createSVGTransformFromMatrixUnchecked, consolidate, consolidate_,
        consolidateUnsafe, consolidateUnchecked, getNumberOfItems,
        SVGTransformList(..), gTypeSVGTransformList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
clear :: (MonadDOM m) => SVGTransformList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize_ ::
            (MonadDOM m) => SVGTransformList -> Maybe SVGTransform -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initializeUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGTransformList -> Maybe SVGTransform -> m SVGTransform
initializeUnsafe self item
  = liftDOM
      (((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initializeUnchecked ::
                    (MonadDOM m) =>
                      SVGTransformList -> Maybe SVGTransform -> m SVGTransform
initializeUnchecked self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGTransformList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItemUnsafe ::
              (MonadDOM m, HasCallStack) =>
                SVGTransformList -> Word -> m SVGTransform
getItemUnsafe self index
  = liftDOM
      (((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItemUnchecked ::
                 (MonadDOM m) => SVGTransformList -> Word -> m SVGTransform
getItemUnchecked self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGTransformList ->
                     Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m) =>
                    SVGTransformList -> Maybe SVGTransform -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadDOM m, HasCallStack) =>
                         SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
insertItemBeforeUnsafe self item index
  = liftDOM
      (((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadDOM m) =>
                            SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
insertItemBeforeUnchecked self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGTransformList ->
                Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m) =>
               SVGTransformList -> Maybe SVGTransform -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadDOM m, HasCallStack) =>
                    SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
replaceItemUnsafe self item index
  = liftDOM
      (((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadDOM m) =>
                       SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
replaceItemUnchecked self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGTransformList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGTransformList -> Word -> m SVGTransform
removeItemUnsafe self index
  = liftDOM
      (((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadDOM m) => SVGTransformList -> Word -> m SVGTransform
removeItemUnchecked self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem_ ::
            (MonadDOM m) => SVGTransformList -> Maybe SVGTransform -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGTransformList -> Maybe SVGTransform -> m SVGTransform
appendItemUnsafe self item
  = liftDOM
      (((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadDOM m) =>
                      SVGTransformList -> Maybe SVGTransform -> m SVGTransform
appendItemUnchecked self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadDOM m) =>
                               SVGTransformList -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftDOM
      ((self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix_ ::
                              (MonadDOM m) => SVGTransformList -> Maybe SVGMatrix -> m ()
createSVGTransformFromMatrix_ self matrix
  = liftDOM
      (void
         (self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrixUnsafe ::
                                   (MonadDOM m, HasCallStack) =>
                                     SVGTransformList -> Maybe SVGMatrix -> m SVGTransform
createSVGTransformFromMatrixUnsafe self matrix
  = liftDOM
      (((self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrixUnchecked ::
                                      (MonadDOM m) =>
                                        SVGTransformList -> Maybe SVGMatrix -> m SVGTransform
createSVGTransformFromMatrixUnchecked self matrix
  = liftDOM
      ((self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate ::
            (MonadDOM m) => SVGTransformList -> m (Maybe SVGTransform)
consolidate self
  = liftDOM ((self ^. jsf "consolidate" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate_ :: (MonadDOM m) => SVGTransformList -> m ()
consolidate_ self = liftDOM (void (self ^. jsf "consolidate" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidateUnsafe ::
                  (MonadDOM m, HasCallStack) => SVGTransformList -> m SVGTransform
consolidateUnsafe self
  = liftDOM
      (((self ^. jsf "consolidate" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidateUnchecked ::
                     (MonadDOM m) => SVGTransformList -> m SVGTransform
consolidateUnchecked self
  = liftDOM ((self ^. jsf "consolidate" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGTransformList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
