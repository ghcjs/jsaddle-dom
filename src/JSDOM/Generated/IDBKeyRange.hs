{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBKeyRange
       (only, only_, onlyUnchecked, lowerBound, lowerBound_,
        lowerBoundUnchecked, upperBound, upperBound_, upperBoundUnchecked,
        bound, bound_, boundUnchecked, getLower, getUpper, getLowerOpen,
        getUpperOpen, IDBKeyRange, castToIDBKeyRange, gTypeIDBKeyRange)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only ::
     (MonadDOM m) => IDBKeyRange -> JSVal -> m (Maybe IDBKeyRange)
only self value
  = liftDOM ((self ^. jsf "only" [toJSVal value]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only_ :: (MonadDOM m) => IDBKeyRange -> JSVal -> m ()
only_ self value
  = liftDOM (void (self ^. jsf "only" [toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
onlyUnchecked ::
              (MonadDOM m) => IDBKeyRange -> JSVal -> m IDBKeyRange
onlyUnchecked self value
  = liftDOM
      ((self ^. jsf "only" [toJSVal value]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound ::
           (MonadDOM m) =>
             IDBKeyRange -> JSVal -> Bool -> m (Maybe IDBKeyRange)
lowerBound self lower open
  = liftDOM
      ((self ^. jsf "lowerBound" [toJSVal lower, toJSVal open]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound_ :: (MonadDOM m) => IDBKeyRange -> JSVal -> Bool -> m ()
lowerBound_ self lower open
  = liftDOM
      (void (self ^. jsf "lowerBound" [toJSVal lower, toJSVal open]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBoundUnchecked ::
                    (MonadDOM m) => IDBKeyRange -> JSVal -> Bool -> m IDBKeyRange
lowerBoundUnchecked self lower open
  = liftDOM
      ((self ^. jsf "lowerBound" [toJSVal lower, toJSVal open]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound ::
           (MonadDOM m) =>
             IDBKeyRange -> JSVal -> Bool -> m (Maybe IDBKeyRange)
upperBound self upper open
  = liftDOM
      ((self ^. jsf "upperBound" [toJSVal upper, toJSVal open]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound_ :: (MonadDOM m) => IDBKeyRange -> JSVal -> Bool -> m ()
upperBound_ self upper open
  = liftDOM
      (void (self ^. jsf "upperBound" [toJSVal upper, toJSVal open]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBoundUnchecked ::
                    (MonadDOM m) => IDBKeyRange -> JSVal -> Bool -> m IDBKeyRange
upperBoundUnchecked self upper open
  = liftDOM
      ((self ^. jsf "upperBound" [toJSVal upper, toJSVal open]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound ::
      (MonadDOM m) =>
        IDBKeyRange ->
          JSVal -> JSVal -> Bool -> Bool -> m (Maybe IDBKeyRange)
bound self lower upper lowerOpen upperOpen
  = liftDOM
      ((self ^. jsf "bound"
          [toJSVal lower, toJSVal upper, toJSVal lowerOpen,
           toJSVal upperOpen])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound_ ::
       (MonadDOM m) =>
         IDBKeyRange -> JSVal -> JSVal -> Bool -> Bool -> m ()
bound_ self lower upper lowerOpen upperOpen
  = liftDOM
      (void
         (self ^. jsf "bound"
            [toJSVal lower, toJSVal upper, toJSVal lowerOpen,
             toJSVal upperOpen]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
boundUnchecked ::
               (MonadDOM m) =>
                 IDBKeyRange -> JSVal -> JSVal -> Bool -> Bool -> m IDBKeyRange
boundUnchecked self lower upper lowerOpen upperOpen
  = liftDOM
      ((self ^. jsf "bound"
          [toJSVal lower, toJSVal upper, toJSVal lowerOpen,
           toJSVal upperOpen])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lower Mozilla IDBKeyRange.lower documentation> 
getLower :: (MonadDOM m) => IDBKeyRange -> m JSVal
getLower self = liftDOM ((self ^. js "lower") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upper Mozilla IDBKeyRange.upper documentation> 
getUpper :: (MonadDOM m) => IDBKeyRange -> m JSVal
getUpper self = liftDOM ((self ^. js "upper") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerOpen Mozilla IDBKeyRange.lowerOpen documentation> 
getLowerOpen :: (MonadDOM m) => IDBKeyRange -> m Bool
getLowerOpen self
  = liftDOM ((self ^. js "lowerOpen") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperOpen Mozilla IDBKeyRange.upperOpen documentation> 
getUpperOpen :: (MonadDOM m) => IDBKeyRange -> m Bool
getUpperOpen self
  = liftDOM ((self ^. js "upperOpen") >>= valToBool)
