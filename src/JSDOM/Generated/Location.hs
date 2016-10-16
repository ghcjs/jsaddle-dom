{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Location
       (assign, replace, reload, toString, toString_, setHref, getHref,
        setProtocol, getProtocol, setHost, getHost, setHostname,
        getHostname, setPort, getPort, setPathname, getPathname, setSearch,
        getSearch, setHash, getHash, getOrigin, getAncestorOrigins,
        getAncestorOriginsUnsafe, getAncestorOriginsUnchecked,
        Location(..), gTypeLocation)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.assign Mozilla Location.assign documentation> 
assign :: (MonadDOM m, ToJSString url) => Location -> url -> m ()
assign self url
  = liftDOM (void (self ^. jsf "assign" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.replace Mozilla Location.replace documentation> 
replace :: (MonadDOM m, ToJSString url) => Location -> url -> m ()
replace self url
  = liftDOM (void (self ^. jsf "replace" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.reload Mozilla Location.reload documentation> 
reload :: (MonadDOM m) => Location -> m ()
reload self = liftDOM (void (self ^. jsf "reload" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.toString Mozilla Location.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => Location -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.toString Mozilla Location.toString documentation> 
toString_ :: (MonadDOM m) => Location -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
setHref :: (MonadDOM m, ToJSString val) => Location -> val -> m ()
setHref self val = liftDOM (self ^. jss "href" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) => Location -> m result
getHref self = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
setProtocol ::
            (MonadDOM m, ToJSString val) => Location -> val -> m ()
setProtocol self val
  = liftDOM (self ^. jss "protocol" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
getProtocol ::
            (MonadDOM m, FromJSString result) => Location -> m result
getProtocol self
  = liftDOM ((self ^. js "protocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
setHost :: (MonadDOM m, ToJSString val) => Location -> val -> m ()
setHost self val = liftDOM (self ^. jss "host" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
getHost ::
        (MonadDOM m, FromJSString result) => Location -> m result
getHost self = liftDOM ((self ^. js "host") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
setHostname ::
            (MonadDOM m, ToJSString val) => Location -> val -> m ()
setHostname self val
  = liftDOM (self ^. jss "hostname" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
getHostname ::
            (MonadDOM m, FromJSString result) => Location -> m result
getHostname self
  = liftDOM ((self ^. js "hostname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
setPort :: (MonadDOM m, ToJSString val) => Location -> val -> m ()
setPort self val = liftDOM (self ^. jss "port" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
getPort ::
        (MonadDOM m, FromJSString result) => Location -> m result
getPort self = liftDOM ((self ^. js "port") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
setPathname ::
            (MonadDOM m, ToJSString val) => Location -> val -> m ()
setPathname self val
  = liftDOM (self ^. jss "pathname" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
getPathname ::
            (MonadDOM m, FromJSString result) => Location -> m result
getPathname self
  = liftDOM ((self ^. js "pathname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
setSearch ::
          (MonadDOM m, ToJSString val) => Location -> val -> m ()
setSearch self val = liftDOM (self ^. jss "search" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
getSearch ::
          (MonadDOM m, FromJSString result) => Location -> m result
getSearch self
  = liftDOM ((self ^. js "search") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
setHash :: (MonadDOM m, ToJSString val) => Location -> val -> m ()
setHash self val = liftDOM (self ^. jss "hash" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
getHash ::
        (MonadDOM m, FromJSString result) => Location -> m result
getHash self = liftDOM ((self ^. js "hash") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.origin Mozilla Location.origin documentation> 
getOrigin ::
          (MonadDOM m, FromJSString result) => Location -> m result
getOrigin self
  = liftDOM ((self ^. js "origin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.ancestorOrigins Mozilla Location.ancestorOrigins documentation> 
getAncestorOrigins ::
                   (MonadDOM m) => Location -> m (Maybe DOMStringList)
getAncestorOrigins self
  = liftDOM ((self ^. js "ancestorOrigins") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.ancestorOrigins Mozilla Location.ancestorOrigins documentation> 
getAncestorOriginsUnsafe ::
                         (MonadDOM m, HasCallStack) => Location -> m DOMStringList
getAncestorOriginsUnsafe self
  = liftDOM
      (((self ^. js "ancestorOrigins") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.ancestorOrigins Mozilla Location.ancestorOrigins documentation> 
getAncestorOriginsUnchecked ::
                            (MonadDOM m) => Location -> m DOMStringList
getAncestorOriginsUnchecked self
  = liftDOM ((self ^. js "ancestorOrigins") >>= fromJSValUnchecked)
