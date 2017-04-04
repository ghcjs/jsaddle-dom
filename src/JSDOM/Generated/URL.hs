{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.URL
       (newURL, newURL', newURL'', toJSON, toJSON_, createObjectURL,
        createObjectURL_, revokeObjectURL, createObjectURLSource,
        createObjectURLSource_, createObjectURLStream,
        createObjectURLStream_, setHref, getHref, getOrigin, setProtocol,
        getProtocol, setUsername, getUsername, setPassword, getPassword,
        setHost, getHost, setHostname, getHostname, setPort, getPort,
        setPathname, getPathname, setHash, getHash, setSearch, getSearch,
        getSearchParams, URL(..), gTypeURL)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL :: (MonadDOM m, ToJSString url) => url -> m URL
newURL url = liftDOM (URL <$> new (jsg "URL") [toJSVal url])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL' ::
        (MonadDOM m, ToJSString url, ToJSString base) =>
          url -> base -> m URL
newURL' url base
  = liftDOM (URL <$> new (jsg "URL") [toJSVal url, toJSVal base])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL'' :: (MonadDOM m, ToJSString url) => url -> URL -> m URL
newURL'' url base
  = liftDOM (URL <$> new (jsg "URL") [toJSVal url, toJSVal base])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.toJSON Mozilla URL.toJSON documentation> 
toJSON :: (MonadDOM m, FromJSString result) => URL -> m result
toJSON self
  = liftDOM ((self ^. jsf "toJSON" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.toJSON Mozilla URL.toJSON documentation> 
toJSON_ :: (MonadDOM m) => URL -> m ()
toJSON_ self = liftDOM (void (self ^. jsf "toJSON" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL ::
                (MonadDOM m, IsBlob blob, FromJSString result) =>
                  URL -> blob -> m result
createObjectURL self blob
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal blob]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL_ ::
                 (MonadDOM m, IsBlob blob) => URL -> blob -> m ()
createObjectURL_ self blob
  = liftDOM (void (self ^. jsf "createObjectURL" [toJSVal blob]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.revokeObjectURL Mozilla URL.revokeObjectURL documentation> 
revokeObjectURL ::
                (MonadDOM m, ToJSString url) => URL -> url -> m ()
revokeObjectURL self url
  = liftDOM (void (self ^. jsf "revokeObjectURL" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource ::
                      (MonadDOM m, FromJSString result) => URL -> MediaSource -> m result
createObjectURLSource self source
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal source]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource_ ::
                       (MonadDOM m) => URL -> MediaSource -> m ()
createObjectURLSource_ self source
  = liftDOM (void (self ^. jsf "createObjectURL" [toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream ::
                      (MonadDOM m, FromJSString result) => URL -> MediaStream -> m result
createObjectURLStream self stream
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal stream]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream_ ::
                       (MonadDOM m) => URL -> MediaStream -> m ()
createObjectURLStream_ self stream
  = liftDOM (void (self ^. jsf "createObjectURL" [toJSVal stream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.href Mozilla URL.href documentation> 
setHref :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setHref self val = liftDOM (self ^. jss "href" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.href Mozilla URL.href documentation> 
getHref :: (MonadDOM m, FromJSString result) => URL -> m result
getHref self = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.origin Mozilla URL.origin documentation> 
getOrigin :: (MonadDOM m, FromJSString result) => URL -> m result
getOrigin self
  = liftDOM ((self ^. js "origin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.protocol Mozilla URL.protocol documentation> 
setProtocol :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setProtocol self val
  = liftDOM (self ^. jss "protocol" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.protocol Mozilla URL.protocol documentation> 
getProtocol :: (MonadDOM m, FromJSString result) => URL -> m result
getProtocol self
  = liftDOM ((self ^. js "protocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.username Mozilla URL.username documentation> 
setUsername :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setUsername self val
  = liftDOM (self ^. jss "username" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.username Mozilla URL.username documentation> 
getUsername :: (MonadDOM m, FromJSString result) => URL -> m result
getUsername self
  = liftDOM ((self ^. js "username") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.password Mozilla URL.password documentation> 
setPassword :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setPassword self val
  = liftDOM (self ^. jss "password" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.password Mozilla URL.password documentation> 
getPassword :: (MonadDOM m, FromJSString result) => URL -> m result
getPassword self
  = liftDOM ((self ^. js "password") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.host Mozilla URL.host documentation> 
setHost :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setHost self val = liftDOM (self ^. jss "host" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.host Mozilla URL.host documentation> 
getHost :: (MonadDOM m, FromJSString result) => URL -> m result
getHost self = liftDOM ((self ^. js "host") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hostname Mozilla URL.hostname documentation> 
setHostname :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setHostname self val
  = liftDOM (self ^. jss "hostname" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hostname Mozilla URL.hostname documentation> 
getHostname :: (MonadDOM m, FromJSString result) => URL -> m result
getHostname self
  = liftDOM ((self ^. js "hostname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.port Mozilla URL.port documentation> 
setPort :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setPort self val = liftDOM (self ^. jss "port" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.port Mozilla URL.port documentation> 
getPort :: (MonadDOM m, FromJSString result) => URL -> m result
getPort self = liftDOM ((self ^. js "port") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.pathname Mozilla URL.pathname documentation> 
setPathname :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setPathname self val
  = liftDOM (self ^. jss "pathname" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.pathname Mozilla URL.pathname documentation> 
getPathname :: (MonadDOM m, FromJSString result) => URL -> m result
getPathname self
  = liftDOM ((self ^. js "pathname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hash Mozilla URL.hash documentation> 
setHash :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setHash self val = liftDOM (self ^. jss "hash" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hash Mozilla URL.hash documentation> 
getHash :: (MonadDOM m, FromJSString result) => URL -> m result
getHash self = liftDOM ((self ^. js "hash") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.search Mozilla URL.search documentation> 
setSearch :: (MonadDOM m, ToJSString val) => URL -> val -> m ()
setSearch self val = liftDOM (self ^. jss "search" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.search Mozilla URL.search documentation> 
getSearch :: (MonadDOM m, FromJSString result) => URL -> m result
getSearch self
  = liftDOM ((self ^. js "search") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.searchParams Mozilla URL.searchParams documentation> 
getSearchParams :: (MonadDOM m) => URL -> m URLSearchParams
getSearchParams self
  = liftDOM ((self ^. js "searchParams") >>= fromJSValUnchecked)
