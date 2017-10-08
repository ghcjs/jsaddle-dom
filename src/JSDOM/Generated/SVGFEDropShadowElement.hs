{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEDropShadowElement
       (setStdDeviation, getIn1, getDx, getDy, getStdDeviationX,
        getStdDeviationY, SVGFEDropShadowElement(..),
        gTypeSVGFEDropShadowElement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.setStdDeviation Mozilla SVGFEDropShadowElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadDOM m) =>
                  SVGFEDropShadowElement -> Maybe Float -> Maybe Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftDOM
      (void
         (self ^. jsf "setStdDeviation"
            [toJSVal stdDeviationX, toJSVal stdDeviationY]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.in1 Mozilla SVGFEDropShadowElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) => SVGFEDropShadowElement -> m SVGAnimatedString
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dx Mozilla SVGFEDropShadowElement.dx documentation> 
getDx ::
      (MonadDOM m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getDx self = liftDOM ((self ^. js "dx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dy Mozilla SVGFEDropShadowElement.dy documentation> 
getDy ::
      (MonadDOM m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getDy self = liftDOM ((self ^. js "dy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationX Mozilla SVGFEDropShadowElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadDOM m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getStdDeviationX self
  = liftDOM ((self ^. js "stdDeviationX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationY Mozilla SVGFEDropShadowElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadDOM m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getStdDeviationY self
  = liftDOM ((self ^. js "stdDeviationY") >>= fromJSValUnchecked)
