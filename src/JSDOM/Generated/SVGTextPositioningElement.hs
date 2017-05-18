{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTextPositioningElement
       (getX, getY, getDx, getDy, getRotate,
        SVGTextPositioningElement(..), gTypeSVGTextPositioningElement,
        IsSVGTextPositioningElement, toSVGTextPositioningElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getX ::
     (MonadDOM m, IsSVGTextPositioningElement self) =>
       self -> m SVGAnimatedLengthList
getX self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "x") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getY ::
     (MonadDOM m, IsSVGTextPositioningElement self) =>
       self -> m SVGAnimatedLengthList
getY self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "y") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDx ::
      (MonadDOM m, IsSVGTextPositioningElement self) =>
        self -> m SVGAnimatedLengthList
getDx self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "dx") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDy ::
      (MonadDOM m, IsSVGTextPositioningElement self) =>
        self -> m SVGAnimatedLengthList
getDy self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "dy") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotate ::
          (MonadDOM m, IsSVGTextPositioningElement self) =>
            self -> m SVGAnimatedNumberList
getRotate self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "rotate") >>=
         fromJSValUnchecked)
