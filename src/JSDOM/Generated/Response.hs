{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Response
       (error, error_, redirect, redirect_, arrayBuffer, arrayBuffer_,
        blob, blob_, formData, formData_, json, json_, text, text_, clone,
        clone_, getType, getUrl, getRedirected, getStatus, getOk,
        getStatusText, getHeaders, getBody, getBodyUnsafe,
        getBodyUnchecked, getBodyUsed, Response(..), gTypeResponse)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.error Mozilla Response.error documentation> 
error :: (MonadDOM m) => Response -> m Response
error self
  = liftDOM ((self ^. jsf "error" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.error Mozilla Response.error documentation> 
error_ :: (MonadDOM m) => Response -> m ()
error_ self = liftDOM (void (self ^. jsf "error" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.redirect Mozilla Response.redirect documentation> 
redirect ::
         (MonadDOM m, ToJSString url) =>
           Response -> url -> Maybe Word -> m Response
redirect self url status
  = liftDOM
      ((self ^. jsf "redirect" [toJSVal url, toJSVal status]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.redirect Mozilla Response.redirect documentation> 
redirect_ ::
          (MonadDOM m, ToJSString url) =>
            Response -> url -> Maybe Word -> m ()
redirect_ self url status
  = liftDOM
      (void (self ^. jsf "redirect" [toJSVal url, toJSVal status]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.arrayBuffer Mozilla Response.arrayBuffer documentation> 
arrayBuffer :: (MonadDOM m) => Response -> m ArrayBuffer
arrayBuffer self
  = liftDOM
      (((self ^. jsf "arrayBuffer" ()) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.arrayBuffer Mozilla Response.arrayBuffer documentation> 
arrayBuffer_ :: (MonadDOM m) => Response -> m ()
arrayBuffer_ self = liftDOM (void (self ^. jsf "arrayBuffer" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.blob Mozilla Response.blob documentation> 
blob :: (MonadDOM m) => Response -> m Blob
blob self
  = liftDOM
      (((self ^. jsf "blob" ()) >>= readPromise) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.blob Mozilla Response.blob documentation> 
blob_ :: (MonadDOM m) => Response -> m ()
blob_ self = liftDOM (void (self ^. jsf "blob" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.formData Mozilla Response.formData documentation> 
formData :: (MonadDOM m) => Response -> m Blob
formData self
  = liftDOM
      (((self ^. jsf "formData" ()) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.formData Mozilla Response.formData documentation> 
formData_ :: (MonadDOM m) => Response -> m ()
formData_ self = liftDOM (void (self ^. jsf "formData" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.json Mozilla Response.json documentation> 
json :: (MonadDOM m) => Response -> m JSVal
json self
  = liftDOM (((self ^. jsf "json" ()) >>= readPromise) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.json Mozilla Response.json documentation> 
json_ :: (MonadDOM m) => Response -> m ()
json_ self = liftDOM (void (self ^. jsf "json" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.text Mozilla Response.text documentation> 
text :: (MonadDOM m, FromJSString result) => Response -> m result
text self
  = liftDOM
      (((self ^. jsf "text" ()) >>= readPromise) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.text Mozilla Response.text documentation> 
text_ :: (MonadDOM m) => Response -> m ()
text_ self = liftDOM (void (self ^. jsf "text" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.clone Mozilla Response.clone documentation> 
clone :: (MonadDOM m) => Response -> m Response
clone self
  = liftDOM ((self ^. jsf "clone" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.clone Mozilla Response.clone documentation> 
clone_ :: (MonadDOM m) => Response -> m ()
clone_ self = liftDOM (void (self ^. jsf "clone" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.type Mozilla Response.type documentation> 
getType :: (MonadDOM m) => Response -> m ResponseType
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.url Mozilla Response.url documentation> 
getUrl :: (MonadDOM m, FromJSString result) => Response -> m result
getUrl self = liftDOM ((self ^. js "url") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.redirected Mozilla Response.redirected documentation> 
getRedirected :: (MonadDOM m) => Response -> m Bool
getRedirected self
  = liftDOM ((self ^. js "redirected") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.status Mozilla Response.status documentation> 
getStatus :: (MonadDOM m) => Response -> m Word
getStatus self
  = liftDOM (round <$> ((self ^. js "status") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.ok Mozilla Response.ok documentation> 
getOk :: (MonadDOM m) => Response -> m Bool
getOk self = liftDOM ((self ^. js "ok") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.statusText Mozilla Response.statusText documentation> 
getStatusText ::
              (MonadDOM m, FromJSString result) => Response -> m result
getStatusText self
  = liftDOM ((self ^. js "statusText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.headers Mozilla Response.headers documentation> 
getHeaders :: (MonadDOM m) => Response -> m Headers
getHeaders self
  = liftDOM ((self ^. js "headers") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.body Mozilla Response.body documentation> 
getBody :: (MonadDOM m) => Response -> m (Maybe ReadableStream)
getBody self = liftDOM ((self ^. js "body") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.body Mozilla Response.body documentation> 
getBodyUnsafe ::
              (MonadDOM m, HasCallStack) => Response -> m ReadableStream
getBodyUnsafe self
  = liftDOM
      (((self ^. js "body") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.body Mozilla Response.body documentation> 
getBodyUnchecked :: (MonadDOM m) => Response -> m ReadableStream
getBodyUnchecked self
  = liftDOM ((self ^. js "body") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.bodyUsed Mozilla Response.bodyUsed documentation> 
getBodyUsed :: (MonadDOM m) => Response -> m Bool
getBodyUsed self = liftDOM ((self ^. js "bodyUsed") >>= valToBool)
