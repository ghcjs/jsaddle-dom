{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPUComputeCommandEncoder
       (setComputePipelineState, setBuffer, dispatch, endEncoding,
        WebGPUComputeCommandEncoder(..), gTypeWebGPUComputeCommandEncoder)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.setComputePipelineState Mozilla WebGPUComputeCommandEncoder.setComputePipelineState documentation> 
setComputePipelineState ::
                        (MonadDOM m) =>
                          WebGPUComputeCommandEncoder -> WebGPUComputePipelineState -> m ()
setComputePipelineState self pipelineState
  = liftDOM
      (void
         (self ^. jsf "setComputePipelineState" [toJSVal pipelineState]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.setBuffer Mozilla WebGPUComputeCommandEncoder.setBuffer documentation> 
setBuffer ::
          (MonadDOM m) =>
            WebGPUComputeCommandEncoder -> WebGPUBuffer -> Word -> Word -> m ()
setBuffer self buffer offset index
  = liftDOM
      (void
         (self ^. jsf "setBuffer"
            [toJSVal buffer, toJSVal offset, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.dispatch Mozilla WebGPUComputeCommandEncoder.dispatch documentation> 
dispatch ::
         (MonadDOM m) =>
           WebGPUComputeCommandEncoder -> WebGPUSize -> WebGPUSize -> m ()
dispatch self threadgroupsPerGrid threadsPerThreadgroup
  = liftDOM
      (void
         (self ^. jsf "dispatch"
            [toJSVal threadgroupsPerGrid, toJSVal threadsPerThreadgroup]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.endEncoding Mozilla WebGPUComputeCommandEncoder.endEncoding documentation> 
endEncoding :: (MonadDOM m) => WebGPUComputeCommandEncoder -> m ()
endEncoding self = liftDOM (void (self ^. jsf "endEncoding" ()))
