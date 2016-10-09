{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLObjectElement
       (checkValidity, checkValidity_, setCustomValidity, getSVGDocument,
        getSVGDocument_, getSVGDocumentUnchecked, getForm,
        getFormUnchecked, setCode, getCode, setAlign, getAlign, setArchive,
        getArchive, setBorder, getBorder, setCodeBase, getCodeBase,
        setCodeType, getCodeType, setData, getData, setDeclare, getDeclare,
        setHeight, getHeight, setHspace, getHspace, setName, getName,
        setStandby, getStandby, setType, getType, setUseMap, getUseMap,
        setVspace, getVspace, setWidth, getWidth, getWillValidate,
        getValidity, getValidityUnchecked, getValidationMessage,
        getContentDocument, getContentDocumentUnchecked, HTMLObjectElement,
        castToHTMLObjectElement, gTypeHTMLObjectElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.checkValidity Mozilla HTMLObjectElement.checkValidity documentation> 
checkValidity :: (MonadDOM m) => HTMLObjectElement -> m Bool
checkValidity self
  = liftDOM ((self ^. jsf "checkValidity" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.checkValidity Mozilla HTMLObjectElement.checkValidity documentation> 
checkValidity_ :: (MonadDOM m) => HTMLObjectElement -> m ()
checkValidity_ self
  = liftDOM (void (self ^. jsf "checkValidity" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.setCustomValidity Mozilla HTMLObjectElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadDOM m, ToJSString error) =>
                    HTMLObjectElement -> Maybe error -> m ()
setCustomValidity self error
  = liftDOM (void (self ^. jsf "setCustomValidity" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.getSVGDocument Mozilla HTMLObjectElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadDOM m) => HTMLObjectElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftDOM ((self ^. jsf "getSVGDocument" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.getSVGDocument Mozilla HTMLObjectElement.getSVGDocument documentation> 
getSVGDocument_ :: (MonadDOM m) => HTMLObjectElement -> m ()
getSVGDocument_ self
  = liftDOM (void (self ^. jsf "getSVGDocument" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.getSVGDocument Mozilla HTMLObjectElement.getSVGDocument documentation> 
getSVGDocumentUnchecked ::
                        (MonadDOM m) => HTMLObjectElement -> m SVGDocument
getSVGDocumentUnchecked self
  = liftDOM
      ((self ^. jsf "getSVGDocument" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.form Mozilla HTMLObjectElement.form documentation> 
getForm ::
        (MonadDOM m) => HTMLObjectElement -> m (Maybe HTMLFormElement)
getForm self = liftDOM ((self ^. js "form") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.form Mozilla HTMLObjectElement.form documentation> 
getFormUnchecked ::
                 (MonadDOM m) => HTMLObjectElement -> m HTMLFormElement
getFormUnchecked self
  = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
setCode ::
        (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCode self val = liftDOM (self ^. jss "code" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
getCode ::
        (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getCode self = liftDOM ((self ^. js "code") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
setArchive ::
           (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setArchive self val = liftDOM (self ^. jss "archive" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
getArchive ::
           (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getArchive self
  = liftDOM ((self ^. js "archive") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
setBorder ::
          (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setBorder self val = liftDOM (self ^. jss "border" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
getBorder ::
          (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getBorder self
  = liftDOM ((self ^. js "border") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
setCodeBase ::
            (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCodeBase self val
  = liftDOM (self ^. jss "codeBase" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
getCodeBase ::
            (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getCodeBase self
  = liftDOM ((self ^. js "codeBase") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
setCodeType ::
            (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCodeType self val
  = liftDOM (self ^. jss "codeType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
getCodeType ::
            (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getCodeType self
  = liftDOM ((self ^. js "codeType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
setData ::
        (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setData self val = liftDOM (self ^. jss "data" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
getData ::
        (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getData self = liftDOM ((self ^. js "data") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
setDeclare :: (MonadDOM m) => HTMLObjectElement -> Bool -> m ()
setDeclare self val = liftDOM (self ^. jss "declare" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
getDeclare :: (MonadDOM m) => HTMLObjectElement -> m Bool
getDeclare self = liftDOM ((self ^. js "declare") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
setHeight ::
          (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
getHeight ::
          (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
setHspace :: (MonadDOM m) => HTMLObjectElement -> Int -> m ()
setHspace self val = liftDOM (self ^. jss "hspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
getHspace :: (MonadDOM m) => HTMLObjectElement -> m Int
getHspace self
  = liftDOM (round <$> ((self ^. js "hspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
setStandby ::
           (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setStandby self val = liftDOM (self ^. jss "standby" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
getStandby ::
           (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getStandby self
  = liftDOM ((self ^. js "standby") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.type Mozilla HTMLObjectElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.type Mozilla HTMLObjectElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
setUseMap ::
          (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setUseMap self val = liftDOM (self ^. jss "useMap" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
getUseMap ::
          (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getUseMap self
  = liftDOM ((self ^. js "useMap") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
setVspace :: (MonadDOM m) => HTMLObjectElement -> Int -> m ()
setVspace self val = liftDOM (self ^. jss "vspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
getVspace :: (MonadDOM m) => HTMLObjectElement -> m Int
getVspace self
  = liftDOM (round <$> ((self ^. js "vspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLObjectElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.willValidate Mozilla HTMLObjectElement.willValidate documentation> 
getWillValidate :: (MonadDOM m) => HTMLObjectElement -> m Bool
getWillValidate self
  = liftDOM ((self ^. js "willValidate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validity Mozilla HTMLObjectElement.validity documentation> 
getValidity ::
            (MonadDOM m) => HTMLObjectElement -> m (Maybe ValidityState)
getValidity self = liftDOM ((self ^. js "validity") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validity Mozilla HTMLObjectElement.validity documentation> 
getValidityUnchecked ::
                     (MonadDOM m) => HTMLObjectElement -> m ValidityState
getValidityUnchecked self
  = liftDOM ((self ^. js "validity") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validationMessage Mozilla HTMLObjectElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadDOM m, FromJSString result) => HTMLObjectElement -> m result
getValidationMessage self
  = liftDOM ((self ^. js "validationMessage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.contentDocument Mozilla HTMLObjectElement.contentDocument documentation> 
getContentDocument ::
                   (MonadDOM m) => HTMLObjectElement -> m (Maybe Document)
getContentDocument self
  = liftDOM ((self ^. js "contentDocument") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.contentDocument Mozilla HTMLObjectElement.contentDocument documentation> 
getContentDocumentUnchecked ::
                            (MonadDOM m) => HTMLObjectElement -> m Document
getContentDocumentUnchecked self
  = liftDOM ((self ^. js "contentDocument") >>= fromJSValUnchecked)
