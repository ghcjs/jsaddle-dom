{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PerformanceObserverCallback
       (newPerformanceObserverCallback,
        newPerformanceObserverCallbackSync,
        newPerformanceObserverCallbackAsync, PerformanceObserverCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverCallback Mozilla PerformanceObserverCallback documentation> 
newPerformanceObserverCallback ::
                               (MonadDOM m) =>
                                 (PerformanceObserverEntryList -> PerformanceObserver -> JSM ()) ->
                                   m PerformanceObserverCallback
newPerformanceObserverCallback callback
  = liftDOM
      (PerformanceObserverCallback . Callback <$>
         function
           (\ _ _ [entries, observer] ->
              fromJSValUnchecked observer >>=
                \ observer' ->
                  fromJSValUnchecked entries >>= \ entries' -> callback entries'
                    observer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverCallback Mozilla PerformanceObserverCallback documentation> 
newPerformanceObserverCallbackSync ::
                                   (MonadDOM m) =>
                                     (PerformanceObserverEntryList -> PerformanceObserver -> JSM ())
                                       -> m PerformanceObserverCallback
newPerformanceObserverCallbackSync callback
  = liftDOM
      (PerformanceObserverCallback . Callback <$>
         function
           (\ _ _ [entries, observer] ->
              fromJSValUnchecked observer >>=
                \ observer' ->
                  fromJSValUnchecked entries >>= \ entries' -> callback entries'
                    observer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverCallback Mozilla PerformanceObserverCallback documentation> 
newPerformanceObserverCallbackAsync ::
                                    (MonadDOM m) =>
                                      (PerformanceObserverEntryList ->
                                         PerformanceObserver -> JSM ())
                                        -> m PerformanceObserverCallback
newPerformanceObserverCallbackAsync callback
  = liftDOM
      (PerformanceObserverCallback . Callback <$>
         function
           (\ _ _ [entries, observer] ->
              fromJSValUnchecked observer >>=
                \ observer' ->
                  fromJSValUnchecked entries >>= \ entries' -> callback entries'
                    observer'))
