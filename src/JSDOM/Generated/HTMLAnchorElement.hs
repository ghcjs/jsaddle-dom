{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLAnchorElement
       (setCharset, getCharset, setCoords, getCoords, setDownload,
        getDownload, setHreflang, getHreflang, setName, getName, setPing,
        getPing, setRel, getRel, setRev, getRev, setShape, getShape,
        setTarget, getTarget, setType, getType, setText, getText,
        getRelList, HTMLAnchorElement(..), gTypeHTMLAnchorElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
setCharset ::
           (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCharset self val = liftDOM (self ^. jss "charset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
getCharset ::
           (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getCharset self
  = liftDOM ((self ^. js "charset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
setCoords ::
          (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCoords self val = liftDOM (self ^. jss "coords" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
getCoords ::
          (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getCoords self
  = liftDOM ((self ^. js "coords") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
setDownload ::
            (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setDownload self val
  = liftDOM (self ^. jss "download" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
getDownload ::
            (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getDownload self
  = liftDOM ((self ^. js "download") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
setHreflang ::
            (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHreflang self val
  = liftDOM (self ^. jss "hreflang" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
getHreflang ::
            (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getHreflang self
  = liftDOM ((self ^. js "hreflang") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
setPing ::
        (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setPing self val = liftDOM (self ^. jss "ping" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
getPing ::
        (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getPing self = liftDOM ((self ^. js "ping") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
setRel ::
       (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRel self val = liftDOM (self ^. jss "rel" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
getRel ::
       (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getRel self = liftDOM ((self ^. js "rel") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
setRev ::
       (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRev self val = liftDOM (self ^. jss "rev" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
getRev ::
       (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getRev self = liftDOM ((self ^. js "rev") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
setShape ::
         (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setShape self val = liftDOM (self ^. jss "shape" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
getShape ::
         (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getShape self
  = liftDOM ((self ^. js "shape") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
setTarget ::
          (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setTarget self val = liftDOM (self ^. jss "target" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
getTarget ::
          (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getTarget self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.type Mozilla HTMLAnchorElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.type Mozilla HTMLAnchorElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
setText ::
        (MonadDOM m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
getText ::
        (MonadDOM m, FromJSString result) => HTMLAnchorElement -> m result
getText self = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.relList Mozilla HTMLAnchorElement.relList documentation> 
getRelList :: (MonadDOM m) => HTMLAnchorElement -> m DOMTokenList
getRelList self
  = liftDOM ((self ^. js "relList") >>= fromJSValUnchecked)
