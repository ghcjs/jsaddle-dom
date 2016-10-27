{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTextPositioningElement
       (getX, getXUnsafe, getXUnchecked, getY, getYUnsafe, getYUnchecked,
        getDx, getDxUnsafe, getDxUnchecked, getDy, getDyUnsafe,
        getDyUnchecked, getRotate, getRotateUnsafe, getRotateUnchecked,
        SVGTextPositioningElement(..), gTypeSVGTextPositioningElement,
        IsSVGTextPositioningElement, toSVGTextPositioningElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getX ::
     (MonadDOM m, IsSVGTextPositioningElement self) =>
       self -> m (Maybe SVGAnimatedLengthList)
getX self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getXUnsafe ::
           (MonadDOM m, IsSVGTextPositioningElement self, HasCallStack) =>
             self -> m SVGAnimatedLengthList
getXUnsafe self
  = liftDOM
      ((((toSVGTextPositioningElement self) ^. js "x") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getXUnchecked ::
              (MonadDOM m, IsSVGTextPositioningElement self) =>
                self -> m SVGAnimatedLengthList
getXUnchecked self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "x") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getY ::
     (MonadDOM m, IsSVGTextPositioningElement self) =>
       self -> m (Maybe SVGAnimatedLengthList)
getY self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getYUnsafe ::
           (MonadDOM m, IsSVGTextPositioningElement self, HasCallStack) =>
             self -> m SVGAnimatedLengthList
getYUnsafe self
  = liftDOM
      ((((toSVGTextPositioningElement self) ^. js "y") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getYUnchecked ::
              (MonadDOM m, IsSVGTextPositioningElement self) =>
                self -> m SVGAnimatedLengthList
getYUnchecked self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "y") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDx ::
      (MonadDOM m, IsSVGTextPositioningElement self) =>
        self -> m (Maybe SVGAnimatedLengthList)
getDx self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "dx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDxUnsafe ::
            (MonadDOM m, IsSVGTextPositioningElement self, HasCallStack) =>
              self -> m SVGAnimatedLengthList
getDxUnsafe self
  = liftDOM
      ((((toSVGTextPositioningElement self) ^. js "dx") >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDxUnchecked ::
               (MonadDOM m, IsSVGTextPositioningElement self) =>
                 self -> m SVGAnimatedLengthList
getDxUnchecked self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "dx") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDy ::
      (MonadDOM m, IsSVGTextPositioningElement self) =>
        self -> m (Maybe SVGAnimatedLengthList)
getDy self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "dy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDyUnsafe ::
            (MonadDOM m, IsSVGTextPositioningElement self, HasCallStack) =>
              self -> m SVGAnimatedLengthList
getDyUnsafe self
  = liftDOM
      ((((toSVGTextPositioningElement self) ^. js "dy") >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDyUnchecked ::
               (MonadDOM m, IsSVGTextPositioningElement self) =>
                 self -> m SVGAnimatedLengthList
getDyUnchecked self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "dy") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotate ::
          (MonadDOM m, IsSVGTextPositioningElement self) =>
            self -> m (Maybe SVGAnimatedNumberList)
getRotate self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "rotate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotateUnsafe ::
                (MonadDOM m, IsSVGTextPositioningElement self, HasCallStack) =>
                  self -> m SVGAnimatedNumberList
getRotateUnsafe self
  = liftDOM
      ((((toSVGTextPositioningElement self) ^. js "rotate") >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotateUnchecked ::
                   (MonadDOM m, IsSVGTextPositioningElement self) =>
                     self -> m SVGAnimatedNumberList
getRotateUnchecked self
  = liftDOM
      (((toSVGTextPositioningElement self) ^. js "rotate") >>=
         fromJSValUnchecked)
