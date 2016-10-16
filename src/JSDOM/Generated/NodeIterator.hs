{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NodeIterator
       (nextNode, nextNode_, nextNodeUnsafe, nextNodeUnchecked,
        previousNode, previousNode_, previousNodeUnsafe,
        previousNodeUnchecked, detach, getRoot, getRootUnchecked,
        getWhatToShow, getFilter, getFilterUnchecked,
        getExpandEntityReferences, getReferenceNode,
        getReferenceNodeUnchecked, getPointerBeforeReferenceNode,
        NodeIterator(..), gTypeNodeIterator)
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
getRoot :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
getRoot self = liftDOM ((self ^. js "root") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
getRootUnchecked :: (MonadDOM m) => NodeIterator -> m Node
getRootUnchecked self
  = liftDOM ((self ^. js "root") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
getWhatToShow :: (MonadDOM m) => NodeIterator -> m Word
getWhatToShow self
  = liftDOM (round <$> ((self ^. js "whatToShow") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.filter Mozilla NodeIterator.filter documentation> 
getFilter :: (MonadDOM m) => NodeIterator -> m (Maybe NodeFilter)
getFilter self = liftDOM ((self ^. js "filter") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.filter Mozilla NodeIterator.filter documentation> 
getFilterUnchecked :: (MonadDOM m) => NodeIterator -> m NodeFilter
getFilterUnchecked self
  = liftDOM ((self ^. js "filter") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.expandEntityReferences Mozilla NodeIterator.expandEntityReferences documentation> 
getExpandEntityReferences :: (MonadDOM m) => NodeIterator -> m Bool
getExpandEntityReferences self
  = liftDOM ((self ^. js "expandEntityReferences") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNode :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
getReferenceNode self
  = liftDOM ((self ^. js "referenceNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNodeUnchecked :: (MonadDOM m) => NodeIterator -> m Node
getReferenceNodeUnchecked self
  = liftDOM ((self ^. js "referenceNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
getPointerBeforeReferenceNode ::
                              (MonadDOM m) => NodeIterator -> m Bool
getPointerBeforeReferenceNode self
  = liftDOM ((self ^. js "pointerBeforeReferenceNode") >>= valToBool)
