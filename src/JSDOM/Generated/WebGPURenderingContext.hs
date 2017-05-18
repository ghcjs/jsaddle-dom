{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPURenderingContext
       (createLibrary, createLibrary_, createRenderPipelineState,
        createRenderPipelineState_, createRenderPipelineStateUnsafe,
        createRenderPipelineStateUnchecked, createDepthStencilState,
        createDepthStencilState_, createDepthStencilStateUnsafe,
        createDepthStencilStateUnchecked, createComputePipelineState,
        createComputePipelineState_, createComputePipelineStateUnsafe,
        createComputePipelineStateUnchecked, createCommandQueue,
        createCommandQueue_, createCommandQueueUnsafe,
        createCommandQueueUnchecked, nextDrawable, nextDrawable_,
        nextDrawableUnsafe, nextDrawableUnchecked, createBuffer,
        createBuffer_, createBufferUnsafe, createBufferUnchecked,
        createTexture, createTexture_, createTextureUnsafe,
        createTextureUnchecked, pattern PixelFormatBGRA8Unorm,
        pattern PixelFormatDepth32Float, pattern PixelFormatStencil8,
        pattern PixelFormatInvalid, pattern LoadActionDontCare,
        pattern LoadActionLoad, pattern LoadActionClear,
        pattern StoreActionDontCare, pattern StoreActionStore,
        pattern StoreActionMultisampleResolve, pattern PrimitiveTypePoint,
        pattern PrimitiveTypeLine, pattern PrimitiveTypeLineStrip,
        pattern PrimitiveTypeTriangle, pattern PrimitiveTypeTriangleStrip,
        pattern CompareFunctionNever, pattern CompareFunctionLess,
        pattern CompareFunctionEqual, pattern CompareFunctionLessEqual,
        pattern CompareFunctionGreater, pattern CompareFunctionNotEqual,
        pattern CompareFunctionGreaterEqual, pattern CompareFunctionAlways,
        pattern TextureType1D, pattern TextureType1DArray,
        pattern TextureType2D, pattern TextureType2DArray,
        pattern TextureType2DMultisample, pattern TextureTypeCube,
        pattern TextureTypeCubeArray, pattern TextureType3D,
        pattern StorageModeShared, pattern StorageModeManaged,
        pattern StorageModePrivate, pattern TextureUsageUnknown,
        pattern TextureUsageShaderRead, pattern TextureUsageShaderWrite,
        pattern TextureUsageRenderTarget,
        pattern TextureUsagePixelFormatView, WebGPURenderingContext(..),
        gTypeWebGPURenderingContext)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createLibrary Mozilla WebGPURenderingContext.createLibrary documentation> 
createLibrary ::
              (MonadDOM m, ToJSString sourceCode) =>
                WebGPURenderingContext -> sourceCode -> m WebGPULibrary
createLibrary self sourceCode
  = liftDOM
      ((self ^. jsf "createLibrary" [toJSVal sourceCode]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createLibrary Mozilla WebGPURenderingContext.createLibrary documentation> 
createLibrary_ ::
               (MonadDOM m, ToJSString sourceCode) =>
                 WebGPURenderingContext -> sourceCode -> m ()
createLibrary_ self sourceCode
  = liftDOM (void (self ^. jsf "createLibrary" [toJSVal sourceCode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineState ::
                          (MonadDOM m) =>
                            WebGPURenderingContext ->
                              WebGPURenderPipelineDescriptor ->
                                m (Maybe WebGPURenderPipelineState)
createRenderPipelineState self descriptor
  = liftDOM
      ((self ^. jsf "createRenderPipelineState" [toJSVal descriptor]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineState_ ::
                           (MonadDOM m) =>
                             WebGPURenderingContext -> WebGPURenderPipelineDescriptor -> m ()
createRenderPipelineState_ self descriptor
  = liftDOM
      (void
         (self ^. jsf "createRenderPipelineState" [toJSVal descriptor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineStateUnsafe ::
                                (MonadDOM m, HasCallStack) =>
                                  WebGPURenderingContext ->
                                    WebGPURenderPipelineDescriptor -> m WebGPURenderPipelineState
createRenderPipelineStateUnsafe self descriptor
  = liftDOM
      (((self ^. jsf "createRenderPipelineState" [toJSVal descriptor])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineStateUnchecked ::
                                   (MonadDOM m) =>
                                     WebGPURenderingContext ->
                                       WebGPURenderPipelineDescriptor -> m WebGPURenderPipelineState
createRenderPipelineStateUnchecked self descriptor
  = liftDOM
      ((self ^. jsf "createRenderPipelineState" [toJSVal descriptor]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilState ::
                        (MonadDOM m) =>
                          WebGPURenderingContext ->
                            WebGPUDepthStencilDescriptor -> m (Maybe WebGPUDepthStencilState)
createDepthStencilState self descriptor
  = liftDOM
      ((self ^. jsf "createDepthStencilState" [toJSVal descriptor]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilState_ ::
                         (MonadDOM m) =>
                           WebGPURenderingContext -> WebGPUDepthStencilDescriptor -> m ()
createDepthStencilState_ self descriptor
  = liftDOM
      (void (self ^. jsf "createDepthStencilState" [toJSVal descriptor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilStateUnsafe ::
                              (MonadDOM m, HasCallStack) =>
                                WebGPURenderingContext ->
                                  WebGPUDepthStencilDescriptor -> m WebGPUDepthStencilState
createDepthStencilStateUnsafe self descriptor
  = liftDOM
      (((self ^. jsf "createDepthStencilState" [toJSVal descriptor]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilStateUnchecked ::
                                 (MonadDOM m) =>
                                   WebGPURenderingContext ->
                                     WebGPUDepthStencilDescriptor -> m WebGPUDepthStencilState
createDepthStencilStateUnchecked self descriptor
  = liftDOM
      ((self ^. jsf "createDepthStencilState" [toJSVal descriptor]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineState ::
                           (MonadDOM m) =>
                             WebGPURenderingContext ->
                               WebGPUFunction -> m (Maybe WebGPUComputePipelineState)
createComputePipelineState self function
  = liftDOM
      ((self ^. jsf "createComputePipelineState" [toJSVal function]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineState_ ::
                            (MonadDOM m) => WebGPURenderingContext -> WebGPUFunction -> m ()
createComputePipelineState_ self function
  = liftDOM
      (void
         (self ^. jsf "createComputePipelineState" [toJSVal function]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineStateUnsafe ::
                                 (MonadDOM m, HasCallStack) =>
                                   WebGPURenderingContext ->
                                     WebGPUFunction -> m WebGPUComputePipelineState
createComputePipelineStateUnsafe self function
  = liftDOM
      (((self ^. jsf "createComputePipelineState" [toJSVal function]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineStateUnchecked ::
                                    (MonadDOM m) =>
                                      WebGPURenderingContext ->
                                        WebGPUFunction -> m WebGPUComputePipelineState
createComputePipelineStateUnchecked self function
  = liftDOM
      ((self ^. jsf "createComputePipelineState" [toJSVal function]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueue ::
                   (MonadDOM m) =>
                     WebGPURenderingContext -> m (Maybe WebGPUCommandQueue)
createCommandQueue self
  = liftDOM ((self ^. jsf "createCommandQueue" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueue_ ::
                    (MonadDOM m) => WebGPURenderingContext -> m ()
createCommandQueue_ self
  = liftDOM (void (self ^. jsf "createCommandQueue" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueueUnsafe ::
                         (MonadDOM m, HasCallStack) =>
                           WebGPURenderingContext -> m WebGPUCommandQueue
createCommandQueueUnsafe self
  = liftDOM
      (((self ^. jsf "createCommandQueue" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueueUnchecked ::
                            (MonadDOM m) => WebGPURenderingContext -> m WebGPUCommandQueue
createCommandQueueUnchecked self
  = liftDOM
      ((self ^. jsf "createCommandQueue" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawable ::
             (MonadDOM m) => WebGPURenderingContext -> m (Maybe WebGPUDrawable)
nextDrawable self
  = liftDOM ((self ^. jsf "nextDrawable" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawable_ :: (MonadDOM m) => WebGPURenderingContext -> m ()
nextDrawable_ self = liftDOM (void (self ^. jsf "nextDrawable" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawableUnsafe ::
                   (MonadDOM m, HasCallStack) =>
                     WebGPURenderingContext -> m WebGPUDrawable
nextDrawableUnsafe self
  = liftDOM
      (((self ^. jsf "nextDrawable" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawableUnchecked ::
                      (MonadDOM m) => WebGPURenderingContext -> m WebGPUDrawable
nextDrawableUnchecked self
  = liftDOM ((self ^. jsf "nextDrawable" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBuffer ::
             (MonadDOM m, IsArrayBufferView data') =>
               WebGPURenderingContext -> data' -> m (Maybe WebGPUBuffer)
createBuffer self data'
  = liftDOM
      ((self ^. jsf "createBuffer" [toJSVal data']) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBuffer_ ::
              (MonadDOM m, IsArrayBufferView data') =>
                WebGPURenderingContext -> data' -> m ()
createBuffer_ self data'
  = liftDOM (void (self ^. jsf "createBuffer" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBufferUnsafe ::
                   (MonadDOM m, IsArrayBufferView data', HasCallStack) =>
                     WebGPURenderingContext -> data' -> m WebGPUBuffer
createBufferUnsafe self data'
  = liftDOM
      (((self ^. jsf "createBuffer" [toJSVal data']) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBufferUnchecked ::
                      (MonadDOM m, IsArrayBufferView data') =>
                        WebGPURenderingContext -> data' -> m WebGPUBuffer
createBufferUnchecked self data'
  = liftDOM
      ((self ^. jsf "createBuffer" [toJSVal data']) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTexture ::
              (MonadDOM m) =>
                WebGPURenderingContext ->
                  WebGPUTextureDescriptor -> m (Maybe WebGPUTexture)
createTexture self descriptor
  = liftDOM
      ((self ^. jsf "createTexture" [toJSVal descriptor]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTexture_ ::
               (MonadDOM m) =>
                 WebGPURenderingContext -> WebGPUTextureDescriptor -> m ()
createTexture_ self descriptor
  = liftDOM (void (self ^. jsf "createTexture" [toJSVal descriptor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTextureUnsafe ::
                    (MonadDOM m, HasCallStack) =>
                      WebGPURenderingContext ->
                        WebGPUTextureDescriptor -> m WebGPUTexture
createTextureUnsafe self descriptor
  = liftDOM
      (((self ^. jsf "createTexture" [toJSVal descriptor]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTextureUnchecked ::
                       (MonadDOM m) =>
                         WebGPURenderingContext ->
                           WebGPUTextureDescriptor -> m WebGPUTexture
createTextureUnchecked self descriptor
  = liftDOM
      ((self ^. jsf "createTexture" [toJSVal descriptor]) >>=
         fromJSValUnchecked)
pattern PixelFormatBGRA8Unorm = 80
pattern PixelFormatDepth32Float = 252
pattern PixelFormatStencil8 = 253
pattern PixelFormatInvalid = 0
pattern LoadActionDontCare = 0
pattern LoadActionLoad = 1
pattern LoadActionClear = 2
pattern StoreActionDontCare = 0
pattern StoreActionStore = 1
pattern StoreActionMultisampleResolve = 2
pattern PrimitiveTypePoint = 0
pattern PrimitiveTypeLine = 1
pattern PrimitiveTypeLineStrip = 2
pattern PrimitiveTypeTriangle = 3
pattern PrimitiveTypeTriangleStrip = 4
pattern CompareFunctionNever = 0
pattern CompareFunctionLess = 1
pattern CompareFunctionEqual = 2
pattern CompareFunctionLessEqual = 3
pattern CompareFunctionGreater = 4
pattern CompareFunctionNotEqual = 5
pattern CompareFunctionGreaterEqual = 6
pattern CompareFunctionAlways = 7
pattern TextureType1D = 0
pattern TextureType1DArray = 1
pattern TextureType2D = 2
pattern TextureType2DArray = 3
pattern TextureType2DMultisample = 4
pattern TextureTypeCube = 5
pattern TextureTypeCubeArray = 6
pattern TextureType3D = 7
pattern StorageModeShared = 0
pattern StorageModeManaged = 1
pattern StorageModePrivate = 2
pattern TextureUsageUnknown = 0
pattern TextureUsageShaderRead = 1
pattern TextureUsageShaderWrite = 2
pattern TextureUsageRenderTarget = 4
pattern TextureUsagePixelFormatView = 16
