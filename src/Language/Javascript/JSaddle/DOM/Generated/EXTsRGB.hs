{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.EXTsRGB
       (pattern SRGB_EXT, pattern SRGB_ALPHA_EXT,
        pattern SRGB8_ALPHA8_EXT,
        pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT, EXTsRGB,
        castToEXTsRGB, gTypeEXTsRGB)
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
pattern SRGB_EXT = 35904
pattern SRGB_ALPHA_EXT = 35906
pattern SRGB8_ALPHA8_EXT = 35907
pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = 33296