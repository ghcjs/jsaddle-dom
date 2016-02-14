{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGRenderingIntent
       (pattern RENDERING_INTENT_UNKNOWN, pattern RENDERING_INTENT_AUTO,
        pattern RENDERING_INTENT_PERCEPTUAL,
        pattern RENDERING_INTENT_RELATIVE_COLORIMETRIC,
        pattern RENDERING_INTENT_SATURATION,
        pattern RENDERING_INTENT_ABSOLUTE_COLORIMETRIC, SVGRenderingIntent,
        castToSVGRenderingIntent, gTypeSVGRenderingIntent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums
pattern RENDERING_INTENT_UNKNOWN = 0
pattern RENDERING_INTENT_AUTO = 1
pattern RENDERING_INTENT_PERCEPTUAL = 2
pattern RENDERING_INTENT_RELATIVE_COLORIMETRIC = 3
pattern RENDERING_INTENT_SATURATION = 4
pattern RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5