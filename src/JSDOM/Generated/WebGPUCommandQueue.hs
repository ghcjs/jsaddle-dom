{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPUCommandQueue
       (createCommandBuffer, createCommandBuffer_,
        createCommandBufferUnsafe, createCommandBufferUnchecked, setLabel,
        getLabel, WebGPUCommandQueue(..), gTypeWebGPUCommandQueue)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBuffer ::
                    (MonadDOM m) => WebGPUCommandQueue -> m (Maybe WebGPUCommandBuffer)
createCommandBuffer self
  = liftDOM ((self ^. jsf "createCommandBuffer" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBuffer_ :: (MonadDOM m) => WebGPUCommandQueue -> m ()
createCommandBuffer_ self
  = liftDOM (void (self ^. jsf "createCommandBuffer" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBufferUnsafe ::
                          (MonadDOM m, HasCallStack) =>
                            WebGPUCommandQueue -> m WebGPUCommandBuffer
createCommandBufferUnsafe self
  = liftDOM
      (((self ^. jsf "createCommandBuffer" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBufferUnchecked ::
                             (MonadDOM m) => WebGPUCommandQueue -> m WebGPUCommandBuffer
createCommandBufferUnchecked self
  = liftDOM
      ((self ^. jsf "createCommandBuffer" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.label Mozilla WebGPUCommandQueue.label documentation> 
setLabel ::
         (MonadDOM m, ToJSString val) => WebGPUCommandQueue -> val -> m ()
setLabel self val = liftDOM (self ^. jss "label" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.label Mozilla WebGPUCommandQueue.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => WebGPUCommandQueue -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)
