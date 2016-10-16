{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MutationRecord
       (getType, getTarget, getTargetUnchecked, getAddedNodes,
        getAddedNodesUnchecked, getRemovedNodes, getRemovedNodesUnchecked,
        getPreviousSibling, getPreviousSiblingUnchecked, getNextSibling,
        getNextSiblingUnchecked, getAttributeName,
        getAttributeNameUnchecked, getAttributeNamespace,
        getAttributeNamespaceUnchecked, getOldValue, getOldValueUnchecked,
        MutationRecord(..), gTypeMutationRecord)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.type Mozilla MutationRecord.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => MutationRecord -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.target Mozilla MutationRecord.target documentation> 
getTarget :: (MonadDOM m) => MutationRecord -> m (Maybe Node)
getTarget self = liftDOM ((self ^. js "target") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.target Mozilla MutationRecord.target documentation> 
getTargetUnchecked :: (MonadDOM m) => MutationRecord -> m Node
getTargetUnchecked self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.addedNodes Mozilla MutationRecord.addedNodes documentation> 
getAddedNodes ::
              (MonadDOM m) => MutationRecord -> m (Maybe NodeList)
getAddedNodes self
  = liftDOM ((self ^. js "addedNodes") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.addedNodes Mozilla MutationRecord.addedNodes documentation> 
getAddedNodesUnchecked ::
                       (MonadDOM m) => MutationRecord -> m NodeList
getAddedNodesUnchecked self
  = liftDOM ((self ^. js "addedNodes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.removedNodes Mozilla MutationRecord.removedNodes documentation> 
getRemovedNodes ::
                (MonadDOM m) => MutationRecord -> m (Maybe NodeList)
getRemovedNodes self
  = liftDOM ((self ^. js "removedNodes") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.removedNodes Mozilla MutationRecord.removedNodes documentation> 
getRemovedNodesUnchecked ::
                         (MonadDOM m) => MutationRecord -> m NodeList
getRemovedNodesUnchecked self
  = liftDOM ((self ^. js "removedNodes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
getPreviousSibling ::
                   (MonadDOM m) => MutationRecord -> m (Maybe Node)
getPreviousSibling self
  = liftDOM ((self ^. js "previousSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
getPreviousSiblingUnchecked ::
                            (MonadDOM m) => MutationRecord -> m Node
getPreviousSiblingUnchecked self
  = liftDOM ((self ^. js "previousSibling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
getNextSibling :: (MonadDOM m) => MutationRecord -> m (Maybe Node)
getNextSibling self
  = liftDOM ((self ^. js "nextSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
getNextSiblingUnchecked :: (MonadDOM m) => MutationRecord -> m Node
getNextSiblingUnchecked self
  = liftDOM ((self ^. js "nextSibling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeName ::
                 (MonadDOM m, FromJSString result) =>
                   MutationRecord -> m (Maybe result)
getAttributeName self
  = liftDOM ((self ^. js "attributeName") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeNameUnchecked ::
                          (MonadDOM m, FromJSString result) => MutationRecord -> m result
getAttributeNameUnchecked self
  = liftDOM ((self ^. js "attributeName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
getAttributeNamespace ::
                      (MonadDOM m, FromJSString result) =>
                        MutationRecord -> m (Maybe result)
getAttributeNamespace self
  = liftDOM ((self ^. js "attributeNamespace") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
getAttributeNamespaceUnchecked ::
                               (MonadDOM m, FromJSString result) => MutationRecord -> m result
getAttributeNamespaceUnchecked self
  = liftDOM
      ((self ^. js "attributeNamespace") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValue ::
            (MonadDOM m, FromJSString result) =>
              MutationRecord -> m (Maybe result)
getOldValue self
  = liftDOM ((self ^. js "oldValue") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValueUnchecked ::
                     (MonadDOM m, FromJSString result) => MutationRecord -> m result
getOldValueUnchecked self
  = liftDOM ((self ^. js "oldValue") >>= fromJSValUnchecked)
