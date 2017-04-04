{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGLength
       (newValueSpecifiedUnits, convertToSpecifiedUnits,
        pattern SVG_LENGTHTYPE_UNKNOWN, pattern SVG_LENGTHTYPE_NUMBER,
        pattern SVG_LENGTHTYPE_PERCENTAGE, pattern SVG_LENGTHTYPE_EMS,
        pattern SVG_LENGTHTYPE_EXS, pattern SVG_LENGTHTYPE_PX,
        pattern SVG_LENGTHTYPE_CM, pattern SVG_LENGTHTYPE_MM,
        pattern SVG_LENGTHTYPE_IN, pattern SVG_LENGTHTYPE_PT,
        pattern SVG_LENGTHTYPE_PC, getUnitType, setValue, getValue,
        setValueInSpecifiedUnits, getValueInSpecifiedUnits,
        setValueAsString, getValueAsString, SVGLength(..), gTypeSVGLength)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.newValueSpecifiedUnits Mozilla SVGLength.newValueSpecifiedUnits documentation> 
newValueSpecifiedUnits ::
                       (MonadDOM m) => SVGLength -> Word -> Float -> m ()
newValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftDOM
      (void
         (self ^. jsf "newValueSpecifiedUnits"
            [toJSVal unitType, toJSVal valueInSpecifiedUnits]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.convertToSpecifiedUnits Mozilla SVGLength.convertToSpecifiedUnits documentation> 
convertToSpecifiedUnits ::
                        (MonadDOM m) => SVGLength -> Word -> m ()
convertToSpecifiedUnits self unitType
  = liftDOM
      (void (self ^. jsf "convertToSpecifiedUnits" [toJSVal unitType]))
pattern SVG_LENGTHTYPE_UNKNOWN = 0
pattern SVG_LENGTHTYPE_NUMBER = 1
pattern SVG_LENGTHTYPE_PERCENTAGE = 2
pattern SVG_LENGTHTYPE_EMS = 3
pattern SVG_LENGTHTYPE_EXS = 4
pattern SVG_LENGTHTYPE_PX = 5
pattern SVG_LENGTHTYPE_CM = 6
pattern SVG_LENGTHTYPE_MM = 7
pattern SVG_LENGTHTYPE_IN = 8
pattern SVG_LENGTHTYPE_PT = 9
pattern SVG_LENGTHTYPE_PC = 10

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.unitType Mozilla SVGLength.unitType documentation> 
getUnitType :: (MonadDOM m) => SVGLength -> m Word
getUnitType self
  = liftDOM (round <$> ((self ^. js "unitType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
setValue :: (MonadDOM m) => SVGLength -> Float -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
getValue :: (MonadDOM m) => SVGLength -> m Float
getValue self
  = liftDOM (realToFrac <$> ((self ^. js "value") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
setValueInSpecifiedUnits ::
                         (MonadDOM m) => SVGLength -> Float -> m ()
setValueInSpecifiedUnits self val
  = liftDOM (self ^. jss "valueInSpecifiedUnits" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
getValueInSpecifiedUnits :: (MonadDOM m) => SVGLength -> m Float
getValueInSpecifiedUnits self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "valueInSpecifiedUnits") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
setValueAsString ::
                 (MonadDOM m, ToJSString val) => SVGLength -> val -> m ()
setValueAsString self val
  = liftDOM (self ^. jss "valueAsString" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
getValueAsString ::
                 (MonadDOM m, FromJSString result) => SVGLength -> m result
getValueAsString self
  = liftDOM ((self ^. js "valueAsString") >>= fromJSValUnchecked)
