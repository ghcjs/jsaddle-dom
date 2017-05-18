{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Geolocation
       (getCurrentPosition, watchPosition, watchPosition_, clearWatch,
        Geolocation(..), gTypeGeolocation)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation> 
getCurrentPosition ::
                   (MonadDOM m) =>
                     Geolocation ->
                       PositionCallback ->
                         Maybe PositionErrorCallback -> Maybe PositionOptions -> m ()
getCurrentPosition self successCallback errorCallback options
  = liftDOM
      (void
         (self ^. jsf "getCurrentPosition"
            [toJSVal successCallback, toJSVal errorCallback, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition ::
              (MonadDOM m) =>
                Geolocation ->
                  PositionCallback ->
                    Maybe PositionErrorCallback -> Maybe PositionOptions -> m Int
watchPosition self successCallback errorCallback options
  = liftDOM
      (round <$>
         ((self ^. jsf "watchPosition"
             [toJSVal successCallback, toJSVal errorCallback, toJSVal options])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition_ ::
               (MonadDOM m) =>
                 Geolocation ->
                   PositionCallback ->
                     Maybe PositionErrorCallback -> Maybe PositionOptions -> m ()
watchPosition_ self successCallback errorCallback options
  = liftDOM
      (void
         (self ^. jsf "watchPosition"
            [toJSVal successCallback, toJSVal errorCallback, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.clearWatch Mozilla Geolocation.clearWatch documentation> 
clearWatch :: (MonadDOM m) => Geolocation -> Int -> m ()
clearWatch self watchId
  = liftDOM (void (self ^. jsf "clearWatch" [toJSVal watchId]))
