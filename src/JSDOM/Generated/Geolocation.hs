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
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
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
                   (MonadDOM m, IsPositionOptions options) =>
                     Geolocation ->
                       Maybe PositionCallback ->
                         Maybe PositionErrorCallback -> Maybe options -> m ()
getCurrentPosition self successCallback errorCallback options
  = liftDOM
      (void
         (self ^. jsf "getCurrentPosition"
            [toJSVal successCallback, toJSVal errorCallback, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition ::
              (MonadDOM m, IsPositionOptions options) =>
                Geolocation ->
                  Maybe PositionCallback ->
                    Maybe PositionErrorCallback -> Maybe options -> m Int
watchPosition self successCallback errorCallback options
  = liftDOM
      (round <$>
         ((self ^. jsf "watchPosition"
             [toJSVal successCallback, toJSVal errorCallback, toJSVal options])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition_ ::
               (MonadDOM m, IsPositionOptions options) =>
                 Geolocation ->
                   Maybe PositionCallback ->
                     Maybe PositionErrorCallback -> Maybe options -> m ()
watchPosition_ self successCallback errorCallback options
  = liftDOM
      (void
         (self ^. jsf "watchPosition"
            [toJSVal successCallback, toJSVal errorCallback, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.clearWatch Mozilla Geolocation.clearWatch documentation> 
clearWatch :: (MonadDOM m) => Geolocation -> Int -> m ()
clearWatch self watchID
  = liftDOM (void (self ^. jsf "clearWatch" [toJSVal watchID]))
