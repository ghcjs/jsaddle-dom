{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XMLHttpRequest
       (newXMLHttpRequest, open, setRequestHeader, send, abort,
        getAllResponseHeaders, getAllResponseHeaders_,
        getAllResponseHeadersUnchecked, getResponseHeader,
        getResponseHeader_, getResponseHeaderUnchecked, overrideMimeType,
        pattern UNSENT, pattern OPENED, pattern HEADERS_RECEIVED,
        pattern LOADING, pattern DONE, abortEvent, error, load, loadEnd,
        loadStart, progress, timeout, readyStateChange, setTimeout,
        getTimeout, getReadyState, setWithCredentials, getWithCredentials,
        getUpload, getUploadUnchecked, getResponseText,
        getResponseTextUnchecked, getResponseXML, getResponseXMLUnchecked,
        setResponseType, getResponseType, getResponse,
        getResponseUnchecked, getStatus, getStatusText, getResponseURL,
        XMLHttpRequest(..), gTypeXMLHttpRequest)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation> 
newXMLHttpRequest :: (MonadDOM m) => m XMLHttpRequest
newXMLHttpRequest
  = liftDOM (XMLHttpRequest <$> new (jsg "XMLHttpRequest") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
open ::
     (MonadDOM m, ToJSString method, ToJSString url, ToJSString user,
      ToJSString password) =>
       XMLHttpRequest -> method -> url -> Bool -> user -> password -> m ()
open self method url async user password
  = liftDOM
      (void
         (self ^. jsf "open"
            [toJSVal method, toJSVal url, toJSVal async, toJSVal user,
             toJSVal password]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.setRequestHeader Mozilla XMLHttpRequest.setRequestHeader documentation> 
setRequestHeader ::
                 (MonadDOM m, ToJSString header, ToJSString value) =>
                   XMLHttpRequest -> header -> value -> m ()
setRequestHeader self header value
  = liftDOM
      (void
         (self ^. jsf "setRequestHeader" [toJSVal header, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.send Mozilla XMLHttpRequest.send documentation> 
send :: (MonadDOM m) => XMLHttpRequest -> m ()
send self = liftDOM (void (self ^. jsf "send" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abort Mozilla XMLHttpRequest.abort documentation> 
abort :: (MonadDOM m) => XMLHttpRequest -> m ()
abort self = liftDOM (void (self ^. jsf "abort" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders ::
                      (MonadDOM m, FromJSString result) =>
                        XMLHttpRequest -> m (Maybe result)
getAllResponseHeaders self
  = liftDOM
      ((self ^. jsf "getAllResponseHeaders" ()) >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders_ :: (MonadDOM m) => XMLHttpRequest -> m ()
getAllResponseHeaders_ self
  = liftDOM (void (self ^. jsf "getAllResponseHeaders" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeadersUnchecked ::
                               (MonadDOM m, FromJSString result) => XMLHttpRequest -> m result
getAllResponseHeadersUnchecked self
  = liftDOM
      ((self ^. jsf "getAllResponseHeaders" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader ::
                  (MonadDOM m, ToJSString header, FromJSString result) =>
                    XMLHttpRequest -> header -> m (Maybe result)
getResponseHeader self header
  = liftDOM
      ((self ^. jsf "getResponseHeader" [toJSVal header]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader_ ::
                   (MonadDOM m, ToJSString header) => XMLHttpRequest -> header -> m ()
getResponseHeader_ self header
  = liftDOM (void (self ^. jsf "getResponseHeader" [toJSVal header]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeaderUnchecked ::
                           (MonadDOM m, ToJSString header, FromJSString result) =>
                             XMLHttpRequest -> header -> m result
getResponseHeaderUnchecked self header
  = liftDOM
      ((self ^. jsf "getResponseHeader" [toJSVal header]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.overrideMimeType Mozilla XMLHttpRequest.overrideMimeType documentation> 
overrideMimeType ::
                 (MonadDOM m, ToJSString override) =>
                   XMLHttpRequest -> override -> m ()
overrideMimeType self override
  = liftDOM
      (void (self ^. jsf "overrideMimeType" [toJSVal override]))
pattern UNSENT = 0
pattern OPENED = 1
pattern HEADERS_RECEIVED = 2
pattern LOADING = 3
pattern DONE = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onabort Mozilla XMLHttpRequest.onabort documentation> 
abortEvent :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onerror Mozilla XMLHttpRequest.onerror documentation> 
error :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onload Mozilla XMLHttpRequest.onload documentation> 
load :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onloadend Mozilla XMLHttpRequest.onloadend documentation> 
loadEnd :: EventName XMLHttpRequest ProgressEvent
loadEnd = unsafeEventName (toJSString "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onloadstart Mozilla XMLHttpRequest.onloadstart documentation> 
loadStart :: EventName XMLHttpRequest ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onprogress Mozilla XMLHttpRequest.onprogress documentation> 
progress :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
progress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.ontimeout Mozilla XMLHttpRequest.ontimeout documentation> 
timeout :: EventName XMLHttpRequest ProgressEvent
timeout = unsafeEventName (toJSString "timeout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onreadystatechange Mozilla XMLHttpRequest.onreadystatechange documentation> 
readyStateChange :: EventName XMLHttpRequest Event
readyStateChange = unsafeEventName (toJSString "readystatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
setTimeout :: (MonadDOM m) => XMLHttpRequest -> Word -> m ()
setTimeout self val = liftDOM (self ^. jss "timeout" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
getTimeout :: (MonadDOM m) => XMLHttpRequest -> m Word
getTimeout self
  = liftDOM (round <$> ((self ^. js "timeout") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyState Mozilla XMLHttpRequest.readyState documentation> 
getReadyState :: (MonadDOM m) => XMLHttpRequest -> m Word
getReadyState self
  = liftDOM (round <$> ((self ^. js "readyState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
setWithCredentials ::
                   (MonadDOM m) => XMLHttpRequest -> Bool -> m ()
setWithCredentials self val
  = liftDOM (self ^. jss "withCredentials" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
getWithCredentials :: (MonadDOM m) => XMLHttpRequest -> m Bool
getWithCredentials self
  = liftDOM ((self ^. js "withCredentials") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.upload Mozilla XMLHttpRequest.upload documentation> 
getUpload ::
          (MonadDOM m) => XMLHttpRequest -> m (Maybe XMLHttpRequestUpload)
getUpload self = liftDOM ((self ^. js "upload") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.upload Mozilla XMLHttpRequest.upload documentation> 
getUploadUnchecked ::
                   (MonadDOM m) => XMLHttpRequest -> m XMLHttpRequestUpload
getUploadUnchecked self
  = liftDOM ((self ^. js "upload") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseText ::
                (MonadDOM m, FromJSString result) =>
                  XMLHttpRequest -> m (Maybe result)
getResponseText self
  = liftDOM ((self ^. js "responseText") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseTextUnchecked ::
                         (MonadDOM m, FromJSString result) => XMLHttpRequest -> m result
getResponseTextUnchecked self
  = liftDOM ((self ^. js "responseText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXML ::
               (MonadDOM m) => XMLHttpRequest -> m (Maybe Document)
getResponseXML self
  = liftDOM ((self ^. js "responseXML") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXMLUnchecked ::
                        (MonadDOM m) => XMLHttpRequest -> m Document
getResponseXMLUnchecked self
  = liftDOM ((self ^. js "responseXML") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
setResponseType ::
                (MonadDOM m) =>
                  XMLHttpRequest -> XMLHttpRequestResponseType -> m ()
setResponseType self val
  = liftDOM (self ^. jss "responseType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
getResponseType ::
                (MonadDOM m) => XMLHttpRequest -> m XMLHttpRequestResponseType
getResponseType self
  = liftDOM ((self ^. js "responseType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.response Mozilla XMLHttpRequest.response documentation> 
getResponse :: (MonadDOM m) => XMLHttpRequest -> m (Maybe GObject)
getResponse self = liftDOM ((self ^. js "response") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.response Mozilla XMLHttpRequest.response documentation> 
getResponseUnchecked :: (MonadDOM m) => XMLHttpRequest -> m GObject
getResponseUnchecked self
  = liftDOM ((self ^. js "response") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.status Mozilla XMLHttpRequest.status documentation> 
getStatus :: (MonadDOM m) => XMLHttpRequest -> m Word
getStatus self
  = liftDOM (round <$> ((self ^. js "status") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.statusText Mozilla XMLHttpRequest.statusText documentation> 
getStatusText ::
              (MonadDOM m, FromJSString result) => XMLHttpRequest -> m result
getStatusText self
  = liftDOM ((self ^. js "statusText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseURL Mozilla XMLHttpRequest.responseURL documentation> 
getResponseURL ::
               (MonadDOM m, FromJSString result) => XMLHttpRequest -> m result
getResponseURL self
  = liftDOM ((self ^. js "responseURL") >>= fromJSValUnchecked)
