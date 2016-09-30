{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPaint
       (setUri, setPaint, pattern SVG_PAINTTYPE_UNKNOWN,
        pattern SVG_PAINTTYPE_RGBCOLOR,
        pattern SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR,
        pattern SVG_PAINTTYPE_NONE, pattern SVG_PAINTTYPE_CURRENTCOLOR,
        pattern SVG_PAINTTYPE_URI_NONE,
        pattern SVG_PAINTTYPE_URI_CURRENTCOLOR,
        pattern SVG_PAINTTYPE_URI_RGBCOLOR,
        pattern SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR,
        pattern SVG_PAINTTYPE_URI, getPaintType, getUri, SVGPaint,
        castToSVGPaint, gTypeSVGPaint)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.setUri Mozilla SVGPaint.setUri documentation> 
setUri :: (MonadDOM m, ToJSString uri) => SVGPaint -> uri -> m ()
setUri self uri
  = liftDOM (void (self ^. jsf "setUri" [toJSVal uri]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.setPaint Mozilla SVGPaint.setPaint documentation> 
setPaint ::
         (MonadDOM m, ToJSString uri, ToJSString rgbColor,
          ToJSString iccColor) =>
           SVGPaint -> Word -> uri -> rgbColor -> iccColor -> m ()
setPaint self paintType uri rgbColor iccColor
  = liftDOM
      (void
         (self ^. jsf "setPaint"
            [toJSVal paintType, toJSVal uri, toJSVal rgbColor,
             toJSVal iccColor]))
pattern SVG_PAINTTYPE_UNKNOWN = 0
pattern SVG_PAINTTYPE_RGBCOLOR = 1
pattern SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR = 2
pattern SVG_PAINTTYPE_NONE = 101
pattern SVG_PAINTTYPE_CURRENTCOLOR = 102
pattern SVG_PAINTTYPE_URI_NONE = 103
pattern SVG_PAINTTYPE_URI_CURRENTCOLOR = 104
pattern SVG_PAINTTYPE_URI_RGBCOLOR = 105
pattern SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR = 106
pattern SVG_PAINTTYPE_URI = 107

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.paintType Mozilla SVGPaint.paintType documentation> 
getPaintType :: (MonadDOM m) => SVGPaint -> m Word
getPaintType self
  = liftDOM (round <$> ((self ^. js "paintType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.uri Mozilla SVGPaint.uri documentation> 
getUri :: (MonadDOM m, FromJSString result) => SVGPaint -> m result
getUri self = liftDOM ((self ^. js "uri") >>= fromJSValUnchecked)
