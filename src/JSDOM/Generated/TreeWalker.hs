{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TreeWalker
       (parentNode, parentNode_, firstChild, firstChild_, lastChild,
        lastChild_, previousSibling, previousSibling_, nextSibling,
        nextSibling_, previousNode, previousNode_, nextNode, nextNode_,
        getRoot, getWhatToShow, setCurrentNode, getCurrentNode,
        TreeWalker(..), gTypeTreeWalker)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode :: (MonadDOM m) => TreeWalker -> m Node
parentNode self
  = liftDOM ((self ^. jsf "parentNode" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode_ :: (MonadDOM m) => TreeWalker -> m ()
parentNode_ self = liftDOM (void (self ^. jsf "parentNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild :: (MonadDOM m) => TreeWalker -> m Node
firstChild self
  = liftDOM ((self ^. jsf "firstChild" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild_ :: (MonadDOM m) => TreeWalker -> m ()
firstChild_ self = liftDOM (void (self ^. jsf "firstChild" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild :: (MonadDOM m) => TreeWalker -> m Node
lastChild self
  = liftDOM ((self ^. jsf "lastChild" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild_ :: (MonadDOM m) => TreeWalker -> m ()
lastChild_ self = liftDOM (void (self ^. jsf "lastChild" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling :: (MonadDOM m) => TreeWalker -> m Node
previousSibling self
  = liftDOM
      ((self ^. jsf "previousSibling" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling_ :: (MonadDOM m) => TreeWalker -> m ()
previousSibling_ self
  = liftDOM (void (self ^. jsf "previousSibling" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling :: (MonadDOM m) => TreeWalker -> m Node
nextSibling self
  = liftDOM ((self ^. jsf "nextSibling" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling_ :: (MonadDOM m) => TreeWalker -> m ()
nextSibling_ self = liftDOM (void (self ^. jsf "nextSibling" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode :: (MonadDOM m) => TreeWalker -> m Node
previousNode self
  = liftDOM ((self ^. jsf "previousNode" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode_ :: (MonadDOM m) => TreeWalker -> m ()
previousNode_ self = liftDOM (void (self ^. jsf "previousNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode :: (MonadDOM m) => TreeWalker -> m Node
nextNode self
  = liftDOM ((self ^. jsf "nextNode" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode_ :: (MonadDOM m) => TreeWalker -> m ()
nextNode_ self = liftDOM (void (self ^. jsf "nextNode" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
getRoot :: (MonadDOM m) => TreeWalker -> m Node
getRoot self = liftDOM ((self ^. js "root") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.whatToShow Mozilla TreeWalker.whatToShow documentation> 
getWhatToShow :: (MonadDOM m) => TreeWalker -> m Word
getWhatToShow self
  = liftDOM (round <$> ((self ^. js "whatToShow") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
setCurrentNode ::
               (MonadDOM m, IsNode val) => TreeWalker -> val -> m ()
setCurrentNode self val
  = liftDOM (self ^. jss "currentNode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
getCurrentNode :: (MonadDOM m) => TreeWalker -> m Node
getCurrentNode self
  = liftDOM ((self ^. js "currentNode") >>= fromJSValUnchecked)
