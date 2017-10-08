{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NodeIterator
       (nextNode, nextNode_, nextNodeUnsafe, nextNodeUnchecked,
        previousNode, previousNode_, previousNodeUnsafe,
        previousNodeUnchecked, detach, getRoot, getReferenceNode,
        getPointerBeforeReferenceNode, getWhatToShow, NodeIterator(..),
        gTypeNodeIterator)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
nextNode self = liftDOM ((self ^. jsf "nextNode" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode_ :: (MonadDOM m) => NodeIterator -> m ()
nextNode_ self = liftDOM (void (self ^. jsf "nextNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNodeUnsafe ::
               (MonadDOM m, HasCallStack) => NodeIterator -> m Node
nextNodeUnsafe self
  = liftDOM
      (((self ^. jsf "nextNode" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNodeUnchecked :: (MonadDOM m) => NodeIterator -> m Node
nextNodeUnchecked self
  = liftDOM ((self ^. jsf "nextNode" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
previousNode self
  = liftDOM ((self ^. jsf "previousNode" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode_ :: (MonadDOM m) => NodeIterator -> m ()
previousNode_ self = liftDOM (void (self ^. jsf "previousNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNodeUnsafe ::
                   (MonadDOM m, HasCallStack) => NodeIterator -> m Node
previousNodeUnsafe self
  = liftDOM
      (((self ^. jsf "previousNode" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNodeUnchecked :: (MonadDOM m) => NodeIterator -> m Node
previousNodeUnchecked self
  = liftDOM ((self ^. jsf "previousNode" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.detach Mozilla NodeIterator.detach documentation> 
detach :: (MonadDOM m) => NodeIterator -> m ()
detach self = liftDOM (void (self ^. jsf "detach" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
getRoot :: (MonadDOM m) => NodeIterator -> m Node
getRoot self = liftDOM ((self ^. js "root") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNode :: (MonadDOM m) => NodeIterator -> m Node
getReferenceNode self
  = liftDOM ((self ^. js "referenceNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
getPointerBeforeReferenceNode ::
                              (MonadDOM m) => NodeIterator -> m Bool
getPointerBeforeReferenceNode self
  = liftDOM ((self ^. js "pointerBeforeReferenceNode") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
getWhatToShow :: (MonadDOM m) => NodeIterator -> m Word
getWhatToShow self
  = liftDOM (round <$> ((self ^. js "whatToShow") >>= valToNumber))
