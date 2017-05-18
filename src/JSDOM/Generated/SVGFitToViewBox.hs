{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFitToViewBox
       (getViewBox, getPreserveAspectRatio, SVGFitToViewBox(..),
        gTypeSVGFitToViewBox, IsSVGFitToViewBox, toSVGFitToViewBox)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
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
           (MonadDOM m, IsSVGFitToViewBox self) => self -> m SVGAnimatedRect
getViewBox self
  = liftDOM
      (((toSVGFitToViewBox self) ^. js "viewBox") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadDOM m, IsSVGFitToViewBox self) =>
                         self -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatio self
  = liftDOM
      (((toSVGFitToViewBox self) ^. js "preserveAspectRatio") >>=
         fromJSValUnchecked)
