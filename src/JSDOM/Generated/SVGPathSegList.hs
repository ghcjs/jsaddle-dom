{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegList
       (clear, initialize, initialize_, getItem, getItem_,
        insertItemBefore, insertItemBefore_, replaceItem, replaceItem_,
        removeItem, removeItem_, appendItem, appendItem_, getNumberOfItems,
        SVGPathSegList(..), gTypeSVGPathSegList)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.clear Mozilla SVGPathSegList.clear documentation> 
clear :: (MonadDOM m) => SVGPathSegList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize ::
           (MonadDOM m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m SVGPathSeg
initialize self newItem
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal newItem]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize_ ::
            (MonadDOM m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> m ()
initialize_ self newItem
  = liftDOM (void (self ^. jsf "initialize" [toJSVal newItem]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem :: (MonadDOM m) => SVGPathSegList -> Word -> m SVGPathSeg
getItem self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGPathSegList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m, IsSVGPathSeg newItem) =>
                   SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
insertItemBefore self newItem index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal newItem, toJSVal index])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m, IsSVGPathSeg newItem) =>
                    SVGPathSegList -> Maybe newItem -> Word -> m ()
insertItemBefore_ self newItem index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal newItem, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
replaceItem self newItem index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal newItem, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m, IsSVGPathSeg newItem) =>
               SVGPathSegList -> Maybe newItem -> Word -> m ()
replaceItem_ self newItem index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal newItem, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem ::
           (MonadDOM m) => SVGPathSegList -> Word -> m SVGPathSeg
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGPathSegList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem ::
           (MonadDOM m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m SVGPathSeg
appendItem self newItem
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal newItem]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem_ ::
            (MonadDOM m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> m ()
appendItem_ self newItem
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal newItem]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.numberOfItems Mozilla SVGPathSegList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGPathSegList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
