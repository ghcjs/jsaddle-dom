{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.SVGFEDropShadowElement
       (setStdDeviation, getIn1, getDx, getDy, getStdDeviationX,
        getStdDeviationY, SVGFEDropShadowElement,
        castToSVGFEDropShadowElement, gTypeSVGFEDropShadowElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.setStdDeviation Mozilla SVGFEDropShadowElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadDOM m) => SVGFEDropShadowElement -> Float -> Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftDOM
      (void
         (self ^. jsf "setStdDeviation"
            [toJSVal stdDeviationX, toJSVal stdDeviationY]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.in1 Mozilla SVGFEDropShadowElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEDropShadowElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dx Mozilla SVGFEDropShadowElement.dx documentation> 
getDx ::
      (MonadDOM m) =>
        SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getDx self = liftDOM ((self ^. js "dx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dy Mozilla SVGFEDropShadowElement.dy documentation> 
getDy ::
      (MonadDOM m) =>
        SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getDy self = liftDOM ((self ^. js "dy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationX Mozilla SVGFEDropShadowElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadDOM m) =>
                   SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationX self
  = liftDOM ((self ^. js "stdDeviationX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationY Mozilla SVGFEDropShadowElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadDOM m) =>
                   SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationY self
  = liftDOM ((self ^. js "stdDeviationY") >>= fromJSVal)
