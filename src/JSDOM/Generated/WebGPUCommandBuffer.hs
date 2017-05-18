{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPUCommandBuffer
       (createRenderCommandEncoderWithDescriptor,
        createRenderCommandEncoderWithDescriptor_,
        createComputeCommandEncoder, createComputeCommandEncoder_, commit,
        presentDrawable, getCompleted, WebGPUCommandBuffer(..),
        gTypeWebGPUCommandBuffer)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor Mozilla WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor documentation> 
createRenderCommandEncoderWithDescriptor ::
                                         (MonadDOM m) =>
                                           WebGPUCommandBuffer ->
                                             WebGPURenderPassDescriptor ->
                                               m WebGPURenderCommandEncoder
createRenderCommandEncoderWithDescriptor self descriptor
  = liftDOM
      ((self ^. jsf "createRenderCommandEncoderWithDescriptor"
          [toJSVal descriptor])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor Mozilla WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor documentation> 
createRenderCommandEncoderWithDescriptor_ ::
                                          (MonadDOM m) =>
                                            WebGPUCommandBuffer ->
                                              WebGPURenderPassDescriptor -> m ()
createRenderCommandEncoderWithDescriptor_ self descriptor
  = liftDOM
      (void
         (self ^. jsf "createRenderCommandEncoderWithDescriptor"
            [toJSVal descriptor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createComputeCommandEncoder Mozilla WebGPUCommandBuffer.createComputeCommandEncoder documentation> 
createComputeCommandEncoder ::
                            (MonadDOM m) =>
                              WebGPUCommandBuffer -> m WebGPUComputeCommandEncoder
createComputeCommandEncoder self
  = liftDOM
      ((self ^. jsf "createComputeCommandEncoder" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createComputeCommandEncoder Mozilla WebGPUCommandBuffer.createComputeCommandEncoder documentation> 
createComputeCommandEncoder_ ::
                             (MonadDOM m) => WebGPUCommandBuffer -> m ()
createComputeCommandEncoder_ self
  = liftDOM (void (self ^. jsf "createComputeCommandEncoder" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.commit Mozilla WebGPUCommandBuffer.commit documentation> 
commit :: (MonadDOM m) => WebGPUCommandBuffer -> m ()
commit self = liftDOM (void (self ^. jsf "commit" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.presentDrawable Mozilla WebGPUCommandBuffer.presentDrawable documentation> 
presentDrawable ::
                (MonadDOM m) => WebGPUCommandBuffer -> WebGPUDrawable -> m ()
presentDrawable self drawable
  = liftDOM (void (self ^. jsf "presentDrawable" [toJSVal drawable]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.completed Mozilla WebGPUCommandBuffer.completed documentation> 
getCompleted :: (MonadDOM m) => WebGPUCommandBuffer -> m ()
getCompleted self
  = liftDOM (void ((self ^. js "completed") >>= readPromise))
