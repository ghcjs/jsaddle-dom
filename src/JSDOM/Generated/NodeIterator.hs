{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.NodeIterator
       (nextNode, previousNode, detach, getRoot, getWhatToShow, getFilter,
        getExpandEntityReferences, getReferenceNode,
        getPointerBeforeReferenceNode, NodeIterator, castToNodeIterator,
        gTypeNodeIterator)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
nextNode self = liftDOM ((self ^. js "nextNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
previousNode self
  = liftDOM ((self ^. js "previousNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.detach Mozilla NodeIterator.detach documentation> 
detach :: (MonadDOM m) => NodeIterator -> m ()
detach self = liftDOM (void (self ^. js "detach"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
getRoot :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
getRoot self = liftDOM ((self ^. js "root") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
getWhatToShow :: (MonadDOM m) => NodeIterator -> m Word
getWhatToShow self
  = liftDOM (round <$> ((self ^. js "whatToShow") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.filter Mozilla NodeIterator.filter documentation> 
getFilter :: (MonadDOM m) => NodeIterator -> m (Maybe NodeFilter)
getFilter self = liftDOM ((self ^. js "filter") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.expandEntityReferences Mozilla NodeIterator.expandEntityReferences documentation> 
getExpandEntityReferences :: (MonadDOM m) => NodeIterator -> m Bool
getExpandEntityReferences self
  = liftDOM ((self ^. js "expandEntityReferences") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNode :: (MonadDOM m) => NodeIterator -> m (Maybe Node)
getReferenceNode self
  = liftDOM ((self ^. js "referenceNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
getPointerBeforeReferenceNode ::
                              (MonadDOM m) => NodeIterator -> m Bool
getPointerBeforeReferenceNode self
  = liftDOM ((self ^. js "pointerBeforeReferenceNode") >>= valToBool)
