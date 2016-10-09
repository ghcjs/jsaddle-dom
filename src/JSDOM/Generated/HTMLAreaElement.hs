{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLAreaElement
       (setAlt, getAlt, setCoords, getCoords, setHref, getHref, setNoHref,
        getNoHref, setPing, getPing, setRel, getRel, setShape, getShape,
        setTarget, getTarget, getHash, getHost, getHostname, getPathname,
        getPort, getProtocol, getSearch, getRelList, getRelListUnchecked,
        HTMLAreaElement, castToHTMLAreaElement, gTypeHTMLAreaElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
setAlt ::
       (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setAlt self val = liftDOM (self ^. jss "alt" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
getAlt ::
       (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getAlt self = liftDOM ((self ^. js "alt") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
setCoords ::
          (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setCoords self val = liftDOM (self ^. jss "coords" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
getCoords ::
          (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getCoords self
  = liftDOM ((self ^. js "coords") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
setHref ::
        (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setHref self val = liftDOM (self ^. jss "href" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getHref self = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
setNoHref :: (MonadDOM m) => HTMLAreaElement -> Bool -> m ()
setNoHref self val = liftDOM (self ^. jss "noHref" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
getNoHref :: (MonadDOM m) => HTMLAreaElement -> m Bool
getNoHref self = liftDOM ((self ^. js "noHref") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
setPing ::
        (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setPing self val = liftDOM (self ^. jss "ping" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
getPing ::
        (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getPing self = liftDOM ((self ^. js "ping") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
setRel ::
       (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setRel self val = liftDOM (self ^. jss "rel" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
getRel ::
       (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getRel self = liftDOM ((self ^. js "rel") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
setShape ::
         (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setShape self val = liftDOM (self ^. jss "shape" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
getShape ::
         (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getShape self
  = liftDOM ((self ^. js "shape") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
setTarget ::
          (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setTarget self val = liftDOM (self ^. jss "target" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
getTarget ::
          (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getTarget self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hash Mozilla HTMLAreaElement.hash documentation> 
getHash ::
        (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getHash self = liftDOM ((self ^. js "hash") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.host Mozilla HTMLAreaElement.host documentation> 
getHost ::
        (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getHost self = liftDOM ((self ^. js "host") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hostname Mozilla HTMLAreaElement.hostname documentation> 
getHostname ::
            (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getHostname self
  = liftDOM ((self ^. js "hostname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.pathname Mozilla HTMLAreaElement.pathname documentation> 
getPathname ::
            (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getPathname self
  = liftDOM ((self ^. js "pathname") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.port Mozilla HTMLAreaElement.port documentation> 
getPort ::
        (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getPort self = liftDOM ((self ^. js "port") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.protocol Mozilla HTMLAreaElement.protocol documentation> 
getProtocol ::
            (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getProtocol self
  = liftDOM ((self ^. js "protocol") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.search Mozilla HTMLAreaElement.search documentation> 
getSearch ::
          (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getSearch self
  = liftDOM ((self ^. js "search") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
getRelList ::
           (MonadDOM m) => HTMLAreaElement -> m (Maybe DOMTokenList)
getRelList self = liftDOM ((self ^. js "relList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
getRelListUnchecked ::
                    (MonadDOM m) => HTMLAreaElement -> m DOMTokenList
getRelListUnchecked self
  = liftDOM ((self ^. js "relList") >>= fromJSValUnchecked)
