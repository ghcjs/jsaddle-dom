{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaTrackConstraints
       (getMandatory, getMandatoryUnchecked, getOptional,
        MediaTrackConstraints, castToMediaTrackConstraints,
        gTypeMediaTrackConstraints)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.mandatory Mozilla MediaTrackConstraints.mandatory documentation> 
getMandatory ::
             (MonadDOM m) =>
               MediaTrackConstraints -> m (Maybe MediaTrackConstraintSet)
getMandatory self
  = liftDOM ((self ^. js "mandatory") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.mandatory Mozilla MediaTrackConstraints.mandatory documentation> 
getMandatoryUnchecked ::
                      (MonadDOM m) => MediaTrackConstraints -> m MediaTrackConstraintSet
getMandatoryUnchecked self
  = liftDOM ((self ^. js "mandatory") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.optional Mozilla MediaTrackConstraints.optional documentation> 
getOptional ::
            (MonadDOM m) =>
              MediaTrackConstraints -> m (Maybe [Maybe MediaTrackConstraint])
getOptional self
  = liftDOM
      ((self ^. js "optional") >>= maybeNullOrUndefined' fromJSArray)
