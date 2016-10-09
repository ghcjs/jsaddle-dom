{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableStream
       (newReadableStream, read, read_, readUnchecked, cancel, cancel_,
        cancelUnchecked, pipeTo, pipeTo_, pipeToUnchecked, pipeThrough,
        pipeThrough_, pipeThroughUnchecked, getState, getClosed,
        getClosedUnchecked, getReady, getReadyUnchecked, ReadableStream,
        castToReadableStream, gTypeReadableStream)
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
read self = liftDOM ((self ^. jsf "read" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
read_ :: (MonadDOM m) => ReadableStream -> m ()
read_ self = liftDOM (void (self ^. jsf "read" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
readUnchecked :: (MonadDOM m) => ReadableStream -> m GObject
readUnchecked self
  = liftDOM ((self ^. jsf "read" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel ::
       (MonadDOM m, ToJSString reason) =>
         ReadableStream -> reason -> m (Maybe Promise)
cancel self reason
  = liftDOM ((self ^. jsf "cancel" [toJSVal reason]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel_ ::
        (MonadDOM m, ToJSString reason) => ReadableStream -> reason -> m ()
cancel_ self reason
  = liftDOM (void (self ^. jsf "cancel" [toJSVal reason]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancelUnchecked ::
                (MonadDOM m, ToJSString reason) =>
                  ReadableStream -> reason -> m Promise
cancelUnchecked self reason
  = liftDOM
      ((self ^. jsf "cancel" [toJSVal reason]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo ::
       (MonadDOM m) =>
         ReadableStream -> JSVal -> JSVal -> m (Maybe Promise)
pipeTo self streams options
  = liftDOM
      ((self ^. jsf "pipeTo" [toJSVal streams, toJSVal options]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo_ :: (MonadDOM m) => ReadableStream -> JSVal -> JSVal -> m ()
pipeTo_ self streams options
  = liftDOM
      (void (self ^. jsf "pipeTo" [toJSVal streams, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeToUnchecked ::
                (MonadDOM m) => ReadableStream -> JSVal -> JSVal -> m Promise
pipeToUnchecked self streams options
  = liftDOM
      ((self ^. jsf "pipeTo" [toJSVal streams, toJSVal options]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough ::
            (MonadDOM m) =>
              ReadableStream -> JSVal -> JSVal -> m (Maybe GObject)
pipeThrough self dest options
  = liftDOM
      ((self ^. jsf "pipeThrough" [toJSVal dest, toJSVal options]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough_ ::
             (MonadDOM m) => ReadableStream -> JSVal -> JSVal -> m ()
pipeThrough_ self dest options
  = liftDOM
      (void (self ^. jsf "pipeThrough" [toJSVal dest, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThroughUnchecked ::
                     (MonadDOM m) => ReadableStream -> JSVal -> JSVal -> m GObject
pipeThroughUnchecked self dest options
  = liftDOM
      ((self ^. jsf "pipeThrough" [toJSVal dest, toJSVal options]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.state Mozilla ReadableStream.state documentation> 
getState ::
         (MonadDOM m) => ReadableStream -> m ReadableStreamStateType
getState self
  = liftDOM ((self ^. js "state") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.closed Mozilla ReadableStream.closed documentation> 
getClosed :: (MonadDOM m) => ReadableStream -> m (Maybe Promise)
getClosed self = liftDOM ((self ^. js "closed") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.closed Mozilla ReadableStream.closed documentation> 
getClosedUnchecked :: (MonadDOM m) => ReadableStream -> m Promise
getClosedUnchecked self
  = liftDOM ((self ^. js "closed") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReady :: (MonadDOM m) => ReadableStream -> m (Maybe Promise)
getReady self = liftDOM ((self ^. js "ready") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReadyUnchecked :: (MonadDOM m) => ReadableStream -> m Promise
getReadyUnchecked self
  = liftDOM ((self ^. js "ready") >>= fromJSValUnchecked)
