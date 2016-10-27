{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCStatsCallback
       (newRTCStatsCallback, newRTCStatsCallbackSync,
        newRTCStatsCallbackAsync, RTCStatsCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallback ::
                    (MonadDOM m) =>
                      (Maybe RTCStatsResponse -> JSM ()) -> m RTCStatsCallback
newRTCStatsCallback callback
  = liftDOM
      (RTCStatsCallback . Callback <$>
         function
           (\ _ _ [response] ->
              fromJSVal response >>= \ response' -> callback response'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackSync ::
                        (MonadDOM m) =>
                          (Maybe RTCStatsResponse -> JSM ()) -> m RTCStatsCallback
newRTCStatsCallbackSync callback
  = liftDOM
      (RTCStatsCallback . Callback <$>
         function
           (\ _ _ [response] ->
              fromJSVal response >>= \ response' -> callback response'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackAsync ::
                         (MonadDOM m) =>
                           (Maybe RTCStatsResponse -> JSM ()) -> m RTCStatsCallback
newRTCStatsCallbackAsync callback
  = liftDOM
      (RTCStatsCallback . Callback <$>
         function
           (\ _ _ [response] ->
              fromJSVal response >>= \ response' -> callback response'))
