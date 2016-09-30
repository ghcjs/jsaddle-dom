{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TreeWalker
       (parentNode, firstChild, lastChild, previousSibling, nextSibling,
        previousNode, nextNode, getRoot, getWhatToShow, getFilter,
        getExpandEntityReferences, setCurrentNode, getCurrentNode,
        TreeWalker, castToTreeWalker, gTypeTreeWalker)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
parentNode self = liftDOM ((self ^. js "parentNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
firstChild self = liftDOM ((self ^. js "firstChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
lastChild self = liftDOM ((self ^. js "lastChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
previousSibling self
  = liftDOM ((self ^. js "previousSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
nextSibling self
  = liftDOM ((self ^. js "nextSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
previousNode self
  = liftDOM ((self ^. js "previousNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
nextNode self = liftDOM ((self ^. js "nextNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
getRoot :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
getRoot self = liftDOM ((self ^. js "root") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.whatToShow Mozilla TreeWalker.whatToShow documentation> 
getWhatToShow :: (MonadDOM m) => TreeWalker -> m Word
getWhatToShow self
  = liftDOM (round <$> ((self ^. js "whatToShow") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.filter Mozilla TreeWalker.filter documentation> 
getFilter :: (MonadDOM m) => TreeWalker -> m (Maybe NodeFilter)
getFilter self = liftDOM ((self ^. js "filter") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.expandEntityReferences Mozilla TreeWalker.expandEntityReferences documentation> 
getExpandEntityReferences :: (MonadDOM m) => TreeWalker -> m Bool
getExpandEntityReferences self
  = liftDOM ((self ^. js "expandEntityReferences") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
setCurrentNode ::
               (MonadDOM m, IsNode val) => TreeWalker -> Maybe val -> m ()
setCurrentNode self val
  = liftDOM (self ^. jss "currentNode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
getCurrentNode :: (MonadDOM m) => TreeWalker -> m (Maybe Node)
getCurrentNode self
  = liftDOM ((self ^. js "currentNode") >>= fromJSVal)
