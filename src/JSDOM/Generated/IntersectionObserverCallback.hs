{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IntersectionObserverCallback
       (newIntersectionObserverCallback,
        newIntersectionObserverCallbackSync,
        newIntersectionObserverCallbackAsync, IntersectionObserverCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverCallback Mozilla IntersectionObserverCallback documentation> 
newIntersectionObserverCallback ::
                                (MonadDOM m) =>
                                  ([IntersectionObserverEntry] -> IntersectionObserver -> JSM ()) ->
                                    m IntersectionObserverCallback
newIntersectionObserverCallback callback
  = liftDOM
      (IntersectionObserverCallback . Callback <$>
         function
           (\ _ _ [entries, observer] ->
              fromJSValUnchecked observer >>=
                \ observer' ->
                  fromJSArrayUnchecked entries >>= \ entries' -> callback entries'
                    observer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverCallback Mozilla IntersectionObserverCallback documentation> 
newIntersectionObserverCallbackSync ::
                                    (MonadDOM m) =>
                                      ([IntersectionObserverEntry] ->
                                         IntersectionObserver -> JSM ())
                                        -> m IntersectionObserverCallback
newIntersectionObserverCallbackSync callback
  = liftDOM
      (IntersectionObserverCallback . Callback <$>
         function
           (\ _ _ [entries, observer] ->
              fromJSValUnchecked observer >>=
                \ observer' ->
                  fromJSArrayUnchecked entries >>= \ entries' -> callback entries'
                    observer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverCallback Mozilla IntersectionObserverCallback documentation> 
newIntersectionObserverCallbackAsync ::
                                     (MonadDOM m) =>
                                       ([IntersectionObserverEntry] ->
                                          IntersectionObserver -> JSM ())
                                         -> m IntersectionObserverCallback
newIntersectionObserverCallbackAsync callback
  = liftDOM
      (IntersectionObserverCallback . Callback <$>
         asyncFunction
           (\ _ _ [entries, observer] ->
              fromJSValUnchecked observer >>=
                \ observer' ->
                  fromJSArrayUnchecked entries >>= \ entries' -> callback entries'
                    observer'))
