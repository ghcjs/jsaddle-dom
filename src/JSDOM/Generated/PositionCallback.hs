{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.PositionCallback
       (newPositionCallback, newPositionCallbackSync,
        newPositionCallbackAsync, PositionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallback ::
                    (MonadDOM m) => (Maybe Geoposition -> JSM ()) -> m PositionCallback
newPositionCallback callback
  = liftDOM
      (PositionCallback . Callback <$>
         function ""
           (\ _ _ [position] ->
              fromJSVal position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackSync ::
                        (MonadDOM m) => (Maybe Geoposition -> JSM ()) -> m PositionCallback
newPositionCallbackSync callback
  = liftDOM
      (PositionCallback . Callback <$>
         function ""
           (\ _ _ [position] ->
              fromJSVal position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackAsync ::
                         (MonadDOM m) => (Maybe Geoposition -> JSM ()) -> m PositionCallback
newPositionCallbackAsync callback
  = liftDOM
      (PositionCallback . Callback <$>
         function ""
           (\ _ _ [position] ->
              fromJSVal position >>= \ position' -> callback position'))
