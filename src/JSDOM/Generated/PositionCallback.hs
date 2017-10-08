{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PositionCallback
       (newPositionCallback, newPositionCallbackSync,
        newPositionCallbackAsync, PositionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallback ::
                    (MonadDOM m) => (Geoposition -> JSM ()) -> m PositionCallback
newPositionCallback callback
  = liftDOM
      (PositionCallback . Callback <$>
         function
           (\ _ _ [position] ->
              fromJSValUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackSync ::
                        (MonadDOM m) => (Geoposition -> JSM ()) -> m PositionCallback
newPositionCallbackSync callback
  = liftDOM
      (PositionCallback . Callback <$>
         function
           (\ _ _ [position] ->
              fromJSValUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackAsync ::
                         (MonadDOM m) => (Geoposition -> JSM ()) -> m PositionCallback
newPositionCallbackAsync callback
  = liftDOM
      (PositionCallback . Callback <$>
         asyncFunction
           (\ _ _ [position] ->
              fromJSValUnchecked position >>= \ position' -> callback position'))
