{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ApplicationCache
       (update, swapCache, abort, pattern UNCACHED, pattern IDLE,
        pattern CHECKING, pattern DOWNLOADING, pattern UPDATEREADY,
        pattern OBSOLETE, getStatus, checking, error, noUpdate,
        downloading, progress, updateReady, cached, obsolete,
        ApplicationCache(..), gTypeApplicationCache)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.update Mozilla ApplicationCache.update documentation> 
update :: (MonadDOM m) => ApplicationCache -> m ()
update self = liftDOM (void (self ^. jsf "update" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.swapCache Mozilla ApplicationCache.swapCache documentation> 
swapCache :: (MonadDOM m) => ApplicationCache -> m ()
swapCache self = liftDOM (void (self ^. jsf "swapCache" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.abort Mozilla ApplicationCache.abort documentation> 
abort :: (MonadDOM m) => ApplicationCache -> m ()
abort self = liftDOM (void (self ^. jsf "abort" ()))
pattern UNCACHED = 0
pattern IDLE = 1
pattern CHECKING = 2
pattern DOWNLOADING = 3
pattern UPDATEREADY = 4
pattern OBSOLETE = 5

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.status Mozilla ApplicationCache.status documentation> 
getStatus :: (MonadDOM m) => ApplicationCache -> m Word
getStatus self
  = liftDOM (round <$> ((self ^. js "status") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onchecking Mozilla ApplicationCache.onchecking documentation> 
checking :: EventName ApplicationCache Event
checking = unsafeEventName (toJSString "checking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onerror Mozilla ApplicationCache.onerror documentation> 
error :: EventName ApplicationCache UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onnoupdate Mozilla ApplicationCache.onnoupdate documentation> 
noUpdate :: EventName ApplicationCache Event
noUpdate = unsafeEventName (toJSString "noupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.ondownloading Mozilla ApplicationCache.ondownloading documentation> 
downloading :: EventName ApplicationCache Event
downloading = unsafeEventName (toJSString "downloading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onprogress Mozilla ApplicationCache.onprogress documentation> 
progress :: EventName ApplicationCache ProgressEvent
progress = unsafeEventNameAsync (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onupdateready Mozilla ApplicationCache.onupdateready documentation> 
updateReady :: EventName ApplicationCache Event
updateReady = unsafeEventName (toJSString "updateready")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.oncached Mozilla ApplicationCache.oncached documentation> 
cached :: EventName ApplicationCache Event
cached = unsafeEventName (toJSString "cached")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onobsolete Mozilla ApplicationCache.onobsolete documentation> 
obsolete :: EventName ApplicationCache Event
obsolete = unsafeEventName (toJSString "obsolete")
