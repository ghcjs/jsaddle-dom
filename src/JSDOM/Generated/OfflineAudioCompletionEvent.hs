{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.OfflineAudioCompletionEvent
       (getRenderedBuffer, getRenderedBufferUnchecked,
        OfflineAudioCompletionEvent(..), gTypeOfflineAudioCompletionEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioCompletionEvent.renderedBuffer Mozilla OfflineAudioCompletionEvent.renderedBuffer documentation> 
getRenderedBuffer ::
                  (MonadDOM m) =>
                    OfflineAudioCompletionEvent -> m (Maybe AudioBuffer)
getRenderedBuffer self
  = liftDOM ((self ^. js "renderedBuffer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioCompletionEvent.renderedBuffer Mozilla OfflineAudioCompletionEvent.renderedBuffer documentation> 
getRenderedBufferUnchecked ::
                           (MonadDOM m) => OfflineAudioCompletionEvent -> m AudioBuffer
getRenderedBufferUnchecked self
  = liftDOM ((self ^. js "renderedBuffer") >>= fromJSValUnchecked)
