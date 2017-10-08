{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPURenderPipelineDescriptor
       (newWebGPURenderPipelineDescriptor, reset, setVertexFunction,
        getVertexFunction, getVertexFunctionUnsafe,
        getVertexFunctionUnchecked, setFragmentFunction,
        getFragmentFunction, getFragmentFunctionUnsafe,
        getFragmentFunctionUnchecked, getColorAttachments,
        setDepthAttachmentPixelFormat, getDepthAttachmentPixelFormat,
        WebGPURenderPipelineDescriptor(..),
        gTypeWebGPURenderPipelineDescriptor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor Mozilla WebGPURenderPipelineDescriptor documentation> 
newWebGPURenderPipelineDescriptor ::
                                  (MonadDOM m) => m WebGPURenderPipelineDescriptor
newWebGPURenderPipelineDescriptor
  = liftDOM
      (WebGPURenderPipelineDescriptor <$>
         new (jsg "WebGPURenderPipelineDescriptor") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.reset Mozilla WebGPURenderPipelineDescriptor.reset documentation> 
reset :: (MonadDOM m) => WebGPURenderPipelineDescriptor -> m ()
reset self = liftDOM (void (self ^. jsf "reset" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
setVertexFunction ::
                  (MonadDOM m) =>
                    WebGPURenderPipelineDescriptor -> Maybe WebGPUFunction -> m ()
setVertexFunction self val
  = liftDOM (self ^. jss "vertexFunction" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
getVertexFunction ::
                  (MonadDOM m) =>
                    WebGPURenderPipelineDescriptor -> m (Maybe WebGPUFunction)
getVertexFunction self
  = liftDOM ((self ^. js "vertexFunction") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
getVertexFunctionUnsafe ::
                        (MonadDOM m, HasCallStack) =>
                          WebGPURenderPipelineDescriptor -> m WebGPUFunction
getVertexFunctionUnsafe self
  = liftDOM
      (((self ^. js "vertexFunction") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
getVertexFunctionUnchecked ::
                           (MonadDOM m) => WebGPURenderPipelineDescriptor -> m WebGPUFunction
getVertexFunctionUnchecked self
  = liftDOM ((self ^. js "vertexFunction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
setFragmentFunction ::
                    (MonadDOM m) =>
                      WebGPURenderPipelineDescriptor -> Maybe WebGPUFunction -> m ()
setFragmentFunction self val
  = liftDOM (self ^. jss "fragmentFunction" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
getFragmentFunction ::
                    (MonadDOM m) =>
                      WebGPURenderPipelineDescriptor -> m (Maybe WebGPUFunction)
getFragmentFunction self
  = liftDOM ((self ^. js "fragmentFunction") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
getFragmentFunctionUnsafe ::
                          (MonadDOM m, HasCallStack) =>
                            WebGPURenderPipelineDescriptor -> m WebGPUFunction
getFragmentFunctionUnsafe self
  = liftDOM
      (((self ^. js "fragmentFunction") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
getFragmentFunctionUnchecked ::
                             (MonadDOM m) => WebGPURenderPipelineDescriptor -> m WebGPUFunction
getFragmentFunctionUnchecked self
  = liftDOM ((self ^. js "fragmentFunction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.colorAttachments Mozilla WebGPURenderPipelineDescriptor.colorAttachments documentation> 
getColorAttachments ::
                    (MonadDOM m) =>
                      WebGPURenderPipelineDescriptor ->
                        m [WebGPURenderPipelineColorAttachmentDescriptor]
getColorAttachments self
  = liftDOM
      ((self ^. js "colorAttachments") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat Mozilla WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat documentation> 
setDepthAttachmentPixelFormat ::
                              (MonadDOM m) => WebGPURenderPipelineDescriptor -> Word -> m ()
setDepthAttachmentPixelFormat self val
  = liftDOM (self ^. jss "depthAttachmentPixelFormat" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat Mozilla WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat documentation> 
getDepthAttachmentPixelFormat ::
                              (MonadDOM m) => WebGPURenderPipelineDescriptor -> m Word
getDepthAttachmentPixelFormat self
  = liftDOM
      (round <$>
         ((self ^. js "depthAttachmentPixelFormat") >>= valToNumber))
