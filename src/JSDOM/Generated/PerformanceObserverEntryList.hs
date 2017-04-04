{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PerformanceObserverEntryList
       (getEntries, getEntries_, getEntriesByType, getEntriesByType_,
        getEntriesByName, getEntriesByName_,
        PerformanceObserverEntryList(..),
        gTypePerformanceObserverEntryList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntries Mozilla PerformanceObserverEntryList.getEntries documentation> 
getEntries ::
           (MonadDOM m) =>
             PerformanceObserverEntryList -> m PerformanceEntryList
getEntries self
  = liftDOM ((self ^. jsf "getEntries" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntries Mozilla PerformanceObserverEntryList.getEntries documentation> 
getEntries_ :: (MonadDOM m) => PerformanceObserverEntryList -> m ()
getEntries_ self = liftDOM (void (self ^. jsf "getEntries" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByType Mozilla PerformanceObserverEntryList.getEntriesByType documentation> 
getEntriesByType ::
                 (MonadDOM m, ToJSString type') =>
                   PerformanceObserverEntryList -> type' -> m PerformanceEntryList
getEntriesByType self type'
  = liftDOM
      ((self ^. jsf "getEntriesByType" [toJSVal type']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByType Mozilla PerformanceObserverEntryList.getEntriesByType documentation> 
getEntriesByType_ ::
                  (MonadDOM m, ToJSString type') =>
                    PerformanceObserverEntryList -> type' -> m ()
getEntriesByType_ self type'
  = liftDOM (void (self ^. jsf "getEntriesByType" [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByName Mozilla PerformanceObserverEntryList.getEntriesByName documentation> 
getEntriesByName ::
                 (MonadDOM m, ToJSString name, ToJSString type') =>
                   PerformanceObserverEntryList ->
                     name -> Maybe type' -> m PerformanceEntryList
getEntriesByName self name type'
  = liftDOM
      ((self ^. jsf "getEntriesByName" [toJSVal name, toJSVal type']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByName Mozilla PerformanceObserverEntryList.getEntriesByName documentation> 
getEntriesByName_ ::
                  (MonadDOM m, ToJSString name, ToJSString type') =>
                    PerformanceObserverEntryList -> name -> Maybe type' -> m ()
getEntriesByName_ self name type'
  = liftDOM
      (void
         (self ^. jsf "getEntriesByName" [toJSVal name, toJSVal type']))
