{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Node
       (getRootNode, getRootNode_, hasChildNodes, hasChildNodes_,
        normalize, cloneNode, cloneNode_, isEqualNode, isEqualNode_,
        isSameNode, isSameNode_, compareDocumentPosition,
        compareDocumentPosition_, contains, contains_, lookupPrefix,
        lookupPrefix_, lookupPrefixUnsafe, lookupPrefixUnchecked,
        lookupNamespaceURI, lookupNamespaceURI_, lookupNamespaceURIUnsafe,
        lookupNamespaceURIUnchecked, isDefaultNamespace,
        isDefaultNamespace_, insertBefore, insertBefore_, appendChild,
        appendChild_, replaceChild, replaceChild_, removeChild,
        removeChild_, pattern ELEMENT_NODE, pattern ATTRIBUTE_NODE,
        pattern TEXT_NODE, pattern CDATA_SECTION_NODE,
        pattern ENTITY_REFERENCE_NODE, pattern ENTITY_NODE,
        pattern PROCESSING_INSTRUCTION_NODE, pattern COMMENT_NODE,
        pattern DOCUMENT_NODE, pattern DOCUMENT_TYPE_NODE,
        pattern DOCUMENT_FRAGMENT_NODE, pattern NOTATION_NODE,
        pattern DOCUMENT_POSITION_DISCONNECTED,
        pattern DOCUMENT_POSITION_PRECEDING,
        pattern DOCUMENT_POSITION_FOLLOWING,
        pattern DOCUMENT_POSITION_CONTAINS,
        pattern DOCUMENT_POSITION_CONTAINED_BY,
        pattern DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, getNodeType,
        getNodeName, getBaseURI, getIsConnected, getOwnerDocument,
        getOwnerDocumentUnsafe, getOwnerDocumentUnchecked, getParentNode,
        getParentNodeUnsafe, getParentNodeUnchecked, getParentElement,
        getParentElementUnsafe, getParentElementUnchecked, getChildNodes,
        getFirstChild, getFirstChildUnsafe, getFirstChildUnchecked,
        getLastChild, getLastChildUnsafe, getLastChildUnchecked,
        getPreviousSibling, getPreviousSiblingUnsafe,
        getPreviousSiblingUnchecked, getNextSibling, getNextSiblingUnsafe,
        getNextSiblingUnchecked, setNodeValue, getNodeValue,
        getNodeValueUnsafe, getNodeValueUnchecked, setTextContent,
        getTextContent, getTextContentUnsafe, getTextContentUnchecked,
        Node(..), gTypeNode, IsNode, toNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.getRootNode Mozilla Node.getRootNode documentation> 
getRootNode ::
            (MonadDOM m, IsNode self) =>
              self -> Maybe GetRootNodeOptions -> m Node
getRootNode self options
  = liftDOM
      (((toNode self) ^. jsf "getRootNode" [toJSVal options]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.getRootNode Mozilla Node.getRootNode documentation> 
getRootNode_ ::
             (MonadDOM m, IsNode self) =>
               self -> Maybe GetRootNodeOptions -> m ()
getRootNode_ self options
  = liftDOM
      (void ((toNode self) ^. jsf "getRootNode" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes :: (MonadDOM m, IsNode self) => self -> m Bool
hasChildNodes self
  = liftDOM (((toNode self) ^. jsf "hasChildNodes" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes_ :: (MonadDOM m, IsNode self) => self -> m ()
hasChildNodes_ self
  = liftDOM (void ((toNode self) ^. jsf "hasChildNodes" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.normalize Mozilla Node.normalize documentation> 
normalize :: (MonadDOM m, IsNode self) => self -> m ()
normalize self
  = liftDOM (void ((toNode self) ^. jsf "normalize" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode :: (MonadDOM m, IsNode self) => self -> Bool -> m Node
cloneNode self deep
  = liftDOM
      (((toNode self) ^. jsf "cloneNode" [toJSVal deep]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode_ :: (MonadDOM m, IsNode self) => self -> Bool -> m ()
cloneNode_ self deep
  = liftDOM (void ((toNode self) ^. jsf "cloneNode" [toJSVal deep]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
isEqualNode ::
            (MonadDOM m, IsNode self, IsNode other) =>
              self -> Maybe other -> m Bool
isEqualNode self other
  = liftDOM
      (((toNode self) ^. jsf "isEqualNode" [toJSVal other]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
isEqualNode_ ::
             (MonadDOM m, IsNode self, IsNode other) =>
               self -> Maybe other -> m ()
isEqualNode_ self other
  = liftDOM
      (void ((toNode self) ^. jsf "isEqualNode" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
isSameNode ::
           (MonadDOM m, IsNode self, IsNode other) =>
             self -> Maybe other -> m Bool
isSameNode self other
  = liftDOM
      (((toNode self) ^. jsf "isSameNode" [toJSVal other]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
isSameNode_ ::
            (MonadDOM m, IsNode self, IsNode other) =>
              self -> Maybe other -> m ()
isSameNode_ self other
  = liftDOM
      (void ((toNode self) ^. jsf "isSameNode" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition ::
                        (MonadDOM m, IsNode self, IsNode other) => self -> other -> m Word
compareDocumentPosition self other
  = liftDOM
      (round <$>
         (((toNode self) ^. jsf "compareDocumentPosition" [toJSVal other])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition_ ::
                         (MonadDOM m, IsNode self, IsNode other) => self -> other -> m ()
compareDocumentPosition_ self other
  = liftDOM
      (void
         ((toNode self) ^. jsf "compareDocumentPosition" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
contains ::
         (MonadDOM m, IsNode self, IsNode other) =>
           self -> Maybe other -> m Bool
contains self other
  = liftDOM
      (((toNode self) ^. jsf "contains" [toJSVal other]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
contains_ ::
          (MonadDOM m, IsNode self, IsNode other) =>
            self -> Maybe other -> m ()
contains_ self other
  = liftDOM (void ((toNode self) ^. jsf "contains" [toJSVal other]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefix ::
             (MonadDOM m, IsNode self, ToJSString namespaceURI,
              FromJSString result) =>
               self -> Maybe namespaceURI -> m (Maybe result)
lookupPrefix self namespaceURI
  = liftDOM
      (((toNode self) ^. jsf "lookupPrefix" [toJSVal namespaceURI]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefix_ ::
              (MonadDOM m, IsNode self, ToJSString namespaceURI) =>
                self -> Maybe namespaceURI -> m ()
lookupPrefix_ self namespaceURI
  = liftDOM
      (void ((toNode self) ^. jsf "lookupPrefix" [toJSVal namespaceURI]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefixUnsafe ::
                   (MonadDOM m, IsNode self, ToJSString namespaceURI, HasCallStack,
                    FromJSString result) =>
                     self -> Maybe namespaceURI -> m result
lookupPrefixUnsafe self namespaceURI
  = liftDOM
      ((((toNode self) ^. jsf "lookupPrefix" [toJSVal namespaceURI]) >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefixUnchecked ::
                      (MonadDOM m, IsNode self, ToJSString namespaceURI,
                       FromJSString result) =>
                        self -> Maybe namespaceURI -> m result
lookupPrefixUnchecked self namespaceURI
  = liftDOM
      (((toNode self) ^. jsf "lookupPrefix" [toJSVal namespaceURI]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadDOM m, IsNode self, ToJSString prefix,
                    FromJSString result) =>
                     self -> Maybe prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftDOM
      (((toNode self) ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURI_ ::
                    (MonadDOM m, IsNode self, ToJSString prefix) =>
                      self -> Maybe prefix -> m ()
lookupNamespaceURI_ self prefix
  = liftDOM
      (void ((toNode self) ^. jsf "lookupNamespaceURI" [toJSVal prefix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURIUnsafe ::
                         (MonadDOM m, IsNode self, ToJSString prefix, HasCallStack,
                          FromJSString result) =>
                           self -> Maybe prefix -> m result
lookupNamespaceURIUnsafe self prefix
  = liftDOM
      ((((toNode self) ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURIUnchecked ::
                            (MonadDOM m, IsNode self, ToJSString prefix,
                             FromJSString result) =>
                              self -> Maybe prefix -> m result
lookupNamespaceURIUnchecked self prefix
  = liftDOM
      (((toNode self) ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
isDefaultNamespace ::
                   (MonadDOM m, IsNode self, ToJSString namespaceURI) =>
                     self -> Maybe namespaceURI -> m Bool
isDefaultNamespace self namespaceURI
  = liftDOM
      (((toNode self) ^. jsf "isDefaultNamespace" [toJSVal namespaceURI])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
isDefaultNamespace_ ::
                    (MonadDOM m, IsNode self, ToJSString namespaceURI) =>
                      self -> Maybe namespaceURI -> m ()
isDefaultNamespace_ self namespaceURI
  = liftDOM
      (void
         ((toNode self) ^. jsf "isDefaultNamespace" [toJSVal namespaceURI]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore ::
             (MonadDOM m, IsNode self, IsNode node, IsNode child) =>
               self -> node -> Maybe child -> m Node
insertBefore self node child
  = liftDOM
      (((toNode self) ^. jsf "insertBefore"
          [toJSVal node, toJSVal child])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore_ ::
              (MonadDOM m, IsNode self, IsNode node, IsNode child) =>
                self -> node -> Maybe child -> m ()
insertBefore_ self node child
  = liftDOM
      (void
         ((toNode self) ^. jsf "insertBefore"
            [toJSVal node, toJSVal child]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild ::
            (MonadDOM m, IsNode self, IsNode node) => self -> node -> m Node
appendChild self node
  = liftDOM
      (((toNode self) ^. jsf "appendChild" [toJSVal node]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild_ ::
             (MonadDOM m, IsNode self, IsNode node) => self -> node -> m ()
appendChild_ self node
  = liftDOM
      (void ((toNode self) ^. jsf "appendChild" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild ::
             (MonadDOM m, IsNode self, IsNode node, IsNode child) =>
               self -> node -> child -> m Node
replaceChild self node child
  = liftDOM
      (((toNode self) ^. jsf "replaceChild"
          [toJSVal node, toJSVal child])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild_ ::
              (MonadDOM m, IsNode self, IsNode node, IsNode child) =>
                self -> node -> child -> m ()
replaceChild_ self node child
  = liftDOM
      (void
         ((toNode self) ^. jsf "replaceChild"
            [toJSVal node, toJSVal child]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild ::
            (MonadDOM m, IsNode self, IsNode child) => self -> child -> m Node
removeChild self child
  = liftDOM
      (((toNode self) ^. jsf "removeChild" [toJSVal child]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild_ ::
             (MonadDOM m, IsNode self, IsNode child) => self -> child -> m ()
removeChild_ self child
  = liftDOM
      (void ((toNode self) ^. jsf "removeChild" [toJSVal child]))
pattern ELEMENT_NODE = 1
pattern ATTRIBUTE_NODE = 2
pattern TEXT_NODE = 3
pattern CDATA_SECTION_NODE = 4
pattern ENTITY_REFERENCE_NODE = 5
pattern ENTITY_NODE = 6
pattern PROCESSING_INSTRUCTION_NODE = 7
pattern COMMENT_NODE = 8
pattern DOCUMENT_NODE = 9
pattern DOCUMENT_TYPE_NODE = 10
pattern DOCUMENT_FRAGMENT_NODE = 11
pattern NOTATION_NODE = 12
pattern DOCUMENT_POSITION_DISCONNECTED = 1
pattern DOCUMENT_POSITION_PRECEDING = 2
pattern DOCUMENT_POSITION_FOLLOWING = 4
pattern DOCUMENT_POSITION_CONTAINS = 8
pattern DOCUMENT_POSITION_CONTAINED_BY = 16
pattern DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 32

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeType Mozilla Node.nodeType documentation> 
getNodeType :: (MonadDOM m, IsNode self) => self -> m Word
getNodeType self
  = liftDOM
      (round <$> (((toNode self) ^. js "nodeType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
getNodeName ::
            (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getNodeName self
  = liftDOM (((toNode self) ^. js "nodeName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURI ::
           (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getBaseURI self
  = liftDOM (((toNode self) ^. js "baseURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isConnected Mozilla Node.isConnected documentation> 
getIsConnected :: (MonadDOM m, IsNode self) => self -> m Bool
getIsConnected self
  = liftDOM (((toNode self) ^. js "isConnected") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocument ::
                 (MonadDOM m, IsNode self) => self -> m (Maybe Document)
getOwnerDocument self
  = liftDOM (((toNode self) ^. js "ownerDocument") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocumentUnsafe ::
                       (MonadDOM m, IsNode self, HasCallStack) => self -> m Document
getOwnerDocumentUnsafe self
  = liftDOM
      ((((toNode self) ^. js "ownerDocument") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocumentUnchecked ::
                          (MonadDOM m, IsNode self) => self -> m Document
getOwnerDocumentUnchecked self
  = liftDOM
      (((toNode self) ^. js "ownerDocument") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNode ::
              (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getParentNode self
  = liftDOM (((toNode self) ^. js "parentNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNodeUnsafe ::
                    (MonadDOM m, IsNode self, HasCallStack) => self -> m Node
getParentNodeUnsafe self
  = liftDOM
      ((((toNode self) ^. js "parentNode") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNodeUnchecked ::
                       (MonadDOM m, IsNode self) => self -> m Node
getParentNodeUnchecked self
  = liftDOM
      (((toNode self) ^. js "parentNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElement ::
                 (MonadDOM m, IsNode self) => self -> m (Maybe Element)
getParentElement self
  = liftDOM (((toNode self) ^. js "parentElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElementUnsafe ::
                       (MonadDOM m, IsNode self, HasCallStack) => self -> m Element
getParentElementUnsafe self
  = liftDOM
      ((((toNode self) ^. js "parentElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElementUnchecked ::
                          (MonadDOM m, IsNode self) => self -> m Element
getParentElementUnchecked self
  = liftDOM
      (((toNode self) ^. js "parentElement") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodes :: (MonadDOM m, IsNode self) => self -> m NodeList
getChildNodes self
  = liftDOM
      (((toNode self) ^. js "childNodes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChild ::
              (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getFirstChild self
  = liftDOM (((toNode self) ^. js "firstChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChildUnsafe ::
                    (MonadDOM m, IsNode self, HasCallStack) => self -> m Node
getFirstChildUnsafe self
  = liftDOM
      ((((toNode self) ^. js "firstChild") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChildUnchecked ::
                       (MonadDOM m, IsNode self) => self -> m Node
getFirstChildUnchecked self
  = liftDOM
      (((toNode self) ^. js "firstChild") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChild :: (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getLastChild self
  = liftDOM (((toNode self) ^. js "lastChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChildUnsafe ::
                   (MonadDOM m, IsNode self, HasCallStack) => self -> m Node
getLastChildUnsafe self
  = liftDOM
      ((((toNode self) ^. js "lastChild") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChildUnchecked ::
                      (MonadDOM m, IsNode self) => self -> m Node
getLastChildUnchecked self
  = liftDOM
      (((toNode self) ^. js "lastChild") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSibling ::
                   (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getPreviousSibling self
  = liftDOM (((toNode self) ^. js "previousSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSiblingUnsafe ::
                         (MonadDOM m, IsNode self, HasCallStack) => self -> m Node
getPreviousSiblingUnsafe self
  = liftDOM
      ((((toNode self) ^. js "previousSibling") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSiblingUnchecked ::
                            (MonadDOM m, IsNode self) => self -> m Node
getPreviousSiblingUnchecked self
  = liftDOM
      (((toNode self) ^. js "previousSibling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSibling ::
               (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getNextSibling self
  = liftDOM (((toNode self) ^. js "nextSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSiblingUnsafe ::
                     (MonadDOM m, IsNode self, HasCallStack) => self -> m Node
getNextSiblingUnsafe self
  = liftDOM
      ((((toNode self) ^. js "nextSibling") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSiblingUnchecked ::
                        (MonadDOM m, IsNode self) => self -> m Node
getNextSiblingUnchecked self
  = liftDOM
      (((toNode self) ^. js "nextSibling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
setNodeValue ::
             (MonadDOM m, IsNode self, ToJSString val) =>
               self -> Maybe val -> m ()
setNodeValue self val
  = liftDOM ((toNode self) ^. jss "nodeValue" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValue ::
             (MonadDOM m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getNodeValue self
  = liftDOM (((toNode self) ^. js "nodeValue") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValueUnsafe ::
                   (MonadDOM m, IsNode self, HasCallStack, FromJSString result) =>
                     self -> m result
getNodeValueUnsafe self
  = liftDOM
      ((((toNode self) ^. js "nodeValue") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValueUnchecked ::
                      (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getNodeValueUnchecked self
  = liftDOM
      (((toNode self) ^. js "nodeValue") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
setTextContent ::
               (MonadDOM m, IsNode self, ToJSString val) =>
                 self -> Maybe val -> m ()
setTextContent self val
  = liftDOM ((toNode self) ^. jss "textContent" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContent ::
               (MonadDOM m, IsNode self, FromJSString result) =>
                 self -> m (Maybe result)
getTextContent self
  = liftDOM
      (((toNode self) ^. js "textContent") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContentUnsafe ::
                     (MonadDOM m, IsNode self, HasCallStack, FromJSString result) =>
                       self -> m result
getTextContentUnsafe self
  = liftDOM
      ((((toNode self) ^. js "textContent") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContentUnchecked ::
                        (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getTextContentUnchecked self
  = liftDOM
      (((toNode self) ^. js "textContent") >>= fromJSValUnchecked)
