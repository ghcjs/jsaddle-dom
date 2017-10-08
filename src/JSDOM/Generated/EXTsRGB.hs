{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.EXTsRGB
       (pattern SRGB_EXT, pattern SRGB_ALPHA_EXT,
        pattern SRGB8_ALPHA8_EXT,
        pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT, EXTsRGB(..),
        gTypeEXTsRGB)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums
pattern SRGB_EXT = 35904
pattern SRGB_ALPHA_EXT = 35906
pattern SRGB8_ALPHA8_EXT = 35907
pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = 33296
