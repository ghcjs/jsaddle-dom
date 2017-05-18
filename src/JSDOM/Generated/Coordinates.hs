{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Coordinates
       (getLatitude, getLongitude, getAltitude, getAltitudeUnsafe,
        getAltitudeUnchecked, getAccuracy, getAltitudeAccuracy,
        getAltitudeAccuracyUnsafe, getAltitudeAccuracyUnchecked,
        getHeading, getHeadingUnsafe, getHeadingUnchecked, getSpeed,
        getSpeedUnsafe, getSpeedUnchecked, Coordinates(..),
        gTypeCoordinates)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.latitude Mozilla Coordinates.latitude documentation> 
getLatitude :: (MonadDOM m) => Coordinates -> m Double
getLatitude self
  = liftDOM ((self ^. js "latitude") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.longitude Mozilla Coordinates.longitude documentation> 
getLongitude :: (MonadDOM m) => Coordinates -> m Double
getLongitude self
  = liftDOM ((self ^. js "longitude") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
getAltitude :: (MonadDOM m) => Coordinates -> m (Maybe Double)
getAltitude self = liftDOM ((self ^. js "altitude") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
getAltitudeUnsafe ::
                  (MonadDOM m, HasCallStack) => Coordinates -> m Double
getAltitudeUnsafe self
  = liftDOM
      (((self ^. js "altitude") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
getAltitudeUnchecked :: (MonadDOM m) => Coordinates -> m Double
getAltitudeUnchecked self
  = liftDOM ((self ^. js "altitude") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.accuracy Mozilla Coordinates.accuracy documentation> 
getAccuracy :: (MonadDOM m) => Coordinates -> m Double
getAccuracy self
  = liftDOM ((self ^. js "accuracy") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
getAltitudeAccuracy ::
                    (MonadDOM m) => Coordinates -> m (Maybe Double)
getAltitudeAccuracy self
  = liftDOM ((self ^. js "altitudeAccuracy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
getAltitudeAccuracyUnsafe ::
                          (MonadDOM m, HasCallStack) => Coordinates -> m Double
getAltitudeAccuracyUnsafe self
  = liftDOM
      (((self ^. js "altitudeAccuracy") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
getAltitudeAccuracyUnchecked ::
                             (MonadDOM m) => Coordinates -> m Double
getAltitudeAccuracyUnchecked self
  = liftDOM ((self ^. js "altitudeAccuracy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
getHeading :: (MonadDOM m) => Coordinates -> m (Maybe Double)
getHeading self = liftDOM ((self ^. js "heading") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
getHeadingUnsafe ::
                 (MonadDOM m, HasCallStack) => Coordinates -> m Double
getHeadingUnsafe self
  = liftDOM
      (((self ^. js "heading") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
getHeadingUnchecked :: (MonadDOM m) => Coordinates -> m Double
getHeadingUnchecked self
  = liftDOM ((self ^. js "heading") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
getSpeed :: (MonadDOM m) => Coordinates -> m (Maybe Double)
getSpeed self = liftDOM ((self ^. js "speed") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
getSpeedUnsafe ::
               (MonadDOM m, HasCallStack) => Coordinates -> m Double
getSpeedUnsafe self
  = liftDOM
      (((self ^. js "speed") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
getSpeedUnchecked :: (MonadDOM m) => Coordinates -> m Double
getSpeedUnchecked self
  = liftDOM ((self ^. js "speed") >>= fromJSValUnchecked)
