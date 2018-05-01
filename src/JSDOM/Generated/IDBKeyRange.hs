{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBKeyRange
       (only, only_, lowerBound, lowerBound_, upperBound, upperBound_,
        bound, bound_, includes, includes_, getLower, getUpper,
        getLowerOpen, getUpperOpen, IDBKeyRange(..), gTypeIDBKeyRange)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only :: (MonadDOM m, ToJSVal value) => value -> m IDBKeyRange
only value
  = liftDOM
      (((jsg "IDBKeyRange") ^. jsf "only" [toJSVal value]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only_ :: (MonadDOM m, ToJSVal value) => value -> m ()
only_ value
  = liftDOM
      (void ((jsg "IDBKeyRange") ^. jsf "only" [toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound ::
           (MonadDOM m, ToJSVal lower) => lower -> Bool -> m IDBKeyRange
lowerBound lower open
  = liftDOM
      (((jsg "IDBKeyRange") ^. jsf "lowerBound"
          [toJSVal lower, toJSVal open])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound_ :: (MonadDOM m, ToJSVal lower) => lower -> Bool -> m ()
lowerBound_ lower open
  = liftDOM
      (void
         ((jsg "IDBKeyRange") ^. jsf "lowerBound"
            [toJSVal lower, toJSVal open]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound ::
           (MonadDOM m, ToJSVal upper) => upper -> Bool -> m IDBKeyRange
upperBound upper open
  = liftDOM
      (((jsg "IDBKeyRange") ^. jsf "upperBound"
          [toJSVal upper, toJSVal open])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound_ :: (MonadDOM m, ToJSVal upper) => upper -> Bool -> m ()
upperBound_ upper open
  = liftDOM
      (void
         ((jsg "IDBKeyRange") ^. jsf "upperBound"
            [toJSVal upper, toJSVal open]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound ::
      (MonadDOM m, ToJSVal lower, ToJSVal upper) =>
        lower -> upper -> Bool -> Bool -> m IDBKeyRange
bound lower upper lowerOpen upperOpen
  = liftDOM
      (((jsg "IDBKeyRange") ^. jsf "bound"
          [toJSVal lower, toJSVal upper, toJSVal lowerOpen,
           toJSVal upperOpen])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound_ ::
       (MonadDOM m, ToJSVal lower, ToJSVal upper) =>
         lower -> upper -> Bool -> Bool -> m ()
bound_ lower upper lowerOpen upperOpen
  = liftDOM
      (void
         ((jsg "IDBKeyRange") ^. jsf "bound"
            [toJSVal lower, toJSVal upper, toJSVal lowerOpen,
             toJSVal upperOpen]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.includes Mozilla IDBKeyRange.includes documentation> 
includes ::
         (MonadDOM m, ToJSVal key) => IDBKeyRange -> key -> m Bool
includes self key
  = liftDOM ((self ^. jsf "includes" [toJSVal key]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.includes Mozilla IDBKeyRange.includes documentation> 
includes_ ::
          (MonadDOM m, ToJSVal key) => IDBKeyRange -> key -> m ()
includes_ self key
  = liftDOM (void (self ^. jsf "includes" [toJSVal key]))

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
