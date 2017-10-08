{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NavigatorUserMediaSuccessCallback
       (newNavigatorUserMediaSuccessCallback,
        newNavigatorUserMediaSuccessCallbackSync,
        newNavigatorUserMediaSuccessCallbackAsync,
        NavigatorUserMediaSuccessCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallback ::
                                     (MonadDOM m) =>
                                       (MediaStream -> JSM ()) ->
                                         m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallback callback
  = liftDOM
      (NavigatorUserMediaSuccessCallback . Callback <$>
         function
           (\ _ _ [stream] ->
              fromJSValUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackSync ::
                                         (MonadDOM m) =>
                                           (MediaStream -> JSM ()) ->
                                             m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackSync callback
  = liftDOM
      (NavigatorUserMediaSuccessCallback . Callback <$>
         function
           (\ _ _ [stream] ->
              fromJSValUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackAsync ::
                                          (MonadDOM m) =>
                                            (MediaStream -> JSM ()) ->
                                              m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackAsync callback
  = liftDOM
      (NavigatorUserMediaSuccessCallback . Callback <$>
         asyncFunction
           (\ _ _ [stream] ->
              fromJSValUnchecked stream >>= \ stream' -> callback stream'))
