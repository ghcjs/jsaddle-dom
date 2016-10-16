{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Node
       (insertBefore, insertBefore_, insertBeforeUnsafe,
        insertBeforeUnchecked, replaceChild, replaceChild_,
        replaceChildUnsafe, replaceChildUnchecked, removeChild,
        removeChild_, removeChildUnsafe, removeChildUnchecked, appendChild,
        appendChild_, appendChildUnsafe, appendChildUnchecked,
        hasChildNodes, hasChildNodes_, cloneNode, cloneNode_,
        cloneNodeUnsafe, cloneNodeUnchecked, normalize, isSupported,
        isSupported_, isSameNode, isSameNode_, isEqualNode, isEqualNode_,
        lookupPrefix, lookupPrefix_, lookupPrefixUnsafe,
        lookupPrefixUnchecked, isDefaultNamespace, isDefaultNamespace_,
        lookupNamespaceURI, lookupNamespaceURI_, lookupNamespaceURIUnsafe,
        lookupNamespaceURIUnchecked, compareDocumentPosition,
        compareDocumentPosition_, contains, contains_,
        pattern ELEMENT_NODE, pattern ATTRIBUTE_NODE, pattern TEXT_NODE,
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
        getNodeNameUnsafe, getNodeNameUnchecked, setNodeValue,
        getNodeValue, getNodeValueUnsafe, getNodeValueUnchecked,
        getNodeType, getParentNode, getParentNodeUnsafe,
        getParentNodeUnchecked, getChildNodes, getChildNodesUnsafe,
        getChildNodesUnchecked, getFirstChild, getFirstChildUnsafe,
        getFirstChildUnchecked, getLastChild, getLastChildUnsafe,
        getLastChildUnchecked, getPreviousSibling,
        getPreviousSiblingUnsafe, getPreviousSiblingUnchecked,
        getNextSibling, getNextSiblingUnsafe, getNextSiblingUnchecked,
        getOwnerDocument, getOwnerDocumentUnsafe,
        getOwnerDocumentUnchecked, getNamespaceURI, getNamespaceURIUnsafe,
        getNamespaceURIUnchecked, setPrefix, getPrefix, getPrefixUnsafe,
        getPrefixUnchecked, getLocalName, getLocalNameUnsafe,
        getLocalNameUnchecked, getBaseURI, getBaseURIUnsafe,
        getBaseURIUnchecked, setTextContent, getTextContent,
        getTextContentUnsafe, getTextContentUnchecked, getParentElement,
        getParentElementUnsafe, getParentElementUnchecked, Node(..),
        gTypeNode, IsNode, toNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore ::
             (MonadDOM m, IsNode self, IsNode newChild, IsNode refChild) =>
               self -> Maybe newChild -> Maybe refChild -> m (Maybe Node)
insertBefore self newChild refChild
  = liftDOM
      (((toNode self) ^. jsf "insertBefore"
          [toJSVal newChild, toJSVal refChild])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore_ ::
              (MonadDOM m, IsNode self, IsNode newChild, IsNode refChild) =>
                self -> Maybe newChild -> Maybe refChild -> m ()
insertBefore_ self newChild refChild
  = liftDOM
      (void
         ((toNode self) ^. jsf "insertBefore"
            [toJSVal newChild, toJSVal refChild]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBeforeUnsafe ::
                   (MonadDOM m, IsNode self, IsNode newChild, IsNode refChild,
                    HasCallStack) =>
                     self -> Maybe newChild -> Maybe refChild -> m Node
insertBeforeUnsafe self newChild refChild
  = liftDOM
      ((((toNode self) ^. jsf "insertBefore"
           [toJSVal newChild, toJSVal refChild])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBeforeUnchecked ::
                      (MonadDOM m, IsNode self, IsNode newChild, IsNode refChild) =>
                        self -> Maybe newChild -> Maybe refChild -> m Node
insertBeforeUnchecked self newChild refChild
  = liftDOM
      (((toNode self) ^. jsf "insertBefore"
          [toJSVal newChild, toJSVal refChild])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild ::
             (MonadDOM m, IsNode self, IsNode newChild, IsNode oldChild) =>
               self -> Maybe newChild -> Maybe oldChild -> m (Maybe Node)
replaceChild self newChild oldChild
  = liftDOM
      (((toNode self) ^. jsf "replaceChild"
          [toJSVal newChild, toJSVal oldChild])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild_ ::
              (MonadDOM m, IsNode self, IsNode newChild, IsNode oldChild) =>
                self -> Maybe newChild -> Maybe oldChild -> m ()
replaceChild_ self newChild oldChild
  = liftDOM
      (void
         ((toNode self) ^. jsf "replaceChild"
            [toJSVal newChild, toJSVal oldChild]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChildUnsafe ::
                   (MonadDOM m, IsNode self, IsNode newChild, IsNode oldChild,
                    HasCallStack) =>
                     self -> Maybe newChild -> Maybe oldChild -> m Node
replaceChildUnsafe self newChild oldChild
  = liftDOM
      ((((toNode self) ^. jsf "replaceChild"
           [toJSVal newChild, toJSVal oldChild])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChildUnchecked ::
                      (MonadDOM m, IsNode self, IsNode newChild, IsNode oldChild) =>
                        self -> Maybe newChild -> Maybe oldChild -> m Node
replaceChildUnchecked self newChild oldChild
  = liftDOM
      (((toNode self) ^. jsf "replaceChild"
          [toJSVal newChild, toJSVal oldChild])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild ::
            (MonadDOM m, IsNode self, IsNode oldChild) =>
              self -> Maybe oldChild -> m (Maybe Node)
removeChild self oldChild
  = liftDOM
      (((toNode self) ^. jsf "removeChild" [toJSVal oldChild]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild_ ::
             (MonadDOM m, IsNode self, IsNode oldChild) =>
               self -> Maybe oldChild -> m ()
removeChild_ self oldChild
  = liftDOM
      (void ((toNode self) ^. jsf "removeChild" [toJSVal oldChild]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChildUnsafe ::
                  (MonadDOM m, IsNode self, IsNode oldChild, HasCallStack) =>
                    self -> Maybe oldChild -> m Node
removeChildUnsafe self oldChild
  = liftDOM
      ((((toNode self) ^. jsf "removeChild" [toJSVal oldChild]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChildUnchecked ::
                     (MonadDOM m, IsNode self, IsNode oldChild) =>
                       self -> Maybe oldChild -> m Node
removeChildUnchecked self oldChild
  = liftDOM
      (((toNode self) ^. jsf "removeChild" [toJSVal oldChild]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild ::
            (MonadDOM m, IsNode self, IsNode newChild) =>
              self -> Maybe newChild -> m (Maybe Node)
appendChild self newChild
  = liftDOM
      (((toNode self) ^. jsf "appendChild" [toJSVal newChild]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild_ ::
             (MonadDOM m, IsNode self, IsNode newChild) =>
               self -> Maybe newChild -> m ()
appendChild_ self newChild
  = liftDOM
      (void ((toNode self) ^. jsf "appendChild" [toJSVal newChild]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChildUnsafe ::
                  (MonadDOM m, IsNode self, IsNode newChild, HasCallStack) =>
                    self -> Maybe newChild -> m Node
appendChildUnsafe self newChild
  = liftDOM
      ((((toNode self) ^. jsf "appendChild" [toJSVal newChild]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChildUnchecked ::
                     (MonadDOM m, IsNode self, IsNode newChild) =>
                       self -> Maybe newChild -> m Node
appendChildUnchecked self newChild
  = liftDOM
      (((toNode self) ^. jsf "appendChild" [toJSVal newChild]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes :: (MonadDOM m, IsNode self) => self -> m Bool
hasChildNodes self
  = liftDOM (((toNode self) ^. jsf "hasChildNodes" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes_ :: (MonadDOM m, IsNode self) => self -> m ()
hasChildNodes_ self
  = liftDOM (void ((toNode self) ^. jsf "hasChildNodes" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode ::
          (MonadDOM m, IsNode self) => self -> Bool -> m (Maybe Node)
cloneNode self deep
  = liftDOM
      (((toNode self) ^. jsf "cloneNode" [toJSVal deep]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode_ :: (MonadDOM m, IsNode self) => self -> Bool -> m ()
cloneNode_ self deep
  = liftDOM (void ((toNode self) ^. jsf "cloneNode" [toJSVal deep]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNodeUnsafe ::
                (MonadDOM m, IsNode self, HasCallStack) => self -> Bool -> m Node
cloneNodeUnsafe self deep
  = liftDOM
      ((((toNode self) ^. jsf "cloneNode" [toJSVal deep]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNodeUnchecked ::
                   (MonadDOM m, IsNode self) => self -> Bool -> m Node
cloneNodeUnchecked self deep
  = liftDOM
      (((toNode self) ^. jsf "cloneNode" [toJSVal deep]) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSupported Mozilla Node.isSupported documentation> 
isSupported_ ::
             (MonadDOM m, IsNode self, ToJSString feature,
              ToJSString version) =>
               self -> feature -> Maybe version -> m ()
isSupported_ self feature version
  = liftDOM
      (void
         ((toNode self) ^. jsf "isSupported"
            [toJSVal feature, toJSVal version]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition ::
                        (MonadDOM m, IsNode self, IsNode other) =>
                          self -> Maybe other -> m Word
compareDocumentPosition self other
  = liftDOM
      (round <$>
         (((toNode self) ^. jsf "compareDocumentPosition" [toJSVal other])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition_ ::
                         (MonadDOM m, IsNode self, IsNode other) =>
                           self -> Maybe other -> m ()
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
getNodeNameUnsafe ::
                  (MonadDOM m, IsNode self, HasCallStack, FromJSString result) =>
                    self -> m result
getNodeNameUnsafe self
  = liftDOM
      ((((toNode self) ^. js "nodeName") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
getNodeNameUnchecked ::
                     (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getNodeNameUnchecked self
  = liftDOM (((toNode self) ^. js "nodeName") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodes ::
              (MonadDOM m, IsNode self) => self -> m (Maybe NodeList)
getChildNodes self
  = liftDOM (((toNode self) ^. js "childNodes") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodesUnsafe ::
                    (MonadDOM m, IsNode self, HasCallStack) => self -> m NodeList
getChildNodesUnsafe self
  = liftDOM
      ((((toNode self) ^. js "childNodes") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodesUnchecked ::
                       (MonadDOM m, IsNode self) => self -> m NodeList
getChildNodesUnchecked self
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.namespaceURI Mozilla Node.namespaceURI documentation> 
getNamespaceURI ::
                (MonadDOM m, IsNode self, FromJSString result) =>
                  self -> m (Maybe result)
getNamespaceURI self
  = liftDOM
      (((toNode self) ^. js "namespaceURI") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.namespaceURI Mozilla Node.namespaceURI documentation> 
getNamespaceURIUnsafe ::
                      (MonadDOM m, IsNode self, HasCallStack, FromJSString result) =>
                        self -> m result
getNamespaceURIUnsafe self
  = liftDOM
      ((((toNode self) ^. js "namespaceURI") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.namespaceURI Mozilla Node.namespaceURI documentation> 
getNamespaceURIUnchecked ::
                         (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getNamespaceURIUnchecked self
  = liftDOM
      (((toNode self) ^. js "namespaceURI") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
getPrefixUnsafe ::
                (MonadDOM m, IsNode self, HasCallStack, FromJSString result) =>
                  self -> m result
getPrefixUnsafe self
  = liftDOM
      ((((toNode self) ^. js "prefix") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
getPrefixUnchecked ::
                   (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getPrefixUnchecked self
  = liftDOM (((toNode self) ^. js "prefix") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.localName Mozilla Node.localName documentation> 
getLocalName ::
             (MonadDOM m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getLocalName self
  = liftDOM (((toNode self) ^. js "localName") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.localName Mozilla Node.localName documentation> 
getLocalNameUnsafe ::
                   (MonadDOM m, IsNode self, HasCallStack, FromJSString result) =>
                     self -> m result
getLocalNameUnsafe self
  = liftDOM
      ((((toNode self) ^. js "localName") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.localName Mozilla Node.localName documentation> 
getLocalNameUnchecked ::
                      (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getLocalNameUnchecked self
  = liftDOM
      (((toNode self) ^. js "localName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURI ::
           (MonadDOM m, IsNode self, FromJSString result) =>
             self -> m (Maybe result)
getBaseURI self
  = liftDOM (((toNode self) ^. js "baseURI") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURIUnsafe ::
                 (MonadDOM m, IsNode self, HasCallStack, FromJSString result) =>
                   self -> m result
getBaseURIUnsafe self
  = liftDOM
      ((((toNode self) ^. js "baseURI") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURIUnchecked ::
                    (MonadDOM m, IsNode self, FromJSString result) => self -> m result
getBaseURIUnchecked self
  = liftDOM (((toNode self) ^. js "baseURI") >>= fromJSValUnchecked)

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
