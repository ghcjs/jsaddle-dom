{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLStyleElement
       (setDisabled, getDisabled, setMedia, getMedia, setType, getType,
        getSheet, setNonce, getNonce, HTMLStyleElement(..),
        gTypeHTMLStyleElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLStyleElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLStyleElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
setMedia ::
         (MonadDOM m, ToJSString val) => HTMLStyleElement -> val -> m ()
setMedia self val = liftDOM (self ^. jss "media" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
getMedia ::
         (MonadDOM m, FromJSString result) => HTMLStyleElement -> m result
getMedia self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.type Mozilla HTMLStyleElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLStyleElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.type Mozilla HTMLStyleElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLStyleElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.sheet Mozilla HTMLStyleElement.sheet documentation> 
getSheet :: (MonadDOM m) => HTMLStyleElement -> m StyleSheet
getSheet self
  = liftDOM ((self ^. js "sheet") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.nonce Mozilla HTMLStyleElement.nonce documentation> 
setNonce ::
         (MonadDOM m, ToJSString val) => HTMLStyleElement -> val -> m ()
setNonce self val = liftDOM (self ^. jss "nonce" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.nonce Mozilla HTMLStyleElement.nonce documentation> 
getNonce ::
         (MonadDOM m, FromJSString result) => HTMLStyleElement -> m result
getNonce self
  = liftDOM ((self ^. js "nonce") >>= fromJSValUnchecked)
