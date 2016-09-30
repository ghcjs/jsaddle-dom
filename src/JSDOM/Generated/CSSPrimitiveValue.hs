{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSPrimitiveValue
       (setFloatValue, getFloatValue, setStringValue, getStringValue,
        getCounterValue, getRectValue, getRGBColorValue,
        pattern CSS_UNKNOWN, pattern CSS_NUMBER, pattern CSS_PERCENTAGE,
        pattern CSS_EMS, pattern CSS_EXS, pattern CSS_PX, pattern CSS_CM,
        pattern CSS_MM, pattern CSS_IN, pattern CSS_PT, pattern CSS_PC,
        pattern CSS_DEG, pattern CSS_RAD, pattern CSS_GRAD, pattern CSS_MS,
        pattern CSS_S, pattern CSS_HZ, pattern CSS_KHZ,
        pattern CSS_DIMENSION, pattern CSS_STRING, pattern CSS_URI,
        pattern CSS_IDENT, pattern CSS_ATTR, pattern CSS_COUNTER,
        pattern CSS_RECT, pattern CSS_RGBCOLOR, pattern CSS_VW,
        pattern CSS_VH, pattern CSS_VMIN, pattern CSS_VMAX,
        getPrimitiveType, CSSPrimitiveValue, castToCSSPrimitiveValue,
        gTypeCSSPrimitiveValue)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.setFloatValue Mozilla CSSPrimitiveValue.setFloatValue documentation> 
setFloatValue ::
              (MonadDOM m) => CSSPrimitiveValue -> Word -> Float -> m ()
setFloatValue self unitType floatValue
  = liftDOM
      (void
         (self ^. jsf "setFloatValue"
            [toJSVal unitType, toJSVal floatValue]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getFloatValue Mozilla CSSPrimitiveValue.getFloatValue documentation> 
getFloatValue ::
              (MonadDOM m) => CSSPrimitiveValue -> Word -> m Float
getFloatValue self unitType
  = liftDOM
      (realToFrac <$>
         ((self ^. jsf "getFloatValue" [toJSVal unitType]) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.setStringValue Mozilla CSSPrimitiveValue.setStringValue documentation> 
setStringValue ::
               (MonadDOM m, ToJSString stringValue) =>
                 CSSPrimitiveValue -> Word -> stringValue -> m ()
setStringValue self stringType stringValue
  = liftDOM
      (void
         (self ^. jsf "setStringValue"
            [toJSVal stringType, toJSVal stringValue]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getStringValue Mozilla CSSPrimitiveValue.getStringValue documentation> 
getStringValue ::
               (MonadDOM m, FromJSString result) => CSSPrimitiveValue -> m result
getStringValue self
  = liftDOM ((self ^. js "getStringValue") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getCounterValue Mozilla CSSPrimitiveValue.getCounterValue documentation> 
getCounterValue ::
                (MonadDOM m) => CSSPrimitiveValue -> m (Maybe Counter)
getCounterValue self
  = liftDOM ((self ^. js "getCounterValue") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRectValue Mozilla CSSPrimitiveValue.getRectValue documentation> 
getRectValue :: (MonadDOM m) => CSSPrimitiveValue -> m (Maybe Rect)
getRectValue self
  = liftDOM ((self ^. js "getRectValue") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRGBColorValue Mozilla CSSPrimitiveValue.getRGBColorValue documentation> 
getRGBColorValue ::
                 (MonadDOM m) => CSSPrimitiveValue -> m (Maybe RGBColor)
getRGBColorValue self
  = liftDOM ((self ^. js "getRGBColorValue") >>= fromJSVal)
pattern CSS_UNKNOWN = 0
pattern CSS_NUMBER = 1
pattern CSS_PERCENTAGE = 2
pattern CSS_EMS = 3
pattern CSS_EXS = 4
pattern CSS_PX = 5
pattern CSS_CM = 6
pattern CSS_MM = 7
pattern CSS_IN = 8
pattern CSS_PT = 9
pattern CSS_PC = 10
pattern CSS_DEG = 11
pattern CSS_RAD = 12
pattern CSS_GRAD = 13
pattern CSS_MS = 14
pattern CSS_S = 15
pattern CSS_HZ = 16
pattern CSS_KHZ = 17
pattern CSS_DIMENSION = 18
pattern CSS_STRING = 19
pattern CSS_URI = 20
pattern CSS_IDENT = 21
pattern CSS_ATTR = 22
pattern CSS_COUNTER = 23
pattern CSS_RECT = 24
pattern CSS_RGBCOLOR = 25
pattern CSS_VW = 26
pattern CSS_VH = 27
pattern CSS_VMIN = 28
pattern CSS_VMAX = 29

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.primitiveType Mozilla CSSPrimitiveValue.primitiveType documentation> 
getPrimitiveType :: (MonadDOM m) => CSSPrimitiveValue -> m Word
getPrimitiveType self
  = liftDOM
      (round <$> ((self ^. js "primitiveType") >>= valToNumber))
