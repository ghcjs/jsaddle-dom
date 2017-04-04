{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaSource
       (newMediaSource, addSourceBuffer, addSourceBuffer_,
        removeSourceBuffer, endOfStream, isTypeSupported, isTypeSupported_,
        setLiveSeekableRange, clearLiveSeekableRange, getSourceBuffers,
        getActiveSourceBuffers, setDuration, getDuration, getReadyState,
        sourceopen, sourceended, sourceclose, MediaSource(..),
        gTypeMediaSource)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation> 
newMediaSource :: (MonadDOM m) => m MediaSource
newMediaSource
  = liftDOM (MediaSource <$> new (jsg "MediaSource") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBuffer ::
                (MonadDOM m, ToJSString type') =>
                  MediaSource -> type' -> m SourceBuffer
addSourceBuffer self type'
  = liftDOM
      ((self ^. jsf "addSourceBuffer" [toJSVal type']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBuffer_ ::
                 (MonadDOM m, ToJSString type') => MediaSource -> type' -> m ()
addSourceBuffer_ self type'
  = liftDOM (void (self ^. jsf "addSourceBuffer" [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.removeSourceBuffer Mozilla MediaSource.removeSourceBuffer documentation> 
removeSourceBuffer ::
                   (MonadDOM m) => MediaSource -> SourceBuffer -> m ()
removeSourceBuffer self buffer
  = liftDOM
      (void (self ^. jsf "removeSourceBuffer" [toJSVal buffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.endOfStream Mozilla MediaSource.endOfStream documentation> 
endOfStream ::
            (MonadDOM m) => MediaSource -> Maybe EndOfStreamError -> m ()
endOfStream self error
  = liftDOM (void (self ^. jsf "endOfStream" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
isTypeSupported ::
                (MonadDOM m, ToJSString type') => MediaSource -> type' -> m Bool
isTypeSupported self type'
  = liftDOM
      ((self ^. jsf "isTypeSupported" [toJSVal type']) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
isTypeSupported_ ::
                 (MonadDOM m, ToJSString type') => MediaSource -> type' -> m ()
isTypeSupported_ self type'
  = liftDOM (void (self ^. jsf "isTypeSupported" [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.setLiveSeekableRange Mozilla MediaSource.setLiveSeekableRange documentation> 
setLiveSeekableRange ::
                     (MonadDOM m) => MediaSource -> Double -> Double -> m ()
setLiveSeekableRange self start end
  = liftDOM
      (void
         (self ^. jsf "setLiveSeekableRange" [toJSVal start, toJSVal end]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.clearLiveSeekableRange Mozilla MediaSource.clearLiveSeekableRange documentation> 
clearLiveSeekableRange :: (MonadDOM m) => MediaSource -> m ()
clearLiveSeekableRange self
  = liftDOM (void (self ^. jsf "clearLiveSeekableRange" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
getSourceBuffers ::
                 (MonadDOM m) => MediaSource -> m SourceBufferList
getSourceBuffers self
  = liftDOM ((self ^. js "sourceBuffers") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
getActiveSourceBuffers ::
                       (MonadDOM m) => MediaSource -> m SourceBufferList
getActiveSourceBuffers self
  = liftDOM
      ((self ^. js "activeSourceBuffers") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
setDuration :: (MonadDOM m) => MediaSource -> Double -> m ()
setDuration self val
  = liftDOM (self ^. jss "duration" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
getDuration :: (MonadDOM m) => MediaSource -> m Double
getDuration self
  = liftDOM ((self ^. js "duration") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.readyState Mozilla MediaSource.readyState documentation> 
getReadyState ::
              (MonadDOM m, FromJSString result) => MediaSource -> m result
getReadyState self
  = liftDOM ((self ^. js "readyState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.onsourceopen Mozilla MediaSource.onsourceopen documentation> 
sourceopen :: EventName MediaSource onsourceopen
sourceopen = unsafeEventName (toJSString "sourceopen")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.onsourceended Mozilla MediaSource.onsourceended documentation> 
sourceended :: EventName MediaSource onsourceended
sourceended = unsafeEventName (toJSString "sourceended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.onsourceclose Mozilla MediaSource.onsourceclose documentation> 
sourceclose :: EventName MediaSource onsourceclose
sourceclose = unsafeEventName (toJSString "sourceclose")
