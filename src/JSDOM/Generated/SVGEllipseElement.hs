{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGEllipseElement
       (getCx, getCy, getRx, getRy, SVGEllipseElement,
        castToSVGEllipseElement, gTypeSVGEllipseElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCx ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCx self = liftDOM ((self ^. js "cx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCy ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCy self = liftDOM ((self ^. js "cy") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRx ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRx self = liftDOM ((self ^. js "rx") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRy ::
      (MonadDOM m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRy self = liftDOM ((self ^. js "ry") >>= fromJSVal)
