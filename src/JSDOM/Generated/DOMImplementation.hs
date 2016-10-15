{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMImplementation
       (hasFeature, hasFeature_, createDocumentType, createDocumentType_,
        createDocumentTypeUnchecked, createDocument, createDocument_,
        createDocumentUnchecked, createCSSStyleSheet, createCSSStyleSheet_,
        createCSSStyleSheetUnchecked, createHTMLDocument,
        createHTMLDocument_, createHTMLDocumentUnchecked,
        DOMImplementation(..), gTypeDOMImplementation)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature ::
           (MonadDOM m, ToJSString feature, ToJSString version) =>
             DOMImplementation -> feature -> Maybe version -> m Bool
hasFeature self feature version
  = liftDOM
      ((self ^. jsf "hasFeature" [toJSVal feature, toJSVal version]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature_ ::
            (MonadDOM m, ToJSString feature, ToJSString version) =>
              DOMImplementation -> feature -> Maybe version -> m ()
hasFeature_ self feature version
  = liftDOM
      (void
         (self ^. jsf "hasFeature" [toJSVal feature, toJSVal version]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType ::
                   (MonadDOM m, ToJSString qualifiedName, ToJSString publicId,
                    ToJSString systemId) =>
                     DOMImplementation ->
                       Maybe qualifiedName ->
                         Maybe publicId -> Maybe systemId -> m (Maybe DocumentType)
createDocumentType self qualifiedName publicId systemId
  = liftDOM
      ((self ^. jsf "createDocumentType"
          [toJSVal qualifiedName, toJSVal publicId, toJSVal systemId])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType_ ::
                    (MonadDOM m, ToJSString qualifiedName, ToJSString publicId,
                     ToJSString systemId) =>
                      DOMImplementation ->
                        Maybe qualifiedName -> Maybe publicId -> Maybe systemId -> m ()
createDocumentType_ self qualifiedName publicId systemId
  = liftDOM
      (void
         (self ^. jsf "createDocumentType"
            [toJSVal qualifiedName, toJSVal publicId, toJSVal systemId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentTypeUnchecked ::
                            (MonadDOM m, ToJSString qualifiedName, ToJSString publicId,
                             ToJSString systemId) =>
                              DOMImplementation ->
                                Maybe qualifiedName ->
                                  Maybe publicId -> Maybe systemId -> m DocumentType
createDocumentTypeUnchecked self qualifiedName publicId systemId
  = liftDOM
      ((self ^. jsf "createDocumentType"
          [toJSVal qualifiedName, toJSVal publicId, toJSVal systemId])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument ::
               (MonadDOM m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                 DOMImplementation ->
                   Maybe namespaceURI ->
                     Maybe qualifiedName -> Maybe DocumentType -> m (Maybe Document)
createDocument self namespaceURI qualifiedName doctype
  = liftDOM
      ((self ^. jsf "createDocument"
          [toJSVal namespaceURI, toJSVal qualifiedName, toJSVal doctype])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument_ ::
                (MonadDOM m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                  DOMImplementation ->
                    Maybe namespaceURI ->
                      Maybe qualifiedName -> Maybe DocumentType -> m ()
createDocument_ self namespaceURI qualifiedName doctype
  = liftDOM
      (void
         (self ^. jsf "createDocument"
            [toJSVal namespaceURI, toJSVal qualifiedName, toJSVal doctype]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocumentUnchecked ::
                        (MonadDOM m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                          DOMImplementation ->
                            Maybe namespaceURI ->
                              Maybe qualifiedName -> Maybe DocumentType -> m Document
createDocumentUnchecked self namespaceURI qualifiedName doctype
  = liftDOM
      ((self ^. jsf "createDocument"
          [toJSVal namespaceURI, toJSVal qualifiedName, toJSVal doctype])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createCSSStyleSheet Mozilla DOMImplementation.createCSSStyleSheet documentation> 
createCSSStyleSheet ::
                    (MonadDOM m, ToJSString title, ToJSString media) =>
                      DOMImplementation -> title -> media -> m (Maybe CSSStyleSheet)
createCSSStyleSheet self title media
  = liftDOM
      ((self ^. jsf "createCSSStyleSheet" [toJSVal title, toJSVal media])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createCSSStyleSheet Mozilla DOMImplementation.createCSSStyleSheet documentation> 
createCSSStyleSheet_ ::
                     (MonadDOM m, ToJSString title, ToJSString media) =>
                       DOMImplementation -> title -> media -> m ()
createCSSStyleSheet_ self title media
  = liftDOM
      (void
         (self ^. jsf "createCSSStyleSheet" [toJSVal title, toJSVal media]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createCSSStyleSheet Mozilla DOMImplementation.createCSSStyleSheet documentation> 
createCSSStyleSheetUnchecked ::
                             (MonadDOM m, ToJSString title, ToJSString media) =>
                               DOMImplementation -> title -> media -> m CSSStyleSheet
createCSSStyleSheetUnchecked self title media
  = liftDOM
      ((self ^. jsf "createCSSStyleSheet" [toJSVal title, toJSVal media])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument ::
                   (MonadDOM m, ToJSString title) =>
                     DOMImplementation -> title -> m (Maybe HTMLDocument)
createHTMLDocument self title
  = liftDOM
      ((self ^. jsf "createHTMLDocument" [toJSVal title]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument_ ::
                    (MonadDOM m, ToJSString title) =>
                      DOMImplementation -> title -> m ()
createHTMLDocument_ self title
  = liftDOM (void (self ^. jsf "createHTMLDocument" [toJSVal title]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocumentUnchecked ::
                            (MonadDOM m, ToJSString title) =>
                              DOMImplementation -> title -> m HTMLDocument
createHTMLDocumentUnchecked self title
  = liftDOM
      ((self ^. jsf "createHTMLDocument" [toJSVal title]) >>=
         fromJSValUnchecked)
