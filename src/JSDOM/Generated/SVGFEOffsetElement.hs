{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEOffsetElement
       (getIn1, getIn1Unchecked, getDx, getDxUnchecked, getDy,
        getDyUnchecked, SVGFEOffsetElement(..), gTypeSVGFEOffsetElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.in1 Mozilla SVGFEOffsetElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) => SVGFEOffsetElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.in1 Mozilla SVGFEOffsetElement.in1 documentation> 
getIn1Unchecked ::
                (MonadDOM m) => SVGFEOffsetElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dx Mozilla SVGFEOffsetElement.dx documentation> 
getDx ::
      (MonadDOM m) => SVGFEOffsetElement -> m (Maybe SVGAnimatedNumber)
getDx self = liftDOM ((self ^. js "dx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dx Mozilla SVGFEOffsetElement.dx documentation> 
getDxUnchecked ::
               (MonadDOM m) => SVGFEOffsetElement -> m SVGAnimatedNumber
getDxUnchecked self
  = liftDOM ((self ^. js "dx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dy Mozilla SVGFEOffsetElement.dy documentation> 
getDy ::
      (MonadDOM m) => SVGFEOffsetElement -> m (Maybe SVGAnimatedNumber)
getDy self = liftDOM ((self ^. js "dy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dy Mozilla SVGFEOffsetElement.dy documentation> 
getDyUnchecked ::
               (MonadDOM m) => SVGFEOffsetElement -> m SVGAnimatedNumber
getDyUnchecked self
  = liftDOM ((self ^. js "dy") >>= fromJSValUnchecked)
