{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGColor
       (setRGBColor, setRGBColorICCColor, setColor,
        pattern SVG_COLORTYPE_UNKNOWN, pattern SVG_COLORTYPE_RGBCOLOR,
        pattern SVG_COLORTYPE_RGBCOLOR_ICCCOLOR,
        pattern SVG_COLORTYPE_CURRENTCOLOR, getColorType, getRgbColor,
        getRgbColorUnchecked, SVGColor, castToSVGColor, gTypeSVGColor,
        IsSVGColor, toSVGColor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.setRGBColor Mozilla SVGColor.setRGBColor documentation> 
setRGBColor ::
            (MonadDOM m, IsSVGColor self, ToJSString rgbColor) =>
              self -> rgbColor -> m ()
setRGBColor self rgbColor
  = liftDOM
      (void ((toSVGColor self) ^. jsf "setRGBColor" [toJSVal rgbColor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.setRGBColorICCColor Mozilla SVGColor.setRGBColorICCColor documentation> 
setRGBColorICCColor ::
                    (MonadDOM m, IsSVGColor self, ToJSString rgbColor,
                     ToJSString iccColor) =>
                      self -> rgbColor -> iccColor -> m ()
setRGBColorICCColor self rgbColor iccColor
  = liftDOM
      (void
         ((toSVGColor self) ^. jsf "setRGBColorICCColor"
            [toJSVal rgbColor, toJSVal iccColor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.setColor Mozilla SVGColor.setColor documentation> 
setColor ::
         (MonadDOM m, IsSVGColor self, ToJSString rgbColor,
          ToJSString iccColor) =>
           self -> Word -> rgbColor -> iccColor -> m ()
setColor self colorType rgbColor iccColor
  = liftDOM
      (void
         ((toSVGColor self) ^. jsf "setColor"
            [toJSVal colorType, toJSVal rgbColor, toJSVal iccColor]))
pattern SVG_COLORTYPE_UNKNOWN = 0
pattern SVG_COLORTYPE_RGBCOLOR = 1
pattern SVG_COLORTYPE_RGBCOLOR_ICCCOLOR = 2
pattern SVG_COLORTYPE_CURRENTCOLOR = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.colorType Mozilla SVGColor.colorType documentation> 
getColorType :: (MonadDOM m, IsSVGColor self) => self -> m Word
getColorType self
  = liftDOM
      (round <$> (((toSVGColor self) ^. js "colorType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.rgbColor Mozilla SVGColor.rgbColor documentation> 
getRgbColor ::
            (MonadDOM m, IsSVGColor self) => self -> m (Maybe RGBColor)
getRgbColor self
  = liftDOM (((toSVGColor self) ^. js "rgbColor") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.rgbColor Mozilla SVGColor.rgbColor documentation> 
getRgbColorUnchecked ::
                     (MonadDOM m, IsSVGColor self) => self -> m RGBColor
getRgbColorUnchecked self
  = liftDOM
      (((toSVGColor self) ^. js "rgbColor") >>= fromJSValUnchecked)
