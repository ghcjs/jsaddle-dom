{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLDocument
       (open, close, write, writeln, clear, captureEvents, releaseEvents,
        getEmbeds, getEmbedsUnchecked, getPlugins, getPluginsUnchecked,
        getScripts, getScriptsUnchecked, getAll, getAllUnchecked, getWidth,
        getHeight, setDir, getDir, getDirUnchecked, setDesignMode,
        getDesignMode, getDesignModeUnchecked, getCompatMode, setBgColor,
        getBgColor, getBgColorUnchecked, setFgColor, getFgColor,
        getFgColorUnchecked, setAlinkColor, getAlinkColor,
        getAlinkColorUnchecked, setLinkColor, getLinkColor,
        getLinkColorUnchecked, setVlinkColor, getVlinkColor,
        getVlinkColorUnchecked, HTMLDocument(..), gTypeHTMLDocument)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.open Mozilla HTMLDocument.open documentation> 
open :: (MonadDOM m) => HTMLDocument -> m ()
open self = liftDOM (void (self ^. jsf "open" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.close Mozilla HTMLDocument.close documentation> 
close :: (MonadDOM m) => HTMLDocument -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.write Mozilla HTMLDocument.write documentation> 
write ::
      (MonadDOM m, ToJSString text) => HTMLDocument -> text -> m ()
write self text
  = liftDOM (void (self ^. jsf "write" [toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.writeln Mozilla HTMLDocument.writeln documentation> 
writeln ::
        (MonadDOM m, ToJSString text) => HTMLDocument -> text -> m ()
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.embeds Mozilla HTMLDocument.embeds documentation> 
getEmbeds ::
          (MonadDOM m) => HTMLDocument -> m (Maybe HTMLCollection)
getEmbeds self = liftDOM ((self ^. js "embeds") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.embeds Mozilla HTMLDocument.embeds documentation> 
getEmbedsUnchecked ::
                   (MonadDOM m) => HTMLDocument -> m HTMLCollection
getEmbedsUnchecked self
  = liftDOM ((self ^. js "embeds") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.plugins Mozilla HTMLDocument.plugins documentation> 
getPlugins ::
           (MonadDOM m) => HTMLDocument -> m (Maybe HTMLCollection)
getPlugins self = liftDOM ((self ^. js "plugins") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.plugins Mozilla HTMLDocument.plugins documentation> 
getPluginsUnchecked ::
                    (MonadDOM m) => HTMLDocument -> m HTMLCollection
getPluginsUnchecked self
  = liftDOM ((self ^. js "plugins") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.scripts Mozilla HTMLDocument.scripts documentation> 
getScripts ::
           (MonadDOM m) => HTMLDocument -> m (Maybe HTMLCollection)
getScripts self = liftDOM ((self ^. js "scripts") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.scripts Mozilla HTMLDocument.scripts documentation> 
getScriptsUnchecked ::
                    (MonadDOM m) => HTMLDocument -> m HTMLCollection
getScriptsUnchecked self
  = liftDOM ((self ^. js "scripts") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.all Mozilla HTMLDocument.all documentation> 
getAll ::
       (MonadDOM m) => HTMLDocument -> m (Maybe HTMLAllCollection)
getAll self = liftDOM ((self ^. js "all") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.all Mozilla HTMLDocument.all documentation> 
getAllUnchecked ::
                (MonadDOM m) => HTMLDocument -> m HTMLAllCollection
getAllUnchecked self
  = liftDOM ((self ^. js "all") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.width Mozilla HTMLDocument.width documentation> 
getWidth :: (MonadDOM m) => HTMLDocument -> m Int
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.height Mozilla HTMLDocument.height documentation> 
getHeight :: (MonadDOM m) => HTMLDocument -> m Int
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
setDir ::
       (MonadDOM m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setDir self val = liftDOM (self ^. jss "dir" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
getDir ::
       (MonadDOM m, FromJSString result) =>
         HTMLDocument -> m (Maybe result)
getDir self = liftDOM ((self ^. js "dir") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
getDirUnchecked ::
                (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getDirUnchecked self
  = liftDOM ((self ^. js "dir") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
setDesignMode ::
              (MonadDOM m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setDesignMode self val
  = liftDOM (self ^. jss "designMode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
getDesignMode ::
              (MonadDOM m, FromJSString result) =>
                HTMLDocument -> m (Maybe result)
getDesignMode self
  = liftDOM ((self ^. js "designMode") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
getDesignModeUnchecked ::
                       (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getDesignModeUnchecked self
  = liftDOM ((self ^. js "designMode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.compatMode Mozilla HTMLDocument.compatMode documentation> 
getCompatMode ::
              (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getCompatMode self
  = liftDOM ((self ^. js "compatMode") >>= fromJSValUnchecked)

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
getVlinkColorUnchecked ::
                       (MonadDOM m, FromJSString result) => HTMLDocument -> m result
getVlinkColorUnchecked self
  = liftDOM ((self ^. js "vlinkColor") >>= fromJSValUnchecked)
