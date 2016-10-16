{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGViewSpec
       (getTransform, getTransformUnchecked, getViewTarget,
        getViewTargetUnchecked, getViewBoxString,
        getPreserveAspectRatioString, getTransformString,
        getViewTargetString, setZoomAndPan, getZoomAndPan, SVGViewSpec(..),
        gTypeSVGViewSpec)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transform Mozilla SVGViewSpec.transform documentation> 
getTransform ::
             (MonadDOM m) => SVGViewSpec -> m (Maybe SVGTransformList)
getTransform self
  = liftDOM ((self ^. js "transform") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transform Mozilla SVGViewSpec.transform documentation> 
getTransformUnchecked ::
                      (MonadDOM m) => SVGViewSpec -> m SVGTransformList
getTransformUnchecked self
  = liftDOM ((self ^. js "transform") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTarget Mozilla SVGViewSpec.viewTarget documentation> 
getViewTarget ::
              (MonadDOM m) => SVGViewSpec -> m (Maybe SVGElement)
getViewTarget self
  = liftDOM ((self ^. js "viewTarget") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTarget Mozilla SVGViewSpec.viewTarget documentation> 
getViewTargetUnchecked ::
                       (MonadDOM m) => SVGViewSpec -> m SVGElement
getViewTargetUnchecked self
  = liftDOM ((self ^. js "viewTarget") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewBoxString Mozilla SVGViewSpec.viewBoxString documentation> 
getViewBoxString ::
                 (MonadDOM m, FromJSString result) => SVGViewSpec -> m result
getViewBoxString self
  = liftDOM ((self ^. js "viewBoxString") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.preserveAspectRatioString Mozilla SVGViewSpec.preserveAspectRatioString documentation> 
getPreserveAspectRatioString ::
                             (MonadDOM m, FromJSString result) => SVGViewSpec -> m result
getPreserveAspectRatioString self
  = liftDOM
      ((self ^. js "preserveAspectRatioString") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transformString Mozilla SVGViewSpec.transformString documentation> 
getTransformString ::
                   (MonadDOM m, FromJSString result) => SVGViewSpec -> m result
getTransformString self
  = liftDOM ((self ^. js "transformString") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTargetString Mozilla SVGViewSpec.viewTargetString documentation> 
getViewTargetString ::
                    (MonadDOM m, FromJSString result) => SVGViewSpec -> m result
getViewTargetString self
  = liftDOM ((self ^. js "viewTargetString") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
setZoomAndPan :: (MonadDOM m) => SVGViewSpec -> Word -> m ()
setZoomAndPan self val
  = liftDOM (self ^. jss "zoomAndPan" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
getZoomAndPan :: (MonadDOM m) => SVGViewSpec -> m Word
getZoomAndPan self
  = liftDOM (round <$> ((self ^. js "zoomAndPan") >>= valToNumber))
