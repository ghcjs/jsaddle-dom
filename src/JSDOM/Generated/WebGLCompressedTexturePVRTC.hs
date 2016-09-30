{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLCompressedTexturePVRTC
       (pattern COMPRESSED_RGB_PVRTC_4BPPV1_IMG,
        pattern COMPRESSED_RGB_PVRTC_2BPPV1_IMG,
        pattern COMPRESSED_RGBA_PVRTC_4BPPV1_IMG,
        pattern COMPRESSED_RGBA_PVRTC_2BPPV1_IMG,
        WebGLCompressedTexturePVRTC, castToWebGLCompressedTexturePVRTC,
        gTypeWebGLCompressedTexturePVRTC)
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
pattern COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 35840
pattern COMPRESSED_RGB_PVRTC_2BPPV1_IMG = 35841
pattern COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 35842
pattern COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = 35843
