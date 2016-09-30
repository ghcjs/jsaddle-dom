{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGMaskElement
       (getMaskUnits, getMaskContentUnits, getX, getY, getWidth,
        getHeight, SVGMaskElement, castToSVGMaskElement,
        gTypeSVGMaskElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskUnits Mozilla SVGMaskElement.maskUnits documentation> 
getMaskUnits ::
             (MonadDOM m) => SVGMaskElement -> m (Maybe SVGAnimatedEnumeration)
getMaskUnits self
  = liftDOM ((self ^. js "maskUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskContentUnits Mozilla SVGMaskElement.maskContentUnits documentation> 
getMaskContentUnits ::
                    (MonadDOM m) => SVGMaskElement -> m (Maybe SVGAnimatedEnumeration)
getMaskContentUnits self
  = liftDOM ((self ^. js "maskContentUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.x Mozilla SVGMaskElement.x documentation> 
getX ::
     (MonadDOM m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.y Mozilla SVGMaskElement.y documentation> 
getY ::
     (MonadDOM m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.width Mozilla SVGMaskElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.height Mozilla SVGMaskElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)
