{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLDocument
       (open, close, write, writeln, clear, captureEvents, releaseEvents,
        getAll, setBgColor, getBgColor, getBgColorUnsafe,
        getBgColorUnchecked, setFgColor, getFgColor, getFgColorUnsafe,
        getFgColorUnchecked, setAlinkColor, getAlinkColor,
        getAlinkColorUnsafe, getAlinkColorUnchecked, setLinkColor,
        getLinkColor, getLinkColorUnsafe, getLinkColorUnchecked,
        setVlinkColor, getVlinkColor, getVlinkColorUnsafe,
        getVlinkColorUnchecked, HTMLDocument(..), gTypeHTMLDocument)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.open Mozilla HTMLDocument.open documentation> 
open :: (MonadDOM m) => HTMLDocument -> m ()
open self = liftDOM (void (self ^. jsf "open" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.close Mozilla HTMLDocument.close documentation> 
close :: (MonadDOM m) => HTMLDocument -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.write Mozilla HTMLDocument.write documentation> 
write ::
      (MonadDOM m, ToJSString text) => HTMLDocument -> Maybe text -> m ()
write self text
  = liftDOM (void (self ^. jsf "write" [toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.writeln Mozilla HTMLDocument.writeln documentation> 
writeln ::
        (MonadDOM m, ToJSString text) => HTMLDocument -> Maybe text -> m ()
writeln self text
  = liftDOM (void (self ^. jsf "writeln" [toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.clear Mozilla HTMLDocument.clear documentation> 
clear :: (MonadDOM m) => HTMLDocument -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.captureEvents Mozilla HTMLDocument.captureEvents documentation> 
captureEvents :: (MonadDOM m) => HTMLDocument -> m ()
captureEvents self
  = liftDOM (void (self ^. jsf "captureEvents" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.releaseEvents Mozilla HTMLDocument.releaseEvents documentation> 
releaseEvents :: (MonadDOM m) => HTMLDocument -> m ()
releaseEvents self
  = liftDOM (void (self ^. jsf "releaseEvents" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.all Mozilla HTMLDocument.all documentation> 
getAll :: (MonadDOM m) => HTMLDocument -> m HTMLAllCollection
getAll self = liftDOM ((self ^. js "all") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
setBgColor ::
           (MonadDOM m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setBgColor self val = liftDOM (self ^. jss "bgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColor ::
           (MonadDOM m, FromJSString result) =>
             HTMLDocument -> m (Maybe result)
getBgColor self
  = liftDOM ((self ^. js "bgColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColorUnsafe ::
                 (MonadDOM m, HasCallStack, FromJSString result) =>
                   HTMLDocument -> m result
getBgColorUnsafe self
  = liftDOM
      (((self ^. js "bgColor") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColorUnchecked ::
                    (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getBgColorUnchecked self
  = liftDOM ((self ^. js "bgColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
setFgColor ::
           (MonadDOM m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setFgColor self val = liftDOM (self ^. jss "fgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColor ::
           (MonadDOM m, FromJSString result) =>
             HTMLDocument -> m (Maybe result)
getFgColor self
  = liftDOM ((self ^. js "fgColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColorUnsafe ::
                 (MonadDOM m, HasCallStack, FromJSString result) =>
                   HTMLDocument -> m result
getFgColorUnsafe self
  = liftDOM
      (((self ^. js "fgColor") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColorUnchecked ::
                    (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getFgColorUnchecked self
  = liftDOM ((self ^. js "fgColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
setAlinkColor ::
              (MonadDOM m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setAlinkColor self val
  = liftDOM (self ^. jss "alinkColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColor ::
              (MonadDOM m, FromJSString result) =>
                HTMLDocument -> m (Maybe result)
getAlinkColor self
  = liftDOM ((self ^. js "alinkColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColorUnsafe ::
                    (MonadDOM m, HasCallStack, FromJSString result) =>
                      HTMLDocument -> m result
getAlinkColorUnsafe self
  = liftDOM
      (((self ^. js "alinkColor") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColorUnchecked ::
                       (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getAlinkColorUnchecked self
  = liftDOM ((self ^. js "alinkColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
setLinkColor ::
             (MonadDOM m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setLinkColor self val
  = liftDOM (self ^. jss "linkColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColor ::
             (MonadDOM m, FromJSString result) =>
               HTMLDocument -> m (Maybe result)
getLinkColor self
  = liftDOM ((self ^. js "linkColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColorUnsafe ::
                   (MonadDOM m, HasCallStack, FromJSString result) =>
                     HTMLDocument -> m result
getLinkColorUnsafe self
  = liftDOM
      (((self ^. js "linkColor") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColorUnchecked ::
                      (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getLinkColorUnchecked self
  = liftDOM ((self ^. js "linkColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
setVlinkColor ::
              (MonadDOM m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setVlinkColor self val
  = liftDOM (self ^. jss "vlinkColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColor ::
              (MonadDOM m, FromJSString result) =>
                HTMLDocument -> m (Maybe result)
getVlinkColor self
  = liftDOM ((self ^. js "vlinkColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColorUnsafe ::
                    (MonadDOM m, HasCallStack, FromJSString result) =>
                      HTMLDocument -> m result
getVlinkColorUnsafe self
  = liftDOM
      (((self ^. js "vlinkColor") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColorUnchecked ::
                       (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getVlinkColorUnchecked self
  = liftDOM ((self ^. js "vlinkColor") >>= fromJSValUnchecked)
