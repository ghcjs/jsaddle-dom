{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Request
       (newRequest, clone, clone_, getMethod, getUrl, getHeaders, getType,
        getDestination, getReferrer, getReferrerPolicy, getMode,
        getCredentials, getCache, getRedirect, getIntegrity, Request(..),
        gTypeRequest)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request Mozilla Request documentation> 
newRequest ::
           (MonadDOM m, ToJSVal input) =>
             input -> Maybe RequestInit -> m Request
newRequest input init
  = liftDOM
      (Request <$> new (jsg "Request") [toJSVal input, toJSVal init])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.clone Mozilla Request.clone documentation> 
clone :: (MonadDOM m) => Request -> m Request
clone self
  = liftDOM ((self ^. jsf "clone" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.clone Mozilla Request.clone documentation> 
clone_ :: (MonadDOM m) => Request -> m ()
clone_ self = liftDOM (void (self ^. jsf "clone" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.method Mozilla Request.method documentation> 
getMethod ::
          (MonadDOM m, FromJSString result) => Request -> m result
getMethod self
  = liftDOM ((self ^. js "method") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.url Mozilla Request.url documentation> 
getUrl :: (MonadDOM m, FromJSString result) => Request -> m result
getUrl self = liftDOM ((self ^. js "url") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.headers Mozilla Request.headers documentation> 
getHeaders :: (MonadDOM m) => Request -> m Headers
getHeaders self
  = liftDOM ((self ^. js "headers") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.type Mozilla Request.type documentation> 
getType :: (MonadDOM m) => Request -> m RequestType
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.destination Mozilla Request.destination documentation> 
getDestination :: (MonadDOM m) => Request -> m RequestDestination
getDestination self
  = liftDOM ((self ^. js "destination") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.referrer Mozilla Request.referrer documentation> 
getReferrer ::
            (MonadDOM m, FromJSString result) => Request -> m result
getReferrer self
  = liftDOM ((self ^. js "referrer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.referrerPolicy Mozilla Request.referrerPolicy documentation> 
getReferrerPolicy :: (MonadDOM m) => Request -> m ReferrerPolicy
getReferrerPolicy self
  = liftDOM ((self ^. js "referrerPolicy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.mode Mozilla Request.mode documentation> 
getMode :: (MonadDOM m) => Request -> m RequestMode
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.credentials Mozilla Request.credentials documentation> 
getCredentials :: (MonadDOM m) => Request -> m RequestCredentials
getCredentials self
  = liftDOM ((self ^. js "credentials") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.cache Mozilla Request.cache documentation> 
getCache :: (MonadDOM m) => Request -> m RequestCache
getCache self
  = liftDOM ((self ^. js "cache") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.redirect Mozilla Request.redirect documentation> 
getRedirect :: (MonadDOM m) => Request -> m RequestRedirect
getRedirect self
  = liftDOM ((self ^. js "redirect") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.integrity Mozilla Request.integrity documentation> 
getIntegrity ::
             (MonadDOM m, FromJSString result) => Request -> m result
getIntegrity self
  = liftDOM ((self ^. js "integrity") >>= fromJSValUnchecked)
