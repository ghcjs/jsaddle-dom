{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEDistantLightElement
       (getAzimuth, getElevation, SVGFEDistantLightElement,
        castToSVGFEDistantLightElement, gTypeSVGFEDistantLightElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.azimuth Mozilla SVGFEDistantLightElement.azimuth documentation> 
getAzimuth ::
           (MonadDOM m) =>
             SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getAzimuth self = liftDOM ((self ^. js "azimuth") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.elevation Mozilla SVGFEDistantLightElement.elevation documentation> 
getElevation ::
             (MonadDOM m) =>
               SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getElevation self
  = liftDOM ((self ^. js "elevation") >>= fromJSVal)
