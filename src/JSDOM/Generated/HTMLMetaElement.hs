{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLMetaElement
       (setContent, getContent, setHttpEquiv, getHttpEquiv, setName,
        getName, setScheme, getScheme, HTMLMetaElement(..),
        gTypeHTMLMetaElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
setContent ::
           (MonadDOM m, ToJSString val) => HTMLMetaElement -> val -> m ()
setContent self val = liftDOM (self ^. jss "content" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
getContent ::
           (MonadDOM m, FromJSString result) => HTMLMetaElement -> m result
getContent self
  = liftDOM ((self ^. js "content") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
setHttpEquiv ::
             (MonadDOM m, ToJSString val) => HTMLMetaElement -> val -> m ()
setHttpEquiv self val
  = liftDOM (self ^. jss "httpEquiv" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
getHttpEquiv ::
             (MonadDOM m, FromJSString result) => HTMLMetaElement -> m result
getHttpEquiv self
  = liftDOM ((self ^. js "httpEquiv") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLMetaElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLMetaElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
setScheme ::
          (MonadDOM m, ToJSString val) => HTMLMetaElement -> val -> m ()
setScheme self val = liftDOM (self ^. jss "scheme" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
getScheme ::
          (MonadDOM m, FromJSString result) => HTMLMetaElement -> m result
getScheme self
  = liftDOM ((self ^. js "scheme") >>= fromJSValUnchecked)
