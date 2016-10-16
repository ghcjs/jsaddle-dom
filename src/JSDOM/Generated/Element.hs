{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Element
       (getAttribute, getAttribute_, getAttributeUnsafe,
        getAttributeUnchecked, setAttribute, removeAttribute,
        getAttributeNode, getAttributeNode_, getAttributeNodeUnsafe,
        getAttributeNodeUnchecked, setAttributeNode, setAttributeNode_,
        setAttributeNodeUnsafe, setAttributeNodeUnchecked,
        removeAttributeNode, removeAttributeNode_,
        removeAttributeNodeUnsafe, removeAttributeNodeUnchecked,
        getElementsByTagName, getElementsByTagName_,
        getElementsByTagNameUnsafe, getElementsByTagNameUnchecked,
        hasAttributes, hasAttributes_, getAttributeNS, getAttributeNS_,
        setAttributeNS, removeAttributeNS, getElementsByTagNameNS,
        getElementsByTagNameNS_, getElementsByTagNameNSUnsafe,
        getElementsByTagNameNSUnchecked, getAttributeNodeNS,
        getAttributeNodeNS_, getAttributeNodeNSUnsafe,
        getAttributeNodeNSUnchecked, setAttributeNodeNS,
        setAttributeNodeNS_, setAttributeNodeNSUnsafe,
        setAttributeNodeNSUnchecked, hasAttribute, hasAttribute_,
        hasAttributeNS, hasAttributeNS_, focus, blur, scrollIntoView,
        scrollIntoViewIfNeeded, scrollByLines, scrollByPages,
        getElementsByClassName, getElementsByClassName_,
        getElementsByClassNameUnsafe, getElementsByClassNameUnchecked,
        querySelector, querySelector_, querySelectorUnsafe,
        querySelectorUnchecked, querySelectorAll, querySelectorAll_,
        querySelectorAllUnsafe, querySelectorAllUnchecked, matches,
        matches_, closest, closest_, closestUnsafe, closestUnchecked,
        webkitMatchesSelector, webkitMatchesSelector_, getClientRects,
        getClientRects_, getClientRectsUnsafe, getClientRectsUnchecked,
        getBoundingClientRect, getBoundingClientRect_,
        getBoundingClientRectUnsafe, getBoundingClientRectUnchecked,
        webkitRequestFullScreen, webkitRequestFullscreen,
        requestPointerLock, webkitGetRegionFlowRanges,
        webkitGetRegionFlowRanges_, pattern ALLOW_KEYBOARD_INPUT,
        getTagName, getTagNameUnchecked, getAttributes,
        getAttributesUnchecked, getStyle, getStyleUnchecked, setId, getId,
        getOffsetLeft, getOffsetTop, getOffsetWidth, getOffsetHeight,
        getClientLeft, getClientTop, getClientWidth, getClientHeight,
        setScrollLeft, getScrollLeft, setScrollTop, getScrollTop,
        getScrollWidth, getScrollHeight, getOffsetParent,
        getOffsetParentUnchecked, setInnerHTML, getInnerHTML,
        getInnerHTMLUnchecked, setOuterHTML, getOuterHTML,
        getOuterHTMLUnchecked, setClassName, getClassName, getClassList,
        getClassListUnchecked, getDataset, getDatasetUnchecked,
        getFirstElementChild, getFirstElementChildUnchecked,
        getLastElementChild, getLastElementChildUnchecked,
        getPreviousElementSibling, getPreviousElementSiblingUnchecked,
        getNextElementSibling, getNextElementSiblingUnchecked,
        getChildElementCount, setUiactions, getUiactions,
        getWebkitRegionOverset, abort, blurEvent, change, click,
        contextMenu, dblClick, drag, dragEnd, dragEnter, dragLeave,
        dragOver, dragStart, drop, error, focusEvent, input, invalid,
        keyDown, keyPress, keyUp, load, mouseDown, mouseEnter, mouseLeave,
        mouseMove, mouseOut, mouseOver, mouseUp, mouseWheel, scroll,
        select, submit, wheel, beforeCut, cut, beforeCopy, copy,
        beforePaste, paste, reset, search, selectStart, touchStart,
        touchMove, touchEnd, touchCancel, webKitFullscreenChange,
        webKitFullscreenError, webKitWillRevealBottom,
        webKitWillRevealLeft, webKitWillRevealRight, webKitWillRevealTop,
        Element(..), gTypeElement, IsElement, toElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttribute ::
             (MonadDOM m, IsElement self, ToJSString name,
              FromJSString result) =>
               self -> name -> m (Maybe result)
getAttribute self name
  = liftDOM
      (((toElement self) ^. jsf "getAttribute" [toJSVal name]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttribute_ ::
              (MonadDOM m, IsElement self, ToJSString name) =>
                self -> name -> m ()
getAttribute_ self name
  = liftDOM
      (void ((toElement self) ^. jsf "getAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttributeUnsafe ::
                   (MonadDOM m, IsElement self, ToJSString name, HasCallStack,
                    FromJSString result) =>
                     self -> name -> m result
getAttributeUnsafe self name
  = liftDOM
      ((((toElement self) ^. jsf "getAttribute" [toJSVal name]) >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttributeUnchecked ::
                      (MonadDOM m, IsElement self, ToJSString name,
                       FromJSString result) =>
                        self -> name -> m result
getAttributeUnchecked self name
  = liftDOM
      (((toElement self) ^. jsf "getAttribute" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttribute Mozilla Element.setAttribute documentation> 
setAttribute ::
             (MonadDOM m, IsElement self, ToJSString name, ToJSString value) =>
               self -> name -> value -> m ()
setAttribute self name value
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttribute"
            [toJSVal name, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttribute Mozilla Element.removeAttribute documentation> 
removeAttribute ::
                (MonadDOM m, IsElement self, ToJSString name) =>
                  self -> name -> m ()
removeAttribute self name
  = liftDOM
      (void ((toElement self) ^. jsf "removeAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNode ::
                 (MonadDOM m, IsElement self, ToJSString name) =>
                   self -> name -> m (Maybe Attr)
getAttributeNode self name
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNode" [toJSVal name]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNode_ ::
                  (MonadDOM m, IsElement self, ToJSString name) =>
                    self -> name -> m ()
getAttributeNode_ self name
  = liftDOM
      (void ((toElement self) ^. jsf "getAttributeNode" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNodeUnsafe ::
                       (MonadDOM m, IsElement self, ToJSString name, HasCallStack) =>
                         self -> name -> m Attr
getAttributeNodeUnsafe self name
  = liftDOM
      ((((toElement self) ^. jsf "getAttributeNode" [toJSVal name]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNodeUnchecked ::
                          (MonadDOM m, IsElement self, ToJSString name) =>
                            self -> name -> m Attr
getAttributeNodeUnchecked self name
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNode" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNode ::
                 (MonadDOM m, IsElement self) =>
                   self -> Maybe Attr -> m (Maybe Attr)
setAttributeNode self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNode_ ::
                  (MonadDOM m, IsElement self) => self -> Maybe Attr -> m ()
setAttributeNode_ self newAttr
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNodeUnsafe ::
                       (MonadDOM m, IsElement self, HasCallStack) =>
                         self -> Maybe Attr -> m Attr
setAttributeNodeUnsafe self newAttr
  = liftDOM
      ((((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNodeUnchecked ::
                          (MonadDOM m, IsElement self) => self -> Maybe Attr -> m Attr
setAttributeNodeUnchecked self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNode ::
                    (MonadDOM m, IsElement self) =>
                      self -> Maybe Attr -> m (Maybe Attr)
removeAttributeNode self oldAttr
  = liftDOM
      (((toElement self) ^. jsf "removeAttributeNode" [toJSVal oldAttr])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNode_ ::
                     (MonadDOM m, IsElement self) => self -> Maybe Attr -> m ()
removeAttributeNode_ self oldAttr
  = liftDOM
      (void
         ((toElement self) ^. jsf "removeAttributeNode" [toJSVal oldAttr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNodeUnsafe ::
                          (MonadDOM m, IsElement self, HasCallStack) =>
                            self -> Maybe Attr -> m Attr
removeAttributeNodeUnsafe self oldAttr
  = liftDOM
      ((((toElement self) ^. jsf "removeAttributeNode" [toJSVal oldAttr])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNodeUnchecked ::
                             (MonadDOM m, IsElement self) => self -> Maybe Attr -> m Attr
removeAttributeNodeUnchecked self oldAttr
  = liftDOM
      (((toElement self) ^. jsf "removeAttributeNode" [toJSVal oldAttr])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadDOM m, IsElement self, ToJSString name) =>
                       self -> name -> m (Maybe NodeList)
getElementsByTagName self name
  = liftDOM
      (((toElement self) ^. jsf "getElementsByTagName" [toJSVal name])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagName_ ::
                      (MonadDOM m, IsElement self, ToJSString name) =>
                        self -> name -> m ()
getElementsByTagName_ self name
  = liftDOM
      (void
         ((toElement self) ^. jsf "getElementsByTagName" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagNameUnsafe ::
                           (MonadDOM m, IsElement self, ToJSString name, HasCallStack) =>
                             self -> name -> m NodeList
getElementsByTagNameUnsafe self name
  = liftDOM
      ((((toElement self) ^. jsf "getElementsByTagName" [toJSVal name])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagNameUnchecked ::
                              (MonadDOM m, IsElement self, ToJSString name) =>
                                self -> name -> m NodeList
getElementsByTagNameUnchecked self name
  = liftDOM
      (((toElement self) ^. jsf "getElementsByTagName" [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
hasAttributes :: (MonadDOM m, IsElement self) => self -> m Bool
hasAttributes self
  = liftDOM
      (((toElement self) ^. jsf "hasAttributes" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
hasAttributes_ :: (MonadDOM m, IsElement self) => self -> m ()
hasAttributes_ self
  = liftDOM (void ((toElement self) ^. jsf "hasAttributes" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNS ::
               (MonadDOM m, IsElement self, ToJSString namespaceURI,
                ToJSString localName, FromJSString result) =>
                 self -> Maybe namespaceURI -> localName -> m result
getAttributeNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNS_ ::
                (MonadDOM m, IsElement self, ToJSString namespaceURI,
                 ToJSString localName) =>
                  self -> Maybe namespaceURI -> localName -> m ()
getAttributeNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "getAttributeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNS Mozilla Element.setAttributeNS documentation> 
setAttributeNS ::
               (MonadDOM m, IsElement self, ToJSString namespaceURI,
                ToJSString qualifiedName, ToJSString value) =>
                 self -> Maybe namespaceURI -> qualifiedName -> value -> m ()
setAttributeNS self namespaceURI qualifiedName value
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttributeNS"
            [toJSVal namespaceURI, toJSVal qualifiedName, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNS Mozilla Element.removeAttributeNS documentation> 
removeAttributeNS ::
                  (MonadDOM m, IsElement self, ToJSString namespaceURI,
                   ToJSString localName) =>
                    self -> Maybe namespaceURI -> localName -> m ()
removeAttributeNS self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "removeAttributeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadDOM m, IsElement self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> Maybe namespaceURI -> localName -> m (Maybe NodeList)
getElementsByTagNameNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getElementsByTagNameNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNS_ ::
                        (MonadDOM m, IsElement self, ToJSString namespaceURI,
                         ToJSString localName) =>
                          self -> Maybe namespaceURI -> localName -> m ()
getElementsByTagNameNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "getElementsByTagNameNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNSUnsafe ::
                             (MonadDOM m, IsElement self, ToJSString namespaceURI,
                              ToJSString localName, HasCallStack) =>
                               self -> Maybe namespaceURI -> localName -> m NodeList
getElementsByTagNameNSUnsafe self namespaceURI localName
  = liftDOM
      ((((toElement self) ^. jsf "getElementsByTagNameNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNSUnchecked ::
                                (MonadDOM m, IsElement self, ToJSString namespaceURI,
                                 ToJSString localName) =>
                                  self -> Maybe namespaceURI -> localName -> m NodeList
getElementsByTagNameNSUnchecked self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getElementsByTagNameNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNS ::
                   (MonadDOM m, IsElement self, ToJSString namespaceURI,
                    ToJSString localName) =>
                     self -> Maybe namespaceURI -> localName -> m (Maybe Attr)
getAttributeNodeNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNodeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNS_ ::
                    (MonadDOM m, IsElement self, ToJSString namespaceURI,
                     ToJSString localName) =>
                      self -> Maybe namespaceURI -> localName -> m ()
getAttributeNodeNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "getAttributeNodeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNSUnsafe ::
                         (MonadDOM m, IsElement self, ToJSString namespaceURI,
                          ToJSString localName, HasCallStack) =>
                           self -> Maybe namespaceURI -> localName -> m Attr
getAttributeNodeNSUnsafe self namespaceURI localName
  = liftDOM
      ((((toElement self) ^. jsf "getAttributeNodeNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNSUnchecked ::
                            (MonadDOM m, IsElement self, ToJSString namespaceURI,
                             ToJSString localName) =>
                              self -> Maybe namespaceURI -> localName -> m Attr
getAttributeNodeNSUnchecked self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNodeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNS ::
                   (MonadDOM m, IsElement self) =>
                     self -> Maybe Attr -> m (Maybe Attr)
setAttributeNodeNS self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNS_ ::
                    (MonadDOM m, IsElement self) => self -> Maybe Attr -> m ()
setAttributeNodeNS_ self newAttr
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNSUnsafe ::
                         (MonadDOM m, IsElement self, HasCallStack) =>
                           self -> Maybe Attr -> m Attr
setAttributeNodeNSUnsafe self newAttr
  = liftDOM
      ((((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNSUnchecked ::
                            (MonadDOM m, IsElement self) => self -> Maybe Attr -> m Attr
setAttributeNodeNSUnchecked self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
hasAttribute ::
             (MonadDOM m, IsElement self, ToJSString name) =>
               self -> name -> m Bool
hasAttribute self name
  = liftDOM
      (((toElement self) ^. jsf "hasAttribute" [toJSVal name]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
hasAttribute_ ::
              (MonadDOM m, IsElement self, ToJSString name) =>
                self -> name -> m ()
hasAttribute_ self name
  = liftDOM
      (void ((toElement self) ^. jsf "hasAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
hasAttributeNS ::
               (MonadDOM m, IsElement self, ToJSString namespaceURI,
                ToJSString localName) =>
                 self -> Maybe namespaceURI -> localName -> m Bool
hasAttributeNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "hasAttributeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
hasAttributeNS_ ::
                (MonadDOM m, IsElement self, ToJSString namespaceURI,
                 ToJSString localName) =>
                  self -> Maybe namespaceURI -> localName -> m ()
hasAttributeNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "hasAttributeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.focus Mozilla Element.focus documentation> 
focus :: (MonadDOM m, IsElement self) => self -> m ()
focus self = liftDOM (void ((toElement self) ^. jsf "focus" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.blur Mozilla Element.blur documentation> 
blur :: (MonadDOM m, IsElement self) => self -> m ()
blur self = liftDOM (void ((toElement self) ^. jsf "blur" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoView Mozilla Element.scrollIntoView documentation> 
scrollIntoView ::
               (MonadDOM m, IsElement self) => self -> Bool -> m ()
scrollIntoView self alignWithTop
  = liftDOM
      (void
         ((toElement self) ^. jsf "scrollIntoView" [toJSVal alignWithTop]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoViewIfNeeded Mozilla Element.scrollIntoViewIfNeeded documentation> 
scrollIntoViewIfNeeded ::
                       (MonadDOM m, IsElement self) => self -> Bool -> m ()
scrollIntoViewIfNeeded self centerIfNeeded
  = liftDOM
      (void
         ((toElement self) ^. jsf "scrollIntoViewIfNeeded"
            [toJSVal centerIfNeeded]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByLines Mozilla Element.scrollByLines documentation> 
scrollByLines ::
              (MonadDOM m, IsElement self) => self -> Int -> m ()
scrollByLines self lines
  = liftDOM
      (void ((toElement self) ^. jsf "scrollByLines" [toJSVal lines]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByPages Mozilla Element.scrollByPages documentation> 
scrollByPages ::
              (MonadDOM m, IsElement self) => self -> Int -> m ()
scrollByPages self pages
  = liftDOM
      (void ((toElement self) ^. jsf "scrollByPages" [toJSVal pages]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadDOM m, IsElement self, ToJSString name) =>
                         self -> name -> m (Maybe NodeList)
getElementsByClassName self name
  = liftDOM
      (((toElement self) ^. jsf "getElementsByClassName" [toJSVal name])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassName_ ::
                        (MonadDOM m, IsElement self, ToJSString name) =>
                          self -> name -> m ()
getElementsByClassName_ self name
  = liftDOM
      (void
         ((toElement self) ^. jsf "getElementsByClassName" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassNameUnsafe ::
                             (MonadDOM m, IsElement self, ToJSString name, HasCallStack) =>
                               self -> name -> m NodeList
getElementsByClassNameUnsafe self name
  = liftDOM
      ((((toElement self) ^. jsf "getElementsByClassName" [toJSVal name])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassNameUnchecked ::
                                (MonadDOM m, IsElement self, ToJSString name) =>
                                  self -> name -> m NodeList
getElementsByClassNameUnchecked self name
  = liftDOM
      (((toElement self) ^. jsf "getElementsByClassName" [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelector Mozilla Element.querySelector documentation> 
querySelector ::
              (MonadDOM m, IsElement self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftDOM
      (((toElement self) ^. jsf "querySelector" [toJSVal selectors]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelector Mozilla Element.querySelector documentation> 
querySelector_ ::
               (MonadDOM m, IsElement self, ToJSString selectors) =>
                 self -> selectors -> m ()
querySelector_ self selectors
  = liftDOM
      (void
         ((toElement self) ^. jsf "querySelector" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelector Mozilla Element.querySelector documentation> 
querySelectorUnsafe ::
                    (MonadDOM m, IsElement self, ToJSString selectors, HasCallStack) =>
                      self -> selectors -> m Element
querySelectorUnsafe self selectors
  = liftDOM
      ((((toElement self) ^. jsf "querySelector" [toJSVal selectors]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelector Mozilla Element.querySelector documentation> 
querySelectorUnchecked ::
                       (MonadDOM m, IsElement self, ToJSString selectors) =>
                         self -> selectors -> m Element
querySelectorUnchecked self selectors
  = liftDOM
      (((toElement self) ^. jsf "querySelector" [toJSVal selectors]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelectorAll Mozilla Element.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadDOM m, IsElement self, ToJSString selectors) =>
                   self -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftDOM
      (((toElement self) ^. jsf "querySelectorAll" [toJSVal selectors])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelectorAll Mozilla Element.querySelectorAll documentation> 
querySelectorAll_ ::
                  (MonadDOM m, IsElement self, ToJSString selectors) =>
                    self -> selectors -> m ()
querySelectorAll_ self selectors
  = liftDOM
      (void
         ((toElement self) ^. jsf "querySelectorAll" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelectorAll Mozilla Element.querySelectorAll documentation> 
querySelectorAllUnsafe ::
                       (MonadDOM m, IsElement self, ToJSString selectors, HasCallStack) =>
                         self -> selectors -> m NodeList
querySelectorAllUnsafe self selectors
  = liftDOM
      ((((toElement self) ^. jsf "querySelectorAll" [toJSVal selectors])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelectorAll Mozilla Element.querySelectorAll documentation> 
querySelectorAllUnchecked ::
                          (MonadDOM m, IsElement self, ToJSString selectors) =>
                            self -> selectors -> m NodeList
querySelectorAllUnchecked self selectors
  = liftDOM
      (((toElement self) ^. jsf "querySelectorAll" [toJSVal selectors])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
matches ::
        (MonadDOM m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m Bool
matches self selectors
  = liftDOM
      (((toElement self) ^. jsf "matches" [toJSVal selectors]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
matches_ ::
         (MonadDOM m, IsElement self, ToJSString selectors) =>
           self -> selectors -> m ()
matches_ self selectors
  = liftDOM
      (void ((toElement self) ^. jsf "matches" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closest ::
        (MonadDOM m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m (Maybe Element)
closest self selectors
  = liftDOM
      (((toElement self) ^. jsf "closest" [toJSVal selectors]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closest_ ::
         (MonadDOM m, IsElement self, ToJSString selectors) =>
           self -> selectors -> m ()
closest_ self selectors
  = liftDOM
      (void ((toElement self) ^. jsf "closest" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closestUnsafe ::
              (MonadDOM m, IsElement self, ToJSString selectors, HasCallStack) =>
                self -> selectors -> m Element
closestUnsafe self selectors
  = liftDOM
      ((((toElement self) ^. jsf "closest" [toJSVal selectors]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closestUnchecked ::
                 (MonadDOM m, IsElement self, ToJSString selectors) =>
                   self -> selectors -> m Element
closestUnchecked self selectors
  = liftDOM
      (((toElement self) ^. jsf "closest" [toJSVal selectors]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
webkitMatchesSelector ::
                      (MonadDOM m, IsElement self, ToJSString selectors) =>
                        self -> selectors -> m Bool
webkitMatchesSelector self selectors
  = liftDOM
      (((toElement self) ^. jsf "webkitMatchesSelector"
          [toJSVal selectors])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
webkitMatchesSelector_ ::
                       (MonadDOM m, IsElement self, ToJSString selectors) =>
                         self -> selectors -> m ()
webkitMatchesSelector_ self selectors
  = liftDOM
      (void
         ((toElement self) ^. jsf "webkitMatchesSelector"
            [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRects ::
               (MonadDOM m, IsElement self) => self -> m (Maybe ClientRectList)
getClientRects self
  = liftDOM
      (((toElement self) ^. jsf "getClientRects" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRects_ :: (MonadDOM m, IsElement self) => self -> m ()
getClientRects_ self
  = liftDOM (void ((toElement self) ^. jsf "getClientRects" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRectsUnsafe ::
                     (MonadDOM m, IsElement self, HasCallStack) =>
                       self -> m ClientRectList
getClientRectsUnsafe self
  = liftDOM
      ((((toElement self) ^. jsf "getClientRects" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRectsUnchecked ::
                        (MonadDOM m, IsElement self) => self -> m ClientRectList
getClientRectsUnchecked self
  = liftDOM
      (((toElement self) ^. jsf "getClientRects" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRect ::
                      (MonadDOM m, IsElement self) => self -> m (Maybe ClientRect)
getBoundingClientRect self
  = liftDOM
      (((toElement self) ^. jsf "getBoundingClientRect" ()) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRect_ ::
                       (MonadDOM m, IsElement self) => self -> m ()
getBoundingClientRect_ self
  = liftDOM
      (void ((toElement self) ^. jsf "getBoundingClientRect" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRectUnsafe ::
                            (MonadDOM m, IsElement self, HasCallStack) => self -> m ClientRect
getBoundingClientRectUnsafe self
  = liftDOM
      ((((toElement self) ^. jsf "getBoundingClientRect" ()) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRectUnchecked ::
                               (MonadDOM m, IsElement self) => self -> m ClientRect
getBoundingClientRectUnchecked self
  = liftDOM
      (((toElement self) ^. jsf "getBoundingClientRect" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullScreen Mozilla Element.webkitRequestFullScreen documentation> 
webkitRequestFullScreen ::
                        (MonadDOM m, IsElement self) => self -> Word -> m ()
webkitRequestFullScreen self flags
  = liftDOM
      (void
         ((toElement self) ^. jsf "webkitRequestFullScreen"
            [toJSVal flags]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullscreen Mozilla Element.webkitRequestFullscreen documentation> 
webkitRequestFullscreen ::
                        (MonadDOM m, IsElement self) => self -> m ()
webkitRequestFullscreen self
  = liftDOM
      (void ((toElement self) ^. jsf "webkitRequestFullscreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.requestPointerLock Mozilla Element.requestPointerLock documentation> 
requestPointerLock :: (MonadDOM m, IsElement self) => self -> m ()
requestPointerLock self
  = liftDOM (void ((toElement self) ^. jsf "requestPointerLock" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitGetRegionFlowRanges Mozilla Element.webkitGetRegionFlowRanges documentation> 
webkitGetRegionFlowRanges ::
                          (MonadDOM m, IsElement self) => self -> m [Maybe Range]
webkitGetRegionFlowRanges self
  = liftDOM
      (((toElement self) ^. jsf "webkitGetRegionFlowRanges" ()) >>=
         fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitGetRegionFlowRanges Mozilla Element.webkitGetRegionFlowRanges documentation> 
webkitGetRegionFlowRanges_ ::
                           (MonadDOM m, IsElement self) => self -> m ()
webkitGetRegionFlowRanges_ self
  = liftDOM
      (void ((toElement self) ^. jsf "webkitGetRegionFlowRanges" ()))
pattern ALLOW_KEYBOARD_INPUT = 1

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
getTagName ::
           (MonadDOM m, IsElement self, FromJSString result) =>
             self -> m (Maybe result)
getTagName self
  = liftDOM
      (((toElement self) ^. js "tagName") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
getTagNameUnchecked ::
                    (MonadDOM m, IsElement self, FromJSString result) =>
                      self -> m result
getTagNameUnchecked self
  = liftDOM
      (((toElement self) ^. js "tagName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributes Mozilla Element.attributes documentation> 
getAttributes ::
              (MonadDOM m, IsElement self) => self -> m (Maybe NamedNodeMap)
getAttributes self
  = liftDOM (((toElement self) ^. js "attributes") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributes Mozilla Element.attributes documentation> 
getAttributesUnchecked ::
                       (MonadDOM m, IsElement self) => self -> m NamedNodeMap
getAttributesUnchecked self
  = liftDOM
      (((toElement self) ^. js "attributes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.style Mozilla Element.style documentation> 
getStyle ::
         (MonadDOM m, IsElement self) =>
           self -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftDOM (((toElement self) ^. js "style") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.style Mozilla Element.style documentation> 
getStyleUnchecked ::
                  (MonadDOM m, IsElement self) => self -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftDOM (((toElement self) ^. js "style") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
setId ::
      (MonadDOM m, IsElement self, ToJSString val) => self -> val -> m ()
setId self val
  = liftDOM ((toElement self) ^. jss "id" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
getId ::
      (MonadDOM m, IsElement self, FromJSString result) =>
        self -> m result
getId self
  = liftDOM (((toElement self) ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetLeft Mozilla Element.offsetLeft documentation> 
getOffsetLeft :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetLeft self
  = liftDOM (((toElement self) ^. js "offsetLeft") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetTop Mozilla Element.offsetTop documentation> 
getOffsetTop :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetTop self
  = liftDOM (((toElement self) ^. js "offsetTop") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetWidth Mozilla Element.offsetWidth documentation> 
getOffsetWidth :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetWidth self
  = liftDOM (((toElement self) ^. js "offsetWidth") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetHeight Mozilla Element.offsetHeight documentation> 
getOffsetHeight :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetHeight self
  = liftDOM (((toElement self) ^. js "offsetHeight") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientLeft Mozilla Element.clientLeft documentation> 
getClientLeft :: (MonadDOM m, IsElement self) => self -> m Double
getClientLeft self
  = liftDOM (((toElement self) ^. js "clientLeft") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientTop Mozilla Element.clientTop documentation> 
getClientTop :: (MonadDOM m, IsElement self) => self -> m Double
getClientTop self
  = liftDOM (((toElement self) ^. js "clientTop") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientWidth Mozilla Element.clientWidth documentation> 
getClientWidth :: (MonadDOM m, IsElement self) => self -> m Double
getClientWidth self
  = liftDOM (((toElement self) ^. js "clientWidth") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientHeight Mozilla Element.clientHeight documentation> 
getClientHeight :: (MonadDOM m, IsElement self) => self -> m Double
getClientHeight self
  = liftDOM (((toElement self) ^. js "clientHeight") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
setScrollLeft ::
              (MonadDOM m, IsElement self) => self -> Int -> m ()
setScrollLeft self val
  = liftDOM ((toElement self) ^. jss "scrollLeft" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
getScrollLeft :: (MonadDOM m, IsElement self) => self -> m Int
getScrollLeft self
  = liftDOM
      (round <$> (((toElement self) ^. js "scrollLeft") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
setScrollTop :: (MonadDOM m, IsElement self) => self -> Int -> m ()
setScrollTop self val
  = liftDOM ((toElement self) ^. jss "scrollTop" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
getScrollTop :: (MonadDOM m, IsElement self) => self -> m Int
getScrollTop self
  = liftDOM
      (round <$> (((toElement self) ^. js "scrollTop") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollWidth Mozilla Element.scrollWidth documentation> 
getScrollWidth :: (MonadDOM m, IsElement self) => self -> m Int
getScrollWidth self
  = liftDOM
      (round <$>
         (((toElement self) ^. js "scrollWidth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollHeight Mozilla Element.scrollHeight documentation> 
getScrollHeight :: (MonadDOM m, IsElement self) => self -> m Int
getScrollHeight self
  = liftDOM
      (round <$>
         (((toElement self) ^. js "scrollHeight") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetParent Mozilla Element.offsetParent documentation> 
getOffsetParent ::
                (MonadDOM m, IsElement self) => self -> m (Maybe Element)
getOffsetParent self
  = liftDOM (((toElement self) ^. js "offsetParent") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetParent Mozilla Element.offsetParent documentation> 
getOffsetParentUnchecked ::
                         (MonadDOM m, IsElement self) => self -> m Element
getOffsetParentUnchecked self
  = liftDOM
      (((toElement self) ^. js "offsetParent") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
setInnerHTML ::
             (MonadDOM m, IsElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setInnerHTML self val
  = liftDOM ((toElement self) ^. jss "innerHTML" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
getInnerHTML ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m (Maybe result)
getInnerHTML self
  = liftDOM
      (((toElement self) ^. js "innerHTML") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
getInnerHTMLUnchecked ::
                      (MonadDOM m, IsElement self, FromJSString result) =>
                        self -> m result
getInnerHTMLUnchecked self
  = liftDOM
      (((toElement self) ^. js "innerHTML") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
setOuterHTML ::
             (MonadDOM m, IsElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setOuterHTML self val
  = liftDOM ((toElement self) ^. jss "outerHTML" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
getOuterHTML ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m (Maybe result)
getOuterHTML self
  = liftDOM
      (((toElement self) ^. js "outerHTML") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
getOuterHTMLUnchecked ::
                      (MonadDOM m, IsElement self, FromJSString result) =>
                        self -> m result
getOuterHTMLUnchecked self
  = liftDOM
      (((toElement self) ^. js "outerHTML") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
setClassName ::
             (MonadDOM m, IsElement self, ToJSString val) => self -> val -> m ()
setClassName self val
  = liftDOM ((toElement self) ^. jss "className" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
getClassName ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m result
getClassName self
  = liftDOM
      (((toElement self) ^. js "className") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.classList Mozilla Element.classList documentation> 
getClassList ::
             (MonadDOM m, IsElement self) => self -> m (Maybe DOMTokenList)
getClassList self
  = liftDOM (((toElement self) ^. js "classList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.classList Mozilla Element.classList documentation> 
getClassListUnchecked ::
                      (MonadDOM m, IsElement self) => self -> m DOMTokenList
getClassListUnchecked self
  = liftDOM
      (((toElement self) ^. js "classList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dataset Mozilla Element.dataset documentation> 
getDataset ::
           (MonadDOM m, IsElement self) => self -> m (Maybe DOMStringMap)
getDataset self
  = liftDOM (((toElement self) ^. js "dataset") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dataset Mozilla Element.dataset documentation> 
getDatasetUnchecked ::
                    (MonadDOM m, IsElement self) => self -> m DOMStringMap
getDatasetUnchecked self
  = liftDOM
      (((toElement self) ^. js "dataset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.firstElementChild Mozilla Element.firstElementChild documentation> 
getFirstElementChild ::
                     (MonadDOM m, IsElement self) => self -> m (Maybe Element)
getFirstElementChild self
  = liftDOM
      (((toElement self) ^. js "firstElementChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.firstElementChild Mozilla Element.firstElementChild documentation> 
getFirstElementChildUnchecked ::
                              (MonadDOM m, IsElement self) => self -> m Element
getFirstElementChildUnchecked self
  = liftDOM
      (((toElement self) ^. js "firstElementChild") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.lastElementChild Mozilla Element.lastElementChild documentation> 
getLastElementChild ::
                    (MonadDOM m, IsElement self) => self -> m (Maybe Element)
getLastElementChild self
  = liftDOM
      (((toElement self) ^. js "lastElementChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.lastElementChild Mozilla Element.lastElementChild documentation> 
getLastElementChildUnchecked ::
                             (MonadDOM m, IsElement self) => self -> m Element
getLastElementChildUnchecked self
  = liftDOM
      (((toElement self) ^. js "lastElementChild") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.previousElementSibling Mozilla Element.previousElementSibling documentation> 
getPreviousElementSibling ::
                          (MonadDOM m, IsElement self) => self -> m (Maybe Element)
getPreviousElementSibling self
  = liftDOM
      (((toElement self) ^. js "previousElementSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.previousElementSibling Mozilla Element.previousElementSibling documentation> 
getPreviousElementSiblingUnchecked ::
                                   (MonadDOM m, IsElement self) => self -> m Element
getPreviousElementSiblingUnchecked self
  = liftDOM
      (((toElement self) ^. js "previousElementSibling") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.nextElementSibling Mozilla Element.nextElementSibling documentation> 
getNextElementSibling ::
                      (MonadDOM m, IsElement self) => self -> m (Maybe Element)
getNextElementSibling self
  = liftDOM
      (((toElement self) ^. js "nextElementSibling") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.nextElementSibling Mozilla Element.nextElementSibling documentation> 
getNextElementSiblingUnchecked ::
                               (MonadDOM m, IsElement self) => self -> m Element
getNextElementSiblingUnchecked self
  = liftDOM
      (((toElement self) ^. js "nextElementSibling") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.childElementCount Mozilla Element.childElementCount documentation> 
getChildElementCount ::
                     (MonadDOM m, IsElement self) => self -> m Word
getChildElementCount self
  = liftDOM
      (round <$>
         (((toElement self) ^. js "childElementCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
setUiactions ::
             (MonadDOM m, IsElement self, ToJSString val) => self -> val -> m ()
setUiactions self val
  = liftDOM ((toElement self) ^. jss "uiactions" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
getUiactions ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m result
getUiactions self
  = liftDOM
      (((toElement self) ^. js "uiactions") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRegionOverset Mozilla Element.webkitRegionOverset documentation> 
getWebkitRegionOverset ::
                       (MonadDOM m, IsElement self, FromJSString result) =>
                         self -> m result
getWebkitRegionOverset self
  = liftDOM
      (((toElement self) ^. js "webkitRegionOverset") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onabort Mozilla Element.onabort documentation> 
abort ::
      (IsElement self, IsEventTarget self) => EventName self UIEvent
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onblur Mozilla Element.onblur documentation> 
blurEvent ::
          (IsElement self, IsEventTarget self) => EventName self FocusEvent
blurEvent = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onchange Mozilla Element.onchange documentation> 
change ::
       (IsElement self, IsEventTarget self) => EventName self Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onclick Mozilla Element.onclick documentation> 
click ::
      (IsElement self, IsEventTarget self) => EventName self MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncontextmenu Mozilla Element.oncontextmenu documentation> 
contextMenu ::
            (IsElement self, IsEventTarget self) => EventName self MouseEvent
contextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondblclick Mozilla Element.ondblclick documentation> 
dblClick ::
         (IsElement self, IsEventTarget self) => EventName self MouseEvent
dblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondrag Mozilla Element.ondrag documentation> 
drag ::
     (IsElement self, IsEventTarget self) => EventName self MouseEvent
drag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragend Mozilla Element.ondragend documentation> 
dragEnd ::
        (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragenter Mozilla Element.ondragenter documentation> 
dragEnter ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragleave Mozilla Element.ondragleave documentation> 
dragLeave ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragover Mozilla Element.ondragover documentation> 
dragOver ::
         (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragstart Mozilla Element.ondragstart documentation> 
dragStart ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondrop Mozilla Element.ondrop documentation> 
drop ::
     (IsElement self, IsEventTarget self) => EventName self MouseEvent
drop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onerror Mozilla Element.onerror documentation> 
error ::
      (IsElement self, IsEventTarget self) => EventName self UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onfocus Mozilla Element.onfocus documentation> 
focusEvent ::
           (IsElement self, IsEventTarget self) => EventName self FocusEvent
focusEvent = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oninput Mozilla Element.oninput documentation> 
input ::
      (IsElement self, IsEventTarget self) => EventName self Event
input = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oninvalid Mozilla Element.oninvalid documentation> 
invalid ::
        (IsElement self, IsEventTarget self) => EventName self Event
invalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeydown Mozilla Element.onkeydown documentation> 
keyDown ::
        (IsElement self, IsEventTarget self) =>
          EventName self KeyboardEvent
keyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeypress Mozilla Element.onkeypress documentation> 
keyPress ::
         (IsElement self, IsEventTarget self) =>
           EventName self KeyboardEvent
keyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeyup Mozilla Element.onkeyup documentation> 
keyUp ::
      (IsElement self, IsEventTarget self) =>
        EventName self KeyboardEvent
keyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onload Mozilla Element.onload documentation> 
load ::
     (IsElement self, IsEventTarget self) => EventName self UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousedown Mozilla Element.onmousedown documentation> 
mouseDown ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseenter Mozilla Element.onmouseenter documentation> 
mouseEnter ::
           (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseleave Mozilla Element.onmouseleave documentation> 
mouseLeave ::
           (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousemove Mozilla Element.onmousemove documentation> 
mouseMove ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseout Mozilla Element.onmouseout documentation> 
mouseOut ::
         (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseover Mozilla Element.onmouseover documentation> 
mouseOver ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseup Mozilla Element.onmouseup documentation> 
mouseUp ::
        (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousewheel Mozilla Element.onmousewheel documentation> 
mouseWheel ::
           (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onscroll Mozilla Element.onscroll documentation> 
scroll ::
       (IsElement self, IsEventTarget self) => EventName self UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselect Mozilla Element.onselect documentation> 
select ::
       (IsElement self, IsEventTarget self) => EventName self UIEvent
select = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onsubmit Mozilla Element.onsubmit documentation> 
submit ::
       (IsElement self, IsEventTarget self) => EventName self Event
submit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwheel Mozilla Element.onwheel documentation> 
wheel ::
      (IsElement self, IsEventTarget self) => EventName self WheelEvent
wheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecut Mozilla Element.onbeforecut documentation> 
beforeCut ::
          (IsElement self, IsEventTarget self) => EventName self Event
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncut Mozilla Element.oncut documentation> 
cut :: (IsElement self, IsEventTarget self) => EventName self Event
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecopy Mozilla Element.onbeforecopy documentation> 
beforeCopy ::
           (IsElement self, IsEventTarget self) => EventName self Event
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncopy Mozilla Element.oncopy documentation> 
copy ::
     (IsElement self, IsEventTarget self) => EventName self Event
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforepaste Mozilla Element.onbeforepaste documentation> 
beforePaste ::
            (IsElement self, IsEventTarget self) => EventName self Event
beforePaste = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onpaste Mozilla Element.onpaste documentation> 
paste ::
      (IsElement self, IsEventTarget self) => EventName self Event
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onreset Mozilla Element.onreset documentation> 
reset ::
      (IsElement self, IsEventTarget self) => EventName self Event
reset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onsearch Mozilla Element.onsearch documentation> 
search ::
       (IsElement self, IsEventTarget self) => EventName self Event
search = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselectstart Mozilla Element.onselectstart documentation> 
selectStart ::
            (IsElement self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchstart Mozilla Element.ontouchstart documentation> 
touchStart ::
           (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchmove Mozilla Element.ontouchmove documentation> 
touchMove ::
          (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchend Mozilla Element.ontouchend documentation> 
touchEnd ::
         (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchcancel Mozilla Element.ontouchcancel documentation> 
touchCancel ::
            (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchCancel = unsafeEventName (toJSString "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenchange Mozilla Element.onwebkitfullscreenchange documentation> 
webKitFullscreenChange ::
                       (IsElement self, IsEventTarget self) => EventName self Event
webKitFullscreenChange
  = unsafeEventName (toJSString "webkitfullscreenchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenerror Mozilla Element.onwebkitfullscreenerror documentation> 
webKitFullscreenError ::
                      (IsElement self, IsEventTarget self) => EventName self Event
webKitFullscreenError
  = unsafeEventName (toJSString "webkitfullscreenerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealbottom Mozilla Element.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom ::
                       (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealleft Mozilla Element.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft ::
                     (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealright Mozilla Element.onwebkitwillrevealright documentation> 
webKitWillRevealRight ::
                      (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealtop Mozilla Element.onwebkitwillrevealtop documentation> 
webKitWillRevealTop ::
                    (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")
