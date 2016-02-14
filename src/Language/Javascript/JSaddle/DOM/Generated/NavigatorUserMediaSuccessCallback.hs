{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.NavigatorUserMediaSuccessCallback
       (newNavigatorUserMediaSuccessCallback,
        newNavigatorUserMediaSuccessCallbackSync,
        newNavigatorUserMediaSuccessCallbackAsync,
        NavigatorUserMediaSuccessCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallback ::
                                     (MonadDOM m) =>
                                       (Maybe MediaStream -> JSM ()) ->
                                         m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallback callback
  = liftDOM
      (NavigatorUserMediaSuccessCallback . Callback <$>
         function ""
           (\ _ _ [stream] ->
              fromJSVal stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackSync ::
                                         (MonadDOM m) =>
                                           (Maybe MediaStream -> JSM ()) ->
                                             m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackSync callback
  = liftDOM
      (NavigatorUserMediaSuccessCallback . Callback <$>
         function ""
           (\ _ _ [stream] ->
              fromJSVal stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackAsync ::
                                          (MonadDOM m) =>
                                            (Maybe MediaStream -> JSM ()) ->
                                              m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackAsync callback
  = liftDOM
      (NavigatorUserMediaSuccessCallback . Callback <$>
         function ""
           (\ _ _ [stream] ->
              fromJSVal stream >>= \ stream' -> callback stream'))