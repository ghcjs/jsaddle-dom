{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XMLHttpRequest
       (newXMLHttpRequest, openSimple, open, setRequestHeader, send,
        abort, getResponseHeader, getResponseHeader_,
        getResponseHeaderUnsafe, getResponseHeaderUnchecked,
        getAllResponseHeaders, getAllResponseHeaders_, overrideMimeType,
        pattern UNSENT, pattern OPENED, pattern HEADERS_RECEIVED,
        pattern LOADING, pattern DONE, readyStateChange, getReadyState,
        setTimeout, getTimeout, setWithCredentials, getWithCredentials,
        getUpload, getResponseURL, getStatus, getStatusText,
        setResponseType, getResponseType, getResponse, getResponseText,
        getResponseTextUnsafe, getResponseTextUnchecked, getResponseXML,
        getResponseXMLUnsafe, getResponseXMLUnchecked, XMLHttpRequest(..),
        gTypeXMLHttpRequest)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation> 
newXMLHttpRequest :: (MonadDOM m) => m XMLHttpRequest
newXMLHttpRequest
  = liftDOM (XMLHttpRequest <$> new (jsg "XMLHttpRequest") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
openSimple ::
           (MonadDOM m, ToJSString method, ToJSString url) =>
             XMLHttpRequest -> method -> url -> m ()
openSimple self method url
  = liftDOM (void (self ^. jsf "open" [toJSVal method, toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
open ::
     (MonadDOM m, ToJSString method, ToJSString url, ToJSString user,
      ToJSString password) =>
       XMLHttpRequest ->
         method -> url -> Bool -> Maybe user -> Maybe password -> m ()
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
send ::
     (MonadDOM m, IsXMLHttpRequestBody body) =>
       XMLHttpRequest -> Maybe body -> m ()
send self body = liftDOM (void (self ^. jsf "send" [toJSVal body]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abort Mozilla XMLHttpRequest.abort documentation> 
abort :: (MonadDOM m) => XMLHttpRequest -> m ()
abort self = liftDOM (void (self ^. jsf "abort" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader ::
                  (MonadDOM m, ToJSString name, FromJSString result) =>
                    XMLHttpRequest -> name -> m (Maybe result)
getResponseHeader self name
  = liftDOM
      ((self ^. jsf "getResponseHeader" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader_ ::
                   (MonadDOM m, ToJSString name) => XMLHttpRequest -> name -> m ()
getResponseHeader_ self name
  = liftDOM (void (self ^. jsf "getResponseHeader" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeaderUnsafe ::
                        (MonadDOM m, ToJSString name, HasCallStack, FromJSString result) =>
                          XMLHttpRequest -> name -> m result
getResponseHeaderUnsafe self name
  = liftDOM
      (((self ^. jsf "getResponseHeader" [toJSVal name]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeaderUnchecked ::
                           (MonadDOM m, ToJSString name, FromJSString result) =>
                             XMLHttpRequest -> name -> m result
getResponseHeaderUnchecked self name
  = liftDOM
      ((self ^. jsf "getResponseHeader" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders ::
                      (MonadDOM m, FromJSString result) => XMLHttpRequest -> m result
getAllResponseHeaders self
  = liftDOM
      ((self ^. jsf "getAllResponseHeaders" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders_ :: (MonadDOM m) => XMLHttpRequest -> m ()
getAllResponseHeaders_ self
  = liftDOM (void (self ^. jsf "getAllResponseHeaders" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.overrideMimeType Mozilla XMLHttpRequest.overrideMimeType documentation> 
overrideMimeType ::
                 (MonadDOM m, ToJSString mime) => XMLHttpRequest -> mime -> m ()
overrideMimeType self mime
  = liftDOM (void (self ^. jsf "overrideMimeType" [toJSVal mime]))
pattern UNSENT = 0
pattern OPENED = 1
pattern HEADERS_RECEIVED = 2
pattern LOADING = 3
pattern DONE = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onreadystatechange Mozilla XMLHttpRequest.onreadystatechange documentation> 
readyStateChange :: EventName XMLHttpRequest Event
readyStateChange = unsafeEventName (toJSString "readystatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyState Mozilla XMLHttpRequest.readyState documentation> 
getReadyState :: (MonadDOM m) => XMLHttpRequest -> m Word
getReadyState self
  = liftDOM (round <$> ((self ^. js "readyState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
setTimeout :: (MonadDOM m) => XMLHttpRequest -> Word -> m ()
setTimeout self val = liftDOM (self ^. jss "timeout" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
getTimeout :: (MonadDOM m) => XMLHttpRequest -> m Word
getTimeout self
  = liftDOM (round <$> ((self ^. js "timeout") >>= valToNumber))

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
          (MonadDOM m) => XMLHttpRequest -> m XMLHttpRequestUpload
getUpload self
  = liftDOM ((self ^. js "upload") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseURL Mozilla XMLHttpRequest.responseURL documentation> 
getResponseURL ::
               (MonadDOM m, FromJSString result) => XMLHttpRequest -> m result
getResponseURL self
  = liftDOM ((self ^. js "responseURL") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.status Mozilla XMLHttpRequest.status documentation> 
getStatus :: (MonadDOM m) => XMLHttpRequest -> m Word
getStatus self
  = liftDOM (round <$> ((self ^. js "status") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.statusText Mozilla XMLHttpRequest.statusText documentation> 
getStatusText ::
              (MonadDOM m, FromJSString result) => XMLHttpRequest -> m result
getStatusText self
  = liftDOM ((self ^. js "statusText") >>= fromJSValUnchecked)

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
getResponse :: (MonadDOM m) => XMLHttpRequest -> m JSVal
getResponse self = liftDOM ((self ^. js "response") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseText ::
                (MonadDOM m, FromJSString result) =>
                  XMLHttpRequest -> m (Maybe result)
getResponseText self
  = liftDOM ((self ^. js "responseText") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseTextUnsafe ::
                      (MonadDOM m, HasCallStack, FromJSString result) =>
                        XMLHttpRequest -> m result
getResponseTextUnsafe self
  = liftDOM
      (((self ^. js "responseText") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
getResponseXMLUnsafe ::
                     (MonadDOM m, HasCallStack) => XMLHttpRequest -> m Document
getResponseXMLUnsafe self
  = liftDOM
      (((self ^. js "responseXML") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXMLUnchecked ::
                        (MonadDOM m) => XMLHttpRequest -> m Document
getResponseXMLUnchecked self
  = liftDOM ((self ^. js "responseXML") >>= fromJSValUnchecked)
