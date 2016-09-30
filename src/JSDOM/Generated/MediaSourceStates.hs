{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaSourceStates
       (getSourceType, getSourceId, getWidth, getHeight, getFrameRate,
        getAspectRatio, getFacingMode, getVolume, MediaSourceStates,
        castToMediaSourceStates, gTypeMediaSourceStates)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.sourceType Mozilla MediaSourceStates.sourceType documentation> 
getSourceType ::
              (MonadDOM m) => MediaSourceStates -> m SourceTypeEnum
getSourceType self
  = liftDOM ((self ^. js "sourceType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.sourceId Mozilla MediaSourceStates.sourceId documentation> 
getSourceId ::
            (MonadDOM m, FromJSString result) => MediaSourceStates -> m result
getSourceId self
  = liftDOM ((self ^. js "sourceId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.width Mozilla MediaSourceStates.width documentation> 
getWidth :: (MonadDOM m) => MediaSourceStates -> m (Maybe Word)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.height Mozilla MediaSourceStates.height documentation> 
getHeight :: (MonadDOM m) => MediaSourceStates -> m (Maybe Word)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.frameRate Mozilla MediaSourceStates.frameRate documentation> 
getFrameRate ::
             (MonadDOM m) => MediaSourceStates -> m (Maybe Float)
getFrameRate self
  = liftDOM ((self ^. js "frameRate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.aspectRatio Mozilla MediaSourceStates.aspectRatio documentation> 
getAspectRatio ::
               (MonadDOM m) => MediaSourceStates -> m (Maybe Float)
getAspectRatio self
  = liftDOM ((self ^. js "aspectRatio") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.facingMode Mozilla MediaSourceStates.facingMode documentation> 
getFacingMode ::
              (MonadDOM m) => MediaSourceStates -> m (Maybe VideoFacingModeEnum)
getFacingMode self
  = liftDOM ((self ^. js "facingMode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.volume Mozilla MediaSourceStates.volume documentation> 
getVolume :: (MonadDOM m) => MediaSourceStates -> m (Maybe Word)
getVolume self = liftDOM ((self ^. js "volume") >>= fromJSVal)
