{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.URLUtils
       (toString, toString_, setHref, getHref, getOrigin, setProtocol,
        getProtocol, getProtocolUnchecked, setUsername, getUsername,
        getUsernameUnchecked, setPassword, getPassword,
        getPasswordUnchecked, setHost, getHost, getHostUnchecked,
        setHostname, getHostname, getHostnameUnchecked, setPort, getPort,
        getPortUnchecked, setPathname, getPathname, getPathnameUnchecked,
        setSearch, getSearch, getSearchUnchecked, setHash, getHash,
        getHashUnchecked, URLUtils(..), gTypeURLUtils)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.toString Mozilla URLUtils.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => URLUtils -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.toString Mozilla URLUtils.toString documentation> 
toString_ :: (MonadDOM m) => URLUtils -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.href Mozilla URLUtils.href documentation> 
setHref :: (MonadDOM m, ToJSString val) => URLUtils -> val -> m ()
setHref self val = liftDOM (self ^. jss "href" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.href Mozilla URLUtils.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) => URLUtils -> m result
getHref self = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.origin Mozilla URLUtils.origin documentation> 
getOrigin ::
          (MonadDOM m, FromJSString result) => URLUtils -> m result
getOrigin self
  = liftDOM ((self ^. js "origin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
setProtocol ::
            (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setProtocol self val
  = liftDOM (self ^. jss "protocol" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
getProtocol ::
            (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getProtocol self
  = liftDOM ((self ^. js "protocol") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
getProtocolUnchecked ::
                     (MonadDOM m, FromJSString result) => URLUtils -> m result
getProtocolUnchecked self
  = liftDOM ((self ^. js "protocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
setUsername ::
            (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setUsername self val
  = liftDOM (self ^. jss "username" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
getUsername ::
            (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getUsername self
  = liftDOM ((self ^. js "username") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
getUsernameUnchecked ::
                     (MonadDOM m, FromJSString result) => URLUtils -> m result
getUsernameUnchecked self
  = liftDOM ((self ^. js "username") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
setPassword ::
            (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setPassword self val
  = liftDOM (self ^. jss "password" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
getPassword ::
            (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getPassword self
  = liftDOM ((self ^. js "password") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
getPasswordUnchecked ::
                     (MonadDOM m, FromJSString result) => URLUtils -> m result
getPasswordUnchecked self
  = liftDOM ((self ^. js "password") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
setHost ::
        (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setHost self val = liftDOM (self ^. jss "host" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
getHost ::
        (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getHost self = liftDOM ((self ^. js "host") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
getHostUnchecked ::
                 (MonadDOM m, FromJSString result) => URLUtils -> m result
getHostUnchecked self
  = liftDOM ((self ^. js "host") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
setHostname ::
            (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setHostname self val
  = liftDOM (self ^. jss "hostname" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
getHostname ::
            (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getHostname self
  = liftDOM ((self ^. js "hostname") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
getHostnameUnchecked ::
                     (MonadDOM m, FromJSString result) => URLUtils -> m result
getHostnameUnchecked self
  = liftDOM ((self ^. js "hostname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
setPort ::
        (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setPort self val = liftDOM (self ^. jss "port" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
getPort ::
        (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getPort self = liftDOM ((self ^. js "port") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
getPortUnchecked ::
                 (MonadDOM m, FromJSString result) => URLUtils -> m result
getPortUnchecked self
  = liftDOM ((self ^. js "port") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
setPathname ::
            (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setPathname self val
  = liftDOM (self ^. jss "pathname" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
getPathname ::
            (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getPathname self
  = liftDOM ((self ^. js "pathname") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
getPathnameUnchecked ::
                     (MonadDOM m, FromJSString result) => URLUtils -> m result
getPathnameUnchecked self
  = liftDOM ((self ^. js "pathname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
setSearch ::
          (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setSearch self val = liftDOM (self ^. jss "search" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
getSearch ::
          (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getSearch self
  = liftDOM ((self ^. js "search") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
getSearchUnchecked ::
                   (MonadDOM m, FromJSString result) => URLUtils -> m result
getSearchUnchecked self
  = liftDOM ((self ^. js "search") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
setHash ::
        (MonadDOM m, ToJSString val) => URLUtils -> Maybe val -> m ()
setHash self val = liftDOM (self ^. jss "hash" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
getHash ::
        (MonadDOM m, FromJSString result) => URLUtils -> m (Maybe result)
getHash self = liftDOM ((self ^. js "hash") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
getHashUnchecked ::
                 (MonadDOM m, FromJSString result) => URLUtils -> m result
getHashUnchecked self
  = liftDOM ((self ^. js "hash") >>= fromJSValUnchecked)
