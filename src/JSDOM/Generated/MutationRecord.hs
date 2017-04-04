{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MutationRecord
       (getType, getTarget, getAddedNodes, getRemovedNodes,
        getPreviousSibling, getNextSibling, getAttributeName,
        getAttributeNameUnsafe, getAttributeNameUnchecked,
        getAttributeNamespace, getAttributeNamespaceUnsafe,
        getAttributeNamespaceUnchecked, getOldValue, getOldValueUnsafe,
        getOldValueUnchecked, MutationRecord(..), gTypeMutationRecord)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.type Mozilla MutationRecord.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => MutationRecord -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.target Mozilla MutationRecord.target documentation> 
getTarget :: (MonadDOM m) => MutationRecord -> m Node
getTarget self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.addedNodes Mozilla MutationRecord.addedNodes documentation> 
getAddedNodes :: (MonadDOM m) => MutationRecord -> m NodeList
getAddedNodes self
  = liftDOM ((self ^. js "addedNodes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.removedNodes Mozilla MutationRecord.removedNodes documentation> 
getRemovedNodes :: (MonadDOM m) => MutationRecord -> m NodeList
getRemovedNodes self
  = liftDOM ((self ^. js "removedNodes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
getPreviousSibling :: (MonadDOM m) => MutationRecord -> m Node
getPreviousSibling self
  = liftDOM ((self ^. js "previousSibling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
getNextSibling :: (MonadDOM m) => MutationRecord -> m Node
getNextSibling self
  = liftDOM ((self ^. js "nextSibling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeName ::
                 (MonadDOM m, FromJSString result) =>
                   MutationRecord -> m (Maybe result)
getAttributeName self
  = liftDOM ((self ^. js "attributeName") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeNameUnsafe ::
                       (MonadDOM m, HasCallStack, FromJSString result) =>
                         MutationRecord -> m result
getAttributeNameUnsafe self
  = liftDOM
      (((self ^. js "attributeName") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
  = liftDOM ((self ^. js "attributeNamespace") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
getAttributeNamespaceUnsafe ::
                            (MonadDOM m, HasCallStack, FromJSString result) =>
                              MutationRecord -> m result
getAttributeNamespaceUnsafe self
  = liftDOM
      (((self ^. js "attributeNamespace") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
getOldValue self = liftDOM ((self ^. js "oldValue") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValueUnsafe ::
                  (MonadDOM m, HasCallStack, FromJSString result) =>
                    MutationRecord -> m result
getOldValueUnsafe self
  = liftDOM
      (((self ^. js "oldValue") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValueUnchecked ::
                     (MonadDOM m, FromJSString result) => MutationRecord -> m result
getOldValueUnchecked self
  = liftDOM ((self ^. js "oldValue") >>= fromJSValUnchecked)
