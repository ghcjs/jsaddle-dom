{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAnimatedLengthList
       (getBaseVal, getBaseValUnchecked, getAnimVal, getAnimValUnchecked,
        SVGAnimatedLengthList(..), gTypeSVGAnimatedLengthList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.baseVal Mozilla SVGAnimatedLengthList.baseVal documentation> 
getBaseVal ::
           (MonadDOM m) => SVGAnimatedLengthList -> m (Maybe SVGLengthList)
getBaseVal self = liftDOM ((self ^. js "baseVal") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.baseVal Mozilla SVGAnimatedLengthList.baseVal documentation> 
getBaseValUnchecked ::
                    (MonadDOM m) => SVGAnimatedLengthList -> m SVGLengthList
getBaseValUnchecked self
  = liftDOM ((self ^. js "baseVal") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.animVal Mozilla SVGAnimatedLengthList.animVal documentation> 
getAnimVal ::
           (MonadDOM m) => SVGAnimatedLengthList -> m (Maybe SVGLengthList)
getAnimVal self = liftDOM ((self ^. js "animVal") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.animVal Mozilla SVGAnimatedLengthList.animVal documentation> 
getAnimValUnchecked ::
                    (MonadDOM m) => SVGAnimatedLengthList -> m SVGLengthList
getAnimValUnchecked self
  = liftDOM ((self ^. js "animVal") >>= fromJSValUnchecked)
