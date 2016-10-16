{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPointList
       (clear, initialize, initialize_, initializeUnsafe,
        initializeUnchecked, getItem, getItem_, getItemUnsafe,
        getItemUnchecked, insertItemBefore, insertItemBefore_,
        insertItemBeforeUnsafe, insertItemBeforeUnchecked, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked, removeItem,
        removeItem_, removeItemUnsafe, removeItemUnchecked, appendItem,
        appendItem_, appendItemUnsafe, appendItemUnchecked,
        getNumberOfItems, SVGPointList(..), gTypeSVGPointList)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.clear Mozilla SVGPointList.clear documentation> 
clear :: (MonadDOM m) => SVGPointList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize_ ::
            (MonadDOM m) => SVGPointList -> Maybe SVGPoint -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initializeUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGPointList -> Maybe SVGPoint -> m SVGPoint
initializeUnsafe self item
  = liftDOM
      (((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initializeUnchecked ::
                    (MonadDOM m) => SVGPointList -> Maybe SVGPoint -> m SVGPoint
initializeUnchecked self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGPointList -> Word -> m (Maybe SVGPoint)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGPointList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItemUnsafe ::
              (MonadDOM m, HasCallStack) => SVGPointList -> Word -> m SVGPoint
getItemUnsafe self index
  = liftDOM
      (((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItemUnchecked ::
                 (MonadDOM m) => SVGPointList -> Word -> m SVGPoint
getItemUnchecked self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m) => SVGPointList -> Maybe SVGPoint -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadDOM m, HasCallStack) =>
                         SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
insertItemBeforeUnsafe self item index
  = liftDOM
      (((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadDOM m) =>
                            SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
insertItemBeforeUnchecked self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m) => SVGPointList -> Maybe SVGPoint -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadDOM m, HasCallStack) =>
                    SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
replaceItemUnsafe self item index
  = liftDOM
      (((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadDOM m) =>
                       SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
replaceItemUnchecked self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGPointList -> Word -> m (Maybe SVGPoint)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGPointList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadDOM m, HasCallStack) => SVGPointList -> Word -> m SVGPoint
removeItemUnsafe self index
  = liftDOM
      (((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadDOM m) => SVGPointList -> Word -> m SVGPoint
removeItemUnchecked self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem_ ::
            (MonadDOM m) => SVGPointList -> Maybe SVGPoint -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGPointList -> Maybe SVGPoint -> m SVGPoint
appendItemUnsafe self item
  = liftDOM
      (((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadDOM m) => SVGPointList -> Maybe SVGPoint -> m SVGPoint
appendItemUnchecked self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGPointList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
