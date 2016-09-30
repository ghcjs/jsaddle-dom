{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLSourceElement
       (setSrc, getSrc, setType, getType, setMedia, getMedia,
        HTMLSourceElement, castToHTMLSourceElement, gTypeHTMLSourceElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLSourceElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLSourceElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.type Mozilla HTMLSourceElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLSourceElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.type Mozilla HTMLSourceElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLSourceElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
setMedia ::
         (MonadDOM m, ToJSString val) => HTMLSourceElement -> val -> m ()
setMedia self val = liftDOM (self ^. jss "media" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
getMedia ::
         (MonadDOM m, FromJSString result) => HTMLSourceElement -> m result
getMedia self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)
