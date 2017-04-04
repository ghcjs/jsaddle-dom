{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLAreaElement
       (setAlt, getAlt, setCoords, getCoords, setNoHref, getNoHref,
        setPing, getPing, setRel, getRel, setShape, getShape, setTarget,
        getTarget, setDownload, getDownload, getRelList,
        HTMLAreaElement(..), gTypeHTMLAreaElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.download Mozilla HTMLAreaElement.download documentation> 
setDownload ::
            (MonadDOM m, ToJSString val) => HTMLAreaElement -> val -> m ()
setDownload self val
  = liftDOM (self ^. jss "download" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.download Mozilla HTMLAreaElement.download documentation> 
getDownload ::
            (MonadDOM m, FromJSString result) => HTMLAreaElement -> m result
getDownload self
  = liftDOM ((self ^. js "download") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
getRelList :: (MonadDOM m) => HTMLAreaElement -> m DOMTokenList
getRelList self
  = liftDOM ((self ^. js "relList") >>= fromJSValUnchecked)
