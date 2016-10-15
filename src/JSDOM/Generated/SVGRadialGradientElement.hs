{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGRadialGradientElement
       (getCx, getCxUnchecked, getCy, getCyUnchecked, getR, getRUnchecked,
        getFx, getFxUnchecked, getFy, getFyUnchecked, getFr,
        getFrUnchecked, SVGRadialGradientElement(..),
        gTypeSVGRadialGradientElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
getCx ::
      (MonadDOM m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getCx self = liftDOM ((self ^. js "cx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
getCxUnchecked ::
               (MonadDOM m) => SVGRadialGradientElement -> m SVGAnimatedLength
getCxUnchecked self
  = liftDOM ((self ^. js "cx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
getCy ::
      (MonadDOM m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getCy self = liftDOM ((self ^. js "cy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
getCyUnchecked ::
               (MonadDOM m) => SVGRadialGradientElement -> m SVGAnimatedLength
getCyUnchecked self
  = liftDOM ((self ^. js "cy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
getR ::
     (MonadDOM m) =>
       SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getR self = liftDOM ((self ^. js "r") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
getRUnchecked ::
              (MonadDOM m) => SVGRadialGradientElement -> m SVGAnimatedLength
getRUnchecked self
  = liftDOM ((self ^. js "r") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
getFx ::
      (MonadDOM m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFx self = liftDOM ((self ^. js "fx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
getFxUnchecked ::
               (MonadDOM m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFxUnchecked self
  = liftDOM ((self ^. js "fx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
getFy ::
      (MonadDOM m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFy self = liftDOM ((self ^. js "fy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
getFyUnchecked ::
               (MonadDOM m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFyUnchecked self
  = liftDOM ((self ^. js "fy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
getFr ::
      (MonadDOM m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFr self = liftDOM ((self ^. js "fr") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
getFrUnchecked ::
               (MonadDOM m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFrUnchecked self
  = liftDOM ((self ^. js "fr") >>= fromJSValUnchecked)
