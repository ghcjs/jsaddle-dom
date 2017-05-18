{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IntersectionObserver
       (newIntersectionObserver, observe, unobserve, disconnect,
        takeRecords, takeRecords_, getRoot, getRootUnsafe,
        getRootUnchecked, getRootMargin, getThresholds,
        IntersectionObserver(..), gTypeIntersectionObserver)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver Mozilla IntersectionObserver documentation> 
newIntersectionObserver ::
                        (MonadDOM m) =>
                          IntersectionObserverCallback ->
                            Maybe IntersectionObserverInit -> m IntersectionObserver
newIntersectionObserver callback options
  = liftDOM
      (IntersectionObserver <$>
         new (jsg "IntersectionObserver")
           [toJSVal callback, toJSVal options])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.observe Mozilla IntersectionObserver.observe documentation> 
observe ::
        (MonadDOM m, IsElement target) =>
          IntersectionObserver -> target -> m ()
observe self target
  = liftDOM (void (self ^. jsf "observe" [toJSVal target]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.unobserve Mozilla IntersectionObserver.unobserve documentation> 
unobserve ::
          (MonadDOM m, IsElement target) =>
            IntersectionObserver -> target -> m ()
unobserve self target
  = liftDOM (void (self ^. jsf "unobserve" [toJSVal target]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.disconnect Mozilla IntersectionObserver.disconnect documentation> 
disconnect :: (MonadDOM m) => IntersectionObserver -> m ()
disconnect self = liftDOM (void (self ^. jsf "disconnect" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.takeRecords Mozilla IntersectionObserver.takeRecords documentation> 
takeRecords ::
            (MonadDOM m) =>
              IntersectionObserver -> m [IntersectionObserverEntry]
takeRecords self
  = liftDOM ((self ^. jsf "takeRecords" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.takeRecords Mozilla IntersectionObserver.takeRecords documentation> 
takeRecords_ :: (MonadDOM m) => IntersectionObserver -> m ()
takeRecords_ self = liftDOM (void (self ^. jsf "takeRecords" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.root Mozilla IntersectionObserver.root documentation> 
getRoot ::
        (MonadDOM m) => IntersectionObserver -> m (Maybe Element)
getRoot self = liftDOM ((self ^. js "root") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.root Mozilla IntersectionObserver.root documentation> 
getRootUnsafe ::
              (MonadDOM m, HasCallStack) => IntersectionObserver -> m Element
getRootUnsafe self
  = liftDOM
      (((self ^. js "root") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.root Mozilla IntersectionObserver.root documentation> 
getRootUnchecked ::
                 (MonadDOM m) => IntersectionObserver -> m Element
getRootUnchecked self
  = liftDOM ((self ^. js "root") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.rootMargin Mozilla IntersectionObserver.rootMargin documentation> 
getRootMargin ::
              (MonadDOM m, FromJSString result) =>
                IntersectionObserver -> m result
getRootMargin self
  = liftDOM ((self ^. js "rootMargin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.thresholds Mozilla IntersectionObserver.thresholds documentation> 
getThresholds :: (MonadDOM m) => IntersectionObserver -> m [Double]
getThresholds self
  = liftDOM ((self ^. js "thresholds") >>= fromJSArrayUnchecked)
