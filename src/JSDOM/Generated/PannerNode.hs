{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PannerNode
       (setPosition, setOrientation, setVelocity, setPanningModel,
        getPanningModel, setDistanceModel, getDistanceModel,
        setRefDistance, getRefDistance, setMaxDistance, getMaxDistance,
        setRolloffFactor, getRolloffFactor, setConeInnerAngle,
        getConeInnerAngle, setConeOuterAngle, getConeOuterAngle,
        setConeOuterGain, getConeOuterGain, PannerNode(..),
        gTypePannerNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setPosition Mozilla webkitAudioPannerNode.setPosition documentation> 
setPosition ::
            (MonadDOM m) => PannerNode -> Float -> Float -> Float -> m ()
setPosition self x y z
  = liftDOM
      (void
         (self ^. jsf "setPosition" [toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setOrientation Mozilla webkitAudioPannerNode.setOrientation documentation> 
setOrientation ::
               (MonadDOM m) => PannerNode -> Float -> Float -> Float -> m ()
setOrientation self x y z
  = liftDOM
      (void
         (self ^. jsf "setOrientation" [toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setVelocity Mozilla webkitAudioPannerNode.setVelocity documentation> 
setVelocity ::
            (MonadDOM m) => PannerNode -> Float -> Float -> Float -> m ()
setVelocity self x y z
  = liftDOM
      (void
         (self ^. jsf "setVelocity" [toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
setPanningModel ::
                (MonadDOM m) => PannerNode -> PanningModelType -> m ()
setPanningModel self val
  = liftDOM (self ^. jss "panningModel" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
getPanningModel :: (MonadDOM m) => PannerNode -> m PanningModelType
getPanningModel self
  = liftDOM ((self ^. js "panningModel") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
setDistanceModel ::
                 (MonadDOM m) => PannerNode -> DistanceModelType -> m ()
setDistanceModel self val
  = liftDOM (self ^. jss "distanceModel" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
getDistanceModel ::
                 (MonadDOM m) => PannerNode -> m DistanceModelType
getDistanceModel self
  = liftDOM ((self ^. js "distanceModel") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
setRefDistance :: (MonadDOM m) => PannerNode -> Double -> m ()
setRefDistance self val
  = liftDOM (self ^. jss "refDistance" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
getRefDistance :: (MonadDOM m) => PannerNode -> m Double
getRefDistance self
  = liftDOM ((self ^. js "refDistance") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
setMaxDistance :: (MonadDOM m) => PannerNode -> Double -> m ()
setMaxDistance self val
  = liftDOM (self ^. jss "maxDistance" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
getMaxDistance :: (MonadDOM m) => PannerNode -> m Double
getMaxDistance self
  = liftDOM ((self ^. js "maxDistance") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
setRolloffFactor :: (MonadDOM m) => PannerNode -> Double -> m ()
setRolloffFactor self val
  = liftDOM (self ^. jss "rolloffFactor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
getRolloffFactor :: (MonadDOM m) => PannerNode -> m Double
getRolloffFactor self
  = liftDOM ((self ^. js "rolloffFactor") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
setConeInnerAngle :: (MonadDOM m) => PannerNode -> Double -> m ()
setConeInnerAngle self val
  = liftDOM (self ^. jss "coneInnerAngle" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
getConeInnerAngle :: (MonadDOM m) => PannerNode -> m Double
getConeInnerAngle self
  = liftDOM ((self ^. js "coneInnerAngle") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
setConeOuterAngle :: (MonadDOM m) => PannerNode -> Double -> m ()
setConeOuterAngle self val
  = liftDOM (self ^. jss "coneOuterAngle" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
getConeOuterAngle :: (MonadDOM m) => PannerNode -> m Double
getConeOuterAngle self
  = liftDOM ((self ^. js "coneOuterAngle") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
setConeOuterGain :: (MonadDOM m) => PannerNode -> Double -> m ()
setConeOuterGain self val
  = liftDOM (self ^. jss "coneOuterGain" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
getConeOuterGain :: (MonadDOM m) => PannerNode -> m Double
getConeOuterGain self
  = liftDOM ((self ^. js "coneOuterGain") >>= valToNumber)
