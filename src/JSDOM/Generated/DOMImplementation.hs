{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMImplementation
       (createDocumentType, createDocumentType_, createDocument,
        createDocument_, createHTMLDocument, createHTMLDocument_,
        hasFeature, hasFeature_, DOMImplementation(..),
        gTypeDOMImplementation)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType ::
                   (MonadDOM m, ToJSString qualifiedName, ToJSString publicId,
                    ToJSString systemId) =>
                     DOMImplementation ->
                       qualifiedName -> publicId -> systemId -> m DocumentType
createDocumentType self qualifiedName publicId systemId
  = liftDOM
      ((self ^. jsf "createDocumentType"
          [toJSVal qualifiedName, toJSVal publicId, toJSVal systemId])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType_ ::
                    (MonadDOM m, ToJSString qualifiedName, ToJSString publicId,
                     ToJSString systemId) =>
                      DOMImplementation -> qualifiedName -> publicId -> systemId -> m ()
createDocumentType_ self qualifiedName publicId systemId
  = liftDOM
      (void
         (self ^. jsf "createDocumentType"
            [toJSVal qualifiedName, toJSVal publicId, toJSVal systemId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument ::
               (MonadDOM m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                 DOMImplementation ->
                   Maybe namespaceURI ->
                     qualifiedName -> Maybe DocumentType -> m XMLDocument
createDocument self namespaceURI qualifiedName doctype
  = liftDOM
      ((self ^. jsf "createDocument"
          [toJSVal namespaceURI, toJSVal qualifiedName, toJSVal doctype])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument_ ::
                (MonadDOM m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                  DOMImplementation ->
                    Maybe namespaceURI -> qualifiedName -> Maybe DocumentType -> m ()
createDocument_ self namespaceURI qualifiedName doctype
  = liftDOM
      (void
         (self ^. jsf "createDocument"
            [toJSVal namespaceURI, toJSVal qualifiedName, toJSVal doctype]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument ::
                   (MonadDOM m, ToJSString title) =>
                     DOMImplementation -> Maybe title -> m HTMLDocument
createHTMLDocument self title
  = liftDOM
      ((self ^. jsf "createHTMLDocument" [toJSVal title]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument_ ::
                    (MonadDOM m, ToJSString title) =>
                      DOMImplementation -> Maybe title -> m ()
createHTMLDocument_ self title
  = liftDOM (void (self ^. jsf "createHTMLDocument" [toJSVal title]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature :: (MonadDOM m) => DOMImplementation -> m Bool
hasFeature self
  = liftDOM ((self ^. jsf "hasFeature" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature_ :: (MonadDOM m) => DOMImplementation -> m ()
hasFeature_ self = liftDOM (void (self ^. jsf "hasFeature" ()))
