{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGNumberList
       (clear, initialize, initialize_, initializeUnsafe,
        initializeUnchecked, getItem, getItem_, getItemUnsafe,
        getItemUnchecked, insertItemBefore, insertItemBefore_,
        insertItemBeforeUnsafe, insertItemBeforeUnchecked, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked, removeItem,
        removeItem_, removeItemUnsafe, removeItemUnchecked, appendItem,
        appendItem_, appendItemUnsafe, appendItemUnchecked,
        getNumberOfItems, SVGNumberList(..), gTypeSVGNumberList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
clear :: (MonadDOM m) => SVGNumberList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize ::
           (MonadDOM m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
initialize self item
  = liftDOM ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize_ ::
            (MonadDOM m) => SVGNumberList -> Maybe SVGNumber -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initializeUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGNumberList -> Maybe SVGNumber -> m SVGNumber
initializeUnsafe self item
  = liftDOM
      (((self ^. jsf "initialize" [toJSVal item]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initializeUnchecked ::
                    (MonadDOM m) => SVGNumberList -> Maybe SVGNumber -> m SVGNumber
initializeUnchecked self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem ::
        (MonadDOM m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
getItem self index
  = liftDOM ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGNumberList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItemUnsafe ::
              (MonadDOM m, HasCallStack) => SVGNumberList -> Word -> m SVGNumber
getItemUnsafe self index
  = liftDOM
      (((self ^. jsf "getItem" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItemUnchecked ::
                 (MonadDOM m) => SVGNumberList -> Word -> m SVGNumber
getItemUnchecked self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m) =>
                   SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m) => SVGNumberList -> Maybe SVGNumber -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadDOM m, HasCallStack) =>
                         SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
insertItemBeforeUnsafe self item index
  = liftDOM
      (((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadDOM m) =>
                            SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
insertItemBeforeUnchecked self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m) =>
              SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m) => SVGNumberList -> Maybe SVGNumber -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadDOM m, HasCallStack) =>
                    SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
replaceItemUnsafe self item index
  = liftDOM
      (((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadDOM m) =>
                       SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
replaceItemUnchecked self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGNumberList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadDOM m, HasCallStack) => SVGNumberList -> Word -> m SVGNumber
removeItemUnsafe self index
  = liftDOM
      (((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadDOM m) => SVGNumberList -> Word -> m SVGNumber
removeItemUnchecked self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem ::
           (MonadDOM m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
appendItem self item
  = liftDOM ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem_ ::
            (MonadDOM m) => SVGNumberList -> Maybe SVGNumber -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGNumberList -> Maybe SVGNumber -> m SVGNumber
appendItemUnsafe self item
  = liftDOM
      (((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadDOM m) => SVGNumberList -> Maybe SVGNumber -> m SVGNumber
appendItemUnchecked self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGNumberList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
