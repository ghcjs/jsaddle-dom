{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFETurbulenceElement
       (pattern SVG_TURBULENCE_TYPE_UNKNOWN,
        pattern SVG_TURBULENCE_TYPE_FRACTALNOISE,
        pattern SVG_TURBULENCE_TYPE_TURBULENCE,
        pattern SVG_STITCHTYPE_UNKNOWN, pattern SVG_STITCHTYPE_STITCH,
        pattern SVG_STITCHTYPE_NOSTITCH, getBaseFrequencyX,
        getBaseFrequencyXUnchecked, getBaseFrequencyY,
        getBaseFrequencyYUnchecked, getNumOctaves, getNumOctavesUnchecked,
        getSeed, getSeedUnchecked, getStitchTiles, getStitchTilesUnchecked,
        getType, getTypeUnchecked, SVGFETurbulenceElement,
        castToSVGFETurbulenceElement, gTypeSVGFETurbulenceElement)
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
pattern SVG_TURBULENCE_TYPE_UNKNOWN = 0
pattern SVG_TURBULENCE_TYPE_FRACTALNOISE = 1
pattern SVG_TURBULENCE_TYPE_TURBULENCE = 2
pattern SVG_STITCHTYPE_UNKNOWN = 0
pattern SVG_STITCHTYPE_STITCH = 1
pattern SVG_STITCHTYPE_NOSTITCH = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
getBaseFrequencyX ::
                  (MonadDOM m) =>
                    SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getBaseFrequencyX self
  = liftDOM ((self ^. js "baseFrequencyX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
getBaseFrequencyXUnchecked ::
                           (MonadDOM m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyXUnchecked self
  = liftDOM ((self ^. js "baseFrequencyX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyY ::
                  (MonadDOM m) =>
                    SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getBaseFrequencyY self
  = liftDOM ((self ^. js "baseFrequencyY") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyYUnchecked ::
                           (MonadDOM m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyYUnchecked self
  = liftDOM ((self ^. js "baseFrequencyY") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctaves ::
              (MonadDOM m) =>
                SVGFETurbulenceElement -> m (Maybe SVGAnimatedInteger)
getNumOctaves self
  = liftDOM ((self ^. js "numOctaves") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctavesUnchecked ::
                       (MonadDOM m) => SVGFETurbulenceElement -> m SVGAnimatedInteger
getNumOctavesUnchecked self
  = liftDOM ((self ^. js "numOctaves") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeed ::
        (MonadDOM m) =>
          SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getSeed self = liftDOM ((self ^. js "seed") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeedUnchecked ::
                 (MonadDOM m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getSeedUnchecked self
  = liftDOM ((self ^. js "seed") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTiles ::
               (MonadDOM m) =>
                 SVGFETurbulenceElement -> m (Maybe SVGAnimatedEnumeration)
getStitchTiles self
  = liftDOM ((self ^. js "stitchTiles") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTilesUnchecked ::
                        (MonadDOM m) => SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getStitchTilesUnchecked self
  = liftDOM ((self ^. js "stitchTiles") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.type Mozilla SVGFETurbulenceElement.type documentation> 
getType ::
        (MonadDOM m) =>
          SVGFETurbulenceElement -> m (Maybe SVGAnimatedEnumeration)
getType self = liftDOM ((self ^. js "type") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.type Mozilla SVGFETurbulenceElement.type documentation> 
getTypeUnchecked ::
                 (MonadDOM m) => SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getTypeUnchecked self
  = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)
