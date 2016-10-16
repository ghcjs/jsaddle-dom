{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGEllipseElement
       (getCx, getCxUnchecked, getCy, getCyUnchecked, getRx,
        getRxUnchecked, getRy, getRyUnchecked, SVGEllipseElement(..),
        gTypeSVGEllipseElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCx ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCx self = liftDOM ((self ^. js "cx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCxUnchecked ::
               (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getCxUnchecked self
  = liftDOM ((self ^. js "cx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCy ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCy self = liftDOM ((self ^. js "cy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCyUnchecked ::
               (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getCyUnchecked self
  = liftDOM ((self ^. js "cy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRx ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRx self = liftDOM ((self ^. js "rx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRxUnchecked ::
               (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getRxUnchecked self
  = liftDOM ((self ^. js "rx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRy ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRy self = liftDOM ((self ^. js "ry") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRyUnchecked ::
               (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getRyUnchecked self
  = liftDOM ((self ^. js "ry") >>= fromJSValUnchecked)
