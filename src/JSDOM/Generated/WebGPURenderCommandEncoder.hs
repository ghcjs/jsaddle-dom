{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPURenderCommandEncoder
       (setRenderPipelineState, setDepthStencilState, setVertexBuffer,
        setFragmentBuffer, drawPrimitives, endEncoding,
        WebGPURenderCommandEncoder(..), gTypeWebGPURenderCommandEncoder)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setRenderPipelineState Mozilla WebGPURenderCommandEncoder.setRenderPipelineState documentation> 
setRenderPipelineState ::
                       (MonadDOM m) =>
                         WebGPURenderCommandEncoder -> WebGPURenderPipelineState -> m ()
setRenderPipelineState self pipelineState
  = liftDOM
      (void
         (self ^. jsf "setRenderPipelineState" [toJSVal pipelineState]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setDepthStencilState Mozilla WebGPURenderCommandEncoder.setDepthStencilState documentation> 
setDepthStencilState ::
                     (MonadDOM m) =>
                       WebGPURenderCommandEncoder -> WebGPUDepthStencilState -> m ()
setDepthStencilState self depthStencilState
  = liftDOM
      (void
         (self ^. jsf "setDepthStencilState" [toJSVal depthStencilState]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setVertexBuffer Mozilla WebGPURenderCommandEncoder.setVertexBuffer documentation> 
setVertexBuffer ::
                (MonadDOM m) =>
                  WebGPURenderCommandEncoder -> WebGPUBuffer -> Word -> Word -> m ()
setVertexBuffer self buffer offset index
  = liftDOM
      (void
         (self ^. jsf "setVertexBuffer"
            [toJSVal buffer, toJSVal offset, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setFragmentBuffer Mozilla WebGPURenderCommandEncoder.setFragmentBuffer documentation> 
setFragmentBuffer ::
                  (MonadDOM m) =>
                    WebGPURenderCommandEncoder -> WebGPUBuffer -> Word -> Word -> m ()
setFragmentBuffer self buffer offset index
  = liftDOM
      (void
         (self ^. jsf "setFragmentBuffer"
            [toJSVal buffer, toJSVal offset, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.drawPrimitives Mozilla WebGPURenderCommandEncoder.drawPrimitives documentation> 
drawPrimitives ::
               (MonadDOM m) =>
                 WebGPURenderCommandEncoder -> Word -> Word -> Word -> m ()
drawPrimitives self type' start count
  = liftDOM
      (void
         (self ^. jsf "drawPrimitives"
            [toJSVal type', toJSVal start, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.endEncoding Mozilla WebGPURenderCommandEncoder.endEncoding documentation> 
endEncoding :: (MonadDOM m) => WebGPURenderCommandEncoder -> m ()
endEncoding self = liftDOM (void (self ^. jsf "endEncoding" ()))
