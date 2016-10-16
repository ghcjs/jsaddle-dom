{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaTrackConstraints
       (getMandatory, getMandatoryUnsafe, getMandatoryUnchecked,
        getOptional, MediaTrackConstraints(..), gTypeMediaTrackConstraints)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.mandatory Mozilla MediaTrackConstraints.mandatory documentation> 
getMandatory ::
             (MonadDOM m) =>
               MediaTrackConstraints -> m (Maybe MediaTrackConstraintSet)
getMandatory self
  = liftDOM ((self ^. js "mandatory") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.mandatory Mozilla MediaTrackConstraints.mandatory documentation> 
getMandatoryUnsafe ::
                   (MonadDOM m, HasCallStack) =>
                     MediaTrackConstraints -> m MediaTrackConstraintSet
getMandatoryUnsafe self
  = liftDOM
      (((self ^. js "mandatory") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

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
