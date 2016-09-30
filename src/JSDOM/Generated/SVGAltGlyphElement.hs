{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAltGlyphElement
       (setGlyphRef, getGlyphRef, setFormat, getFormat,
        SVGAltGlyphElement, castToSVGAltGlyphElement,
        gTypeSVGAltGlyphElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.glyphRef Mozilla SVGAltGlyphElement.glyphRef documentation> 
setGlyphRef ::
            (MonadDOM m, ToJSString val) => SVGAltGlyphElement -> val -> m ()
setGlyphRef self val
  = liftDOM (self ^. jss "glyphRef" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.glyphRef Mozilla SVGAltGlyphElement.glyphRef documentation> 
getGlyphRef ::
            (MonadDOM m, FromJSString result) => SVGAltGlyphElement -> m result
getGlyphRef self
  = liftDOM ((self ^. js "glyphRef") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.format Mozilla SVGAltGlyphElement.format documentation> 
setFormat ::
          (MonadDOM m, ToJSString val) => SVGAltGlyphElement -> val -> m ()
setFormat self val = liftDOM (self ^. jss "format" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.format Mozilla SVGAltGlyphElement.format documentation> 
getFormat ::
          (MonadDOM m, FromJSString result) => SVGAltGlyphElement -> m result
getFormat self
  = liftDOM ((self ^. js "format") >>= fromJSValUnchecked)
