{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Selection
       (collapse, collapseToEnd, collapseToStart, deleteFromDocument,
        containsNode, containsNode_, selectAllChildren, extend, getRangeAt,
        getRangeAt_, getRangeAtUnsafe, getRangeAtUnchecked,
        removeAllRanges, addRange, toString, toString_, modify,
        setBaseAndExtent, setPosition, empty, getAnchorNode,
        getAnchorNodeUnsafe, getAnchorNodeUnchecked, getAnchorOffset,
        getFocusNode, getFocusNodeUnsafe, getFocusNodeUnchecked,
        getFocusOffset, getIsCollapsed, getRangeCount, getBaseNode,
        getBaseNodeUnsafe, getBaseNodeUnchecked, getBaseOffset,
        getExtentNode, getExtentNodeUnsafe, getExtentNodeUnchecked,
        getExtentOffset, getType, Selection(..), gTypeSelection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapse Mozilla Selection.collapse documentation> 
collapse ::
         (MonadDOM m, IsNode node) => Selection -> Maybe node -> Int -> m ()
collapse self node index
  = liftDOM
      (void (self ^. jsf "collapse" [toJSVal node, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToEnd Mozilla Selection.collapseToEnd documentation> 
collapseToEnd :: (MonadDOM m) => Selection -> m ()
collapseToEnd self
  = liftDOM (void (self ^. jsf "collapseToEnd" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToStart Mozilla Selection.collapseToStart documentation> 
collapseToStart :: (MonadDOM m) => Selection -> m ()
collapseToStart self
  = liftDOM (void (self ^. jsf "collapseToStart" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.deleteFromDocument Mozilla Selection.deleteFromDocument documentation> 
deleteFromDocument :: (MonadDOM m) => Selection -> m ()
deleteFromDocument self
  = liftDOM (void (self ^. jsf "deleteFromDocument" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode ::
             (MonadDOM m, IsNode node) =>
               Selection -> Maybe node -> Bool -> m Bool
containsNode self node allowPartial
  = liftDOM
      ((self ^. jsf "containsNode" [toJSVal node, toJSVal allowPartial])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode_ ::
              (MonadDOM m, IsNode node) =>
                Selection -> Maybe node -> Bool -> m ()
containsNode_ self node allowPartial
  = liftDOM
      (void
         (self ^. jsf "containsNode" [toJSVal node, toJSVal allowPartial]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.selectAllChildren Mozilla Selection.selectAllChildren documentation> 
selectAllChildren ::
                  (MonadDOM m, IsNode node) => Selection -> Maybe node -> m ()
selectAllChildren self node
  = liftDOM (void (self ^. jsf "selectAllChildren" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extend Mozilla Selection.extend documentation> 
extend ::
       (MonadDOM m, IsNode node) => Selection -> Maybe node -> Int -> m ()
extend self node offset
  = liftDOM
      (void (self ^. jsf "extend" [toJSVal node, toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt :: (MonadDOM m) => Selection -> Int -> m (Maybe Range)
getRangeAt self index
  = liftDOM
      ((self ^. jsf "getRangeAt" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt_ :: (MonadDOM m) => Selection -> Int -> m ()
getRangeAt_ self index
  = liftDOM (void (self ^. jsf "getRangeAt" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAtUnsafe ::
                 (MonadDOM m, HasCallStack) => Selection -> Int -> m Range
getRangeAtUnsafe self index
  = liftDOM
      (((self ^. jsf "getRangeAt" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAtUnchecked :: (MonadDOM m) => Selection -> Int -> m Range
getRangeAtUnchecked self index
  = liftDOM
      ((self ^. jsf "getRangeAt" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.removeAllRanges Mozilla Selection.removeAllRanges documentation> 
removeAllRanges :: (MonadDOM m) => Selection -> m ()
removeAllRanges self
  = liftDOM (void (self ^. jsf "removeAllRanges" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.addRange Mozilla Selection.addRange documentation> 
addRange :: (MonadDOM m) => Selection -> Maybe Range -> m ()
addRange self range
  = liftDOM (void (self ^. jsf "addRange" [toJSVal range]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.toString Mozilla Selection.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => Selection -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.toString Mozilla Selection.toString documentation> 
toString_ :: (MonadDOM m) => Selection -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.modify Mozilla Selection.modify documentation> 
modify ::
       (MonadDOM m, ToJSString alter, ToJSString direction,
        ToJSString granularity) =>
         Selection -> alter -> direction -> granularity -> m ()
modify self alter direction granularity
  = liftDOM
      (void
         (self ^. jsf "modify"
            [toJSVal alter, toJSVal direction, toJSVal granularity]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setBaseAndExtent Mozilla Selection.setBaseAndExtent documentation> 
setBaseAndExtent ::
                 (MonadDOM m, IsNode baseNode, IsNode extentNode) =>
                   Selection ->
                     Maybe baseNode -> Int -> Maybe extentNode -> Int -> m ()
setBaseAndExtent self baseNode baseOffset extentNode extentOffset
  = liftDOM
      (void
         (self ^. jsf "setBaseAndExtent"
            [toJSVal baseNode, toJSVal baseOffset, toJSVal extentNode,
             toJSVal extentOffset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setPosition Mozilla Selection.setPosition documentation> 
setPosition ::
            (MonadDOM m, IsNode node) => Selection -> Maybe node -> Int -> m ()
setPosition self node offset
  = liftDOM
      (void (self ^. jsf "setPosition" [toJSVal node, toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.empty Mozilla Selection.empty documentation> 
empty :: (MonadDOM m) => Selection -> m ()
empty self = liftDOM (void (self ^. jsf "empty" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNode :: (MonadDOM m) => Selection -> m (Maybe Node)
getAnchorNode self
  = liftDOM ((self ^. js "anchorNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNodeUnsafe ::
                    (MonadDOM m, HasCallStack) => Selection -> m Node
getAnchorNodeUnsafe self
  = liftDOM
      (((self ^. js "anchorNode") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNodeUnchecked :: (MonadDOM m) => Selection -> m Node
getAnchorNodeUnchecked self
  = liftDOM ((self ^. js "anchorNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorOffset Mozilla Selection.anchorOffset documentation> 
getAnchorOffset :: (MonadDOM m) => Selection -> m Int
getAnchorOffset self
  = liftDOM (round <$> ((self ^. js "anchorOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNode :: (MonadDOM m) => Selection -> m (Maybe Node)
getFocusNode self
  = liftDOM ((self ^. js "focusNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNodeUnsafe ::
                   (MonadDOM m, HasCallStack) => Selection -> m Node
getFocusNodeUnsafe self
  = liftDOM
      (((self ^. js "focusNode") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNodeUnchecked :: (MonadDOM m) => Selection -> m Node
getFocusNodeUnchecked self
  = liftDOM ((self ^. js "focusNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusOffset Mozilla Selection.focusOffset documentation> 
getFocusOffset :: (MonadDOM m) => Selection -> m Int
getFocusOffset self
  = liftDOM (round <$> ((self ^. js "focusOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.isCollapsed Mozilla Selection.isCollapsed documentation> 
getIsCollapsed :: (MonadDOM m) => Selection -> m Bool
getIsCollapsed self
  = liftDOM ((self ^. js "isCollapsed") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.rangeCount Mozilla Selection.rangeCount documentation> 
getRangeCount :: (MonadDOM m) => Selection -> m Int
getRangeCount self
  = liftDOM (round <$> ((self ^. js "rangeCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNode :: (MonadDOM m) => Selection -> m (Maybe Node)
getBaseNode self = liftDOM ((self ^. js "baseNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNodeUnsafe ::
                  (MonadDOM m, HasCallStack) => Selection -> m Node
getBaseNodeUnsafe self
  = liftDOM
      (((self ^. js "baseNode") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNodeUnchecked :: (MonadDOM m) => Selection -> m Node
getBaseNodeUnchecked self
  = liftDOM ((self ^. js "baseNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseOffset Mozilla Selection.baseOffset documentation> 
getBaseOffset :: (MonadDOM m) => Selection -> m Int
getBaseOffset self
  = liftDOM (round <$> ((self ^. js "baseOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNode :: (MonadDOM m) => Selection -> m (Maybe Node)
getExtentNode self
  = liftDOM ((self ^. js "extentNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNodeUnsafe ::
                    (MonadDOM m, HasCallStack) => Selection -> m Node
getExtentNodeUnsafe self
  = liftDOM
      (((self ^. js "extentNode") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNodeUnchecked :: (MonadDOM m) => Selection -> m Node
getExtentNodeUnchecked self
  = liftDOM ((self ^. js "extentNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentOffset Mozilla Selection.extentOffset documentation> 
getExtentOffset :: (MonadDOM m) => Selection -> m Int
getExtentOffset self
  = liftDOM (round <$> ((self ^. js "extentOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.type Mozilla Selection.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => Selection -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)
