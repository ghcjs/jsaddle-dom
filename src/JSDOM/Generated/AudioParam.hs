{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioParam
       (setValueAtTime, linearRampToValueAtTime,
        exponentialRampToValueAtTime, setTargetAtTime, setValueCurveAtTime,
        cancelScheduledValues, setValue, getValue, getMinValue,
        getMaxValue, getDefaultValue, getName, getUnits, AudioParam(..),
        gTypeAudioParam)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.setValueAtTime Mozilla AudioParam.setValueAtTime documentation> 
setValueAtTime ::
               (MonadDOM m) => AudioParam -> Float -> Float -> m ()
setValueAtTime self value time
  = liftDOM
      (void (self ^. jsf "setValueAtTime" [toJSVal value, toJSVal time]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.linearRampToValueAtTime Mozilla AudioParam.linearRampToValueAtTime documentation> 
linearRampToValueAtTime ::
                        (MonadDOM m) => AudioParam -> Float -> Float -> m ()
linearRampToValueAtTime self value time
  = liftDOM
      (void
         (self ^. jsf "linearRampToValueAtTime"
            [toJSVal value, toJSVal time]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.exponentialRampToValueAtTime Mozilla AudioParam.exponentialRampToValueAtTime documentation> 
exponentialRampToValueAtTime ::
                             (MonadDOM m) => AudioParam -> Float -> Float -> m ()
exponentialRampToValueAtTime self value time
  = liftDOM
      (void
         (self ^. jsf "exponentialRampToValueAtTime"
            [toJSVal value, toJSVal time]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.setTargetAtTime Mozilla AudioParam.setTargetAtTime documentation> 
setTargetAtTime ::
                (MonadDOM m) => AudioParam -> Float -> Float -> Float -> m ()
setTargetAtTime self target time timeConstant
  = liftDOM
      (void
         (self ^. jsf "setTargetAtTime"
            [toJSVal target, toJSVal time, toJSVal timeConstant]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.setValueCurveAtTime Mozilla AudioParam.setValueCurveAtTime documentation> 
setValueCurveAtTime ::
                    (MonadDOM m, IsFloat32Array values) =>
                      AudioParam -> Maybe values -> Float -> Float -> m ()
setValueCurveAtTime self values time duration
  = liftDOM
      (void
         (self ^. jsf "setValueCurveAtTime"
            [toJSVal values, toJSVal time, toJSVal duration]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.cancelScheduledValues Mozilla AudioParam.cancelScheduledValues documentation> 
cancelScheduledValues ::
                      (MonadDOM m) => AudioParam -> Float -> m ()
cancelScheduledValues self startTime
  = liftDOM
      (void (self ^. jsf "cancelScheduledValues" [toJSVal startTime]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.value Mozilla AudioParam.value documentation> 
setValue :: (MonadDOM m) => AudioParam -> Float -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.value Mozilla AudioParam.value documentation> 
getValue :: (MonadDOM m) => AudioParam -> m Float
getValue self
  = liftDOM (realToFrac <$> ((self ^. js "value") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.minValue Mozilla AudioParam.minValue documentation> 
getMinValue :: (MonadDOM m) => AudioParam -> m Float
getMinValue self
  = liftDOM
      (realToFrac <$> ((self ^. js "minValue") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.maxValue Mozilla AudioParam.maxValue documentation> 
getMaxValue :: (MonadDOM m) => AudioParam -> m Float
getMaxValue self
  = liftDOM
      (realToFrac <$> ((self ^. js "maxValue") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.defaultValue Mozilla AudioParam.defaultValue documentation> 
getDefaultValue :: (MonadDOM m) => AudioParam -> m Float
getDefaultValue self
  = liftDOM
      (realToFrac <$> ((self ^. js "defaultValue") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.name Mozilla AudioParam.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => AudioParam -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.units Mozilla AudioParam.units documentation> 
getUnits :: (MonadDOM m) => AudioParam -> m Word
getUnits self
  = liftDOM (round <$> ((self ^. js "units") >>= valToNumber))
