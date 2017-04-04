{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Document
       (getAnimations, getAnimations_, newDocument, createElement,
        createElement_, createDocumentFragment, createDocumentFragment_,
        createTextNode, createTextNode_, createComment, createComment_,
        createCDATASection, createCDATASection_,
        createProcessingInstruction, createProcessingInstruction_,
        createAttribute, createAttribute_, getElementsByTagName,
        getElementsByTagName_, importNode, importNode_, createElementNS,
        createElementNS_, createAttributeNS, createAttributeNS_,
        getElementsByTagNameNS, getElementsByTagNameNS_, adoptNode,
        adoptNode_, createEvent, createEvent_, createRange, createRange_,
        createNodeIterator, createNodeIterator_, createTreeWalker,
        createTreeWalker_, getOverrideStyle, getOverrideStyle_,
        createExpression, createExpression_, createNSResolver,
        createNSResolver_, evaluate, evaluate_, execCommand, execCommand_,
        queryCommandEnabled, queryCommandEnabled_, queryCommandIndeterm,
        queryCommandIndeterm_, queryCommandState, queryCommandState_,
        queryCommandSupported, queryCommandSupported_, queryCommandValue,
        queryCommandValue_, getElementsByName, getElementsByName_,
        caretRangeFromPoint, caretRangeFromPoint_, getSelection,
        getSelection_, getCSSCanvasContext, getCSSCanvasContext_,
        getElementsByClassName, getElementsByClassName_, hasFocus,
        hasFocus_, webkitCancelFullScreen, webkitExitFullscreen,
        exitPointerLock, webkitGetNamedFlows, webkitGetNamedFlows_,
        createTouch, createTouch_, createTouchList, createTouchList_,
        getTimeline, getDoctype, getDoctypeUnsafe, getDoctypeUnchecked,
        getImplementation, getDocumentElement, getDocumentElementUnsafe,
        getDocumentElementUnchecked, getInputEncoding, getXmlEncoding,
        getXmlEncodingUnsafe, getXmlEncodingUnchecked, setXmlVersion,
        getXmlVersion, getXmlVersionUnsafe, getXmlVersionUnchecked,
        setXmlStandalone, getXmlStandalone, getDocumentURI, getDefaultView,
        getStyleSheets, getContentType, setTitle, getTitle, setDir, getDir,
        setDesignMode, getDesignMode, getReferrer, setDomain, getDomain,
        getURL, setCookie, getCookie, setBody, getBody, getBodyUnsafe,
        getBodyUnchecked, getHead, getHeadUnsafe, getHeadUnchecked,
        getImages, getApplets, getLinks, getForms, getAnchors, getEmbeds,
        getPlugins, getScripts, getLastModified, getLocation,
        getLocationUnsafe, getLocationUnchecked, getCharset, getReadyState,
        getCharacterSet, getPreferredStylesheetSet,
        getPreferredStylesheetSetUnsafe,
        getPreferredStylesheetSetUnchecked, setSelectedStylesheetSet,
        getSelectedStylesheetSet, getSelectedStylesheetSetUnsafe,
        getSelectedStylesheetSetUnchecked, getCompatMode,
        getWebkitIsFullScreen, getWebkitFullScreenKeyboardInputAllowed,
        getWebkitCurrentFullScreenElement, getWebkitFullscreenEnabled,
        getWebkitFullscreenElement, getWebkitFullscreenElementUnsafe,
        getWebkitFullscreenElementUnchecked, getFonts, getVisibilityState,
        getHidden, visibilitychange, getCurrentScript,
        getCurrentScriptUnsafe, getCurrentScriptUnchecked, getOrigin,
        getScrollingElement, getScrollingElementUnsafe,
        getScrollingElementUnchecked, beforeCopy, beforeCut, beforeinput,
        beforePaste, copy, cut, paste, selectStart, webKitFullscreenChange,
        webKitFullscreenError, selectionchange, readyStateChange,
        pointerlockchange, pointerlockerror, getRootElement,
        getRootElementUnsafe, getRootElementUnchecked, Document(..),
        gTypeDocument, IsDocument, toDocument)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getAnimations Mozilla Document.getAnimations documentation> 
getAnimations ::
              (MonadDOM m, IsDocument self) => self -> m [Animation]
getAnimations self
  = liftDOM
      (((toDocument self) ^. jsf "getAnimations" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getAnimations Mozilla Document.getAnimations documentation> 
getAnimations_ :: (MonadDOM m, IsDocument self) => self -> m ()
getAnimations_ self
  = liftDOM (void ((toDocument self) ^. jsf "getAnimations" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation> 
newDocument :: (MonadDOM m) => m Document
newDocument = liftDOM (Document <$> new (jsg "Document") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement ::
              (MonadDOM m, IsDocument self, ToJSString tagName) =>
                self -> tagName -> m Element
createElement self tagName
  = liftDOM
      (((toDocument self) ^. jsf "createElement" [toJSVal tagName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement_ ::
               (MonadDOM m, IsDocument self, ToJSString tagName) =>
                 self -> tagName -> m ()
createElement_ self tagName
  = liftDOM
      (void ((toDocument self) ^. jsf "createElement" [toJSVal tagName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment ::
                       (MonadDOM m, IsDocument self) => self -> m DocumentFragment
createDocumentFragment self
  = liftDOM
      (((toDocument self) ^. jsf "createDocumentFragment" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment_ ::
                        (MonadDOM m, IsDocument self) => self -> m ()
createDocumentFragment_ self
  = liftDOM
      (void ((toDocument self) ^. jsf "createDocumentFragment" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode ::
               (MonadDOM m, IsDocument self, ToJSString data') =>
                 self -> data' -> m Text
createTextNode self data'
  = liftDOM
      (((toDocument self) ^. jsf "createTextNode" [toJSVal data']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode_ ::
                (MonadDOM m, IsDocument self, ToJSString data') =>
                  self -> data' -> m ()
createTextNode_ self data'
  = liftDOM
      (void ((toDocument self) ^. jsf "createTextNode" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment ::
              (MonadDOM m, IsDocument self, ToJSString data') =>
                self -> data' -> m Comment
createComment self data'
  = liftDOM
      (((toDocument self) ^. jsf "createComment" [toJSVal data']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment_ ::
               (MonadDOM m, IsDocument self, ToJSString data') =>
                 self -> data' -> m ()
createComment_ self data'
  = liftDOM
      (void ((toDocument self) ^. jsf "createComment" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection ::
                   (MonadDOM m, IsDocument self, ToJSString data') =>
                     self -> data' -> m CDATASection
createCDATASection self data'
  = liftDOM
      (((toDocument self) ^. jsf "createCDATASection" [toJSVal data'])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection_ ::
                    (MonadDOM m, IsDocument self, ToJSString data') =>
                      self -> data' -> m ()
createCDATASection_ self data'
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createCDATASection" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstruction ::
                            (MonadDOM m, IsDocument self, ToJSString target,
                             ToJSString data') =>
                              self -> target -> data' -> m ProcessingInstruction
createProcessingInstruction self target data'
  = liftDOM
      (((toDocument self) ^. jsf "createProcessingInstruction"
          [toJSVal target, toJSVal data'])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstruction_ ::
                             (MonadDOM m, IsDocument self, ToJSString target,
                              ToJSString data') =>
                               self -> target -> data' -> m ()
createProcessingInstruction_ self target data'
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createProcessingInstruction"
            [toJSVal target, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute ::
                (MonadDOM m, IsDocument self, ToJSString name) =>
                  self -> name -> m Attr
createAttribute self name
  = liftDOM
      (((toDocument self) ^. jsf "createAttribute" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute_ ::
                 (MonadDOM m, IsDocument self, ToJSString name) =>
                   self -> name -> m ()
createAttribute_ self name
  = liftDOM
      (void ((toDocument self) ^. jsf "createAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadDOM m, IsDocument self, ToJSString tagname) =>
                       self -> tagname -> m HTMLCollection
getElementsByTagName self tagname
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByTagName"
          [toJSVal tagname])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName_ ::
                      (MonadDOM m, IsDocument self, ToJSString tagname) =>
                        self -> tagname -> m ()
getElementsByTagName_ self tagname
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementsByTagName"
            [toJSVal tagname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode ::
           (MonadDOM m, IsDocument self, IsNode importedNode) =>
             self -> importedNode -> Bool -> m Node
importNode self importedNode deep
  = liftDOM
      (((toDocument self) ^. jsf "importNode"
          [toJSVal importedNode, toJSVal deep])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode_ ::
            (MonadDOM m, IsDocument self, IsNode importedNode) =>
              self -> importedNode -> Bool -> m ()
importNode_ self importedNode deep
  = liftDOM
      (void
         ((toDocument self) ^. jsf "importNode"
            [toJSVal importedNode, toJSVal deep]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS ::
                (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                 ToJSString qualifiedName) =>
                  self -> Maybe namespaceURI -> qualifiedName -> m Element
createElementNS self namespaceURI qualifiedName
  = liftDOM
      (((toDocument self) ^. jsf "createElementNS"
          [toJSVal namespaceURI, toJSVal qualifiedName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS_ ::
                 (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                  ToJSString qualifiedName) =>
                   self -> Maybe namespaceURI -> qualifiedName -> m ()
createElementNS_ self namespaceURI qualifiedName
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createElementNS"
            [toJSVal namespaceURI, toJSVal qualifiedName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS ::
                  (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                   ToJSString qualifiedName) =>
                    self -> Maybe namespaceURI -> qualifiedName -> m Attr
createAttributeNS self namespaceURI qualifiedName
  = liftDOM
      (((toDocument self) ^. jsf "createAttributeNS"
          [toJSVal namespaceURI, toJSVal qualifiedName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS_ ::
                   (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                    ToJSString qualifiedName) =>
                     self -> Maybe namespaceURI -> qualifiedName -> m ()
createAttributeNS_ self namespaceURI qualifiedName
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createAttributeNS"
            [toJSVal namespaceURI, toJSVal qualifiedName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> Maybe namespaceURI -> localName -> m HTMLCollection
getElementsByTagNameNS self namespaceURI localName
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByTagNameNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNS_ ::
                        (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                         ToJSString localName) =>
                          self -> Maybe namespaceURI -> localName -> m ()
getElementsByTagNameNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementsByTagNameNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode ::
          (MonadDOM m, IsDocument self, IsNode source) =>
            self -> source -> m Node
adoptNode self source
  = liftDOM
      (((toDocument self) ^. jsf "adoptNode" [toJSVal source]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode_ ::
           (MonadDOM m, IsDocument self, IsNode source) =>
             self -> source -> m ()
adoptNode_ self source
  = liftDOM
      (void ((toDocument self) ^. jsf "adoptNode" [toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent ::
            (MonadDOM m, IsDocument self, ToJSString eventType) =>
              self -> eventType -> m Event
createEvent self eventType
  = liftDOM
      (((toDocument self) ^. jsf "createEvent" [toJSVal eventType]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent_ ::
             (MonadDOM m, IsDocument self, ToJSString eventType) =>
               self -> eventType -> m ()
createEvent_ self eventType
  = liftDOM
      (void ((toDocument self) ^. jsf "createEvent" [toJSVal eventType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange :: (MonadDOM m, IsDocument self) => self -> m Range
createRange self
  = liftDOM
      (((toDocument self) ^. jsf "createRange" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange_ :: (MonadDOM m, IsDocument self) => self -> m ()
createRange_ self
  = liftDOM (void ((toDocument self) ^. jsf "createRange" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator ::
                   (MonadDOM m, IsDocument self, IsNode root) =>
                     self -> root -> Maybe Word -> Maybe NodeFilter -> m NodeIterator
createNodeIterator self root whatToShow filter
  = liftDOM
      (((toDocument self) ^. jsf "createNodeIterator"
          [toJSVal root, toJSVal whatToShow, toJSVal filter])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator_ ::
                    (MonadDOM m, IsDocument self, IsNode root) =>
                      self -> root -> Maybe Word -> Maybe NodeFilter -> m ()
createNodeIterator_ self root whatToShow filter
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createNodeIterator"
            [toJSVal root, toJSVal whatToShow, toJSVal filter]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker ::
                 (MonadDOM m, IsDocument self, IsNode root) =>
                   self -> root -> Maybe Word -> Maybe NodeFilter -> m TreeWalker
createTreeWalker self root whatToShow filter
  = liftDOM
      (((toDocument self) ^. jsf "createTreeWalker"
          [toJSVal root, toJSVal whatToShow, toJSVal filter])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker_ ::
                  (MonadDOM m, IsDocument self, IsNode root) =>
                    self -> root -> Maybe Word -> Maybe NodeFilter -> m ()
createTreeWalker_ self root whatToShow filter
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createTreeWalker"
            [toJSVal root, toJSVal whatToShow, toJSVal filter]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle ::
                 (MonadDOM m, IsDocument self, IsElement element,
                  ToJSString pseudoElement) =>
                   self ->
                     Maybe element -> Maybe pseudoElement -> m CSSStyleDeclaration
getOverrideStyle self element pseudoElement
  = liftDOM
      (((toDocument self) ^. jsf "getOverrideStyle"
          [toJSVal element, toJSVal pseudoElement])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle_ ::
                  (MonadDOM m, IsDocument self, IsElement element,
                   ToJSString pseudoElement) =>
                    self -> Maybe element -> Maybe pseudoElement -> m ()
getOverrideStyle_ self element pseudoElement
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getOverrideStyle"
            [toJSVal element, toJSVal pseudoElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression ::
                 (MonadDOM m, IsDocument self, ToJSString expression) =>
                   self ->
                     Maybe expression -> Maybe XPathNSResolver -> m XPathExpression
createExpression self expression resolver
  = liftDOM
      (((toDocument self) ^. jsf "createExpression"
          [toJSVal expression, toJSVal resolver])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression_ ::
                  (MonadDOM m, IsDocument self, ToJSString expression) =>
                    self -> Maybe expression -> Maybe XPathNSResolver -> m ()
createExpression_ self expression resolver
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createExpression"
            [toJSVal expression, toJSVal resolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver ::
                 (MonadDOM m, IsDocument self, IsNode nodeResolver) =>
                   self -> Maybe nodeResolver -> m XPathNSResolver
createNSResolver self nodeResolver
  = liftDOM
      (((toDocument self) ^. jsf "createNSResolver"
          [toJSVal nodeResolver])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver_ ::
                  (MonadDOM m, IsDocument self, IsNode nodeResolver) =>
                    self -> Maybe nodeResolver -> m ()
createNSResolver_ self nodeResolver
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createNSResolver"
            [toJSVal nodeResolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate ::
         (MonadDOM m, IsDocument self, ToJSString expression,
          IsNode contextNode) =>
           self ->
             Maybe expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Maybe Word -> Maybe XPathResult -> m XPathResult
evaluate self expression contextNode resolver type' inResult
  = liftDOM
      (((toDocument self) ^. jsf "evaluate"
          [toJSVal expression, toJSVal contextNode, toJSVal resolver,
           toJSVal type', toJSVal inResult])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate_ ::
          (MonadDOM m, IsDocument self, ToJSString expression,
           IsNode contextNode) =>
            self ->
              Maybe expression ->
                Maybe contextNode ->
                  Maybe XPathNSResolver -> Maybe Word -> Maybe XPathResult -> m ()
evaluate_ self expression contextNode resolver type' inResult
  = liftDOM
      (void
         ((toDocument self) ^. jsf "evaluate"
            [toJSVal expression, toJSVal contextNode, toJSVal resolver,
             toJSVal type', toJSVal inResult]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.execCommand Mozilla Document.execCommand documentation> 
execCommand ::
            (MonadDOM m, IsDocument self, ToJSString command,
             ToJSString value) =>
              self -> command -> Bool -> Maybe value -> m Bool
execCommand self command userInterface value
  = liftDOM
      (((toDocument self) ^. jsf "execCommand"
          [toJSVal command, toJSVal userInterface, toJSVal value])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.execCommand Mozilla Document.execCommand documentation> 
execCommand_ ::
             (MonadDOM m, IsDocument self, ToJSString command,
              ToJSString value) =>
               self -> command -> Bool -> Maybe value -> m ()
execCommand_ self command userInterface value
  = liftDOM
      (void
         ((toDocument self) ^. jsf "execCommand"
            [toJSVal command, toJSVal userInterface, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
queryCommandEnabled ::
                    (MonadDOM m, IsDocument self, ToJSString command) =>
                      self -> command -> m Bool
queryCommandEnabled self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandEnabled" [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
queryCommandEnabled_ ::
                     (MonadDOM m, IsDocument self, ToJSString command) =>
                       self -> command -> m ()
queryCommandEnabled_ self command
  = liftDOM
      (void
         ((toDocument self) ^. jsf "queryCommandEnabled" [toJSVal command]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
queryCommandIndeterm ::
                     (MonadDOM m, IsDocument self, ToJSString command) =>
                       self -> command -> m Bool
queryCommandIndeterm self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandIndeterm"
          [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
queryCommandIndeterm_ ::
                      (MonadDOM m, IsDocument self, ToJSString command) =>
                        self -> command -> m ()
queryCommandIndeterm_ self command
  = liftDOM
      (void
         ((toDocument self) ^. jsf "queryCommandIndeterm"
            [toJSVal command]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
queryCommandState ::
                  (MonadDOM m, IsDocument self, ToJSString command) =>
                    self -> command -> m Bool
queryCommandState self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandState" [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
queryCommandState_ ::
                   (MonadDOM m, IsDocument self, ToJSString command) =>
                     self -> command -> m ()
queryCommandState_ self command
  = liftDOM
      (void
         ((toDocument self) ^. jsf "queryCommandState" [toJSVal command]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
queryCommandSupported ::
                      (MonadDOM m, IsDocument self, ToJSString command) =>
                        self -> command -> m Bool
queryCommandSupported self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandSupported"
          [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
queryCommandSupported_ ::
                       (MonadDOM m, IsDocument self, ToJSString command) =>
                         self -> command -> m ()
queryCommandSupported_ self command
  = liftDOM
      (void
         ((toDocument self) ^. jsf "queryCommandSupported"
            [toJSVal command]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
queryCommandValue ::
                  (MonadDOM m, IsDocument self, ToJSString command,
                   FromJSString result) =>
                    self -> command -> m result
queryCommandValue self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandValue" [toJSVal command])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
queryCommandValue_ ::
                   (MonadDOM m, IsDocument self, ToJSString command) =>
                     self -> command -> m ()
queryCommandValue_ self command
  = liftDOM
      (void
         ((toDocument self) ^. jsf "queryCommandValue" [toJSVal command]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName ::
                  (MonadDOM m, IsDocument self, ToJSString elementName) =>
                    self -> elementName -> m NodeList
getElementsByName self elementName
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByName"
          [toJSVal elementName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName_ ::
                   (MonadDOM m, IsDocument self, ToJSString elementName) =>
                     self -> elementName -> m ()
getElementsByName_ self elementName
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementsByName"
            [toJSVal elementName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint ::
                    (MonadDOM m, IsDocument self) =>
                      self -> Maybe Int -> Maybe Int -> m Range
caretRangeFromPoint self x y
  = liftDOM
      (((toDocument self) ^. jsf "caretRangeFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint_ ::
                     (MonadDOM m, IsDocument self) =>
                       self -> Maybe Int -> Maybe Int -> m ()
caretRangeFromPoint_ self x y
  = liftDOM
      (void
         ((toDocument self) ^. jsf "caretRangeFromPoint"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection ::
             (MonadDOM m, IsDocument self) => self -> m Selection
getSelection self
  = liftDOM
      (((toDocument self) ^. jsf "getSelection" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection_ :: (MonadDOM m, IsDocument self) => self -> m ()
getSelection_ self
  = liftDOM (void ((toDocument self) ^. jsf "getSelection" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContext ::
                    (MonadDOM m, IsDocument self, ToJSString contextId,
                     ToJSString name) =>
                      self -> contextId -> name -> Int -> Int -> m RenderingContext
getCSSCanvasContext self contextId name width height
  = liftDOM
      (((toDocument self) ^. jsf "getCSSCanvasContext"
          [toJSVal contextId, toJSVal name, toJSVal width, toJSVal height])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContext_ ::
                     (MonadDOM m, IsDocument self, ToJSString contextId,
                      ToJSString name) =>
                       self -> contextId -> name -> Int -> Int -> m ()
getCSSCanvasContext_ self contextId name width height
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getCSSCanvasContext"
            [toJSVal contextId, toJSVal name, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadDOM m, IsDocument self, ToJSString classNames) =>
                         self -> classNames -> m HTMLCollection
getElementsByClassName self classNames
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByClassName"
          [toJSVal classNames])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName_ ::
                        (MonadDOM m, IsDocument self, ToJSString classNames) =>
                          self -> classNames -> m ()
getElementsByClassName_ self classNames
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementsByClassName"
            [toJSVal classNames]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus :: (MonadDOM m, IsDocument self) => self -> m Bool
hasFocus self
  = liftDOM (((toDocument self) ^. jsf "hasFocus" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus_ :: (MonadDOM m, IsDocument self) => self -> m ()
hasFocus_ self
  = liftDOM (void ((toDocument self) ^. jsf "hasFocus" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCancelFullScreen Mozilla Document.webkitCancelFullScreen documentation> 
webkitCancelFullScreen ::
                       (MonadDOM m, IsDocument self) => self -> m ()
webkitCancelFullScreen self
  = liftDOM
      (void ((toDocument self) ^. jsf "webkitCancelFullScreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitExitFullscreen Mozilla Document.webkitExitFullscreen documentation> 
webkitExitFullscreen ::
                     (MonadDOM m, IsDocument self) => self -> m ()
webkitExitFullscreen self
  = liftDOM
      (void ((toDocument self) ^. jsf "webkitExitFullscreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.exitPointerLock Mozilla Document.exitPointerLock documentation> 
exitPointerLock :: (MonadDOM m, IsDocument self) => self -> m ()
exitPointerLock self
  = liftDOM (void ((toDocument self) ^. jsf "exitPointerLock" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlows ::
                    (MonadDOM m, IsDocument self) => self -> m DOMNamedFlowCollection
webkitGetNamedFlows self
  = liftDOM
      (((toDocument self) ^. jsf "webkitGetNamedFlows" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlows_ ::
                     (MonadDOM m, IsDocument self) => self -> m ()
webkitGetNamedFlows_ self
  = liftDOM
      (void ((toDocument self) ^. jsf "webkitGetNamedFlows" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch ::
            (MonadDOM m, IsDocument self, IsEventTarget target) =>
              self ->
                Maybe Window ->
                  Maybe target ->
                    Maybe Int ->
                      Maybe Int ->
                        Maybe Int ->
                          Maybe Int ->
                            Maybe Int ->
                              Maybe Int -> Maybe Int -> Maybe Float -> Maybe Float -> m Touch
createTouch self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftDOM
      (((toDocument self) ^. jsf "createTouch"
          [toJSVal window, toJSVal target, toJSVal identifier, toJSVal pageX,
           toJSVal pageY, toJSVal screenX, toJSVal screenY,
           toJSVal webkitRadiusX, toJSVal webkitRadiusY,
           toJSVal webkitRotationAngle, toJSVal webkitForce])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch_ ::
             (MonadDOM m, IsDocument self, IsEventTarget target) =>
               self ->
                 Maybe Window ->
                   Maybe target ->
                     Maybe Int ->
                       Maybe Int ->
                         Maybe Int ->
                           Maybe Int ->
                             Maybe Int ->
                               Maybe Int -> Maybe Int -> Maybe Float -> Maybe Float -> m ()
createTouch_ self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createTouch"
            [toJSVal window, toJSVal target, toJSVal identifier, toJSVal pageX,
             toJSVal pageY, toJSVal screenX, toJSVal screenY,
             toJSVal webkitRadiusX, toJSVal webkitRadiusY,
             toJSVal webkitRotationAngle, toJSVal webkitForce]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList ::
                (MonadDOM m, IsDocument self) => self -> [Touch] -> m TouchList
createTouchList self touches
  = liftDOM
      (((toDocument self) ^. jsf "createTouchList"
          [toJSVal (array touches)])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList_ ::
                 (MonadDOM m, IsDocument self) => self -> [Touch] -> m ()
createTouchList_ self touches
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createTouchList"
            [toJSVal (array touches)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.timeline Mozilla Document.timeline documentation> 
getTimeline ::
            (MonadDOM m, IsDocument self) => self -> m DocumentTimeline
getTimeline self
  = liftDOM
      (((toDocument self) ^. js "timeline") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctype ::
           (MonadDOM m, IsDocument self) => self -> m (Maybe DocumentType)
getDoctype self
  = liftDOM (((toDocument self) ^. js "doctype") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctypeUnsafe ::
                 (MonadDOM m, IsDocument self, HasCallStack) =>
                   self -> m DocumentType
getDoctypeUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "doctype") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctypeUnchecked ::
                    (MonadDOM m, IsDocument self) => self -> m DocumentType
getDoctypeUnchecked self
  = liftDOM
      (((toDocument self) ^. js "doctype") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
getImplementation ::
                  (MonadDOM m, IsDocument self) => self -> m DOMImplementation
getImplementation self
  = liftDOM
      (((toDocument self) ^. js "implementation") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElement ::
                   (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getDocumentElement self
  = liftDOM
      (((toDocument self) ^. js "documentElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElementUnsafe ::
                         (MonadDOM m, IsDocument self, HasCallStack) => self -> m Element
getDocumentElementUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "documentElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElementUnchecked ::
                            (MonadDOM m, IsDocument self) => self -> m Element
getDocumentElementUnchecked self
  = liftDOM
      (((toDocument self) ^. js "documentElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
getInputEncoding ::
                 (MonadDOM m, IsDocument self, FromJSString result) =>
                   self -> m result
getInputEncoding self
  = liftDOM
      (((toDocument self) ^. js "inputEncoding") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncoding ::
               (MonadDOM m, IsDocument self, FromJSString result) =>
                 self -> m (Maybe result)
getXmlEncoding self
  = liftDOM (((toDocument self) ^. js "xmlEncoding") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncodingUnsafe ::
                     (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                       self -> m result
getXmlEncodingUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "xmlEncoding") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncodingUnchecked ::
                        (MonadDOM m, IsDocument self, FromJSString result) =>
                          self -> m result
getXmlEncodingUnchecked self
  = liftDOM
      (((toDocument self) ^. js "xmlEncoding") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
setXmlVersion ::
              (MonadDOM m, IsDocument self, ToJSString val) =>
                self -> Maybe val -> m ()
setXmlVersion self val
  = liftDOM ((toDocument self) ^. jss "xmlVersion" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersion ::
              (MonadDOM m, IsDocument self, FromJSString result) =>
                self -> m (Maybe result)
getXmlVersion self
  = liftDOM (((toDocument self) ^. js "xmlVersion") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersionUnsafe ::
                    (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                      self -> m result
getXmlVersionUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "xmlVersion") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersionUnchecked ::
                       (MonadDOM m, IsDocument self, FromJSString result) =>
                         self -> m result
getXmlVersionUnchecked self
  = liftDOM
      (((toDocument self) ^. js "xmlVersion") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
setXmlStandalone ::
                 (MonadDOM m, IsDocument self) => self -> Bool -> m ()
setXmlStandalone self val
  = liftDOM ((toDocument self) ^. jss "xmlStandalone" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
getXmlStandalone :: (MonadDOM m, IsDocument self) => self -> m Bool
getXmlStandalone self
  = liftDOM (((toDocument self) ^. js "xmlStandalone") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
getDocumentURI ::
               (MonadDOM m, IsDocument self, FromJSString result) =>
                 self -> m result
getDocumentURI self
  = liftDOM
      (((toDocument self) ^. js "documentURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultView :: (MonadDOM m, IsDocument self) => self -> m Window
getDefaultView self
  = liftDOM
      (((toDocument self) ^. js "defaultView") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheets ::
               (MonadDOM m, IsDocument self) => self -> m StyleSheetList
getStyleSheets self
  = liftDOM
      (((toDocument self) ^. js "styleSheets") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.contentType Mozilla Document.contentType documentation> 
getContentType ::
               (MonadDOM m, IsDocument self, FromJSString result) =>
                 self -> m result
getContentType self
  = liftDOM
      (((toDocument self) ^. js "contentType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
setTitle ::
         (MonadDOM m, IsDocument self, ToJSString val) =>
           self -> val -> m ()
setTitle self val
  = liftDOM ((toDocument self) ^. jss "title" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitle ::
         (MonadDOM m, IsDocument self, FromJSString result) =>
           self -> m result
getTitle self
  = liftDOM
      (((toDocument self) ^. js "title") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.dir Mozilla Document.dir documentation> 
setDir ::
       (MonadDOM m, IsDocument self, ToJSString val) =>
         self -> val -> m ()
setDir self val
  = liftDOM ((toDocument self) ^. jss "dir" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.dir Mozilla Document.dir documentation> 
getDir ::
       (MonadDOM m, IsDocument self, FromJSString result) =>
         self -> m result
getDir self
  = liftDOM (((toDocument self) ^. js "dir") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.designMode Mozilla Document.designMode documentation> 
setDesignMode ::
              (MonadDOM m, IsDocument self, ToJSString val) =>
                self -> val -> m ()
setDesignMode self val
  = liftDOM ((toDocument self) ^. jss "designMode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.designMode Mozilla Document.designMode documentation> 
getDesignMode ::
              (MonadDOM m, IsDocument self, FromJSString result) =>
                self -> m result
getDesignMode self
  = liftDOM
      (((toDocument self) ^. js "designMode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.referrer Mozilla Document.referrer documentation> 
getReferrer ::
            (MonadDOM m, IsDocument self, FromJSString result) =>
              self -> m result
getReferrer self
  = liftDOM
      (((toDocument self) ^. js "referrer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
setDomain ::
          (MonadDOM m, IsDocument self, ToJSString val) =>
            self -> val -> m ()
setDomain self val
  = liftDOM ((toDocument self) ^. jss "domain" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
getDomain ::
          (MonadDOM m, IsDocument self, FromJSString result) =>
            self -> m result
getDomain self
  = liftDOM
      (((toDocument self) ^. js "domain") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.URL Mozilla Document.URL documentation> 
getURL ::
       (MonadDOM m, IsDocument self, FromJSString result) =>
         self -> m result
getURL self
  = liftDOM (((toDocument self) ^. js "URL") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
setCookie ::
          (MonadDOM m, IsDocument self, ToJSString val) =>
            self -> val -> m ()
setCookie self val
  = liftDOM ((toDocument self) ^. jss "cookie" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
getCookie ::
          (MonadDOM m, IsDocument self, FromJSString result) =>
            self -> m result
getCookie self
  = liftDOM
      (((toDocument self) ^. js "cookie") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
setBody ::
        (MonadDOM m, IsDocument self, IsHTMLElement val) =>
          self -> Maybe val -> m ()
setBody self val
  = liftDOM ((toDocument self) ^. jss "body" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBody ::
        (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLElement)
getBody self
  = liftDOM (((toDocument self) ^. js "body") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBodyUnsafe ::
              (MonadDOM m, IsDocument self, HasCallStack) =>
                self -> m HTMLElement
getBodyUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "body") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBodyUnchecked ::
                 (MonadDOM m, IsDocument self) => self -> m HTMLElement
getBodyUnchecked self
  = liftDOM (((toDocument self) ^. js "body") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHead ::
        (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLHeadElement)
getHead self
  = liftDOM (((toDocument self) ^. js "head") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHeadUnsafe ::
              (MonadDOM m, IsDocument self, HasCallStack) =>
                self -> m HTMLHeadElement
getHeadUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "head") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHeadUnchecked ::
                 (MonadDOM m, IsDocument self) => self -> m HTMLHeadElement
getHeadUnchecked self
  = liftDOM (((toDocument self) ^. js "head") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
getImages ::
          (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getImages self
  = liftDOM
      (((toDocument self) ^. js "images") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getApplets ::
           (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getApplets self
  = liftDOM
      (((toDocument self) ^. js "applets") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinks ::
         (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getLinks self
  = liftDOM
      (((toDocument self) ^. js "links") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getForms ::
         (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getForms self
  = liftDOM
      (((toDocument self) ^. js "forms") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchors ::
           (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getAnchors self
  = liftDOM
      (((toDocument self) ^. js "anchors") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.embeds Mozilla Document.embeds documentation> 
getEmbeds ::
          (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getEmbeds self
  = liftDOM
      (((toDocument self) ^. js "embeds") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.plugins Mozilla Document.plugins documentation> 
getPlugins ::
           (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getPlugins self
  = liftDOM
      (((toDocument self) ^. js "plugins") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scripts Mozilla Document.scripts documentation> 
getScripts ::
           (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getScripts self
  = liftDOM
      (((toDocument self) ^. js "scripts") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.lastModified Mozilla Document.lastModified documentation> 
getLastModified ::
                (MonadDOM m, IsDocument self, FromJSString result) =>
                  self -> m result
getLastModified self
  = liftDOM
      (((toDocument self) ^. js "lastModified") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocation ::
            (MonadDOM m, IsDocument self) => self -> m (Maybe Location)
getLocation self
  = liftDOM (((toDocument self) ^. js "location") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocationUnsafe ::
                  (MonadDOM m, IsDocument self, HasCallStack) => self -> m Location
getLocationUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "location") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocationUnchecked ::
                     (MonadDOM m, IsDocument self) => self -> m Location
getLocationUnchecked self
  = liftDOM
      (((toDocument self) ^. js "location") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
getCharset ::
           (MonadDOM m, IsDocument self, FromJSString result) =>
             self -> m result
getCharset self
  = liftDOM
      (((toDocument self) ^. js "charset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyState ::
              (MonadDOM m, IsDocument self, FromJSString result) =>
                self -> m result
getReadyState self
  = liftDOM
      (((toDocument self) ^. js "readyState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSet ::
                (MonadDOM m, IsDocument self, FromJSString result) =>
                  self -> m result
getCharacterSet self
  = liftDOM
      (((toDocument self) ^. js "characterSet") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSet ::
                          (MonadDOM m, IsDocument self, FromJSString result) =>
                            self -> m (Maybe result)
getPreferredStylesheetSet self
  = liftDOM
      (((toDocument self) ^. js "preferredStylesheetSet") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSetUnsafe ::
                                (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                                  self -> m result
getPreferredStylesheetSetUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "preferredStylesheetSet") >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSetUnchecked ::
                                   (MonadDOM m, IsDocument self, FromJSString result) =>
                                     self -> m result
getPreferredStylesheetSetUnchecked self
  = liftDOM
      (((toDocument self) ^. js "preferredStylesheetSet") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
setSelectedStylesheetSet ::
                         (MonadDOM m, IsDocument self, ToJSString val) =>
                           self -> Maybe val -> m ()
setSelectedStylesheetSet self val
  = liftDOM
      ((toDocument self) ^. jss "selectedStylesheetSet" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSet ::
                         (MonadDOM m, IsDocument self, FromJSString result) =>
                           self -> m (Maybe result)
getSelectedStylesheetSet self
  = liftDOM
      (((toDocument self) ^. js "selectedStylesheetSet") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSetUnsafe ::
                               (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                                 self -> m result
getSelectedStylesheetSetUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "selectedStylesheetSet") >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSetUnchecked ::
                                  (MonadDOM m, IsDocument self, FromJSString result) =>
                                    self -> m result
getSelectedStylesheetSetUnchecked self
  = liftDOM
      (((toDocument self) ^. js "selectedStylesheetSet") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.compatMode Mozilla Document.compatMode documentation> 
getCompatMode ::
              (MonadDOM m, IsDocument self, FromJSString result) =>
                self -> m result
getCompatMode self
  = liftDOM
      (((toDocument self) ^. js "compatMode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitIsFullScreen Mozilla Document.webkitIsFullScreen documentation> 
getWebkitIsFullScreen ::
                      (MonadDOM m, IsDocument self) => self -> m Bool
getWebkitIsFullScreen self
  = liftDOM
      (((toDocument self) ^. js "webkitIsFullScreen") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullScreenKeyboardInputAllowed Mozilla Document.webkitFullScreenKeyboardInputAllowed documentation> 
getWebkitFullScreenKeyboardInputAllowed ::
                                        (MonadDOM m, IsDocument self) => self -> m Bool
getWebkitFullScreenKeyboardInputAllowed self
  = liftDOM
      (((toDocument self) ^. js "webkitFullScreenKeyboardInputAllowed")
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCurrentFullScreenElement Mozilla Document.webkitCurrentFullScreenElement documentation> 
getWebkitCurrentFullScreenElement ::
                                  (MonadDOM m, IsDocument self) => self -> m Element
getWebkitCurrentFullScreenElement self
  = liftDOM
      (((toDocument self) ^. js "webkitCurrentFullScreenElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenEnabled Mozilla Document.webkitFullscreenEnabled documentation> 
getWebkitFullscreenEnabled ::
                           (MonadDOM m, IsDocument self) => self -> m Bool
getWebkitFullscreenEnabled self
  = liftDOM
      (((toDocument self) ^. js "webkitFullscreenEnabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
getWebkitFullscreenElement ::
                           (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getWebkitFullscreenElement self
  = liftDOM
      (((toDocument self) ^. js "webkitFullscreenElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
getWebkitFullscreenElementUnsafe ::
                                 (MonadDOM m, IsDocument self, HasCallStack) => self -> m Element
getWebkitFullscreenElementUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "webkitFullscreenElement") >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
getWebkitFullscreenElementUnchecked ::
                                    (MonadDOM m, IsDocument self) => self -> m Element
getWebkitFullscreenElementUnchecked self
  = liftDOM
      (((toDocument self) ^. js "webkitFullscreenElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.fonts Mozilla Document.fonts documentation> 
getFonts :: (MonadDOM m, IsDocument self) => self -> m FontFaceSet
getFonts self
  = liftDOM
      (((toDocument self) ^. js "fonts") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.visibilityState Mozilla Document.visibilityState documentation> 
getVisibilityState ::
                   (MonadDOM m, IsDocument self) => self -> m VisibilityState
getVisibilityState self
  = liftDOM
      (((toDocument self) ^. js "visibilityState") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hidden Mozilla Document.hidden documentation> 
getHidden :: (MonadDOM m, IsDocument self) => self -> m Bool
getHidden self
  = liftDOM (((toDocument self) ^. js "hidden") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onvisibilitychange Mozilla Document.onvisibilitychange documentation> 
visibilitychange ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
visibilitychange = unsafeEventName (toJSString "visibilitychange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScript ::
                 (MonadDOM m, IsDocument self) =>
                   self -> m (Maybe HTMLScriptElement)
getCurrentScript self
  = liftDOM (((toDocument self) ^. js "currentScript") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScriptUnsafe ::
                       (MonadDOM m, IsDocument self, HasCallStack) =>
                         self -> m HTMLScriptElement
getCurrentScriptUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "currentScript") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScriptUnchecked ::
                          (MonadDOM m, IsDocument self) => self -> m HTMLScriptElement
getCurrentScriptUnchecked self
  = liftDOM
      (((toDocument self) ^. js "currentScript") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.origin Mozilla Document.origin documentation> 
getOrigin ::
          (MonadDOM m, IsDocument self, FromJSString result) =>
            self -> m result
getOrigin self
  = liftDOM
      (((toDocument self) ^. js "origin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scrollingElement Mozilla Document.scrollingElement documentation> 
getScrollingElement ::
                    (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getScrollingElement self
  = liftDOM
      (((toDocument self) ^. js "scrollingElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scrollingElement Mozilla Document.scrollingElement documentation> 
getScrollingElementUnsafe ::
                          (MonadDOM m, IsDocument self, HasCallStack) => self -> m Element
getScrollingElementUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "scrollingElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scrollingElement Mozilla Document.scrollingElement documentation> 
getScrollingElementUnchecked ::
                             (MonadDOM m, IsDocument self) => self -> m Element
getScrollingElementUnchecked self
  = liftDOM
      (((toDocument self) ^. js "scrollingElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforecopy Mozilla Document.onbeforecopy documentation> 
beforeCopy ::
           (IsDocument self, IsEventTarget self) =>
             EventName self ClipboardEvent
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforecut Mozilla Document.onbeforecut documentation> 
beforeCut ::
          (IsDocument self, IsEventTarget self) =>
            EventName self ClipboardEvent
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforeinput Mozilla Document.onbeforeinput documentation> 
beforeinput ::
            (IsDocument self, IsEventTarget self) =>
              EventName self onbeforeinput
beforeinput = unsafeEventName (toJSString "beforeinput")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforepaste Mozilla Document.onbeforepaste documentation> 
beforePaste ::
            (IsDocument self, IsEventTarget self) =>
              EventName self ClipboardEvent
beforePaste = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncopy Mozilla Document.oncopy documentation> 
copy ::
     (IsDocument self, IsEventTarget self) =>
       EventName self ClipboardEvent
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncut Mozilla Document.oncut documentation> 
cut ::
    (IsDocument self, IsEventTarget self) =>
      EventName self ClipboardEvent
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpaste Mozilla Document.onpaste documentation> 
paste ::
      (IsDocument self, IsEventTarget self) =>
        EventName self ClipboardEvent
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectstart Mozilla Document.onselectstart documentation> 
selectStart ::
            (IsDocument self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitfullscreenchange Mozilla Document.onwebkitfullscreenchange documentation> 
webKitFullscreenChange ::
                       (IsDocument self, IsEventTarget self) => EventName self Event
webKitFullscreenChange
  = unsafeEventName (toJSString "webkitfullscreenchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitfullscreenerror Mozilla Document.onwebkitfullscreenerror documentation> 
webKitFullscreenError ::
                      (IsDocument self, IsEventTarget self) => EventName self Event
webKitFullscreenError
  = unsafeEventName (toJSString "webkitfullscreenerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectionchange Mozilla Document.onselectionchange documentation> 
selectionchange ::
                (IsDocument self, IsEventTarget self) =>
                  EventName self onselectionchange
selectionchange = unsafeEventName (toJSString "selectionchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onreadystatechange Mozilla Document.onreadystatechange documentation> 
readyStateChange ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
readyStateChange = unsafeEventName (toJSString "readystatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpointerlockchange Mozilla Document.onpointerlockchange documentation> 
pointerlockchange ::
                  (IsDocument self, IsEventTarget self) => EventName self Event
pointerlockchange
  = unsafeEventName (toJSString "pointerlockchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpointerlockerror Mozilla Document.onpointerlockerror documentation> 
pointerlockerror ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
pointerlockerror = unsafeEventName (toJSString "pointerlockerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.rootElement Mozilla Document.rootElement documentation> 
getRootElement ::
               (MonadDOM m, IsDocument self) => self -> m (Maybe SVGSVGElement)
getRootElement self
  = liftDOM (((toDocument self) ^. js "rootElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.rootElement Mozilla Document.rootElement documentation> 
getRootElementUnsafe ::
                     (MonadDOM m, IsDocument self, HasCallStack) =>
                       self -> m SVGSVGElement
getRootElementUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "rootElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.rootElement Mozilla Document.rootElement documentation> 
getRootElementUnchecked ::
                        (MonadDOM m, IsDocument self) => self -> m SVGSVGElement
getRootElementUnchecked self
  = liftDOM
      (((toDocument self) ^. js "rootElement") >>= fromJSValUnchecked)
