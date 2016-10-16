{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AllVideoCapabilities
       (getSourceType, getSourceId, getWidth, getWidthUnchecked,
        getHeight, getHeightUnchecked, getFrameRate, getFrameRateUnchecked,
        getAspectRatio, getAspectRatioUnchecked, getFacingMode,
        AllVideoCapabilities(..), gTypeAllVideoCapabilities)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceType Mozilla AllVideoCapabilities.sourceType documentation> 
getSourceType ::
              (MonadDOM m, FromJSString result) =>
                AllVideoCapabilities -> m [result]
getSourceType self
  = liftDOM ((self ^. js "sourceType") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceId Mozilla AllVideoCapabilities.sourceId documentation> 
getSourceId ::
            (MonadDOM m, FromJSString result) =>
              AllVideoCapabilities -> m [result]
getSourceId self
  = liftDOM ((self ^. js "sourceId") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.width Mozilla AllVideoCapabilities.width documentation> 
getWidth ::
         (MonadDOM m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.width Mozilla AllVideoCapabilities.width documentation> 
getWidthUnchecked ::
                  (MonadDOM m) => AllVideoCapabilities -> m CapabilityRange
getWidthUnchecked self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
getHeight ::
          (MonadDOM m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
getHeightUnchecked ::
                   (MonadDOM m) => AllVideoCapabilities -> m CapabilityRange
getHeightUnchecked self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
getFrameRate ::
             (MonadDOM m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getFrameRate self
  = liftDOM ((self ^. js "frameRate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
getFrameRateUnchecked ::
                      (MonadDOM m) => AllVideoCapabilities -> m CapabilityRange
getFrameRateUnchecked self
  = liftDOM ((self ^. js "frameRate") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
getAspectRatio ::
               (MonadDOM m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getAspectRatio self
  = liftDOM ((self ^. js "aspectRatio") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
getAspectRatioUnchecked ::
                        (MonadDOM m) => AllVideoCapabilities -> m CapabilityRange
getAspectRatioUnchecked self
  = liftDOM ((self ^. js "aspectRatio") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.facingMode Mozilla AllVideoCapabilities.facingMode documentation> 
getFacingMode ::
              (MonadDOM m, FromJSString result) =>
                AllVideoCapabilities -> m [result]
getFacingMode self
  = liftDOM ((self ^. js "facingMode") >>= fromJSArrayUnchecked)
