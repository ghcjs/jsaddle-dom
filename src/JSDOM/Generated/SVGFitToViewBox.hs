{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFitToViewBox
       (getViewBox, getViewBoxUnsafe, getViewBoxUnchecked,
        getPreserveAspectRatio, getPreserveAspectRatioUnsafe,
        getPreserveAspectRatioUnchecked, SVGFitToViewBox(..),
        gTypeSVGFitToViewBox)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBox ::
           (MonadDOM m) => SVGFitToViewBox -> m (Maybe SVGAnimatedRect)
getViewBox self = liftDOM ((self ^. js "viewBox") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBoxUnsafe ::
                 (MonadDOM m, HasCallStack) => SVGFitToViewBox -> m SVGAnimatedRect
getViewBoxUnsafe self
  = liftDOM
      (((self ^. js "viewBox") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBoxUnchecked ::
                    (MonadDOM m) => SVGFitToViewBox -> m SVGAnimatedRect
getViewBoxUnchecked self
  = liftDOM ((self ^. js "viewBox") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadDOM m) =>
                         SVGFitToViewBox -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftDOM ((self ^. js "preserveAspectRatio") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatioUnsafe ::
                             (MonadDOM m, HasCallStack) =>
                               SVGFitToViewBox -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnsafe self
  = liftDOM
      (((self ^. js "preserveAspectRatio") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatioUnchecked ::
                                (MonadDOM m) => SVGFitToViewBox -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnchecked self
  = liftDOM
      ((self ^. js "preserveAspectRatio") >>= fromJSValUnchecked)
