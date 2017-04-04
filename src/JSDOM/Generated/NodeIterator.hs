{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NodeIterator
       (nextNode, nextNode_, previousNode, previousNode_, detach, getRoot,
        getWhatToShow, getReferenceNode, getPointerBeforeReferenceNode,
        NodeIterator(..), gTypeNodeIterator)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode :: (MonadDOM m) => NodeIterator -> m Node
nextNode self
  = liftDOM ((self ^. jsf "nextNode" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode_ :: (MonadDOM m) => NodeIterator -> m ()
nextNode_ self = liftDOM (void (self ^. jsf "nextNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode :: (MonadDOM m) => NodeIterator -> m Node
previousNode self
  = liftDOM ((self ^. jsf "previousNode" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode_ :: (MonadDOM m) => NodeIterator -> m ()
previousNode_ self = liftDOM (void (self ^. jsf "previousNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.detach Mozilla NodeIterator.detach documentation> 
detach :: (MonadDOM m) => NodeIterator -> m ()
detach self = liftDOM (void (self ^. jsf "detach" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
getRoot :: (MonadDOM m) => NodeIterator -> m Node
getRoot self = liftDOM ((self ^. js "root") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
getWhatToShow :: (MonadDOM m) => NodeIterator -> m Word
getWhatToShow self
  = liftDOM (round <$> ((self ^. js "whatToShow") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNode :: (MonadDOM m) => NodeIterator -> m Node
getReferenceNode self
  = liftDOM ((self ^. js "referenceNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
getPointerBeforeReferenceNode ::
                              (MonadDOM m) => NodeIterator -> m Bool
getPointerBeforeReferenceNode self
  = liftDOM ((self ^. js "pointerBeforeReferenceNode") >>= valToBool)
