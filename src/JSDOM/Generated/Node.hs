{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Node
       (insertBefore, replaceChild, removeChild, appendChild,
        hasChildNodes, cloneNode, normalize, isSupported, isSameNode,
        isEqualNode, lookupPrefix, isDefaultNamespace, lookupNamespaceURI,
        compareDocumentPosition, contains, pattern ELEMENT_NODE,
        pattern ATTRIBUTE_NODE, pattern TEXT_NODE,
        pattern CDATA_SECTION_NODE, pattern ENTITY_REFERENCE_NODE,
        pattern ENTITY_NODE, pattern PROCESSING_INSTRUCTION_NODE,
        pattern COMMENT_NODE, pattern DOCUMENT_NODE,
        pattern DOCUMENT_TYPE_NODE, pattern DOCUMENT_FRAGMENT_NODE,
        pattern NOTATION_NODE, pattern DOCUMENT_POSITION_DISCONNECTED,
        pattern DOCUMENT_POSITION_PRECEDING,
        pattern DOCUMENT_POSITION_FOLLOWING,
        pattern DOCUMENT_POSITION_CONTAINS,
        pattern DOCUMENT_POSITION_CONTAINED_BY,
        pattern DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, getNodeName,
        setNodeValue, getNodeValue, getNodeType, getParentNode,
        getChildNodes, getFirstChild, getLastChild, getPreviousSibling,
        getNextSibling, getOwnerDocument, getNamespaceURI, setPrefix,
        getPrefix, getLocalName, getBaseURI, setTextContent,
        getTextContent, getParentElement, Node, castToNode, gTypeNode,
        IsNode, toNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore ::
             (MonadDOM m, IsNode self, IsNode newChild, IsNode refChild) =>
               self -> Maybe newChild -> Maybe refChild -> m (Maybe Node)
insertBefore self newChild refChild
  = liftDOM
      (((toNode self) ^. jsf "insertBefore"
          [toJSVal newChild, toJSVal refChild])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild ::
             (MonadDOM m, IsNode self, IsNode newChild, IsNode oldChild) =>
               self -> Maybe newChild -> Maybe oldChild -> m (Maybe Node)
replaceChild self newChild oldChild
  = liftDOM
      (((toNode self) ^. jsf "replaceChild"
          [toJSVal newChild, toJSVal oldChild])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild ::
            (MonadDOM m, IsNode self, IsNode oldChild) =>
              self -> Maybe oldChild -> m (Maybe Node)
removeChild self oldChild
  = liftDOM
      (((toNode self) ^. jsf "removeChild" [toJSVal oldChild]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild ::
            (MonadDOM m, IsNode self, IsNode newChild) =>
              self -> Maybe newChild -> m (Maybe Node)
appendChild self newChild
  = liftDOM
      (((toNode self) ^. jsf "appendChild" [toJSVal newChild]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes :: (MonadDOM m, IsNode self) => self -> m Bool
hasChildNodes self
  = liftDOM (((toNode self) ^. jsf "hasChildNodes" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode ::
          (MonadDOM m, IsNode self) => self -> Bool -> m (Maybe Node)
cloneNode self deep
  = liftDOM
      (((toNode self) ^. jsf "cloneNode" [toJSVal deep]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.normalize Mozilla Node.normalize documentation> 
normalize :: (MonadDOM m, IsNode self) => self -> m ()
normalize self
  = liftDOM (void ((toNode self) ^. jsf "normalize" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSupported Mozilla Node.isSupported documentation> 
isSupported ::
            (MonadDOM m, IsNode self, ToJSString feature,
             ToJSString version) =>
              self -> feature -> Maybe version -> m Bool
isSupported self feature version
  = liftDOM
      (((toNode self) ^. jsf "isSupported"
          [toJSVal feature, toJSVal version])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
isSameNode ::
           (MonadDOM m, IsNode self, IsNode other) =>
             self -> Maybe other -> m Bool
isSameNode self other
  = liftDOM
      (((toNode self) ^. jsf "isSameNode" [toJSVal other]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
isEqualNode ::
            (MonadDOM m, IsNode self, IsNode other) =>
              self -> Maybe other -> m Bool
isEqualNode self other
  = liftDOM
      (((toNode self) ^. jsf "isEqualNode" [toJSVal other]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefix ::
             (MonadDOM m, IsNode self, ToJSString namespaceURI,
              FromJSString result) =>
               self -> Maybe namespaceURI -> m (Maybe result)
lookupPrefix self namespaceURI
  = liftDOM
      (((toNode self) ^. jsf "lookupPrefix" [toJSVal namespaceURI]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
isDefaultNamespace ::
                   (MonadDOM m, IsNode self, ToJSString namespaceURI) =>
                     self -> Maybe namespaceURI -> m Bool
isDefaultNamespace self namespaceURI
  = liftDOM
      (((toNode self) ^. jsf "isDefaultNamespace" [toJSVal namespaceURI])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadDOM m, IsNode self, ToJSString prefix,
                    FromJSString result) =>
                     self -> Maybe prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftDOM
      (((toNode self) ^. jsf "lookupNamespaceURI" [toJSVal prefix]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition ::
                        (MonadDOM m, IsNode self, IsNode other) =>
                          self -> Maybe other -> m Word
compareDocumentPosition self other
  = liftDOM
      (round <$>
         (((toNode self) ^. jsf "compareDocumentPosition" [toJSVal other])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
contains ::
         (MonadDOM m, IsNode self, IsNode other) =>
           self -> Maybe other -> m Bool
contains self other
  = liftDOM
      (((toNode self) ^. jsf "contains" [toJSVal other]) >>= valToBool)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
getNodeName ::
            (MonadDOM m, IsNode self, FromJSString result) =>
              self -> m (Maybe result)
getNodeName self
  = liftDOM (((toNode self) ^. js "nodeName") >>= fromMaybeJSString)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeType Mozilla Node.nodeType documentation> 
getNodeType :: (MonadDOM m, IsNode self) => self -> m Word
getNodeType self
  = liftDOM
      (round <$> (((toNode self) ^. js "nodeType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNode ::
              (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getParentNode self
  = liftDOM (((toNode self) ^. js "parentNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodes ::
              (MonadDOM m, IsNode self) => self -> m (Maybe NodeList)
getChildNodes self
  = liftDOM (((toNode self) ^. js "childNodes") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChild ::
              (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getFirstChild self
  = liftDOM (((toNode self) ^. js "firstChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChild :: (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getLastChild self
  = liftDOM (((toNode self) ^. js "lastChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSibling ::
                   (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getPreviousSibling self
  = liftDOM (((toNode self) ^. js "previousSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSibling ::
               (MonadDOM m, IsNode self) => self -> m (Maybe Node)
getNextSibling self
  = liftDOM (((toNode self) ^. js "nextSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocument ::
                 (MonadDOM m, IsNode self) => self -> m (Maybe Document)
getOwnerDocument self
  = liftDOM (((toNode self) ^. js "ownerDocument") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.namespaceURI Mozilla Node.namespaceURI documentation> 
getNamespaceURI ::
                (MonadDOM m, IsNode self, FromJSString result) =>
                  self -> m (Maybe result)
getNamespaceURI self
  = liftDOM
      (((toNode self) ^. js "namespaceURI") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
setPrefix ::
          (MonadDOM m, IsNode self, ToJSString val) =>
            self -> Maybe val -> m ()
setPrefix self val
  = liftDOM ((toNode self) ^. jss "prefix" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
getPrefix ::
          (MonadDOM m, IsNode self, FromJSString result) =>
            self -> m (Maybe result)
getPrefix self
  = liftDOM (((toNode self) ^. js "prefix") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.localName Mozilla Node.localName documentation> 
getLocalName ::
             (MonadDOM m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getLocalName self
  = liftDOM (((toNode self) ^. js "localName") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURI ::
           (MonadDOM m, IsNode self, FromJSString result) =>
             self -> m (Maybe result)
getBaseURI self
  = liftDOM (((toNode self) ^. js "baseURI") >>= fromMaybeJSString)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElement ::
                 (MonadDOM m, IsNode self) => self -> m (Maybe Element)
getParentElement self
  = liftDOM (((toNode self) ^. js "parentElement") >>= fromJSVal)
