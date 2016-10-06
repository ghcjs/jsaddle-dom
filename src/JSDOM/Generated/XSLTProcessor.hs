{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XSLTProcessor
       (newXSLTProcessor, importStylesheet, transformToFragment,
        transformToDocument, setParameter, getParameter, removeParameter,
        clearParameters, reset, XSLTProcessor, castToXSLTProcessor,
        gTypeXSLTProcessor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation> 
newXSLTProcessor :: (MonadDOM m) => m XSLTProcessor
newXSLTProcessor
  = liftDOM (XSLTProcessor <$> new (jsg "XSLTProcessor") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.importStylesheet Mozilla XSLTProcessor.importStylesheet documentation> 
importStylesheet ::
                 (MonadDOM m, IsNode stylesheet) =>
                   XSLTProcessor -> Maybe stylesheet -> m ()
importStylesheet self stylesheet
  = liftDOM
      (void (self ^. jsf "importStylesheet" [toJSVal stylesheet]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragment ::
                    (MonadDOM m, IsNode source, IsDocument docVal) =>
                      XSLTProcessor ->
                        Maybe source -> Maybe docVal -> m (Maybe DocumentFragment)
transformToFragment self source docVal
  = liftDOM
      ((self ^. jsf "transformToFragment"
          [toJSVal source, toJSVal docVal])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocument ::
                    (MonadDOM m, IsNode source) =>
                      XSLTProcessor -> Maybe source -> m (Maybe Document)
transformToDocument self source
  = liftDOM
      ((self ^. jsf "transformToDocument" [toJSVal source]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.setParameter Mozilla XSLTProcessor.setParameter documentation> 
setParameter ::
             (MonadDOM m, ToJSString namespaceURI, ToJSString localName,
              ToJSString value) =>
               XSLTProcessor -> namespaceURI -> localName -> value -> m ()
setParameter self namespaceURI localName value
  = liftDOM
      (void
         (self ^. jsf "setParameter"
            [toJSVal namespaceURI, toJSVal localName, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameter ::
             (MonadDOM m, ToJSString namespaceURI, ToJSString localName,
              FromJSString result) =>
               XSLTProcessor -> namespaceURI -> localName -> m (Maybe result)
getParameter self namespaceURI localName
  = liftDOM
      ((self ^. jsf "getParameter"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.removeParameter Mozilla XSLTProcessor.removeParameter documentation> 
removeParameter ::
                (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                  XSLTProcessor -> namespaceURI -> localName -> m ()
removeParameter self namespaceURI localName
  = liftDOM
      (void
         (self ^. jsf "removeParameter"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.clearParameters Mozilla XSLTProcessor.clearParameters documentation> 
clearParameters :: (MonadDOM m) => XSLTProcessor -> m ()
clearParameters self
  = liftDOM (void (self ^. jsf "clearParameters" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.reset Mozilla XSLTProcessor.reset documentation> 
reset :: (MonadDOM m) => XSLTProcessor -> m ()
reset self = liftDOM (void (self ^. jsf "reset" ()))
