{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGCircleElement
       (getCx, getCxUnchecked, getCy, getCyUnchecked, getR, getRUnchecked,
        SVGCircleElement(..), gTypeSVGCircleElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
getCx ::
      (MonadDOM m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCx self = liftDOM ((self ^. js "cx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
getCxUnchecked ::
               (MonadDOM m) => SVGCircleElement -> m SVGAnimatedLength
getCxUnchecked self
  = liftDOM ((self ^. js "cx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
getCy ::
      (MonadDOM m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCy self = liftDOM ((self ^. js "cy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
getCyUnchecked ::
               (MonadDOM m) => SVGCircleElement -> m SVGAnimatedLength
getCyUnchecked self
  = liftDOM ((self ^. js "cy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
getR ::
     (MonadDOM m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getR self = liftDOM ((self ^. js "r") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
getRUnchecked ::
              (MonadDOM m) => SVGCircleElement -> m SVGAnimatedLength
getRUnchecked self
  = liftDOM ((self ^. js "r") >>= fromJSValUnchecked)
