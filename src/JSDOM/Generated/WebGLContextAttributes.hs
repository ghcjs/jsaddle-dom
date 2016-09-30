{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLContextAttributes
       (setAlpha, getAlpha, setDepth, getDepth, setStencil, getStencil,
        setAntialias, getAntialias, setPremultipliedAlpha,
        getPremultipliedAlpha, setPreserveDrawingBuffer,
        getPreserveDrawingBuffer, WebGLContextAttributes,
        castToWebGLContextAttributes, gTypeWebGLContextAttributes)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.alpha Mozilla WebGLContextAttributes.alpha documentation> 
setAlpha :: (MonadDOM m) => WebGLContextAttributes -> Bool -> m ()
setAlpha self val = liftDOM (self ^. jss "alpha" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.alpha Mozilla WebGLContextAttributes.alpha documentation> 
getAlpha :: (MonadDOM m) => WebGLContextAttributes -> m Bool
getAlpha self = liftDOM ((self ^. js "alpha") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.depth Mozilla WebGLContextAttributes.depth documentation> 
setDepth :: (MonadDOM m) => WebGLContextAttributes -> Bool -> m ()
setDepth self val = liftDOM (self ^. jss "depth" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.depth Mozilla WebGLContextAttributes.depth documentation> 
getDepth :: (MonadDOM m) => WebGLContextAttributes -> m Bool
getDepth self = liftDOM ((self ^. js "depth") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.stencil Mozilla WebGLContextAttributes.stencil documentation> 
setStencil ::
           (MonadDOM m) => WebGLContextAttributes -> Bool -> m ()
setStencil self val = liftDOM (self ^. jss "stencil" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.stencil Mozilla WebGLContextAttributes.stencil documentation> 
getStencil :: (MonadDOM m) => WebGLContextAttributes -> m Bool
getStencil self = liftDOM ((self ^. js "stencil") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.antialias Mozilla WebGLContextAttributes.antialias documentation> 
setAntialias ::
             (MonadDOM m) => WebGLContextAttributes -> Bool -> m ()
setAntialias self val
  = liftDOM (self ^. jss "antialias" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.antialias Mozilla WebGLContextAttributes.antialias documentation> 
getAntialias :: (MonadDOM m) => WebGLContextAttributes -> m Bool
getAntialias self
  = liftDOM ((self ^. js "antialias") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.premultipliedAlpha Mozilla WebGLContextAttributes.premultipliedAlpha documentation> 
setPremultipliedAlpha ::
                      (MonadDOM m) => WebGLContextAttributes -> Bool -> m ()
setPremultipliedAlpha self val
  = liftDOM (self ^. jss "premultipliedAlpha" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.premultipliedAlpha Mozilla WebGLContextAttributes.premultipliedAlpha documentation> 
getPremultipliedAlpha ::
                      (MonadDOM m) => WebGLContextAttributes -> m Bool
getPremultipliedAlpha self
  = liftDOM ((self ^. js "premultipliedAlpha") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.preserveDrawingBuffer Mozilla WebGLContextAttributes.preserveDrawingBuffer documentation> 
setPreserveDrawingBuffer ::
                         (MonadDOM m) => WebGLContextAttributes -> Bool -> m ()
setPreserveDrawingBuffer self val
  = liftDOM (self ^. jss "preserveDrawingBuffer" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.preserveDrawingBuffer Mozilla WebGLContextAttributes.preserveDrawingBuffer documentation> 
getPreserveDrawingBuffer ::
                         (MonadDOM m) => WebGLContextAttributes -> m Bool
getPreserveDrawingBuffer self
  = liftDOM ((self ^. js "preserveDrawingBuffer") >>= valToBool)
