{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Document
       (newDocument, createElement, createDocumentFragment,
        createTextNode, createComment, createCDATASection,
        createProcessingInstruction, createAttribute,
        createEntityReference, getElementsByTagName, importNode,
        createElementNS, createAttributeNS, getElementsByTagNameNS,
        getElementById, adoptNode, createEvent, createRange,
        createNodeIterator, createTreeWalker, getOverrideStyle,
        createExpression, createNSResolver, evaluate, execCommand,
        queryCommandEnabled, queryCommandIndeterm, queryCommandState,
        queryCommandSupported, queryCommandValue, getElementsByName,
        elementFromPoint, caretRangeFromPoint, getSelection,
        getCSSCanvasContext, getElementsByClassName, hasFocus,
        querySelector, querySelectorAll, webkitCancelFullScreen,
        webkitExitFullscreen, exitPointerLock, webkitGetNamedFlows,
        createTouch, createTouchList, getDoctype, getImplementation,
        getDocumentElement, getInputEncoding, getXmlEncoding,
        setXmlVersion, getXmlVersion, setXmlStandalone, getXmlStandalone,
        getDocumentURI, getDefaultView, getStyleSheets, getContentType,
        setTitle, getTitle, getReferrer, setDomain, getDomain, getURL,
        setCookie, getCookie, setBody, getBody, getHead, getImages,
        getApplets, getLinks, getForms, getAnchors, getLastModified,
        setLocation, getLocation, setCharset, getCharset,
        getDefaultCharset, getReadyState, getCharacterSet,
        getPreferredStylesheetSet, setSelectedStylesheetSet,
        getSelectedStylesheetSet, getActiveElement, getCompatMode,
        getWebkitIsFullScreen, getWebkitFullScreenKeyboardInputAllowed,
        getWebkitCurrentFullScreenElement, getWebkitFullscreenEnabled,
        getWebkitFullscreenElement, getPointerLockElement, getFonts, abort,
        blur, change, click, contextMenu, dblClick, drag, dragEnd,
        dragEnter, dragLeave, dragOver, dragStart, drop, error, focus,
        input, invalid, keyDown, keyPress, keyUp, load, mouseDown,
        mouseEnter, mouseLeave, mouseMove, mouseOut, mouseOver, mouseUp,
        mouseWheel, readyStateChange, scroll, select, submit, wheel,
        beforeCut, cut, beforeCopy, copy, beforePaste, paste, reset,
        search, selectStart, selectionchange, touchStart, touchMove,
        touchEnd, touchCancel, webKitFullscreenChange,
        webKitFullscreenError, pointerlockchange, pointerlockerror,
        securitypolicyviolation, webKitWillRevealBottom,
        webKitWillRevealLeft, webKitWillRevealRight, webKitWillRevealTop,
        getVisibilityState, getHidden, getSecurityPolicy, getCurrentScript,
        getOrigin, Document, castToDocument, gTypeDocument, IsDocument,
        toDocument)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation> 
newDocument :: (MonadDOM m) => m Document
newDocument = liftDOM (Document <$> new (jsg "Document") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement ::
              (MonadDOM m, IsDocument self, ToJSString tagName) =>
                self -> Maybe tagName -> m (Maybe Element)
createElement self tagName
  = liftDOM
      (((toDocument self) ^. jsf "createElement" [toJSVal tagName]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment ::
                       (MonadDOM m, IsDocument self) => self -> m (Maybe DocumentFragment)
createDocumentFragment self
  = liftDOM
      (((toDocument self) ^. jsf "createDocumentFragment" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode ::
               (MonadDOM m, IsDocument self, ToJSString data') =>
                 self -> data' -> m (Maybe Text)
createTextNode self data'
  = liftDOM
      (((toDocument self) ^. jsf "createTextNode" [toJSVal data']) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment ::
              (MonadDOM m, IsDocument self, ToJSString data') =>
                self -> data' -> m (Maybe Comment)
createComment self data'
  = liftDOM
      (((toDocument self) ^. jsf "createComment" [toJSVal data']) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection ::
                   (MonadDOM m, IsDocument self, ToJSString data') =>
                     self -> data' -> m (Maybe CDATASection)
createCDATASection self data'
  = liftDOM
      (((toDocument self) ^. jsf "createCDATASection" [toJSVal data'])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstruction ::
                            (MonadDOM m, IsDocument self, ToJSString target,
                             ToJSString data') =>
                              self -> target -> data' -> m (Maybe ProcessingInstruction)
createProcessingInstruction self target data'
  = liftDOM
      (((toDocument self) ^. jsf "createProcessingInstruction"
          [toJSVal target, toJSVal data'])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute ::
                (MonadDOM m, IsDocument self, ToJSString name) =>
                  self -> name -> m (Maybe Attr)
createAttribute self name
  = liftDOM
      (((toDocument self) ^. jsf "createAttribute" [toJSVal name]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
createEntityReference ::
                      (MonadDOM m, IsDocument self, ToJSString name) =>
                        self -> name -> m (Maybe EntityReference)
createEntityReference self name
  = liftDOM
      (((toDocument self) ^. jsf "createEntityReference" [toJSVal name])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadDOM m, IsDocument self, ToJSString tagname) =>
                       self -> tagname -> m (Maybe NodeList)
getElementsByTagName self tagname
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByTagName"
          [toJSVal tagname])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode ::
           (MonadDOM m, IsDocument self, IsNode importedNode) =>
             self -> Maybe importedNode -> Bool -> m (Maybe Node)
importNode self importedNode deep
  = liftDOM
      (((toDocument self) ^. jsf "importNode"
          [toJSVal importedNode, toJSVal deep])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS ::
                (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                 ToJSString qualifiedName) =>
                  self ->
                    Maybe namespaceURI -> Maybe qualifiedName -> m (Maybe Element)
createElementNS self namespaceURI qualifiedName
  = liftDOM
      (((toDocument self) ^. jsf "createElementNS"
          [toJSVal namespaceURI, toJSVal qualifiedName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS ::
                  (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                   ToJSString qualifiedName) =>
                    self -> Maybe namespaceURI -> Maybe qualifiedName -> m (Maybe Attr)
createAttributeNS self namespaceURI qualifiedName
  = liftDOM
      (((toDocument self) ^. jsf "createAttributeNS"
          [toJSVal namespaceURI, toJSVal qualifiedName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> Maybe namespaceURI -> localName -> m (Maybe NodeList)
getElementsByTagNameNS self namespaceURI localName
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByTagNameNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementById Mozilla Document.getElementById documentation> 
getElementById ::
               (MonadDOM m, IsDocument self, ToJSString elementId) =>
                 self -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftDOM
      (((toDocument self) ^. jsf "getElementById" [toJSVal elementId])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode ::
          (MonadDOM m, IsDocument self, IsNode source) =>
            self -> Maybe source -> m (Maybe Node)
adoptNode self source
  = liftDOM
      (((toDocument self) ^. jsf "adoptNode" [toJSVal source]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent ::
            (MonadDOM m, IsDocument self, ToJSString eventType) =>
              self -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftDOM
      (((toDocument self) ^. jsf "createEvent" [toJSVal eventType]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange ::
            (MonadDOM m, IsDocument self) => self -> m (Maybe Range)
createRange self
  = liftDOM
      (((toDocument self) ^. jsf "createRange" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator ::
                   (MonadDOM m, IsDocument self, IsNode root) =>
                     self ->
                       Maybe root ->
                         Word -> Maybe NodeFilter -> Bool -> m (Maybe NodeIterator)
createNodeIterator self root whatToShow filter
  expandEntityReferences
  = liftDOM
      (((toDocument self) ^. jsf "createNodeIterator"
          [toJSVal root, toJSVal whatToShow, toJSVal filter,
           toJSVal expandEntityReferences])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker ::
                 (MonadDOM m, IsDocument self, IsNode root) =>
                   self ->
                     Maybe root ->
                       Word -> Maybe NodeFilter -> Bool -> m (Maybe TreeWalker)
createTreeWalker self root whatToShow filter expandEntityReferences
  = liftDOM
      (((toDocument self) ^. jsf "createTreeWalker"
          [toJSVal root, toJSVal whatToShow, toJSVal filter,
           toJSVal expandEntityReferences])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle ::
                 (MonadDOM m, IsDocument self, IsElement element,
                  ToJSString pseudoElement) =>
                   self ->
                     Maybe element -> pseudoElement -> m (Maybe CSSStyleDeclaration)
getOverrideStyle self element pseudoElement
  = liftDOM
      (((toDocument self) ^. jsf "getOverrideStyle"
          [toJSVal element, toJSVal pseudoElement])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression ::
                 (MonadDOM m, IsDocument self, ToJSString expression) =>
                   self ->
                     expression -> Maybe XPathNSResolver -> m (Maybe XPathExpression)
createExpression self expression resolver
  = liftDOM
      (((toDocument self) ^. jsf "createExpression"
          [toJSVal expression, toJSVal resolver])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver ::
                 (MonadDOM m, IsDocument self, IsNode nodeResolver) =>
                   self -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
createNSResolver self nodeResolver
  = liftDOM
      (((toDocument self) ^. jsf "createNSResolver"
          [toJSVal nodeResolver])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate ::
         (MonadDOM m, IsDocument self, ToJSString expression,
          IsNode contextNode) =>
           self ->
             expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self expression contextNode resolver type' inResult
  = liftDOM
      (((toDocument self) ^. jsf "evaluate"
          [toJSVal expression, toJSVal contextNode, toJSVal resolver,
           toJSVal type', toJSVal inResult])
         >>= fromJSVal)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
queryCommandEnabled ::
                    (MonadDOM m, IsDocument self, ToJSString command) =>
                      self -> command -> m Bool
queryCommandEnabled self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandEnabled" [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
queryCommandIndeterm ::
                     (MonadDOM m, IsDocument self, ToJSString command) =>
                       self -> command -> m Bool
queryCommandIndeterm self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandIndeterm"
          [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
queryCommandState ::
                  (MonadDOM m, IsDocument self, ToJSString command) =>
                    self -> command -> m Bool
queryCommandState self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandState" [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
queryCommandSupported ::
                      (MonadDOM m, IsDocument self, ToJSString command) =>
                        self -> command -> m Bool
queryCommandSupported self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandSupported"
          [toJSVal command])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
queryCommandValue ::
                  (MonadDOM m, IsDocument self, ToJSString command,
                   FromJSString result) =>
                    self -> command -> m result
queryCommandValue self command
  = liftDOM
      (((toDocument self) ^. jsf "queryCommandValue" [toJSVal command])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName ::
                  (MonadDOM m, IsDocument self, ToJSString elementName) =>
                    self -> elementName -> m (Maybe NodeList)
getElementsByName self elementName
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByName"
          [toJSVal elementName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
elementFromPoint ::
                 (MonadDOM m, IsDocument self) =>
                   self -> Int -> Int -> m (Maybe Element)
elementFromPoint self x y
  = liftDOM
      (((toDocument self) ^. jsf "elementFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint ::
                    (MonadDOM m, IsDocument self) =>
                      self -> Int -> Int -> m (Maybe Range)
caretRangeFromPoint self x y
  = liftDOM
      (((toDocument self) ^. jsf "caretRangeFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection ::
             (MonadDOM m, IsDocument self) => self -> m (Maybe Selection)
getSelection self
  = liftDOM
      (((toDocument self) ^. jsf "getSelection" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContext ::
                    (MonadDOM m, IsDocument self, ToJSString contextId,
                     ToJSString name) =>
                      self ->
                        contextId -> name -> Int -> Int -> m (Maybe CanvasRenderingContext)
getCSSCanvasContext self contextId name width height
  = liftDOM
      (((toDocument self) ^. jsf "getCSSCanvasContext"
          [toJSVal contextId, toJSVal name, toJSVal width, toJSVal height])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadDOM m, IsDocument self, ToJSString tagname) =>
                         self -> tagname -> m (Maybe NodeList)
getElementsByClassName self tagname
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByClassName"
          [toJSVal tagname])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus :: (MonadDOM m, IsDocument self) => self -> m Bool
hasFocus self
  = liftDOM (((toDocument self) ^. jsf "hasFocus" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
querySelector ::
              (MonadDOM m, IsDocument self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftDOM
      (((toDocument self) ^. jsf "querySelector" [toJSVal selectors]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadDOM m, IsDocument self, ToJSString selectors) =>
                   self -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftDOM
      (((toDocument self) ^. jsf "querySelectorAll" [toJSVal selectors])
         >>= fromJSVal)

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
                    (MonadDOM m, IsDocument self) =>
                      self -> m (Maybe DOMNamedFlowCollection)
webkitGetNamedFlows self
  = liftDOM
      (((toDocument self) ^. jsf "webkitGetNamedFlows" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch ::
            (MonadDOM m, IsDocument self, IsEventTarget target) =>
              self ->
                Maybe Window ->
                  Maybe target ->
                    Int ->
                      Int ->
                        Int ->
                          Int -> Int -> Int -> Int -> Float -> Float -> m (Maybe Touch)
createTouch self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftDOM
      (((toDocument self) ^. jsf "createTouch"
          [toJSVal window, toJSVal target, toJSVal identifier, toJSVal pageX,
           toJSVal pageY, toJSVal screenX, toJSVal screenY,
           toJSVal webkitRadiusX, toJSVal webkitRadiusY,
           toJSVal webkitRotationAngle, toJSVal webkitForce])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList ::
                (MonadDOM m, IsDocument self) => self -> m (Maybe TouchList)
createTouchList self
  = liftDOM
      (((toDocument self) ^. jsf "createTouchList" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctype ::
           (MonadDOM m, IsDocument self) => self -> m (Maybe DocumentType)
getDoctype self
  = liftDOM (((toDocument self) ^. js "doctype") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
getImplementation ::
                  (MonadDOM m, IsDocument self) =>
                    self -> m (Maybe DOMImplementation)
getImplementation self
  = liftDOM
      (((toDocument self) ^. js "implementation") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElement ::
                   (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getDocumentElement self
  = liftDOM
      (((toDocument self) ^. js "documentElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
getInputEncoding ::
                 (MonadDOM m, IsDocument self, FromJSString result) =>
                   self -> m (Maybe result)
getInputEncoding self
  = liftDOM
      (((toDocument self) ^. js "inputEncoding") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncoding ::
               (MonadDOM m, IsDocument self, FromJSString result) =>
                 self -> m (Maybe result)
getXmlEncoding self
  = liftDOM
      (((toDocument self) ^. js "xmlEncoding") >>= fromMaybeJSString)

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
  = liftDOM
      (((toDocument self) ^. js "xmlVersion") >>= fromMaybeJSString)

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
                 self -> m (Maybe result)
getDocumentURI self
  = liftDOM
      (((toDocument self) ^. js "documentURI") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultView ::
               (MonadDOM m, IsDocument self) => self -> m (Maybe Window)
getDefaultView self
  = liftDOM (((toDocument self) ^. js "defaultView") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheets ::
               (MonadDOM m, IsDocument self) => self -> m (Maybe StyleSheetList)
getStyleSheets self
  = liftDOM (((toDocument self) ^. js "styleSheets") >>= fromJSVal)

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
           self -> Maybe val -> m ()
setTitle self val
  = liftDOM ((toDocument self) ^. jss "title" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitle ::
         (MonadDOM m, IsDocument self, FromJSString result) =>
           self -> m (Maybe result)
getTitle self
  = liftDOM (((toDocument self) ^. js "title") >>= fromMaybeJSString)

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
            self -> Maybe val -> m ()
setDomain self val
  = liftDOM ((toDocument self) ^. jss "domain" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
getDomain ::
          (MonadDOM m, IsDocument self, FromJSString result) =>
            self -> m (Maybe result)
getDomain self
  = liftDOM
      (((toDocument self) ^. js "domain") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.URL Mozilla Document.URL documentation> 
getURL ::
       (MonadDOM m, IsDocument self, FromJSString result) =>
         self -> m result
getURL self
  = liftDOM (((toDocument self) ^. js "URL") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
setCookie ::
          (MonadDOM m, IsDocument self, ToJSString val) =>
            self -> Maybe val -> m ()
setCookie self val
  = liftDOM ((toDocument self) ^. jss "cookie" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
getCookie ::
          (MonadDOM m, IsDocument self, FromJSString result) =>
            self -> m (Maybe result)
getCookie self
  = liftDOM
      (((toDocument self) ^. js "cookie") >>= fromMaybeJSString)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHead ::
        (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLHeadElement)
getHead self
  = liftDOM (((toDocument self) ^. js "head") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
getImages ::
          (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getImages self
  = liftDOM (((toDocument self) ^. js "images") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getApplets ::
           (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getApplets self
  = liftDOM (((toDocument self) ^. js "applets") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinks ::
         (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getLinks self
  = liftDOM (((toDocument self) ^. js "links") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getForms ::
         (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getForms self
  = liftDOM (((toDocument self) ^. js "forms") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchors ::
           (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getAnchors self
  = liftDOM (((toDocument self) ^. js "anchors") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.lastModified Mozilla Document.lastModified documentation> 
getLastModified ::
                (MonadDOM m, IsDocument self, FromJSString result) =>
                  self -> m result
getLastModified self
  = liftDOM
      (((toDocument self) ^. js "lastModified") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
setLocation ::
            (MonadDOM m, IsDocument self) => self -> Maybe Location -> m ()
setLocation self val
  = liftDOM ((toDocument self) ^. jss "location" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocation ::
            (MonadDOM m, IsDocument self) => self -> m (Maybe Location)
getLocation self
  = liftDOM (((toDocument self) ^. js "location") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
setCharset ::
           (MonadDOM m, IsDocument self, ToJSString val) =>
             self -> Maybe val -> m ()
setCharset self val
  = liftDOM ((toDocument self) ^. jss "charset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
getCharset ::
           (MonadDOM m, IsDocument self, FromJSString result) =>
             self -> m (Maybe result)
getCharset self
  = liftDOM
      (((toDocument self) ^. js "charset") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultCharset Mozilla Document.defaultCharset documentation> 
getDefaultCharset ::
                  (MonadDOM m, IsDocument self, FromJSString result) =>
                    self -> m (Maybe result)
getDefaultCharset self
  = liftDOM
      (((toDocument self) ^. js "defaultCharset") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyState ::
              (MonadDOM m, IsDocument self, FromJSString result) =>
                self -> m (Maybe result)
getReadyState self
  = liftDOM
      (((toDocument self) ^. js "readyState") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSet ::
                (MonadDOM m, IsDocument self, FromJSString result) =>
                  self -> m (Maybe result)
getCharacterSet self
  = liftDOM
      (((toDocument self) ^. js "characterSet") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSet ::
                          (MonadDOM m, IsDocument self, FromJSString result) =>
                            self -> m (Maybe result)
getPreferredStylesheetSet self
  = liftDOM
      (((toDocument self) ^. js "preferredStylesheetSet") >>=
         fromMaybeJSString)

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
      (((toDocument self) ^. js "selectedStylesheetSet") >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.activeElement Mozilla Document.activeElement documentation> 
getActiveElement ::
                 (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getActiveElement self
  = liftDOM (((toDocument self) ^. js "activeElement") >>= fromJSVal)

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
                                  (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getWebkitCurrentFullScreenElement self
  = liftDOM
      (((toDocument self) ^. js "webkitCurrentFullScreenElement") >>=
         fromJSVal)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.pointerLockElement Mozilla Document.pointerLockElement documentation> 
getPointerLockElement ::
                      (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getPointerLockElement self
  = liftDOM
      (((toDocument self) ^. js "pointerLockElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.fonts Mozilla Document.fonts documentation> 
getFonts ::
         (MonadDOM m, IsDocument self) => self -> m (Maybe FontLoader)
getFonts self
  = liftDOM (((toDocument self) ^. js "fonts") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onabort Mozilla Document.onabort documentation> 
abort ::
      (IsDocument self, IsEventTarget self) => EventName self UIEvent
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onblur Mozilla Document.onblur documentation> 
blur ::
     (IsDocument self, IsEventTarget self) => EventName self FocusEvent
blur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onchange Mozilla Document.onchange documentation> 
change ::
       (IsDocument self, IsEventTarget self) => EventName self Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onclick Mozilla Document.onclick documentation> 
click ::
      (IsDocument self, IsEventTarget self) => EventName self MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncontextmenu Mozilla Document.oncontextmenu documentation> 
contextMenu ::
            (IsDocument self, IsEventTarget self) => EventName self MouseEvent
contextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondblclick Mozilla Document.ondblclick documentation> 
dblClick ::
         (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondrag Mozilla Document.ondrag documentation> 
drag ::
     (IsDocument self, IsEventTarget self) => EventName self MouseEvent
drag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragend Mozilla Document.ondragend documentation> 
dragEnd ::
        (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragenter Mozilla Document.ondragenter documentation> 
dragEnter ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragleave Mozilla Document.ondragleave documentation> 
dragLeave ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragover Mozilla Document.ondragover documentation> 
dragOver ::
         (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragstart Mozilla Document.ondragstart documentation> 
dragStart ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondrop Mozilla Document.ondrop documentation> 
drop ::
     (IsDocument self, IsEventTarget self) => EventName self MouseEvent
drop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onerror Mozilla Document.onerror documentation> 
error ::
      (IsDocument self, IsEventTarget self) => EventName self UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onfocus Mozilla Document.onfocus documentation> 
focus ::
      (IsDocument self, IsEventTarget self) => EventName self FocusEvent
focus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oninput Mozilla Document.oninput documentation> 
input ::
      (IsDocument self, IsEventTarget self) => EventName self Event
input = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oninvalid Mozilla Document.oninvalid documentation> 
invalid ::
        (IsDocument self, IsEventTarget self) => EventName self Event
invalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onkeydown Mozilla Document.onkeydown documentation> 
keyDown ::
        (IsDocument self, IsEventTarget self) =>
          EventName self KeyboardEvent
keyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onkeypress Mozilla Document.onkeypress documentation> 
keyPress ::
         (IsDocument self, IsEventTarget self) =>
           EventName self KeyboardEvent
keyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onkeyup Mozilla Document.onkeyup documentation> 
keyUp ::
      (IsDocument self, IsEventTarget self) =>
        EventName self KeyboardEvent
keyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onload Mozilla Document.onload documentation> 
load ::
     (IsDocument self, IsEventTarget self) => EventName self UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmousedown Mozilla Document.onmousedown documentation> 
mouseDown ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseenter Mozilla Document.onmouseenter documentation> 
mouseEnter ::
           (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseleave Mozilla Document.onmouseleave documentation> 
mouseLeave ::
           (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmousemove Mozilla Document.onmousemove documentation> 
mouseMove ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseout Mozilla Document.onmouseout documentation> 
mouseOut ::
         (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseover Mozilla Document.onmouseover documentation> 
mouseOver ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseup Mozilla Document.onmouseup documentation> 
mouseUp ::
        (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmousewheel Mozilla Document.onmousewheel documentation> 
mouseWheel ::
           (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onreadystatechange Mozilla Document.onreadystatechange documentation> 
readyStateChange ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
readyStateChange = unsafeEventName (toJSString "readystatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onscroll Mozilla Document.onscroll documentation> 
scroll ::
       (IsDocument self, IsEventTarget self) => EventName self UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselect Mozilla Document.onselect documentation> 
select ::
       (IsDocument self, IsEventTarget self) => EventName self UIEvent
select = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onsubmit Mozilla Document.onsubmit documentation> 
submit ::
       (IsDocument self, IsEventTarget self) => EventName self Event
submit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwheel Mozilla Document.onwheel documentation> 
wheel ::
      (IsDocument self, IsEventTarget self) => EventName self WheelEvent
wheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforecut Mozilla Document.onbeforecut documentation> 
beforeCut ::
          (IsDocument self, IsEventTarget self) => EventName self Event
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncut Mozilla Document.oncut documentation> 
cut ::
    (IsDocument self, IsEventTarget self) => EventName self Event
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforecopy Mozilla Document.onbeforecopy documentation> 
beforeCopy ::
           (IsDocument self, IsEventTarget self) => EventName self Event
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncopy Mozilla Document.oncopy documentation> 
copy ::
     (IsDocument self, IsEventTarget self) => EventName self Event
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforepaste Mozilla Document.onbeforepaste documentation> 
beforePaste ::
            (IsDocument self, IsEventTarget self) => EventName self Event
beforePaste = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpaste Mozilla Document.onpaste documentation> 
paste ::
      (IsDocument self, IsEventTarget self) => EventName self Event
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onreset Mozilla Document.onreset documentation> 
reset ::
      (IsDocument self, IsEventTarget self) => EventName self Event
reset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onsearch Mozilla Document.onsearch documentation> 
search ::
       (IsDocument self, IsEventTarget self) => EventName self Event
search = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectstart Mozilla Document.onselectstart documentation> 
selectStart ::
            (IsDocument self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectionchange Mozilla Document.onselectionchange documentation> 
selectionchange ::
                (IsDocument self, IsEventTarget self) =>
                  EventName self onselectionchange
selectionchange = unsafeEventName (toJSString "selectionchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchstart Mozilla Document.ontouchstart documentation> 
touchStart ::
           (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchmove Mozilla Document.ontouchmove documentation> 
touchMove ::
          (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchend Mozilla Document.ontouchend documentation> 
touchEnd ::
         (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchcancel Mozilla Document.ontouchcancel documentation> 
touchCancel ::
            (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchCancel = unsafeEventName (toJSString "touchcancel")

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpointerlockchange Mozilla Document.onpointerlockchange documentation> 
pointerlockchange ::
                  (IsDocument self, IsEventTarget self) => EventName self Event
pointerlockchange
  = unsafeEventName (toJSString "pointerlockchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpointerlockerror Mozilla Document.onpointerlockerror documentation> 
pointerlockerror ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
pointerlockerror = unsafeEventName (toJSString "pointerlockerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onsecuritypolicyviolation Mozilla Document.onsecuritypolicyviolation documentation> 
securitypolicyviolation ::
                        (IsDocument self, IsEventTarget self) =>
                          EventName self onsecuritypolicyviolation
securitypolicyviolation
  = unsafeEventName (toJSString "securitypolicyviolation")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealbottom Mozilla Document.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom ::
                       (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealleft Mozilla Document.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft ::
                     (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealright Mozilla Document.onwebkitwillrevealright documentation> 
webKitWillRevealRight ::
                      (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealtop Mozilla Document.onwebkitwillrevealtop documentation> 
webKitWillRevealTop ::
                    (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.visibilityState Mozilla Document.visibilityState documentation> 
getVisibilityState ::
                   (MonadDOM m, IsDocument self, FromJSString result) =>
                     self -> m result
getVisibilityState self
  = liftDOM
      (((toDocument self) ^. js "visibilityState") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hidden Mozilla Document.hidden documentation> 
getHidden :: (MonadDOM m, IsDocument self) => self -> m Bool
getHidden self
  = liftDOM (((toDocument self) ^. js "hidden") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.securityPolicy Mozilla Document.securityPolicy documentation> 
getSecurityPolicy ::
                  (MonadDOM m, IsDocument self) => self -> m (Maybe SecurityPolicy)
getSecurityPolicy self
  = liftDOM
      (((toDocument self) ^. js "securityPolicy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScript ::
                 (MonadDOM m, IsDocument self) =>
                   self -> m (Maybe HTMLScriptElement)
getCurrentScript self
  = liftDOM (((toDocument self) ^. js "currentScript") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.origin Mozilla Document.origin documentation> 
getOrigin ::
          (MonadDOM m, IsDocument self, FromJSString result) =>
            self -> m result
getOrigin self
  = liftDOM
      (((toDocument self) ^. js "origin") >>= fromJSValUnchecked)
