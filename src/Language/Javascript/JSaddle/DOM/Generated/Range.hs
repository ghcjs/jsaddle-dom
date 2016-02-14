{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.Range
       (newRange, setStart, setEnd, setStartBefore, setStartAfter,
        setEndBefore, setEndAfter, collapse, selectNode,
        selectNodeContents, compareBoundaryPoints, deleteContents,
        extractContents, cloneContents, insertNode, surroundContents,
        cloneRange, toString, detach, getClientRects,
        getBoundingClientRect, createContextualFragment, intersectsNode,
        compareNode, comparePoint, isPointInRange, expand,
        pattern START_TO_START, pattern START_TO_END, pattern END_TO_END,
        pattern END_TO_START, pattern NODE_BEFORE, pattern NODE_AFTER,
        pattern NODE_BEFORE_AND_AFTER, pattern NODE_INSIDE,
        getStartContainer, getStartOffset, getEndContainer, getEndOffset,
        getCollapsed, getCommonAncestorContainer, Range, castToRange,
        gTypeRange)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range Mozilla Range documentation> 
newRange :: (MonadDOM m) => m Range
newRange = liftDOM (Range <$> new (jsg "Range") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStart Mozilla Range.setStart documentation> 
setStart ::
         (MonadDOM m, IsNode refNode) =>
           Range -> Maybe refNode -> Int -> m ()
setStart self refNode offset
  = liftDOM
      (void (self ^. jsf "setStart" [toJSVal refNode, toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEnd Mozilla Range.setEnd documentation> 
setEnd ::
       (MonadDOM m, IsNode refNode) =>
         Range -> Maybe refNode -> Int -> m ()
setEnd self refNode offset
  = liftDOM
      (void (self ^. jsf "setEnd" [toJSVal refNode, toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartBefore Mozilla Range.setStartBefore documentation> 
setStartBefore ::
               (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m ()
setStartBefore self refNode
  = liftDOM (void (self ^. jsf "setStartBefore" [toJSVal refNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartAfter Mozilla Range.setStartAfter documentation> 
setStartAfter ::
              (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m ()
setStartAfter self refNode
  = liftDOM (void (self ^. jsf "setStartAfter" [toJSVal refNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndBefore Mozilla Range.setEndBefore documentation> 
setEndBefore ::
             (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m ()
setEndBefore self refNode
  = liftDOM (void (self ^. jsf "setEndBefore" [toJSVal refNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndAfter Mozilla Range.setEndAfter documentation> 
setEndAfter ::
            (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m ()
setEndAfter self refNode
  = liftDOM (void (self ^. jsf "setEndAfter" [toJSVal refNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapse Mozilla Range.collapse documentation> 
collapse :: (MonadDOM m) => Range -> Bool -> m ()
collapse self toStart
  = liftDOM (void (self ^. jsf "collapse" [toJSVal toStart]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNode Mozilla Range.selectNode documentation> 
selectNode ::
           (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m ()
selectNode self refNode
  = liftDOM (void (self ^. jsf "selectNode" [toJSVal refNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNodeContents Mozilla Range.selectNodeContents documentation> 
selectNodeContents ::
                   (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m ()
selectNodeContents self refNode
  = liftDOM
      (void (self ^. jsf "selectNodeContents" [toJSVal refNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareBoundaryPoints Mozilla Range.compareBoundaryPoints documentation> 
compareBoundaryPoints ::
                      (MonadDOM m) => Range -> Word -> Maybe Range -> m Int
compareBoundaryPoints self how sourceRange
  = liftDOM
      (round <$>
         ((self ^. jsf "compareBoundaryPoints"
             [toJSVal how, toJSVal sourceRange])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.deleteContents Mozilla Range.deleteContents documentation> 
deleteContents :: (MonadDOM m) => Range -> m ()
deleteContents self = liftDOM (void (self ^. js "deleteContents"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContents ::
                (MonadDOM m) => Range -> m (Maybe DocumentFragment)
extractContents self
  = liftDOM ((self ^. js "extractContents") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContents ::
              (MonadDOM m) => Range -> m (Maybe DocumentFragment)
cloneContents self
  = liftDOM ((self ^. js "cloneContents") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.insertNode Mozilla Range.insertNode documentation> 
insertNode ::
           (MonadDOM m, IsNode newNode) => Range -> Maybe newNode -> m ()
insertNode self newNode
  = liftDOM (void (self ^. jsf "insertNode" [toJSVal newNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.surroundContents Mozilla Range.surroundContents documentation> 
surroundContents ::
                 (MonadDOM m, IsNode newParent) => Range -> Maybe newParent -> m ()
surroundContents self newParent
  = liftDOM
      (void (self ^. jsf "surroundContents" [toJSVal newParent]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRange :: (MonadDOM m) => Range -> m (Maybe Range)
cloneRange self = liftDOM ((self ^. js "cloneRange") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.toString Mozilla Range.toString documentation> 
toString :: (MonadDOM m, FromJSString result) => Range -> m result
toString self
  = liftDOM ((self ^. js "toString") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.detach Mozilla Range.detach documentation> 
detach :: (MonadDOM m) => Range -> m ()
detach self = liftDOM (void (self ^. js "detach"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getClientRects Mozilla Range.getClientRects documentation> 
getClientRects :: (MonadDOM m) => Range -> m (Maybe ClientRectList)
getClientRects self
  = liftDOM ((self ^. js "getClientRects") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getBoundingClientRect Mozilla Range.getBoundingClientRect documentation> 
getBoundingClientRect ::
                      (MonadDOM m) => Range -> m (Maybe ClientRect)
getBoundingClientRect self
  = liftDOM ((self ^. js "getBoundingClientRect") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragment ::
                         (MonadDOM m, ToJSString html) =>
                           Range -> html -> m (Maybe DocumentFragment)
createContextualFragment self html
  = liftDOM
      ((self ^. jsf "createContextualFragment" [toJSVal html]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.intersectsNode Mozilla Range.intersectsNode documentation> 
intersectsNode ::
               (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m Bool
intersectsNode self refNode
  = liftDOM
      ((self ^. jsf "intersectsNode" [toJSVal refNode]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareNode Mozilla Range.compareNode documentation> 
compareNode ::
            (MonadDOM m, IsNode refNode) => Range -> Maybe refNode -> m Int
compareNode self refNode
  = liftDOM
      (round <$>
         ((self ^. jsf "compareNode" [toJSVal refNode]) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.comparePoint Mozilla Range.comparePoint documentation> 
comparePoint ::
             (MonadDOM m, IsNode refNode) =>
               Range -> Maybe refNode -> Int -> m Int
comparePoint self refNode offset
  = liftDOM
      (round <$>
         ((self ^. jsf "comparePoint" [toJSVal refNode, toJSVal offset]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.isPointInRange Mozilla Range.isPointInRange documentation> 
isPointInRange ::
               (MonadDOM m, IsNode refNode) =>
                 Range -> Maybe refNode -> Int -> m Bool
isPointInRange self refNode offset
  = liftDOM
      ((self ^. jsf "isPointInRange" [toJSVal refNode, toJSVal offset])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.expand Mozilla Range.expand documentation> 
expand :: (MonadDOM m, ToJSString unit) => Range -> unit -> m ()
expand self unit
  = liftDOM (void (self ^. jsf "expand" [toJSVal unit]))
pattern START_TO_START = 0
pattern START_TO_END = 1
pattern END_TO_END = 2
pattern END_TO_START = 3
pattern NODE_BEFORE = 0
pattern NODE_AFTER = 1
pattern NODE_BEFORE_AND_AFTER = 2
pattern NODE_INSIDE = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startContainer Mozilla Range.startContainer documentation> 
getStartContainer :: (MonadDOM m) => Range -> m (Maybe Node)
getStartContainer self
  = liftDOM ((self ^. js "startContainer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startOffset Mozilla Range.startOffset documentation> 
getStartOffset :: (MonadDOM m) => Range -> m Int
getStartOffset self
  = liftDOM (round <$> ((self ^. js "startOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endContainer Mozilla Range.endContainer documentation> 
getEndContainer :: (MonadDOM m) => Range -> m (Maybe Node)
getEndContainer self
  = liftDOM ((self ^. js "endContainer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endOffset Mozilla Range.endOffset documentation> 
getEndOffset :: (MonadDOM m) => Range -> m Int
getEndOffset self
  = liftDOM (round <$> ((self ^. js "endOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapsed Mozilla Range.collapsed documentation> 
getCollapsed :: (MonadDOM m) => Range -> m Bool
getCollapsed self
  = liftDOM ((self ^. js "collapsed") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.commonAncestorContainer Mozilla Range.commonAncestorContainer documentation> 
getCommonAncestorContainer ::
                           (MonadDOM m) => Range -> m (Maybe Node)
getCommonAncestorContainer self
  = liftDOM ((self ^. js "commonAncestorContainer") >>= fromJSVal)