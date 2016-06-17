{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.ReadableStream
       (newReadableStream, read, cancel, pipeTo, pipeThrough, getState,
        getClosed, getReady, ReadableStream, castToReadableStream,
        gTypeReadableStream)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation> 
newReadableStream :: (MonadDOM m) => JSVal -> m ReadableStream
newReadableStream properties
  = liftDOM
      (ReadableStream <$>
         new (jsg "ReadableStream") [toJSVal properties])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
read :: (MonadDOM m) => ReadableStream -> m (Maybe GObject)
read self = liftDOM ((self ^. js "read") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel ::
       (MonadDOM m, ToJSString reason) =>
         ReadableStream -> reason -> m (Maybe Promise)
cancel self reason
  = liftDOM ((self ^. jsf "cancel" [toJSVal reason]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo ::
       (MonadDOM m) =>
         ReadableStream -> JSVal -> JSVal -> m (Maybe Promise)
pipeTo self streams options
  = liftDOM
      ((self ^. jsf "pipeTo" [toJSVal streams, toJSVal options]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough ::
            (MonadDOM m) =>
              ReadableStream -> JSVal -> JSVal -> m (Maybe GObject)
pipeThrough self dest options
  = liftDOM
      ((self ^. jsf "pipeThrough" [toJSVal dest, toJSVal options]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.state Mozilla ReadableStream.state documentation> 
getState ::
         (MonadDOM m) => ReadableStream -> m ReadableStreamStateType
getState self
  = liftDOM ((self ^. js "state") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.closed Mozilla ReadableStream.closed documentation> 
getClosed :: (MonadDOM m) => ReadableStream -> m (Maybe Promise)
getClosed self = liftDOM ((self ^. js "closed") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReady :: (MonadDOM m) => ReadableStream -> m (Maybe Promise)
getReady self = liftDOM ((self ^. js "ready") >>= fromJSVal)
