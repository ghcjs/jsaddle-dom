{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAngle
       (newValueSpecifiedUnits, convertToSpecifiedUnits,
        pattern SVG_ANGLETYPE_UNKNOWN, pattern SVG_ANGLETYPE_UNSPECIFIED,
        pattern SVG_ANGLETYPE_DEG, pattern SVG_ANGLETYPE_RAD,
        pattern SVG_ANGLETYPE_GRAD, getUnitType, setValue, getValue,
        setValueInSpecifiedUnits, getValueInSpecifiedUnits,
        setValueAsString, getValueAsString, getValueAsStringUnsafe,
        getValueAsStringUnchecked, SVGAngle(..), gTypeSVGAngle)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.newValueSpecifiedUnits Mozilla SVGAngle.newValueSpecifiedUnits documentation> 
newValueSpecifiedUnits ::
                       (MonadDOM m) => SVGAngle -> Word -> Float -> m ()
newValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftDOM
      (void
         (self ^. jsf "newValueSpecifiedUnits"
            [toJSVal unitType, toJSVal valueInSpecifiedUnits]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.convertToSpecifiedUnits Mozilla SVGAngle.convertToSpecifiedUnits documentation> 
convertToSpecifiedUnits :: (MonadDOM m) => SVGAngle -> Word -> m ()
convertToSpecifiedUnits self unitType
  = liftDOM
      (void (self ^. jsf "convertToSpecifiedUnits" [toJSVal unitType]))
pattern SVG_ANGLETYPE_UNKNOWN = 0
pattern SVG_ANGLETYPE_UNSPECIFIED = 1
pattern SVG_ANGLETYPE_DEG = 2
pattern SVG_ANGLETYPE_RAD = 3
pattern SVG_ANGLETYPE_GRAD = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.unitType Mozilla SVGAngle.unitType documentation> 
getUnitType :: (MonadDOM m) => SVGAngle -> m Word
getUnitType self
  = liftDOM (round <$> ((self ^. js "unitType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
setValue :: (MonadDOM m) => SVGAngle -> Float -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
getValue :: (MonadDOM m) => SVGAngle -> m Float
getValue self
  = liftDOM (realToFrac <$> ((self ^. js "value") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
setValueInSpecifiedUnits ::
                         (MonadDOM m) => SVGAngle -> Float -> m ()
setValueInSpecifiedUnits self val
  = liftDOM (self ^. jss "valueInSpecifiedUnits" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
getValueInSpecifiedUnits :: (MonadDOM m) => SVGAngle -> m Float
getValueInSpecifiedUnits self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "valueInSpecifiedUnits") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
setValueAsString ::
                 (MonadDOM m, ToJSString val) => SVGAngle -> Maybe val -> m ()
setValueAsString self val
  = liftDOM (self ^. jss "valueAsString" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
getValueAsString ::
                 (MonadDOM m, FromJSString result) => SVGAngle -> m (Maybe result)
getValueAsString self
  = liftDOM ((self ^. js "valueAsString") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
getValueAsStringUnsafe ::
                       (MonadDOM m, HasCallStack, FromJSString result) =>
                         SVGAngle -> m result
getValueAsStringUnsafe self
  = liftDOM
      (((self ^. js "valueAsString") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
getValueAsStringUnchecked ::
                          (MonadDOM m, FromJSString result) => SVGAngle -> m result
getValueAsStringUnchecked self
  = liftDOM ((self ^. js "valueAsString") >>= fromJSValUnchecked)
