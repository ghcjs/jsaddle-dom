{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLLinkElement
       (setDisabled, getDisabled, setCharset, getCharset, setHref,
        getHref, setHreflang, getHreflang, setMedia, getMedia, setRel,
        getRel, setRev, getRev, getSizes, setTarget, getTarget, setType,
        getType, setAs, getAs, setCrossOrigin, getCrossOrigin,
        getCrossOriginUnsafe, getCrossOriginUnchecked, getSheet,
        getRelList, setNonce, getNonce, HTMLLinkElement(..),
        gTypeHTMLLinkElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLLinkElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLLinkElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
setCharset ::
           (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setCharset self val = liftDOM (self ^. jss "charset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
getCharset ::
           (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getCharset self
  = liftDOM ((self ^. js "charset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
setHref ::
        (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setHref self val = liftDOM (self ^. jss "href" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getHref self = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
setHreflang ::
            (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setHreflang self val
  = liftDOM (self ^. jss "hreflang" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
getHreflang ::
            (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getHreflang self
  = liftDOM ((self ^. js "hreflang") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
setMedia ::
         (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setMedia self val = liftDOM (self ^. jss "media" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
getMedia ::
         (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getMedia self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
setRel ::
       (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setRel self val = liftDOM (self ^. jss "rel" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
getRel ::
       (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getRel self = liftDOM ((self ^. js "rel") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
setRev ::
       (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setRev self val = liftDOM (self ^. jss "rev" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
getRev ::
       (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getRev self = liftDOM ((self ^. js "rev") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.sizes Mozilla HTMLLinkElement.sizes documentation> 
getSizes :: (MonadDOM m) => HTMLLinkElement -> m DOMTokenList
getSizes self
  = liftDOM ((self ^. js "sizes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
setTarget ::
          (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setTarget self val = liftDOM (self ^. jss "target" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
getTarget ::
          (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getTarget self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.type Mozilla HTMLLinkElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.type Mozilla HTMLLinkElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.as Mozilla HTMLLinkElement.as documentation> 
setAs ::
      (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setAs self val = liftDOM (self ^. jss "as" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.as Mozilla HTMLLinkElement.as documentation> 
getAs ::
      (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getAs self = liftDOM ((self ^. js "as") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadDOM m, ToJSString val) =>
                 HTMLLinkElement -> Maybe val -> m ()
setCrossOrigin self val
  = liftDOM (self ^. jss "crossOrigin" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadDOM m, FromJSString result) =>
                 HTMLLinkElement -> m (Maybe result)
getCrossOrigin self
  = liftDOM ((self ^. js "crossOrigin") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
getCrossOriginUnsafe ::
                     (MonadDOM m, HasCallStack, FromJSString result) =>
                       HTMLLinkElement -> m result
getCrossOriginUnsafe self
  = liftDOM
      (((self ^. js "crossOrigin") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
getCrossOriginUnchecked ::
                        (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getCrossOriginUnchecked self
  = liftDOM ((self ^. js "crossOrigin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.sheet Mozilla HTMLLinkElement.sheet documentation> 
getSheet :: (MonadDOM m) => HTMLLinkElement -> m StyleSheet
getSheet self
  = liftDOM ((self ^. js "sheet") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.relList Mozilla HTMLLinkElement.relList documentation> 
getRelList :: (MonadDOM m) => HTMLLinkElement -> m DOMTokenList
getRelList self
  = liftDOM ((self ^. js "relList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.nonce Mozilla HTMLLinkElement.nonce documentation> 
setNonce ::
         (MonadDOM m, ToJSString val) => HTMLLinkElement -> val -> m ()
setNonce self val = liftDOM (self ^. jss "nonce" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.nonce Mozilla HTMLLinkElement.nonce documentation> 
getNonce ::
         (MonadDOM m, FromJSString result) => HTMLLinkElement -> m result
getNonce self
  = liftDOM ((self ^. js "nonce") >>= fromJSValUnchecked)
