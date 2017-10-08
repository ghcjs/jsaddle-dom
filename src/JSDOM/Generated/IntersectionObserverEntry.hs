{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IntersectionObserverEntry
       (newIntersectionObserverEntry, getTime, getRootBounds,
        getBoundingClientRect, getIntersectionRect, getIntersectionRatio,
        getTarget, IntersectionObserverEntry(..),
        gTypeIntersectionObserverEntry)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry Mozilla IntersectionObserverEntry documentation> 
newIntersectionObserverEntry ::
                             (MonadDOM m) =>
                               IntersectionObserverEntryInit -> m IntersectionObserverEntry
newIntersectionObserverEntry intersectionObserverEntryInit
  = liftDOM
      (IntersectionObserverEntry <$>
         new (jsg "IntersectionObserverEntry")
           [toJSVal intersectionObserverEntryInit])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.time Mozilla IntersectionObserverEntry.time documentation> 
getTime ::
        (MonadDOM m) => IntersectionObserverEntry -> m DOMHighResTimeStamp
getTime self = liftDOM ((self ^. js "time") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.rootBounds Mozilla IntersectionObserverEntry.rootBounds documentation> 
getRootBounds ::
              (MonadDOM m) => IntersectionObserverEntry -> m DOMRectReadOnly
getRootBounds self
  = liftDOM ((self ^. js "rootBounds") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.boundingClientRect Mozilla IntersectionObserverEntry.boundingClientRect documentation> 
getBoundingClientRect ::
                      (MonadDOM m) => IntersectionObserverEntry -> m DOMRectReadOnly
getBoundingClientRect self
  = liftDOM
      ((self ^. js "boundingClientRect") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.intersectionRect Mozilla IntersectionObserverEntry.intersectionRect documentation> 
getIntersectionRect ::
                    (MonadDOM m) => IntersectionObserverEntry -> m DOMRectReadOnly
getIntersectionRect self
  = liftDOM ((self ^. js "intersectionRect") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.intersectionRatio Mozilla IntersectionObserverEntry.intersectionRatio documentation> 
getIntersectionRatio ::
                     (MonadDOM m) => IntersectionObserverEntry -> m Double
getIntersectionRatio self
  = liftDOM ((self ^. js "intersectionRatio") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.target Mozilla IntersectionObserverEntry.target documentation> 
getTarget :: (MonadDOM m) => IntersectionObserverEntry -> m Element
getTarget self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)
