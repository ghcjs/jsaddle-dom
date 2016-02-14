{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.MediaStreamTrackSourcesCallback
       (newMediaStreamTrackSourcesCallback,
        newMediaStreamTrackSourcesCallbackSync,
        newMediaStreamTrackSourcesCallbackAsync,
        MediaStreamTrackSourcesCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallback ::
                                   (MonadDOM m) =>
                                     ([Maybe SourceInfo] -> JSM ()) ->
                                       m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallback callback
  = liftDOM
      (MediaStreamTrackSourcesCallback . Callback <$>
         function ""
           (\ _ _ [sources] ->
              fromJSArray sources >>= \ sources' -> callback sources'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackSync ::
                                       (MonadDOM m) =>
                                         ([Maybe SourceInfo] -> JSM ()) ->
                                           m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackSync callback
  = liftDOM
      (MediaStreamTrackSourcesCallback . Callback <$>
         function ""
           (\ _ _ [sources] ->
              fromJSArray sources >>= \ sources' -> callback sources'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackAsync ::
                                        (MonadDOM m) =>
                                          ([Maybe SourceInfo] -> JSM ()) ->
                                            m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackAsync callback
  = liftDOM
      (MediaStreamTrackSourcesCallback . Callback <$>
         function ""
           (\ _ _ [sources] ->
              fromJSArray sources >>= \ sources' -> callback sources'))