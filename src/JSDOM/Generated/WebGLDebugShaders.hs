{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLDebugShaders
       (getTranslatedShaderSource, getTranslatedShaderSource_,
        getTranslatedShaderSourceUnsafe,
        getTranslatedShaderSourceUnchecked, WebGLDebugShaders(..),
        gTypeWebGLDebugShaders)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSource ::
                          (MonadDOM m, FromJSString result) =>
                            WebGLDebugShaders -> Maybe WebGLShader -> m (Maybe result)
getTranslatedShaderSource self shader
  = liftDOM
      ((self ^. jsf "getTranslatedShaderSource" [toJSVal shader]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSource_ ::
                           (MonadDOM m) => WebGLDebugShaders -> Maybe WebGLShader -> m ()
getTranslatedShaderSource_ self shader
  = liftDOM
      (void (self ^. jsf "getTranslatedShaderSource" [toJSVal shader]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSourceUnsafe ::
                                (MonadDOM m, HasCallStack, FromJSString result) =>
                                  WebGLDebugShaders -> Maybe WebGLShader -> m result
getTranslatedShaderSourceUnsafe self shader
  = liftDOM
      (((self ^. jsf "getTranslatedShaderSource" [toJSVal shader]) >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSourceUnchecked ::
                                   (MonadDOM m, FromJSString result) =>
                                     WebGLDebugShaders -> Maybe WebGLShader -> m result
getTranslatedShaderSourceUnchecked self shader
  = liftDOM
      ((self ^. jsf "getTranslatedShaderSource" [toJSVal shader]) >>=
         fromJSValUnchecked)
