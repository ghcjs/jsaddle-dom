{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLCompressedTextureS3TC
       (pattern COMPRESSED_RGB_S3TC_DXT1_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT1_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT3_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT5_EXT, WebGLCompressedTextureS3TC,
        castToWebGLCompressedTextureS3TC, gTypeWebGLCompressedTextureS3TC)
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
pattern COMPRESSED_RGB_S3TC_DXT1_EXT = 33776
pattern COMPRESSED_RGBA_S3TC_DXT1_EXT = 33777
pattern COMPRESSED_RGBA_S3TC_DXT3_EXT = 33778
pattern COMPRESSED_RGBA_S3TC_DXT5_EXT = 33779
