{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLHyperlinkElementUtils
       (setHref, getHref, getOrigin, setProtocol, getProtocol,
        setUsername, getUsername, setPassword, getPassword, setHost,
        getHost, setHostname, getHostname, setPort, getPort, setPathname,
        getPathname, setSearch, getSearch, setHash, getHash,
        HTMLHyperlinkElementUtils(..), gTypeHTMLHyperlinkElementUtils,
        IsHTMLHyperlinkElementUtils, toHTMLHyperlinkElementUtils)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.href Mozilla HTMLHyperlinkElementUtils.href documentation> 
setHref ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setHref self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "href" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.href Mozilla HTMLHyperlinkElementUtils.href documentation> 
getHref ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getHref self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "href") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.origin Mozilla HTMLHyperlinkElementUtils.origin documentation> 
getOrigin ::
          (MonadDOM m, IsHTMLHyperlinkElementUtils self,
           FromJSString result) =>
            self -> m result
getOrigin self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "origin") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.protocol Mozilla HTMLHyperlinkElementUtils.protocol documentation> 
setProtocol ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setProtocol self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "protocol"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.protocol Mozilla HTMLHyperlinkElementUtils.protocol documentation> 
getProtocol ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getProtocol self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "protocol") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.username Mozilla HTMLHyperlinkElementUtils.username documentation> 
setUsername ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setUsername self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "username"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.username Mozilla HTMLHyperlinkElementUtils.username documentation> 
getUsername ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getUsername self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "username") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.password Mozilla HTMLHyperlinkElementUtils.password documentation> 
setPassword ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setPassword self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "password"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.password Mozilla HTMLHyperlinkElementUtils.password documentation> 
getPassword ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getPassword self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "password") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.host Mozilla HTMLHyperlinkElementUtils.host documentation> 
setHost ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setHost self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "host" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.host Mozilla HTMLHyperlinkElementUtils.host documentation> 
getHost ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getHost self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "host") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hostname Mozilla HTMLHyperlinkElementUtils.hostname documentation> 
setHostname ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setHostname self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "hostname"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hostname Mozilla HTMLHyperlinkElementUtils.hostname documentation> 
getHostname ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getHostname self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "hostname") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.port Mozilla HTMLHyperlinkElementUtils.port documentation> 
setPort ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setPort self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "port" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.port Mozilla HTMLHyperlinkElementUtils.port documentation> 
getPort ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getPort self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "port") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.pathname Mozilla HTMLHyperlinkElementUtils.pathname documentation> 
setPathname ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setPathname self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "pathname"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.pathname Mozilla HTMLHyperlinkElementUtils.pathname documentation> 
getPathname ::
            (MonadDOM m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getPathname self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "pathname") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.search Mozilla HTMLHyperlinkElementUtils.search documentation> 
setSearch ::
          (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
            self -> val -> m ()
setSearch self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "search" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.search Mozilla HTMLHyperlinkElementUtils.search documentation> 
getSearch ::
          (MonadDOM m, IsHTMLHyperlinkElementUtils self,
           FromJSString result) =>
            self -> m result
getSearch self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "search") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hash Mozilla HTMLHyperlinkElementUtils.hash documentation> 
setHash ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setHash self val
  = liftDOM
      ((toHTMLHyperlinkElementUtils self) ^. jss "hash" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hash Mozilla HTMLHyperlinkElementUtils.hash documentation> 
getHash ::
        (MonadDOM m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getHash self
  = liftDOM
      (((toHTMLHyperlinkElementUtils self) ^. js "hash") >>=
         fromJSValUnchecked)
