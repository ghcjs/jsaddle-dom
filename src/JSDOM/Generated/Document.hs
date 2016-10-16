{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Document
       (newDocument, createElement, createElement_, createElementUnsafe,
        createElementUnchecked, createDocumentFragment,
        createDocumentFragment_, createDocumentFragmentUnsafe,
        createDocumentFragmentUnchecked, createTextNode, createTextNode_,
        createTextNodeUnsafe, createTextNodeUnchecked, createComment,
        createComment_, createCommentUnsafe, createCommentUnchecked,
        createCDATASection, createCDATASection_, createCDATASectionUnsafe,
        createCDATASectionUnchecked, createProcessingInstruction,
        createProcessingInstruction_, createProcessingInstructionUnsafe,
        createProcessingInstructionUnchecked, createAttribute,
        createAttribute_, createAttributeUnsafe, createAttributeUnchecked,
        createEntityReference, createEntityReference_,
        createEntityReferenceUnsafe, createEntityReferenceUnchecked,
        getElementsByTagName, getElementsByTagName_,
        getElementsByTagNameUnsafe, getElementsByTagNameUnchecked,
        importNode, importNode_, importNodeUnsafe, importNodeUnchecked,
        createElementNS, createElementNS_, createElementNSUnsafe,
        createElementNSUnchecked, createAttributeNS, createAttributeNS_,
        createAttributeNSUnsafe, createAttributeNSUnchecked,
        getElementsByTagNameNS, getElementsByTagNameNS_,
        getElementsByTagNameNSUnsafe, getElementsByTagNameNSUnchecked,
        getElementById, getElementById_, getElementByIdUnsafe,
        getElementByIdUnchecked, adoptNode, adoptNode_, adoptNodeUnsafe,
        adoptNodeUnchecked, createEvent, createEvent_, createEventUnsafe,
        createEventUnchecked, createRange, createRange_, createRangeUnsafe,
        createRangeUnchecked, createNodeIterator, createNodeIterator_,
        createNodeIteratorUnsafe, createNodeIteratorUnchecked,
        createTreeWalker, createTreeWalker_, createTreeWalkerUnsafe,
        createTreeWalkerUnchecked, getOverrideStyle, getOverrideStyle_,
        getOverrideStyleUnsafe, getOverrideStyleUnchecked,
        createExpression, createExpression_, createExpressionUnsafe,
        createExpressionUnchecked, createNSResolver, createNSResolver_,
        createNSResolverUnsafe, createNSResolverUnchecked, evaluate,
        evaluate_, evaluateUnsafe, evaluateUnchecked, execCommand,
        execCommand_, queryCommandEnabled, queryCommandEnabled_,
        queryCommandIndeterm, queryCommandIndeterm_, queryCommandState,
        queryCommandState_, queryCommandSupported, queryCommandSupported_,
        queryCommandValue, queryCommandValue_, getElementsByName,
        getElementsByName_, getElementsByNameUnsafe,
        getElementsByNameUnchecked, elementFromPoint, elementFromPoint_,
        elementFromPointUnsafe, elementFromPointUnchecked,
        caretRangeFromPoint, caretRangeFromPoint_,
        caretRangeFromPointUnsafe, caretRangeFromPointUnchecked,
        getSelection, getSelection_, getSelectionUnsafe,
        getSelectionUnchecked, getCSSCanvasContext, getCSSCanvasContext_,
        getCSSCanvasContextUnsafe, getCSSCanvasContextUnchecked,
        getElementsByClassName, getElementsByClassName_,
        getElementsByClassNameUnsafe, getElementsByClassNameUnchecked,
        hasFocus, hasFocus_, querySelector, querySelector_,
        querySelectorUnsafe, querySelectorUnchecked, querySelectorAll,
        querySelectorAll_, querySelectorAllUnsafe,
        querySelectorAllUnchecked, webkitCancelFullScreen,
        webkitExitFullscreen, exitPointerLock, webkitGetNamedFlows,
        webkitGetNamedFlows_, webkitGetNamedFlowsUnsafe,
        webkitGetNamedFlowsUnchecked, createTouch, createTouch_,
        createTouchUnsafe, createTouchUnchecked, createTouchList,
        createTouchList_, createTouchListUnsafe, createTouchListUnchecked,
        getDoctype, getDoctypeUnsafe, getDoctypeUnchecked,
        getImplementation, getImplementationUnsafe,
        getImplementationUnchecked, getDocumentElement,
        getDocumentElementUnsafe, getDocumentElementUnchecked,
        getInputEncoding, getInputEncodingUnsafe,
        getInputEncodingUnchecked, getXmlEncoding, getXmlEncodingUnsafe,
        getXmlEncodingUnchecked, setXmlVersion, getXmlVersion,
        getXmlVersionUnsafe, getXmlVersionUnchecked, setXmlStandalone,
        getXmlStandalone, getDocumentURI, getDocumentURIUnsafe,
        getDocumentURIUnchecked, getDefaultView, getDefaultViewUnsafe,
        getDefaultViewUnchecked, getStyleSheets, getStyleSheetsUnsafe,
        getStyleSheetsUnchecked, getContentType, setTitle, getTitle,
        getTitleUnsafe, getTitleUnchecked, getReferrer, setDomain,
        getDomain, getDomainUnsafe, getDomainUnchecked, getURL, setCookie,
        getCookie, getCookieUnsafe, getCookieUnchecked, setBody, getBody,
        getBodyUnsafe, getBodyUnchecked, getHead, getHeadUnsafe,
        getHeadUnchecked, getImages, getImagesUnsafe, getImagesUnchecked,
        getApplets, getAppletsUnsafe, getAppletsUnchecked, getLinks,
        getLinksUnsafe, getLinksUnchecked, getForms, getFormsUnsafe,
        getFormsUnchecked, getAnchors, getAnchorsUnsafe,
        getAnchorsUnchecked, getLastModified, setLocation, getLocation,
        getLocationUnsafe, getLocationUnchecked, setCharset, getCharset,
        getCharsetUnsafe, getCharsetUnchecked, getDefaultCharset,
        getDefaultCharsetUnsafe, getDefaultCharsetUnchecked, getReadyState,
        getReadyStateUnsafe, getReadyStateUnchecked, getCharacterSet,
        getCharacterSetUnsafe, getCharacterSetUnchecked,
        getPreferredStylesheetSet, getPreferredStylesheetSetUnsafe,
        getPreferredStylesheetSetUnchecked, setSelectedStylesheetSet,
        getSelectedStylesheetSet, getSelectedStylesheetSetUnsafe,
        getSelectedStylesheetSetUnchecked, getActiveElement,
        getActiveElementUnsafe, getActiveElementUnchecked, getCompatMode,
        getWebkitIsFullScreen, getWebkitFullScreenKeyboardInputAllowed,
        getWebkitCurrentFullScreenElement,
        getWebkitCurrentFullScreenElementUnsafe,
        getWebkitCurrentFullScreenElementUnchecked,
        getWebkitFullscreenEnabled, getWebkitFullscreenElement,
        getWebkitFullscreenElementUnsafe,
        getWebkitFullscreenElementUnchecked, getPointerLockElement,
        getPointerLockElementUnsafe, getPointerLockElementUnchecked,
        getFonts, getFontsUnsafe, getFontsUnchecked, abort, blur, change,
        click, contextMenu, dblClick, drag, dragEnd, dragEnter, dragLeave,
        dragOver, dragStart, drop, error, focus, input, invalid, keyDown,
        keyPress, keyUp, load, mouseDown, mouseEnter, mouseLeave,
        mouseMove, mouseOut, mouseOver, mouseUp, mouseWheel,
        readyStateChange, scroll, select, submit, wheel, beforeCut, cut,
        beforeCopy, copy, beforePaste, paste, reset, search, selectStart,
        selectionchange, touchStart, touchMove, touchEnd, touchCancel,
        webKitFullscreenChange, webKitFullscreenError, pointerlockchange,
        pointerlockerror, securitypolicyviolation, webKitWillRevealBottom,
        webKitWillRevealLeft, webKitWillRevealRight, webKitWillRevealTop,
        getVisibilityState, getHidden, getSecurityPolicy,
        getSecurityPolicyUnsafe, getSecurityPolicyUnchecked,
        getCurrentScript, getCurrentScriptUnsafe,
        getCurrentScriptUnchecked, getOrigin, Document(..), gTypeDocument,
        IsDocument, toDocument)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement_ ::
               (MonadDOM m, IsDocument self, ToJSString tagName) =>
                 self -> Maybe tagName -> m ()
createElement_ self tagName
  = liftDOM
      (void ((toDocument self) ^. jsf "createElement" [toJSVal tagName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElementUnsafe ::
                    (MonadDOM m, IsDocument self, ToJSString tagName, HasCallStack) =>
                      self -> Maybe tagName -> m Element
createElementUnsafe self tagName
  = liftDOM
      ((((toDocument self) ^. jsf "createElement" [toJSVal tagName]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElementUnchecked ::
                       (MonadDOM m, IsDocument self, ToJSString tagName) =>
                         self -> Maybe tagName -> m Element
createElementUnchecked self tagName
  = liftDOM
      (((toDocument self) ^. jsf "createElement" [toJSVal tagName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment ::
                       (MonadDOM m, IsDocument self) => self -> m (Maybe DocumentFragment)
createDocumentFragment self
  = liftDOM
      (((toDocument self) ^. jsf "createDocumentFragment" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment_ ::
                        (MonadDOM m, IsDocument self) => self -> m ()
createDocumentFragment_ self
  = liftDOM
      (void ((toDocument self) ^. jsf "createDocumentFragment" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragmentUnsafe ::
                             (MonadDOM m, IsDocument self, HasCallStack) =>
                               self -> m DocumentFragment
createDocumentFragmentUnsafe self
  = liftDOM
      ((((toDocument self) ^. jsf "createDocumentFragment" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragmentUnchecked ::
                                (MonadDOM m, IsDocument self) => self -> m DocumentFragment
createDocumentFragmentUnchecked self
  = liftDOM
      (((toDocument self) ^. jsf "createDocumentFragment" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode ::
               (MonadDOM m, IsDocument self, ToJSString data') =>
                 self -> data' -> m (Maybe Text)
createTextNode self data'
  = liftDOM
      (((toDocument self) ^. jsf "createTextNode" [toJSVal data']) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode_ ::
                (MonadDOM m, IsDocument self, ToJSString data') =>
                  self -> data' -> m ()
createTextNode_ self data'
  = liftDOM
      (void ((toDocument self) ^. jsf "createTextNode" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNodeUnsafe ::
                     (MonadDOM m, IsDocument self, ToJSString data', HasCallStack) =>
                       self -> data' -> m Text
createTextNodeUnsafe self data'
  = liftDOM
      ((((toDocument self) ^. jsf "createTextNode" [toJSVal data']) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNodeUnchecked ::
                        (MonadDOM m, IsDocument self, ToJSString data') =>
                          self -> data' -> m Text
createTextNodeUnchecked self data'
  = liftDOM
      (((toDocument self) ^. jsf "createTextNode" [toJSVal data']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment ::
              (MonadDOM m, IsDocument self, ToJSString data') =>
                self -> data' -> m (Maybe Comment)
createComment self data'
  = liftDOM
      (((toDocument self) ^. jsf "createComment" [toJSVal data']) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment_ ::
               (MonadDOM m, IsDocument self, ToJSString data') =>
                 self -> data' -> m ()
createComment_ self data'
  = liftDOM
      (void ((toDocument self) ^. jsf "createComment" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createCommentUnsafe ::
                    (MonadDOM m, IsDocument self, ToJSString data', HasCallStack) =>
                      self -> data' -> m Comment
createCommentUnsafe self data'
  = liftDOM
      ((((toDocument self) ^. jsf "createComment" [toJSVal data']) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createCommentUnchecked ::
                       (MonadDOM m, IsDocument self, ToJSString data') =>
                         self -> data' -> m Comment
createCommentUnchecked self data'
  = liftDOM
      (((toDocument self) ^. jsf "createComment" [toJSVal data']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection ::
                   (MonadDOM m, IsDocument self, ToJSString data') =>
                     self -> data' -> m (Maybe CDATASection)
createCDATASection self data'
  = liftDOM
      (((toDocument self) ^. jsf "createCDATASection" [toJSVal data'])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection_ ::
                    (MonadDOM m, IsDocument self, ToJSString data') =>
                      self -> data' -> m ()
createCDATASection_ self data'
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createCDATASection" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASectionUnsafe ::
                         (MonadDOM m, IsDocument self, ToJSString data', HasCallStack) =>
                           self -> data' -> m CDATASection
createCDATASectionUnsafe self data'
  = liftDOM
      ((((toDocument self) ^. jsf "createCDATASection" [toJSVal data'])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASectionUnchecked ::
                            (MonadDOM m, IsDocument self, ToJSString data') =>
                              self -> data' -> m CDATASection
createCDATASectionUnchecked self data'
  = liftDOM
      (((toDocument self) ^. jsf "createCDATASection" [toJSVal data'])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstructionUnsafe ::
                                  (MonadDOM m, IsDocument self, ToJSString target, ToJSString data',
                                   HasCallStack) =>
                                    self -> target -> data' -> m ProcessingInstruction
createProcessingInstructionUnsafe self target data'
  = liftDOM
      ((((toDocument self) ^. jsf "createProcessingInstruction"
           [toJSVal target, toJSVal data'])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstructionUnchecked ::
                                     (MonadDOM m, IsDocument self, ToJSString target,
                                      ToJSString data') =>
                                       self -> target -> data' -> m ProcessingInstruction
createProcessingInstructionUnchecked self target data'
  = liftDOM
      (((toDocument self) ^. jsf "createProcessingInstruction"
          [toJSVal target, toJSVal data'])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute ::
                (MonadDOM m, IsDocument self, ToJSString name) =>
                  self -> name -> m (Maybe Attr)
createAttribute self name
  = liftDOM
      (((toDocument self) ^. jsf "createAttribute" [toJSVal name]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute_ ::
                 (MonadDOM m, IsDocument self, ToJSString name) =>
                   self -> name -> m ()
createAttribute_ self name
  = liftDOM
      (void ((toDocument self) ^. jsf "createAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttributeUnsafe ::
                      (MonadDOM m, IsDocument self, ToJSString name, HasCallStack) =>
                        self -> name -> m Attr
createAttributeUnsafe self name
  = liftDOM
      ((((toDocument self) ^. jsf "createAttribute" [toJSVal name]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttributeUnchecked ::
                         (MonadDOM m, IsDocument self, ToJSString name) =>
                           self -> name -> m Attr
createAttributeUnchecked self name
  = liftDOM
      (((toDocument self) ^. jsf "createAttribute" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
createEntityReference ::
                      (MonadDOM m, IsDocument self, ToJSString name) =>
                        self -> name -> m (Maybe EntityReference)
createEntityReference self name
  = liftDOM
      (((toDocument self) ^. jsf "createEntityReference" [toJSVal name])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
createEntityReference_ ::
                       (MonadDOM m, IsDocument self, ToJSString name) =>
                         self -> name -> m ()
createEntityReference_ self name
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createEntityReference" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
createEntityReferenceUnsafe ::
                            (MonadDOM m, IsDocument self, ToJSString name, HasCallStack) =>
                              self -> name -> m EntityReference
createEntityReferenceUnsafe self name
  = liftDOM
      ((((toDocument self) ^. jsf "createEntityReference" [toJSVal name])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
createEntityReferenceUnchecked ::
                               (MonadDOM m, IsDocument self, ToJSString name) =>
                                 self -> name -> m EntityReference
createEntityReferenceUnchecked self name
  = liftDOM
      (((toDocument self) ^. jsf "createEntityReference" [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadDOM m, IsDocument self, ToJSString tagname) =>
                       self -> tagname -> m (Maybe NodeList)
getElementsByTagName self tagname
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByTagName"
          [toJSVal tagname])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName_ ::
                      (MonadDOM m, IsDocument self, ToJSString tagname) =>
                        self -> tagname -> m ()
getElementsByTagName_ self tagname
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementsByTagName"
            [toJSVal tagname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagNameUnsafe ::
                           (MonadDOM m, IsDocument self, ToJSString tagname, HasCallStack) =>
                             self -> tagname -> m NodeList
getElementsByTagNameUnsafe self tagname
  = liftDOM
      ((((toDocument self) ^. jsf "getElementsByTagName"
           [toJSVal tagname])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagNameUnchecked ::
                              (MonadDOM m, IsDocument self, ToJSString tagname) =>
                                self -> tagname -> m NodeList
getElementsByTagNameUnchecked self tagname
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByTagName"
          [toJSVal tagname])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode ::
           (MonadDOM m, IsDocument self, IsNode importedNode) =>
             self -> Maybe importedNode -> Bool -> m (Maybe Node)
importNode self importedNode deep
  = liftDOM
      (((toDocument self) ^. jsf "importNode"
          [toJSVal importedNode, toJSVal deep])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode_ ::
            (MonadDOM m, IsDocument self, IsNode importedNode) =>
              self -> Maybe importedNode -> Bool -> m ()
importNode_ self importedNode deep
  = liftDOM
      (void
         ((toDocument self) ^. jsf "importNode"
            [toJSVal importedNode, toJSVal deep]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNodeUnsafe ::
                 (MonadDOM m, IsDocument self, IsNode importedNode, HasCallStack) =>
                   self -> Maybe importedNode -> Bool -> m Node
importNodeUnsafe self importedNode deep
  = liftDOM
      ((((toDocument self) ^. jsf "importNode"
           [toJSVal importedNode, toJSVal deep])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNodeUnchecked ::
                    (MonadDOM m, IsDocument self, IsNode importedNode) =>
                      self -> Maybe importedNode -> Bool -> m Node
importNodeUnchecked self importedNode deep
  = liftDOM
      (((toDocument self) ^. jsf "importNode"
          [toJSVal importedNode, toJSVal deep])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS_ ::
                 (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                  ToJSString qualifiedName) =>
                   self -> Maybe namespaceURI -> Maybe qualifiedName -> m ()
createElementNS_ self namespaceURI qualifiedName
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createElementNS"
            [toJSVal namespaceURI, toJSVal qualifiedName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNSUnsafe ::
                      (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                       ToJSString qualifiedName, HasCallStack) =>
                        self -> Maybe namespaceURI -> Maybe qualifiedName -> m Element
createElementNSUnsafe self namespaceURI qualifiedName
  = liftDOM
      ((((toDocument self) ^. jsf "createElementNS"
           [toJSVal namespaceURI, toJSVal qualifiedName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNSUnchecked ::
                         (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                          ToJSString qualifiedName) =>
                           self -> Maybe namespaceURI -> Maybe qualifiedName -> m Element
createElementNSUnchecked self namespaceURI qualifiedName
  = liftDOM
      (((toDocument self) ^. jsf "createElementNS"
          [toJSVal namespaceURI, toJSVal qualifiedName])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS_ ::
                   (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                    ToJSString qualifiedName) =>
                     self -> Maybe namespaceURI -> Maybe qualifiedName -> m ()
createAttributeNS_ self namespaceURI qualifiedName
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createAttributeNS"
            [toJSVal namespaceURI, toJSVal qualifiedName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNSUnsafe ::
                        (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                         ToJSString qualifiedName, HasCallStack) =>
                          self -> Maybe namespaceURI -> Maybe qualifiedName -> m Attr
createAttributeNSUnsafe self namespaceURI qualifiedName
  = liftDOM
      ((((toDocument self) ^. jsf "createAttributeNS"
           [toJSVal namespaceURI, toJSVal qualifiedName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNSUnchecked ::
                           (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                            ToJSString qualifiedName) =>
                             self -> Maybe namespaceURI -> Maybe qualifiedName -> m Attr
createAttributeNSUnchecked self namespaceURI qualifiedName
  = liftDOM
      (((toDocument self) ^. jsf "createAttributeNS"
          [toJSVal namespaceURI, toJSVal qualifiedName])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNSUnsafe ::
                             (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                              ToJSString localName, HasCallStack) =>
                               self -> Maybe namespaceURI -> localName -> m NodeList
getElementsByTagNameNSUnsafe self namespaceURI localName
  = liftDOM
      ((((toDocument self) ^. jsf "getElementsByTagNameNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNSUnchecked ::
                                (MonadDOM m, IsDocument self, ToJSString namespaceURI,
                                 ToJSString localName) =>
                                  self -> Maybe namespaceURI -> localName -> m NodeList
getElementsByTagNameNSUnchecked self namespaceURI localName
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByTagNameNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementById Mozilla Document.getElementById documentation> 
getElementById ::
               (MonadDOM m, IsDocument self, ToJSString elementId) =>
                 self -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftDOM
      (((toDocument self) ^. jsf "getElementById" [toJSVal elementId])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementById Mozilla Document.getElementById documentation> 
getElementById_ ::
                (MonadDOM m, IsDocument self, ToJSString elementId) =>
                  self -> elementId -> m ()
getElementById_ self elementId
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementById" [toJSVal elementId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementById Mozilla Document.getElementById documentation> 
getElementByIdUnsafe ::
                     (MonadDOM m, IsDocument self, ToJSString elementId,
                      HasCallStack) =>
                       self -> elementId -> m Element
getElementByIdUnsafe self elementId
  = liftDOM
      ((((toDocument self) ^. jsf "getElementById" [toJSVal elementId])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementById Mozilla Document.getElementById documentation> 
getElementByIdUnchecked ::
                        (MonadDOM m, IsDocument self, ToJSString elementId) =>
                          self -> elementId -> m Element
getElementByIdUnchecked self elementId
  = liftDOM
      (((toDocument self) ^. jsf "getElementById" [toJSVal elementId])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode ::
          (MonadDOM m, IsDocument self, IsNode source) =>
            self -> Maybe source -> m (Maybe Node)
adoptNode self source
  = liftDOM
      (((toDocument self) ^. jsf "adoptNode" [toJSVal source]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode_ ::
           (MonadDOM m, IsDocument self, IsNode source) =>
             self -> Maybe source -> m ()
adoptNode_ self source
  = liftDOM
      (void ((toDocument self) ^. jsf "adoptNode" [toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNodeUnsafe ::
                (MonadDOM m, IsDocument self, IsNode source, HasCallStack) =>
                  self -> Maybe source -> m Node
adoptNodeUnsafe self source
  = liftDOM
      ((((toDocument self) ^. jsf "adoptNode" [toJSVal source]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNodeUnchecked ::
                   (MonadDOM m, IsDocument self, IsNode source) =>
                     self -> Maybe source -> m Node
adoptNodeUnchecked self source
  = liftDOM
      (((toDocument self) ^. jsf "adoptNode" [toJSVal source]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent ::
            (MonadDOM m, IsDocument self, ToJSString eventType) =>
              self -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftDOM
      (((toDocument self) ^. jsf "createEvent" [toJSVal eventType]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent_ ::
             (MonadDOM m, IsDocument self, ToJSString eventType) =>
               self -> eventType -> m ()
createEvent_ self eventType
  = liftDOM
      (void ((toDocument self) ^. jsf "createEvent" [toJSVal eventType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEventUnsafe ::
                  (MonadDOM m, IsDocument self, ToJSString eventType,
                   HasCallStack) =>
                    self -> eventType -> m Event
createEventUnsafe self eventType
  = liftDOM
      ((((toDocument self) ^. jsf "createEvent" [toJSVal eventType]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEventUnchecked ::
                     (MonadDOM m, IsDocument self, ToJSString eventType) =>
                       self -> eventType -> m Event
createEventUnchecked self eventType
  = liftDOM
      (((toDocument self) ^. jsf "createEvent" [toJSVal eventType]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange ::
            (MonadDOM m, IsDocument self) => self -> m (Maybe Range)
createRange self
  = liftDOM
      (((toDocument self) ^. jsf "createRange" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange_ :: (MonadDOM m, IsDocument self) => self -> m ()
createRange_ self
  = liftDOM (void ((toDocument self) ^. jsf "createRange" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRangeUnsafe ::
                  (MonadDOM m, IsDocument self, HasCallStack) => self -> m Range
createRangeUnsafe self
  = liftDOM
      ((((toDocument self) ^. jsf "createRange" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRangeUnchecked ::
                     (MonadDOM m, IsDocument self) => self -> m Range
createRangeUnchecked self
  = liftDOM
      (((toDocument self) ^. jsf "createRange" ()) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator_ ::
                    (MonadDOM m, IsDocument self, IsNode root) =>
                      self -> Maybe root -> Word -> Maybe NodeFilter -> Bool -> m ()
createNodeIterator_ self root whatToShow filter
  expandEntityReferences
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createNodeIterator"
            [toJSVal root, toJSVal whatToShow, toJSVal filter,
             toJSVal expandEntityReferences]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIteratorUnsafe ::
                         (MonadDOM m, IsDocument self, IsNode root, HasCallStack) =>
                           self ->
                             Maybe root -> Word -> Maybe NodeFilter -> Bool -> m NodeIterator
createNodeIteratorUnsafe self root whatToShow filter
  expandEntityReferences
  = liftDOM
      ((((toDocument self) ^. jsf "createNodeIterator"
           [toJSVal root, toJSVal whatToShow, toJSVal filter,
            toJSVal expandEntityReferences])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIteratorUnchecked ::
                            (MonadDOM m, IsDocument self, IsNode root) =>
                              self ->
                                Maybe root -> Word -> Maybe NodeFilter -> Bool -> m NodeIterator
createNodeIteratorUnchecked self root whatToShow filter
  expandEntityReferences
  = liftDOM
      (((toDocument self) ^. jsf "createNodeIterator"
          [toJSVal root, toJSVal whatToShow, toJSVal filter,
           toJSVal expandEntityReferences])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker_ ::
                  (MonadDOM m, IsDocument self, IsNode root) =>
                    self -> Maybe root -> Word -> Maybe NodeFilter -> Bool -> m ()
createTreeWalker_ self root whatToShow filter
  expandEntityReferences
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createTreeWalker"
            [toJSVal root, toJSVal whatToShow, toJSVal filter,
             toJSVal expandEntityReferences]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalkerUnsafe ::
                       (MonadDOM m, IsDocument self, IsNode root, HasCallStack) =>
                         self ->
                           Maybe root -> Word -> Maybe NodeFilter -> Bool -> m TreeWalker
createTreeWalkerUnsafe self root whatToShow filter
  expandEntityReferences
  = liftDOM
      ((((toDocument self) ^. jsf "createTreeWalker"
           [toJSVal root, toJSVal whatToShow, toJSVal filter,
            toJSVal expandEntityReferences])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalkerUnchecked ::
                          (MonadDOM m, IsDocument self, IsNode root) =>
                            self ->
                              Maybe root -> Word -> Maybe NodeFilter -> Bool -> m TreeWalker
createTreeWalkerUnchecked self root whatToShow filter
  expandEntityReferences
  = liftDOM
      (((toDocument self) ^. jsf "createTreeWalker"
          [toJSVal root, toJSVal whatToShow, toJSVal filter,
           toJSVal expandEntityReferences])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle_ ::
                  (MonadDOM m, IsDocument self, IsElement element,
                   ToJSString pseudoElement) =>
                    self -> Maybe element -> pseudoElement -> m ()
getOverrideStyle_ self element pseudoElement
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getOverrideStyle"
            [toJSVal element, toJSVal pseudoElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyleUnsafe ::
                       (MonadDOM m, IsDocument self, IsElement element,
                        ToJSString pseudoElement, HasCallStack) =>
                         self -> Maybe element -> pseudoElement -> m CSSStyleDeclaration
getOverrideStyleUnsafe self element pseudoElement
  = liftDOM
      ((((toDocument self) ^. jsf "getOverrideStyle"
           [toJSVal element, toJSVal pseudoElement])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyleUnchecked ::
                          (MonadDOM m, IsDocument self, IsElement element,
                           ToJSString pseudoElement) =>
                            self -> Maybe element -> pseudoElement -> m CSSStyleDeclaration
getOverrideStyleUnchecked self element pseudoElement
  = liftDOM
      (((toDocument self) ^. jsf "getOverrideStyle"
          [toJSVal element, toJSVal pseudoElement])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression_ ::
                  (MonadDOM m, IsDocument self, ToJSString expression) =>
                    self -> expression -> Maybe XPathNSResolver -> m ()
createExpression_ self expression resolver
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createExpression"
            [toJSVal expression, toJSVal resolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpressionUnsafe ::
                       (MonadDOM m, IsDocument self, ToJSString expression,
                        HasCallStack) =>
                         self -> expression -> Maybe XPathNSResolver -> m XPathExpression
createExpressionUnsafe self expression resolver
  = liftDOM
      ((((toDocument self) ^. jsf "createExpression"
           [toJSVal expression, toJSVal resolver])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpressionUnchecked ::
                          (MonadDOM m, IsDocument self, ToJSString expression) =>
                            self -> expression -> Maybe XPathNSResolver -> m XPathExpression
createExpressionUnchecked self expression resolver
  = liftDOM
      (((toDocument self) ^. jsf "createExpression"
          [toJSVal expression, toJSVal resolver])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver ::
                 (MonadDOM m, IsDocument self, IsNode nodeResolver) =>
                   self -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
createNSResolver self nodeResolver
  = liftDOM
      (((toDocument self) ^. jsf "createNSResolver"
          [toJSVal nodeResolver])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver_ ::
                  (MonadDOM m, IsDocument self, IsNode nodeResolver) =>
                    self -> Maybe nodeResolver -> m ()
createNSResolver_ self nodeResolver
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createNSResolver"
            [toJSVal nodeResolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolverUnsafe ::
                       (MonadDOM m, IsDocument self, IsNode nodeResolver, HasCallStack) =>
                         self -> Maybe nodeResolver -> m XPathNSResolver
createNSResolverUnsafe self nodeResolver
  = liftDOM
      ((((toDocument self) ^. jsf "createNSResolver"
           [toJSVal nodeResolver])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolverUnchecked ::
                          (MonadDOM m, IsDocument self, IsNode nodeResolver) =>
                            self -> Maybe nodeResolver -> m XPathNSResolver
createNSResolverUnchecked self nodeResolver
  = liftDOM
      (((toDocument self) ^. jsf "createNSResolver"
          [toJSVal nodeResolver])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate_ ::
          (MonadDOM m, IsDocument self, ToJSString expression,
           IsNode contextNode) =>
            self ->
              expression ->
                Maybe contextNode ->
                  Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m ()
evaluate_ self expression contextNode resolver type' inResult
  = liftDOM
      (void
         ((toDocument self) ^. jsf "evaluate"
            [toJSVal expression, toJSVal contextNode, toJSVal resolver,
             toJSVal type', toJSVal inResult]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluateUnsafe ::
               (MonadDOM m, IsDocument self, ToJSString expression,
                IsNode contextNode, HasCallStack) =>
                 self ->
                   expression ->
                     Maybe contextNode ->
                       Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m XPathResult
evaluateUnsafe self expression contextNode resolver type' inResult
  = liftDOM
      ((((toDocument self) ^. jsf "evaluate"
           [toJSVal expression, toJSVal contextNode, toJSVal resolver,
            toJSVal type', toJSVal inResult])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluateUnchecked ::
                  (MonadDOM m, IsDocument self, ToJSString expression,
                   IsNode contextNode) =>
                    self ->
                      expression ->
                        Maybe contextNode ->
                          Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m XPathResult
evaluateUnchecked self expression contextNode resolver type'
  inResult
  = liftDOM
      (((toDocument self) ^. jsf "evaluate"
          [toJSVal expression, toJSVal contextNode, toJSVal resolver,
           toJSVal type', toJSVal inResult])
         >>= fromJSValUnchecked)

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
                    self -> elementName -> m (Maybe NodeList)
getElementsByName self elementName
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByName"
          [toJSVal elementName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName_ ::
                   (MonadDOM m, IsDocument self, ToJSString elementName) =>
                     self -> elementName -> m ()
getElementsByName_ self elementName
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementsByName"
            [toJSVal elementName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByNameUnsafe ::
                        (MonadDOM m, IsDocument self, ToJSString elementName,
                         HasCallStack) =>
                          self -> elementName -> m NodeList
getElementsByNameUnsafe self elementName
  = liftDOM
      ((((toDocument self) ^. jsf "getElementsByName"
           [toJSVal elementName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByNameUnchecked ::
                           (MonadDOM m, IsDocument self, ToJSString elementName) =>
                             self -> elementName -> m NodeList
getElementsByNameUnchecked self elementName
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByName"
          [toJSVal elementName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
elementFromPoint ::
                 (MonadDOM m, IsDocument self) =>
                   self -> Int -> Int -> m (Maybe Element)
elementFromPoint self x y
  = liftDOM
      (((toDocument self) ^. jsf "elementFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
elementFromPoint_ ::
                  (MonadDOM m, IsDocument self) => self -> Int -> Int -> m ()
elementFromPoint_ self x y
  = liftDOM
      (void
         ((toDocument self) ^. jsf "elementFromPoint"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
elementFromPointUnsafe ::
                       (MonadDOM m, IsDocument self, HasCallStack) =>
                         self -> Int -> Int -> m Element
elementFromPointUnsafe self x y
  = liftDOM
      ((((toDocument self) ^. jsf "elementFromPoint"
           [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
elementFromPointUnchecked ::
                          (MonadDOM m, IsDocument self) => self -> Int -> Int -> m Element
elementFromPointUnchecked self x y
  = liftDOM
      (((toDocument self) ^. jsf "elementFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint ::
                    (MonadDOM m, IsDocument self) =>
                      self -> Int -> Int -> m (Maybe Range)
caretRangeFromPoint self x y
  = liftDOM
      (((toDocument self) ^. jsf "caretRangeFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint_ ::
                     (MonadDOM m, IsDocument self) => self -> Int -> Int -> m ()
caretRangeFromPoint_ self x y
  = liftDOM
      (void
         ((toDocument self) ^. jsf "caretRangeFromPoint"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPointUnsafe ::
                          (MonadDOM m, IsDocument self, HasCallStack) =>
                            self -> Int -> Int -> m Range
caretRangeFromPointUnsafe self x y
  = liftDOM
      ((((toDocument self) ^. jsf "caretRangeFromPoint"
           [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPointUnchecked ::
                             (MonadDOM m, IsDocument self) => self -> Int -> Int -> m Range
caretRangeFromPointUnchecked self x y
  = liftDOM
      (((toDocument self) ^. jsf "caretRangeFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection ::
             (MonadDOM m, IsDocument self) => self -> m (Maybe Selection)
getSelection self
  = liftDOM
      (((toDocument self) ^. jsf "getSelection" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection_ :: (MonadDOM m, IsDocument self) => self -> m ()
getSelection_ self
  = liftDOM (void ((toDocument self) ^. jsf "getSelection" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelectionUnsafe ::
                   (MonadDOM m, IsDocument self, HasCallStack) => self -> m Selection
getSelectionUnsafe self
  = liftDOM
      ((((toDocument self) ^. jsf "getSelection" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelectionUnchecked ::
                      (MonadDOM m, IsDocument self) => self -> m Selection
getSelectionUnchecked self
  = liftDOM
      (((toDocument self) ^. jsf "getSelection" ()) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContextUnsafe ::
                          (MonadDOM m, IsDocument self, ToJSString contextId,
                           ToJSString name, HasCallStack) =>
                            self -> contextId -> name -> Int -> Int -> m CanvasRenderingContext
getCSSCanvasContextUnsafe self contextId name width height
  = liftDOM
      ((((toDocument self) ^. jsf "getCSSCanvasContext"
           [toJSVal contextId, toJSVal name, toJSVal width, toJSVal height])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContextUnchecked ::
                             (MonadDOM m, IsDocument self, ToJSString contextId,
                              ToJSString name) =>
                               self -> contextId -> name -> Int -> Int -> m CanvasRenderingContext
getCSSCanvasContextUnchecked self contextId name width height
  = liftDOM
      (((toDocument self) ^. jsf "getCSSCanvasContext"
          [toJSVal contextId, toJSVal name, toJSVal width, toJSVal height])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadDOM m, IsDocument self, ToJSString tagname) =>
                         self -> tagname -> m (Maybe NodeList)
getElementsByClassName self tagname
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByClassName"
          [toJSVal tagname])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName_ ::
                        (MonadDOM m, IsDocument self, ToJSString tagname) =>
                          self -> tagname -> m ()
getElementsByClassName_ self tagname
  = liftDOM
      (void
         ((toDocument self) ^. jsf "getElementsByClassName"
            [toJSVal tagname]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassNameUnsafe ::
                             (MonadDOM m, IsDocument self, ToJSString tagname, HasCallStack) =>
                               self -> tagname -> m NodeList
getElementsByClassNameUnsafe self tagname
  = liftDOM
      ((((toDocument self) ^. jsf "getElementsByClassName"
           [toJSVal tagname])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassNameUnchecked ::
                                (MonadDOM m, IsDocument self, ToJSString tagname) =>
                                  self -> tagname -> m NodeList
getElementsByClassNameUnchecked self tagname
  = liftDOM
      (((toDocument self) ^. jsf "getElementsByClassName"
          [toJSVal tagname])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus :: (MonadDOM m, IsDocument self) => self -> m Bool
hasFocus self
  = liftDOM (((toDocument self) ^. jsf "hasFocus" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus_ :: (MonadDOM m, IsDocument self) => self -> m ()
hasFocus_ self
  = liftDOM (void ((toDocument self) ^. jsf "hasFocus" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
querySelector ::
              (MonadDOM m, IsDocument self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftDOM
      (((toDocument self) ^. jsf "querySelector" [toJSVal selectors]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
querySelector_ ::
               (MonadDOM m, IsDocument self, ToJSString selectors) =>
                 self -> selectors -> m ()
querySelector_ self selectors
  = liftDOM
      (void
         ((toDocument self) ^. jsf "querySelector" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
querySelectorUnsafe ::
                    (MonadDOM m, IsDocument self, ToJSString selectors,
                     HasCallStack) =>
                      self -> selectors -> m Element
querySelectorUnsafe self selectors
  = liftDOM
      ((((toDocument self) ^. jsf "querySelector" [toJSVal selectors])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
querySelectorUnchecked ::
                       (MonadDOM m, IsDocument self, ToJSString selectors) =>
                         self -> selectors -> m Element
querySelectorUnchecked self selectors
  = liftDOM
      (((toDocument self) ^. jsf "querySelector" [toJSVal selectors]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadDOM m, IsDocument self, ToJSString selectors) =>
                   self -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftDOM
      (((toDocument self) ^. jsf "querySelectorAll" [toJSVal selectors])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
querySelectorAll_ ::
                  (MonadDOM m, IsDocument self, ToJSString selectors) =>
                    self -> selectors -> m ()
querySelectorAll_ self selectors
  = liftDOM
      (void
         ((toDocument self) ^. jsf "querySelectorAll" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
querySelectorAllUnsafe ::
                       (MonadDOM m, IsDocument self, ToJSString selectors,
                        HasCallStack) =>
                         self -> selectors -> m NodeList
querySelectorAllUnsafe self selectors
  = liftDOM
      ((((toDocument self) ^. jsf "querySelectorAll" [toJSVal selectors])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
querySelectorAllUnchecked ::
                          (MonadDOM m, IsDocument self, ToJSString selectors) =>
                            self -> selectors -> m NodeList
querySelectorAllUnchecked self selectors
  = liftDOM
      (((toDocument self) ^. jsf "querySelectorAll" [toJSVal selectors])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlows_ ::
                     (MonadDOM m, IsDocument self) => self -> m ()
webkitGetNamedFlows_ self
  = liftDOM
      (void ((toDocument self) ^. jsf "webkitGetNamedFlows" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlowsUnsafe ::
                          (MonadDOM m, IsDocument self, HasCallStack) =>
                            self -> m DOMNamedFlowCollection
webkitGetNamedFlowsUnsafe self
  = liftDOM
      ((((toDocument self) ^. jsf "webkitGetNamedFlows" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlowsUnchecked ::
                             (MonadDOM m, IsDocument self) => self -> m DOMNamedFlowCollection
webkitGetNamedFlowsUnchecked self
  = liftDOM
      (((toDocument self) ^. jsf "webkitGetNamedFlows" ()) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch_ ::
             (MonadDOM m, IsDocument self, IsEventTarget target) =>
               self ->
                 Maybe Window ->
                   Maybe target ->
                     Int ->
                       Int -> Int -> Int -> Int -> Int -> Int -> Float -> Float -> m ()
createTouch_ self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftDOM
      (void
         ((toDocument self) ^. jsf "createTouch"
            [toJSVal window, toJSVal target, toJSVal identifier, toJSVal pageX,
             toJSVal pageY, toJSVal screenX, toJSVal screenY,
             toJSVal webkitRadiusX, toJSVal webkitRadiusY,
             toJSVal webkitRotationAngle, toJSVal webkitForce]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouchUnsafe ::
                  (MonadDOM m, IsDocument self, IsEventTarget target,
                   HasCallStack) =>
                    self ->
                      Maybe Window ->
                        Maybe target ->
                          Int ->
                            Int -> Int -> Int -> Int -> Int -> Int -> Float -> Float -> m Touch
createTouchUnsafe self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftDOM
      ((((toDocument self) ^. jsf "createTouch"
           [toJSVal window, toJSVal target, toJSVal identifier, toJSVal pageX,
            toJSVal pageY, toJSVal screenX, toJSVal screenY,
            toJSVal webkitRadiusX, toJSVal webkitRadiusY,
            toJSVal webkitRotationAngle, toJSVal webkitForce])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouchUnchecked ::
                     (MonadDOM m, IsDocument self, IsEventTarget target) =>
                       self ->
                         Maybe Window ->
                           Maybe target ->
                             Int ->
                               Int -> Int -> Int -> Int -> Int -> Int -> Float -> Float -> m Touch
createTouchUnchecked self window target identifier pageX pageY
  screenX screenY webkitRadiusX webkitRadiusY webkitRotationAngle
  webkitForce
  = liftDOM
      (((toDocument self) ^. jsf "createTouch"
          [toJSVal window, toJSVal target, toJSVal identifier, toJSVal pageX,
           toJSVal pageY, toJSVal screenX, toJSVal screenY,
           toJSVal webkitRadiusX, toJSVal webkitRadiusY,
           toJSVal webkitRotationAngle, toJSVal webkitForce])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList ::
                (MonadDOM m, IsDocument self) => self -> m (Maybe TouchList)
createTouchList self
  = liftDOM
      (((toDocument self) ^. jsf "createTouchList" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList_ :: (MonadDOM m, IsDocument self) => self -> m ()
createTouchList_ self
  = liftDOM (void ((toDocument self) ^. jsf "createTouchList" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchListUnsafe ::
                      (MonadDOM m, IsDocument self, HasCallStack) => self -> m TouchList
createTouchListUnsafe self
  = liftDOM
      ((((toDocument self) ^. jsf "createTouchList" ()) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchListUnchecked ::
                         (MonadDOM m, IsDocument self) => self -> m TouchList
createTouchListUnchecked self
  = liftDOM
      (((toDocument self) ^. jsf "createTouchList" ()) >>=
         fromJSValUnchecked)

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
                  (MonadDOM m, IsDocument self) =>
                    self -> m (Maybe DOMImplementation)
getImplementation self
  = liftDOM
      (((toDocument self) ^. js "implementation") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
getImplementationUnsafe ::
                        (MonadDOM m, IsDocument self, HasCallStack) =>
                          self -> m DOMImplementation
getImplementationUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "implementation") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
getImplementationUnchecked ::
                           (MonadDOM m, IsDocument self) => self -> m DOMImplementation
getImplementationUnchecked self
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
                   self -> m (Maybe result)
getInputEncoding self
  = liftDOM
      (((toDocument self) ^. js "inputEncoding") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
getInputEncodingUnsafe ::
                       (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                         self -> m result
getInputEncodingUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "inputEncoding") >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
getInputEncodingUnchecked ::
                          (MonadDOM m, IsDocument self, FromJSString result) =>
                            self -> m result
getInputEncodingUnchecked self
  = liftDOM
      (((toDocument self) ^. js "inputEncoding") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncoding ::
               (MonadDOM m, IsDocument self, FromJSString result) =>
                 self -> m (Maybe result)
getXmlEncoding self
  = liftDOM
      (((toDocument self) ^. js "xmlEncoding") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncodingUnsafe ::
                     (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                       self -> m result
getXmlEncodingUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "xmlEncoding") >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

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
  = liftDOM
      (((toDocument self) ^. js "xmlVersion") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersionUnsafe ::
                    (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                      self -> m result
getXmlVersionUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "xmlVersion") >>= fromMaybeJSString) >>=
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
                 self -> m (Maybe result)
getDocumentURI self
  = liftDOM
      (((toDocument self) ^. js "documentURI") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
getDocumentURIUnsafe ::
                     (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                       self -> m result
getDocumentURIUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "documentURI") >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
getDocumentURIUnchecked ::
                        (MonadDOM m, IsDocument self, FromJSString result) =>
                          self -> m result
getDocumentURIUnchecked self
  = liftDOM
      (((toDocument self) ^. js "documentURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultView ::
               (MonadDOM m, IsDocument self) => self -> m (Maybe Window)
getDefaultView self
  = liftDOM (((toDocument self) ^. js "defaultView") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultViewUnsafe ::
                     (MonadDOM m, IsDocument self, HasCallStack) => self -> m Window
getDefaultViewUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "defaultView") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultViewUnchecked ::
                        (MonadDOM m, IsDocument self) => self -> m Window
getDefaultViewUnchecked self
  = liftDOM
      (((toDocument self) ^. js "defaultView") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheets ::
               (MonadDOM m, IsDocument self) => self -> m (Maybe StyleSheetList)
getStyleSheets self
  = liftDOM (((toDocument self) ^. js "styleSheets") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheetsUnsafe ::
                     (MonadDOM m, IsDocument self, HasCallStack) =>
                       self -> m StyleSheetList
getStyleSheetsUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "styleSheets") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheetsUnchecked ::
                        (MonadDOM m, IsDocument self) => self -> m StyleSheetList
getStyleSheetsUnchecked self
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
           self -> Maybe val -> m ()
setTitle self val
  = liftDOM ((toDocument self) ^. jss "title" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitle ::
         (MonadDOM m, IsDocument self, FromJSString result) =>
           self -> m (Maybe result)
getTitle self
  = liftDOM (((toDocument self) ^. js "title") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitleUnsafe ::
               (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                 self -> m result
getTitleUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "title") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitleUnchecked ::
                  (MonadDOM m, IsDocument self, FromJSString result) =>
                    self -> m result
getTitleUnchecked self
  = liftDOM
      (((toDocument self) ^. js "title") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
getDomainUnsafe ::
                (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                  self -> m result
getDomainUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "domain") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
getDomainUnchecked ::
                   (MonadDOM m, IsDocument self, FromJSString result) =>
                     self -> m result
getDomainUnchecked self
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
getCookieUnsafe ::
                (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                  self -> m result
getCookieUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "cookie") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
getCookieUnchecked ::
                   (MonadDOM m, IsDocument self, FromJSString result) =>
                     self -> m result
getCookieUnchecked self
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
          (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getImages self
  = liftDOM (((toDocument self) ^. js "images") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
getImagesUnsafe ::
                (MonadDOM m, IsDocument self, HasCallStack) =>
                  self -> m HTMLCollection
getImagesUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "images") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
getImagesUnchecked ::
                   (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getImagesUnchecked self
  = liftDOM
      (((toDocument self) ^. js "images") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getApplets ::
           (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getApplets self
  = liftDOM (((toDocument self) ^. js "applets") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getAppletsUnsafe ::
                 (MonadDOM m, IsDocument self, HasCallStack) =>
                   self -> m HTMLCollection
getAppletsUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "applets") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getAppletsUnchecked ::
                    (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getAppletsUnchecked self
  = liftDOM
      (((toDocument self) ^. js "applets") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinks ::
         (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getLinks self
  = liftDOM (((toDocument self) ^. js "links") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinksUnsafe ::
               (MonadDOM m, IsDocument self, HasCallStack) =>
                 self -> m HTMLCollection
getLinksUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "links") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinksUnchecked ::
                  (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getLinksUnchecked self
  = liftDOM
      (((toDocument self) ^. js "links") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getForms ::
         (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getForms self
  = liftDOM (((toDocument self) ^. js "forms") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getFormsUnsafe ::
               (MonadDOM m, IsDocument self, HasCallStack) =>
                 self -> m HTMLCollection
getFormsUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "forms") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getFormsUnchecked ::
                  (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getFormsUnchecked self
  = liftDOM
      (((toDocument self) ^. js "forms") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchors ::
           (MonadDOM m, IsDocument self) => self -> m (Maybe HTMLCollection)
getAnchors self
  = liftDOM (((toDocument self) ^. js "anchors") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchorsUnsafe ::
                 (MonadDOM m, IsDocument self, HasCallStack) =>
                   self -> m HTMLCollection
getAnchorsUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "anchors") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchorsUnchecked ::
                    (MonadDOM m, IsDocument self) => self -> m HTMLCollection
getAnchorsUnchecked self
  = liftDOM
      (((toDocument self) ^. js "anchors") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
getCharsetUnsafe ::
                 (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                   self -> m result
getCharsetUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "charset") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
getCharsetUnchecked ::
                    (MonadDOM m, IsDocument self, FromJSString result) =>
                      self -> m result
getCharsetUnchecked self
  = liftDOM
      (((toDocument self) ^. js "charset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultCharset Mozilla Document.defaultCharset documentation> 
getDefaultCharset ::
                  (MonadDOM m, IsDocument self, FromJSString result) =>
                    self -> m (Maybe result)
getDefaultCharset self
  = liftDOM
      (((toDocument self) ^. js "defaultCharset") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultCharset Mozilla Document.defaultCharset documentation> 
getDefaultCharsetUnsafe ::
                        (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                          self -> m result
getDefaultCharsetUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "defaultCharset") >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultCharset Mozilla Document.defaultCharset documentation> 
getDefaultCharsetUnchecked ::
                           (MonadDOM m, IsDocument self, FromJSString result) =>
                             self -> m result
getDefaultCharsetUnchecked self
  = liftDOM
      (((toDocument self) ^. js "defaultCharset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyState ::
              (MonadDOM m, IsDocument self, FromJSString result) =>
                self -> m (Maybe result)
getReadyState self
  = liftDOM
      (((toDocument self) ^. js "readyState") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyStateUnsafe ::
                    (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                      self -> m result
getReadyStateUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "readyState") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyStateUnchecked ::
                       (MonadDOM m, IsDocument self, FromJSString result) =>
                         self -> m result
getReadyStateUnchecked self
  = liftDOM
      (((toDocument self) ^. js "readyState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSet ::
                (MonadDOM m, IsDocument self, FromJSString result) =>
                  self -> m (Maybe result)
getCharacterSet self
  = liftDOM
      (((toDocument self) ^. js "characterSet") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSetUnsafe ::
                      (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                        self -> m result
getCharacterSetUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "characterSet") >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSetUnchecked ::
                         (MonadDOM m, IsDocument self, FromJSString result) =>
                           self -> m result
getCharacterSetUnchecked self
  = liftDOM
      (((toDocument self) ^. js "characterSet") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSet ::
                          (MonadDOM m, IsDocument self, FromJSString result) =>
                            self -> m (Maybe result)
getPreferredStylesheetSet self
  = liftDOM
      (((toDocument self) ^. js "preferredStylesheetSet") >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSetUnsafe ::
                                (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                                  self -> m result
getPreferredStylesheetSetUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "preferredStylesheetSet") >>=
          fromMaybeJSString)
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
      (((toDocument self) ^. js "selectedStylesheetSet") >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSetUnsafe ::
                               (MonadDOM m, IsDocument self, HasCallStack, FromJSString result) =>
                                 self -> m result
getSelectedStylesheetSetUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "selectedStylesheetSet") >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSetUnchecked ::
                                  (MonadDOM m, IsDocument self, FromJSString result) =>
                                    self -> m result
getSelectedStylesheetSetUnchecked self
  = liftDOM
      (((toDocument self) ^. js "selectedStylesheetSet") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.activeElement Mozilla Document.activeElement documentation> 
getActiveElement ::
                 (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getActiveElement self
  = liftDOM (((toDocument self) ^. js "activeElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.activeElement Mozilla Document.activeElement documentation> 
getActiveElementUnsafe ::
                       (MonadDOM m, IsDocument self, HasCallStack) => self -> m Element
getActiveElementUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "activeElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.activeElement Mozilla Document.activeElement documentation> 
getActiveElementUnchecked ::
                          (MonadDOM m, IsDocument self) => self -> m Element
getActiveElementUnchecked self
  = liftDOM
      (((toDocument self) ^. js "activeElement") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCurrentFullScreenElement Mozilla Document.webkitCurrentFullScreenElement documentation> 
getWebkitCurrentFullScreenElementUnsafe ::
                                        (MonadDOM m, IsDocument self, HasCallStack) =>
                                          self -> m Element
getWebkitCurrentFullScreenElementUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "webkitCurrentFullScreenElement") >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCurrentFullScreenElement Mozilla Document.webkitCurrentFullScreenElement documentation> 
getWebkitCurrentFullScreenElementUnchecked ::
                                           (MonadDOM m, IsDocument self) => self -> m Element
getWebkitCurrentFullScreenElementUnchecked self
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.pointerLockElement Mozilla Document.pointerLockElement documentation> 
getPointerLockElement ::
                      (MonadDOM m, IsDocument self) => self -> m (Maybe Element)
getPointerLockElement self
  = liftDOM
      (((toDocument self) ^. js "pointerLockElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.pointerLockElement Mozilla Document.pointerLockElement documentation> 
getPointerLockElementUnsafe ::
                            (MonadDOM m, IsDocument self, HasCallStack) => self -> m Element
getPointerLockElementUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "pointerLockElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.pointerLockElement Mozilla Document.pointerLockElement documentation> 
getPointerLockElementUnchecked ::
                               (MonadDOM m, IsDocument self) => self -> m Element
getPointerLockElementUnchecked self
  = liftDOM
      (((toDocument self) ^. js "pointerLockElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.fonts Mozilla Document.fonts documentation> 
getFonts ::
         (MonadDOM m, IsDocument self) => self -> m (Maybe FontLoader)
getFonts self
  = liftDOM (((toDocument self) ^. js "fonts") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.fonts Mozilla Document.fonts documentation> 
getFontsUnsafe ::
               (MonadDOM m, IsDocument self, HasCallStack) => self -> m FontLoader
getFontsUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "fonts") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.fonts Mozilla Document.fonts documentation> 
getFontsUnchecked ::
                  (MonadDOM m, IsDocument self) => self -> m FontLoader
getFontsUnchecked self
  = liftDOM
      (((toDocument self) ^. js "fonts") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.securityPolicy Mozilla Document.securityPolicy documentation> 
getSecurityPolicyUnsafe ::
                        (MonadDOM m, IsDocument self, HasCallStack) =>
                          self -> m SecurityPolicy
getSecurityPolicyUnsafe self
  = liftDOM
      ((((toDocument self) ^. js "securityPolicy") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.securityPolicy Mozilla Document.securityPolicy documentation> 
getSecurityPolicyUnchecked ::
                           (MonadDOM m, IsDocument self) => self -> m SecurityPolicy
getSecurityPolicyUnchecked self
  = liftDOM
      (((toDocument self) ^. js "securityPolicy") >>= fromJSValUnchecked)

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
