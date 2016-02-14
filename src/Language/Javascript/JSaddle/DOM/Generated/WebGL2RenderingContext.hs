{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.WebGL2RenderingContext
       (copyBufferSubData, getBufferSubDataView, getBufferSubData,
        getFramebufferAttachmentParameter, blitFramebuffer,
        framebufferTextureLayer, getInternalformatParameter,
        invalidateFramebuffer, invalidateSubFramebuffer, readBuffer,
        renderbufferStorageMultisample, texStorage2D, texStorage3D,
        texImage3D, texSubImage3DView, texSubImage3DData, texSubImage3D,
        texSubImage3DCanvas, texSubImage3DVideo, copyTexSubImage3D,
        compressedTexImage3D, compressedTexSubImage3D, getFragDataLocation,
        uniform1ui, uniform2ui, uniform3ui, uniform4ui, uniform1uiv,
        uniform2uiv, uniform3uiv, uniform4uiv, uniformMatrix2x3fv,
        uniformMatrix3x2fv, uniformMatrix2x4fv, uniformMatrix4x2fv,
        uniformMatrix3x4fv, uniformMatrix4x3fv, vertexAttribI4i,
        vertexAttribI4iv, vertexAttribI4ui, vertexAttribI4uiv,
        vertexAttribIPointer, vertexAttribDivisor, drawArraysInstanced,
        drawElementsInstanced, drawRangeElements, drawBuffers,
        clearBufferiv, clearBufferuiv, clearBufferfv, clearBufferfi,
        createQuery, deleteQuery, isQuery, beginQuery, endQuery, getQuery,
        getQueryParameter, createSampler, deleteSampler, isSampler,
        bindSampler, samplerParameteri, samplerParameterf,
        getSamplerParameter, fenceSync, isSync, deleteSync, clientWaitSync,
        waitSync, getSyncParameter, createTransformFeedback,
        deleteTransformFeedback, isTransformFeedback,
        bindTransformFeedback, beginTransformFeedback,
        endTransformFeedback, transformFeedbackVaryings,
        getTransformFeedbackVarying, pauseTransformFeedback,
        resumeTransformFeedback, bindBufferBase, bindBufferRange,
        getIndexedParameter, getUniformIndices, getActiveUniforms,
        getUniformBlockIndex, getActiveUniformBlockParameter,
        getActiveUniformBlockName, uniformBlockBinding, createVertexArray,
        deleteVertexArray, isVertexArray, bindVertexArray,
        pattern READ_BUFFER, pattern UNPACK_ROW_LENGTH,
        pattern UNPACK_SKIP_ROWS, pattern UNPACK_SKIP_PIXELS,
        pattern PACK_ROW_LENGTH, pattern PACK_SKIP_ROWS,
        pattern PACK_SKIP_PIXELS, pattern COLOR, pattern DEPTH,
        pattern STENCIL, pattern RED, pattern RGB8, pattern RGBA8,
        pattern RGB10_A2, pattern TEXTURE_BINDING_3D,
        pattern UNPACK_SKIP_IMAGES, pattern UNPACK_IMAGE_HEIGHT,
        pattern TEXTURE_3D, pattern TEXTURE_WRAP_R,
        pattern MAX_3D_TEXTURE_SIZE, pattern UNSIGNED_INT_2_10_10_10_REV,
        pattern MAX_ELEMENTS_VERTICES, pattern MAX_ELEMENTS_INDICES,
        pattern TEXTURE_MIN_LOD, pattern TEXTURE_MAX_LOD,
        pattern TEXTURE_BASE_LEVEL, pattern TEXTURE_MAX_LEVEL, pattern MIN,
        pattern MAX, pattern DEPTH_COMPONENT24,
        pattern MAX_TEXTURE_LOD_BIAS, pattern TEXTURE_COMPARE_MODE,
        pattern TEXTURE_COMPARE_FUNC, pattern CURRENT_QUERY,
        pattern QUERY_RESULT, pattern QUERY_RESULT_AVAILABLE,
        pattern STREAM_READ, pattern STREAM_COPY, pattern STATIC_READ,
        pattern STATIC_COPY, pattern DYNAMIC_READ, pattern DYNAMIC_COPY,
        pattern MAX_DRAW_BUFFERS, pattern DRAW_BUFFER0,
        pattern DRAW_BUFFER1, pattern DRAW_BUFFER2, pattern DRAW_BUFFER3,
        pattern DRAW_BUFFER4, pattern DRAW_BUFFER5, pattern DRAW_BUFFER6,
        pattern DRAW_BUFFER7, pattern DRAW_BUFFER8, pattern DRAW_BUFFER9,
        pattern DRAW_BUFFER10, pattern DRAW_BUFFER11,
        pattern DRAW_BUFFER12, pattern DRAW_BUFFER13,
        pattern DRAW_BUFFER14, pattern DRAW_BUFFER15,
        pattern MAX_FRAGMENT_UNIFORM_COMPONENTS,
        pattern MAX_VERTEX_UNIFORM_COMPONENTS, pattern SAMPLER_3D,
        pattern SAMPLER_2D_SHADOW, pattern FRAGMENT_SHADER_DERIVATIVE_HINT,
        pattern PIXEL_PACK_BUFFER, pattern PIXEL_UNPACK_BUFFER,
        pattern PIXEL_PACK_BUFFER_BINDING,
        pattern PIXEL_UNPACK_BUFFER_BINDING, pattern FLOAT_MAT2x3,
        pattern FLOAT_MAT2x4, pattern FLOAT_MAT3x2, pattern FLOAT_MAT3x4,
        pattern FLOAT_MAT4x2, pattern FLOAT_MAT4x3, pattern SRGB,
        pattern SRGB8, pattern SRGB8_ALPHA8,
        pattern COMPARE_REF_TO_TEXTURE, pattern RGBA32F, pattern RGB32F,
        pattern RGBA16F, pattern RGB16F,
        pattern VERTEX_ATTRIB_ARRAY_INTEGER,
        pattern MAX_ARRAY_TEXTURE_LAYERS, pattern MIN_PROGRAM_TEXEL_OFFSET,
        pattern MAX_PROGRAM_TEXEL_OFFSET, pattern MAX_VARYING_COMPONENTS,
        pattern TEXTURE_2D_ARRAY, pattern TEXTURE_BINDING_2D_ARRAY,
        pattern R11F_G11F_B10F, pattern UNSIGNED_INT_10F_11F_11F_REV,
        pattern RGB9_E5, pattern UNSIGNED_INT_5_9_9_9_REV,
        pattern TRANSFORM_FEEDBACK_BUFFER_MODE,
        pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,
        pattern TRANSFORM_FEEDBACK_VARYINGS,
        pattern TRANSFORM_FEEDBACK_BUFFER_START,
        pattern TRANSFORM_FEEDBACK_BUFFER_SIZE,
        pattern TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
        pattern RASTERIZER_DISCARD,
        pattern MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS,
        pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,
        pattern INTERLEAVED_ATTRIBS, pattern SEPARATE_ATTRIBS,
        pattern TRANSFORM_FEEDBACK_BUFFER,
        pattern TRANSFORM_FEEDBACK_BUFFER_BINDING, pattern RGBA32UI,
        pattern RGB32UI, pattern RGBA16UI, pattern RGB16UI,
        pattern RGBA8UI, pattern RGB8UI, pattern RGBA32I, pattern RGB32I,
        pattern RGBA16I, pattern RGB16I, pattern RGBA8I, pattern RGB8I,
        pattern RED_INTEGER, pattern RGB_INTEGER, pattern RGBA_INTEGER,
        pattern SAMPLER_2D_ARRAY, pattern SAMPLER_2D_ARRAY_SHADOW,
        pattern SAMPLER_CUBE_SHADOW, pattern UNSIGNED_INT_VEC2,
        pattern UNSIGNED_INT_VEC3, pattern UNSIGNED_INT_VEC4,
        pattern INT_SAMPLER_2D, pattern INT_SAMPLER_3D,
        pattern INT_SAMPLER_CUBE, pattern INT_SAMPLER_2D_ARRAY,
        pattern UNSIGNED_INT_SAMPLER_2D, pattern UNSIGNED_INT_SAMPLER_3D,
        pattern UNSIGNED_INT_SAMPLER_CUBE,
        pattern UNSIGNED_INT_SAMPLER_2D_ARRAY, pattern DEPTH_COMPONENT32F,
        pattern DEPTH32F_STENCIL8, pattern FLOAT_32_UNSIGNED_INT_24_8_REV,
        pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING,
        pattern FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE,
        pattern FRAMEBUFFER_ATTACHMENT_RED_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_GREEN_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_BLUE_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE,
        pattern FRAMEBUFFER_DEFAULT, pattern DEPTH_STENCIL_ATTACHMENT,
        pattern DEPTH_STENCIL, pattern UNSIGNED_INT_24_8,
        pattern DEPTH24_STENCIL8, pattern UNSIGNED_NORMALIZED,
        pattern DRAW_FRAMEBUFFER_BINDING, pattern READ_FRAMEBUFFER,
        pattern DRAW_FRAMEBUFFER, pattern READ_FRAMEBUFFER_BINDING,
        pattern RENDERBUFFER_SAMPLES,
        pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        pattern MAX_COLOR_ATTACHMENTS, pattern COLOR_ATTACHMENT1,
        pattern COLOR_ATTACHMENT2, pattern COLOR_ATTACHMENT3,
        pattern COLOR_ATTACHMENT4, pattern COLOR_ATTACHMENT5,
        pattern COLOR_ATTACHMENT6, pattern COLOR_ATTACHMENT7,
        pattern COLOR_ATTACHMENT8, pattern COLOR_ATTACHMENT9,
        pattern COLOR_ATTACHMENT10, pattern COLOR_ATTACHMENT11,
        pattern COLOR_ATTACHMENT12, pattern COLOR_ATTACHMENT13,
        pattern COLOR_ATTACHMENT14, pattern COLOR_ATTACHMENT15,
        pattern FRAMEBUFFER_INCOMPLETE_MULTISAMPLE, pattern MAX_SAMPLES,
        pattern HALF_FLOAT, pattern RG, pattern RG_INTEGER, pattern R8,
        pattern RG8, pattern R16F, pattern R32F, pattern RG16F,
        pattern RG32F, pattern R8I, pattern R8UI, pattern R16I,
        pattern R16UI, pattern R32I, pattern R32UI, pattern RG8I,
        pattern RG8UI, pattern RG16I, pattern RG16UI, pattern RG32I,
        pattern RG32UI, pattern VERTEX_ARRAY_BINDING, pattern R8_SNORM,
        pattern RG8_SNORM, pattern RGB8_SNORM, pattern RGBA8_SNORM,
        pattern SIGNED_NORMALIZED, pattern PRIMITIVE_RESTART_FIXED_INDEX,
        pattern COPY_READ_BUFFER, pattern COPY_WRITE_BUFFER,
        pattern COPY_READ_BUFFER_BINDING,
        pattern COPY_WRITE_BUFFER_BINDING, pattern UNIFORM_BUFFER,
        pattern UNIFORM_BUFFER_BINDING, pattern UNIFORM_BUFFER_START,
        pattern UNIFORM_BUFFER_SIZE, pattern MAX_VERTEX_UNIFORM_BLOCKS,
        pattern MAX_FRAGMENT_UNIFORM_BLOCKS,
        pattern MAX_COMBINED_UNIFORM_BLOCKS,
        pattern MAX_UNIFORM_BUFFER_BINDINGS,
        pattern MAX_UNIFORM_BLOCK_SIZE,
        pattern MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS,
        pattern MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS,
        pattern UNIFORM_BUFFER_OFFSET_ALIGNMENT,
        pattern ACTIVE_UNIFORM_BLOCKS, pattern UNIFORM_TYPE,
        pattern UNIFORM_SIZE, pattern UNIFORM_BLOCK_INDEX,
        pattern UNIFORM_OFFSET, pattern UNIFORM_ARRAY_STRIDE,
        pattern UNIFORM_MATRIX_STRIDE, pattern UNIFORM_IS_ROW_MAJOR,
        pattern UNIFORM_BLOCK_BINDING, pattern UNIFORM_BLOCK_DATA_SIZE,
        pattern UNIFORM_BLOCK_ACTIVE_UNIFORMS,
        pattern UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES,
        pattern UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER,
        pattern UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER,
        pattern INVALID_INDEX, pattern MAX_VERTEX_OUTPUT_COMPONENTS,
        pattern MAX_FRAGMENT_INPUT_COMPONENTS,
        pattern MAX_SERVER_WAIT_TIMEOUT, pattern OBJECT_TYPE,
        pattern SYNC_CONDITION, pattern SYNC_STATUS, pattern SYNC_FLAGS,
        pattern SYNC_FENCE, pattern SYNC_GPU_COMMANDS_COMPLETE,
        pattern UNSIGNALED, pattern SIGNALED, pattern ALREADY_SIGNALED,
        pattern TIMEOUT_EXPIRED, pattern CONDITION_SATISFIED,
        pattern WAIT_FAILED, pattern SYNC_FLUSH_COMMANDS_BIT,
        pattern VERTEX_ATTRIB_ARRAY_DIVISOR, pattern ANY_SAMPLES_PASSED,
        pattern ANY_SAMPLES_PASSED_CONSERVATIVE, pattern SAMPLER_BINDING,
        pattern RGB10_A2UI, pattern TEXTURE_SWIZZLE_R,
        pattern TEXTURE_SWIZZLE_G, pattern TEXTURE_SWIZZLE_B,
        pattern TEXTURE_SWIZZLE_A, pattern GREEN, pattern BLUE,
        pattern INT_2_10_10_10_REV, pattern TRANSFORM_FEEDBACK,
        pattern TRANSFORM_FEEDBACK_PAUSED,
        pattern TRANSFORM_FEEDBACK_ACTIVE,
        pattern TRANSFORM_FEEDBACK_BINDING, pattern COMPRESSED_R11_EAC,
        pattern COMPRESSED_SIGNED_R11_EAC, pattern COMPRESSED_RG11_EAC,
        pattern COMPRESSED_SIGNED_RG11_EAC, pattern COMPRESSED_RGB8_ETC2,
        pattern COMPRESSED_SRGB8_ETC2,
        pattern COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2,
        pattern COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2,
        pattern COMPRESSED_RGBA8_ETC2_EAC,
        pattern COMPRESSED_SRGB8_ALPHA8_ETC2_EAC,
        pattern TEXTURE_IMMUTABLE_FORMAT, pattern MAX_ELEMENT_INDEX,
        pattern NUM_SAMPLE_COUNTS, pattern TEXTURE_IMMUTABLE_LEVELS,
        pattern TIMEOUT_IGNORED, WebGL2RenderingContext,
        castToWebGL2RenderingContext, gTypeWebGL2RenderingContext)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.copyBufferSubData Mozilla WebGL2RenderingContext.copyBufferSubData documentation> 
copyBufferSubData ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext ->
                      GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> m ()
copyBufferSubData self readTarget writeTarget readOffset
  writeOffset size
  = liftDOM
      (void
         (self ^. jsf "copyBufferSubData"
            [toJSVal readTarget, toJSVal writeTarget, toJSVal readOffset,
             toJSVal writeOffset, toJSVal size]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getBufferSubData Mozilla WebGL2RenderingContext.getBufferSubData documentation> 
getBufferSubDataView ::
                     (MonadDOM m, IsArrayBufferView returnedData) =>
                       WebGL2RenderingContext ->
                         GLenum -> GLintptr -> Maybe returnedData -> m ()
getBufferSubDataView self target offset returnedData
  = liftDOM
      (void
         (self ^. jsf "getBufferSubData"
            [toJSVal target, toJSVal offset, toJSVal returnedData]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getBufferSubData Mozilla WebGL2RenderingContext.getBufferSubData documentation> 
getBufferSubData ::
                 (MonadDOM m, IsArrayBuffer returnedData) =>
                   WebGL2RenderingContext ->
                     GLenum -> GLintptr -> Maybe returnedData -> m ()
getBufferSubData self target offset returnedData
  = liftDOM
      (void
         (self ^. jsf "getBufferSubData"
            [toJSVal target, toJSVal offset, toJSVal returnedData]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getFramebufferAttachmentParameter Mozilla WebGL2RenderingContext.getFramebufferAttachmentParameter documentation> 
getFramebufferAttachmentParameter ::
                                  (MonadDOM m) =>
                                    WebGL2RenderingContext -> GLenum -> GLenum -> GLenum -> m JSVal
getFramebufferAttachmentParameter self target attachment pname
  = liftDOM
      ((self ^. jsf "getFramebufferAttachmentParameter"
          [toJSVal target, toJSVal attachment, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.blitFramebuffer Mozilla WebGL2RenderingContext.blitFramebuffer documentation> 
blitFramebuffer ::
                (MonadDOM m) =>
                  WebGL2RenderingContext ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> m ()
blitFramebuffer self srcX0 srcY0 srcX1 srcY1 dstX0 dstY0 dstX1
  dstY1 mask filter
  = liftDOM
      (void
         (self ^. jsf "blitFramebuffer"
            [toJSVal srcX0, toJSVal srcY0, toJSVal srcX1, toJSVal srcY1,
             toJSVal dstX0, toJSVal dstY0, toJSVal dstX1, toJSVal dstY1,
             toJSVal mask, toJSVal filter]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.framebufferTextureLayer Mozilla WebGL2RenderingContext.framebufferTextureLayer documentation> 
framebufferTextureLayer ::
                        (MonadDOM m) =>
                          WebGL2RenderingContext ->
                            GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
framebufferTextureLayer self target attachment texture level layer
  = liftDOM
      (void
         (self ^. jsf "framebufferTextureLayer"
            [toJSVal target, toJSVal attachment, toJSVal texture,
             toJSVal level, toJSVal layer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getInternalformatParameter Mozilla WebGL2RenderingContext.getInternalformatParameter documentation> 
getInternalformatParameter ::
                           (MonadDOM m) =>
                             WebGL2RenderingContext -> GLenum -> GLenum -> GLenum -> m JSVal
getInternalformatParameter self target internalformat pname
  = liftDOM
      ((self ^. jsf "getInternalformatParameter"
          [toJSVal target, toJSVal internalformat, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.invalidateFramebuffer Mozilla WebGL2RenderingContext.invalidateFramebuffer documentation> 
invalidateFramebuffer ::
                      (MonadDOM m) =>
                        WebGL2RenderingContext -> GLenum -> [GLenum] -> m ()
invalidateFramebuffer self target attachments
  = liftDOM
      (void
         (self ^. jsf "invalidateFramebuffer"
            [toJSVal target, toJSVal (array attachments)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.invalidateSubFramebuffer Mozilla WebGL2RenderingContext.invalidateSubFramebuffer documentation> 
invalidateSubFramebuffer ::
                         (MonadDOM m) =>
                           WebGL2RenderingContext ->
                             GLenum -> [GLenum] -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
invalidateSubFramebuffer self target attachments x y width height
  = liftDOM
      (void
         (self ^. jsf "invalidateSubFramebuffer"
            [toJSVal target, toJSVal (array attachments), toJSVal x, toJSVal y,
             toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.readBuffer Mozilla WebGL2RenderingContext.readBuffer documentation> 
readBuffer ::
           (MonadDOM m) => WebGL2RenderingContext -> GLenum -> m ()
readBuffer self src
  = liftDOM (void (self ^. jsf "readBuffer" [toJSVal src]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.renderbufferStorageMultisample Mozilla WebGL2RenderingContext.renderbufferStorageMultisample documentation> 
renderbufferStorageMultisample ::
                               (MonadDOM m) =>
                                 WebGL2RenderingContext ->
                                   GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
renderbufferStorageMultisample self target samples internalformat
  width height
  = liftDOM
      (void
         (self ^. jsf "renderbufferStorageMultisample"
            [toJSVal target, toJSVal samples, toJSVal internalformat,
             toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texStorage2D Mozilla WebGL2RenderingContext.texStorage2D documentation> 
texStorage2D ::
             (MonadDOM m) =>
               WebGL2RenderingContext ->
                 GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
texStorage2D self target levels internalformat width height
  = liftDOM
      (void
         (self ^. jsf "texStorage2D"
            [toJSVal target, toJSVal levels, toJSVal internalformat,
             toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texStorage3D Mozilla WebGL2RenderingContext.texStorage3D documentation> 
texStorage3D ::
             (MonadDOM m) =>
               WebGL2RenderingContext ->
                 GLenum ->
                   GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> m ()
texStorage3D self target levels internalformat width height depth
  = liftDOM
      (void
         (self ^. jsf "texStorage3D"
            [toJSVal target, toJSVal levels, toJSVal internalformat,
             toJSVal width, toJSVal height, toJSVal depth]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texImage3D Mozilla WebGL2RenderingContext.texImage3D documentation> 
texImage3D ::
           (MonadDOM m, IsArrayBufferView pixels) =>
             WebGL2RenderingContext ->
               GLenum ->
                 GLint ->
                   GLint ->
                     GLsizei ->
                       GLsizei ->
                         GLsizei -> GLint -> GLenum -> GLenum -> Maybe pixels -> m ()
texImage3D self target level internalformat width height depth
  border format type' pixels
  = liftDOM
      (void
         (self ^. jsf "texImage3D"
            [toJSVal target, toJSVal level, toJSVal internalformat,
             toJSVal width, toJSVal height, toJSVal depth, toJSVal border,
             toJSVal format, toJSVal type', toJSVal pixels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DView ::
                  (MonadDOM m, IsArrayBufferView pixels) =>
                    WebGL2RenderingContext ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLint ->
                                GLsizei ->
                                  GLsizei -> GLsizei -> GLenum -> GLenum -> Maybe pixels -> m ()
texSubImage3DView self target level xoffset yoffset zoffset width
  height depth format type' pixels
  = liftDOM
      (void
         (self ^. jsf "texSubImage3D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal zoffset, toJSVal width, toJSVal height, toJSVal depth,
             toJSVal format, toJSVal type', toJSVal pixels]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DData ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint -> GLint -> GLenum -> GLenum -> Maybe ImageData -> m ()
texSubImage3DData self target level xoffset yoffset zoffset format
  type' source
  = liftDOM
      (void
         (self ^. jsf "texSubImage3D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal zoffset, toJSVal format, toJSVal type', toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3D ::
              (MonadDOM m) =>
                WebGL2RenderingContext ->
                  GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint -> GLenum -> GLenum -> Maybe HTMLImageElement -> m ()
texSubImage3D self target level xoffset yoffset zoffset format
  type' source
  = liftDOM
      (void
         (self ^. jsf "texSubImage3D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal zoffset, toJSVal format, toJSVal type', toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DCanvas ::
                    (MonadDOM m) =>
                      WebGL2RenderingContext ->
                        GLenum ->
                          GLint ->
                            GLint ->
                              GLint ->
                                GLint -> GLenum -> GLenum -> Maybe HTMLCanvasElement -> m ()
texSubImage3DCanvas self target level xoffset yoffset zoffset
  format type' source
  = liftDOM
      (void
         (self ^. jsf "texSubImage3D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal zoffset, toJSVal format, toJSVal type', toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DVideo ::
                   (MonadDOM m) =>
                     WebGL2RenderingContext ->
                       GLenum ->
                         GLint ->
                           GLint ->
                             GLint ->
                               GLint -> GLenum -> GLenum -> Maybe HTMLVideoElement -> m ()
texSubImage3DVideo self target level xoffset yoffset zoffset format
  type' source
  = liftDOM
      (void
         (self ^. jsf "texSubImage3D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal zoffset, toJSVal format, toJSVal type', toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.copyTexSubImage3D Mozilla WebGL2RenderingContext.copyTexSubImage3D documentation> 
copyTexSubImage3D ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
copyTexSubImage3D self target level xoffset yoffset zoffset x y
  width height
  = liftDOM
      (void
         (self ^. jsf "copyTexSubImage3D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal zoffset, toJSVal x, toJSVal y, toJSVal width,
             toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.compressedTexImage3D Mozilla WebGL2RenderingContext.compressedTexImage3D documentation> 
compressedTexImage3D ::
                     (MonadDOM m, IsArrayBufferView data') =>
                       WebGL2RenderingContext ->
                         GLenum ->
                           GLint ->
                             GLenum ->
                               GLsizei ->
                                 GLsizei -> GLsizei -> GLint -> GLsizei -> Maybe data' -> m ()
compressedTexImage3D self target level internalformat width height
  depth border imageSize data'
  = liftDOM
      (void
         (self ^. jsf "compressedTexImage3D"
            [toJSVal target, toJSVal level, toJSVal internalformat,
             toJSVal width, toJSVal height, toJSVal depth, toJSVal border,
             toJSVal imageSize, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.compressedTexSubImage3D Mozilla WebGL2RenderingContext.compressedTexSubImage3D documentation> 
compressedTexSubImage3D ::
                        (MonadDOM m, IsArrayBufferView data') =>
                          WebGL2RenderingContext ->
                            GLenum ->
                              GLint ->
                                GLint ->
                                  GLint ->
                                    GLint ->
                                      GLsizei ->
                                        GLsizei ->
                                          GLsizei -> GLenum -> GLsizei -> Maybe data' -> m ()
compressedTexSubImage3D self target level xoffset yoffset zoffset
  width height depth format imageSize data'
  = liftDOM
      (void
         (self ^. jsf "compressedTexSubImage3D"
            [toJSVal target, toJSVal level, toJSVal xoffset, toJSVal yoffset,
             toJSVal zoffset, toJSVal width, toJSVal height, toJSVal depth,
             toJSVal format, toJSVal imageSize, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getFragDataLocation Mozilla WebGL2RenderingContext.getFragDataLocation documentation> 
getFragDataLocation ::
                    (MonadDOM m, ToJSString name) =>
                      WebGL2RenderingContext -> Maybe WebGLProgram -> name -> m GLint
getFragDataLocation self program name
  = liftDOM
      ((self ^. jsf "getFragDataLocation"
          [toJSVal program, toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform1ui Mozilla WebGL2RenderingContext.uniform1ui documentation> 
uniform1ui ::
           (MonadDOM m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation -> GLuint -> m ()
uniform1ui self location v0
  = liftDOM
      (void (self ^. jsf "uniform1ui" [toJSVal location, toJSVal v0]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform2ui Mozilla WebGL2RenderingContext.uniform2ui documentation> 
uniform2ui ::
           (MonadDOM m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation -> GLuint -> GLuint -> m ()
uniform2ui self location v0 v1
  = liftDOM
      (void
         (self ^. jsf "uniform2ui"
            [toJSVal location, toJSVal v0, toJSVal v1]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform3ui Mozilla WebGL2RenderingContext.uniform3ui documentation> 
uniform3ui ::
           (MonadDOM m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation -> GLuint -> GLuint -> GLuint -> m ()
uniform3ui self location v0 v1 v2
  = liftDOM
      (void
         (self ^. jsf "uniform3ui"
            [toJSVal location, toJSVal v0, toJSVal v1, toJSVal v2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform4ui Mozilla WebGL2RenderingContext.uniform4ui documentation> 
uniform4ui ::
           (MonadDOM m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation ->
                 GLuint -> GLuint -> GLuint -> GLuint -> m ()
uniform4ui self location v0 v1 v2 v3
  = liftDOM
      (void
         (self ^. jsf "uniform4ui"
            [toJSVal location, toJSVal v0, toJSVal v1, toJSVal v2,
             toJSVal v3]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform1uiv Mozilla WebGL2RenderingContext.uniform1uiv documentation> 
uniform1uiv ::
            (MonadDOM m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform1uiv self location value
  = liftDOM
      (void
         (self ^. jsf "uniform1uiv" [toJSVal location, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform2uiv Mozilla WebGL2RenderingContext.uniform2uiv documentation> 
uniform2uiv ::
            (MonadDOM m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform2uiv self location value
  = liftDOM
      (void
         (self ^. jsf "uniform2uiv" [toJSVal location, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform3uiv Mozilla WebGL2RenderingContext.uniform3uiv documentation> 
uniform3uiv ::
            (MonadDOM m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform3uiv self location value
  = liftDOM
      (void
         (self ^. jsf "uniform3uiv" [toJSVal location, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform4uiv Mozilla WebGL2RenderingContext.uniform4uiv documentation> 
uniform4uiv ::
            (MonadDOM m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform4uiv self location value
  = liftDOM
      (void
         (self ^. jsf "uniform4uiv" [toJSVal location, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix2x3fv Mozilla WebGL2RenderingContext.uniformMatrix2x3fv documentation> 
uniformMatrix2x3fv ::
                   (MonadDOM m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix2x3fv self location transpose value
  = liftDOM
      (void
         (self ^. jsf "uniformMatrix2x3fv"
            [toJSVal location, toJSVal transpose, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix3x2fv Mozilla WebGL2RenderingContext.uniformMatrix3x2fv documentation> 
uniformMatrix3x2fv ::
                   (MonadDOM m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix3x2fv self location transpose value
  = liftDOM
      (void
         (self ^. jsf "uniformMatrix3x2fv"
            [toJSVal location, toJSVal transpose, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix2x4fv Mozilla WebGL2RenderingContext.uniformMatrix2x4fv documentation> 
uniformMatrix2x4fv ::
                   (MonadDOM m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix2x4fv self location transpose value
  = liftDOM
      (void
         (self ^. jsf "uniformMatrix2x4fv"
            [toJSVal location, toJSVal transpose, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix4x2fv Mozilla WebGL2RenderingContext.uniformMatrix4x2fv documentation> 
uniformMatrix4x2fv ::
                   (MonadDOM m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix4x2fv self location transpose value
  = liftDOM
      (void
         (self ^. jsf "uniformMatrix4x2fv"
            [toJSVal location, toJSVal transpose, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix3x4fv Mozilla WebGL2RenderingContext.uniformMatrix3x4fv documentation> 
uniformMatrix3x4fv ::
                   (MonadDOM m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix3x4fv self location transpose value
  = liftDOM
      (void
         (self ^. jsf "uniformMatrix3x4fv"
            [toJSVal location, toJSVal transpose, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix4x3fv Mozilla WebGL2RenderingContext.uniformMatrix4x3fv documentation> 
uniformMatrix4x3fv ::
                   (MonadDOM m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix4x3fv self location transpose value
  = liftDOM
      (void
         (self ^. jsf "uniformMatrix4x3fv"
            [toJSVal location, toJSVal transpose, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4i Mozilla WebGL2RenderingContext.vertexAttribI4i documentation> 
vertexAttribI4i ::
                (MonadDOM m) =>
                  WebGL2RenderingContext ->
                    GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
vertexAttribI4i self index x y z w
  = liftDOM
      (void
         (self ^. jsf "vertexAttribI4i"
            [toJSVal index, toJSVal x, toJSVal y, toJSVal z, toJSVal w]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4iv Mozilla WebGL2RenderingContext.vertexAttribI4iv documentation> 
vertexAttribI4iv ::
                 (MonadDOM m, IsInt32Array v) =>
                   WebGL2RenderingContext -> GLuint -> Maybe v -> m ()
vertexAttribI4iv self index v
  = liftDOM
      (void (self ^. jsf "vertexAttribI4iv" [toJSVal index, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4ui Mozilla WebGL2RenderingContext.vertexAttribI4ui documentation> 
vertexAttribI4ui ::
                 (MonadDOM m) =>
                   WebGL2RenderingContext ->
                     GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
vertexAttribI4ui self index x y z w
  = liftDOM
      (void
         (self ^. jsf "vertexAttribI4ui"
            [toJSVal index, toJSVal x, toJSVal y, toJSVal z, toJSVal w]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4uiv Mozilla WebGL2RenderingContext.vertexAttribI4uiv documentation> 
vertexAttribI4uiv ::
                  (MonadDOM m, IsUint32Array v) =>
                    WebGL2RenderingContext -> GLuint -> Maybe v -> m ()
vertexAttribI4uiv self index v
  = liftDOM
      (void (self ^. jsf "vertexAttribI4uiv" [toJSVal index, toJSVal v]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribIPointer Mozilla WebGL2RenderingContext.vertexAttribIPointer documentation> 
vertexAttribIPointer ::
                     (MonadDOM m) =>
                       WebGL2RenderingContext ->
                         GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
vertexAttribIPointer self index size type' stride offset
  = liftDOM
      (void
         (self ^. jsf "vertexAttribIPointer"
            [toJSVal index, toJSVal size, toJSVal type', toJSVal stride,
             toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribDivisor Mozilla WebGL2RenderingContext.vertexAttribDivisor documentation> 
vertexAttribDivisor ::
                    (MonadDOM m) => WebGL2RenderingContext -> GLuint -> GLuint -> m ()
vertexAttribDivisor self index divisor
  = liftDOM
      (void
         (self ^. jsf "vertexAttribDivisor"
            [toJSVal index, toJSVal divisor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawArraysInstanced Mozilla WebGL2RenderingContext.drawArraysInstanced documentation> 
drawArraysInstanced ::
                    (MonadDOM m) =>
                      WebGL2RenderingContext ->
                        GLenum -> GLint -> GLsizei -> GLsizei -> m ()
drawArraysInstanced self mode first count instanceCount
  = liftDOM
      (void
         (self ^. jsf "drawArraysInstanced"
            [toJSVal mode, toJSVal first, toJSVal count,
             toJSVal instanceCount]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawElementsInstanced Mozilla WebGL2RenderingContext.drawElementsInstanced documentation> 
drawElementsInstanced ::
                      (MonadDOM m) =>
                        WebGL2RenderingContext ->
                          GLenum -> GLsizei -> GLenum -> GLintptr -> GLsizei -> m ()
drawElementsInstanced self mode count type' offset instanceCount
  = liftDOM
      (void
         (self ^. jsf "drawElementsInstanced"
            [toJSVal mode, toJSVal count, toJSVal type', toJSVal offset,
             toJSVal instanceCount]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawRangeElements Mozilla WebGL2RenderingContext.drawRangeElements documentation> 
drawRangeElements ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext ->
                      GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> GLintptr -> m ()
drawRangeElements self mode start end count type' offset
  = liftDOM
      (void
         (self ^. jsf "drawRangeElements"
            [toJSVal mode, toJSVal start, toJSVal end, toJSVal count,
             toJSVal type', toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawBuffers Mozilla WebGL2RenderingContext.drawBuffers documentation> 
drawBuffers ::
            (MonadDOM m) => WebGL2RenderingContext -> [GLenum] -> m ()
drawBuffers self buffers
  = liftDOM
      (void (self ^. jsf "drawBuffers" [toJSVal (array buffers)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferiv Mozilla WebGL2RenderingContext.clearBufferiv documentation> 
clearBufferiv ::
              (MonadDOM m, IsInt32Array value) =>
                WebGL2RenderingContext -> GLenum -> GLint -> Maybe value -> m ()
clearBufferiv self buffer drawbuffer value
  = liftDOM
      (void
         (self ^. jsf "clearBufferiv"
            [toJSVal buffer, toJSVal drawbuffer, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferuiv Mozilla WebGL2RenderingContext.clearBufferuiv documentation> 
clearBufferuiv ::
               (MonadDOM m, IsUint32Array value) =>
                 WebGL2RenderingContext -> GLenum -> GLint -> Maybe value -> m ()
clearBufferuiv self buffer drawbuffer value
  = liftDOM
      (void
         (self ^. jsf "clearBufferuiv"
            [toJSVal buffer, toJSVal drawbuffer, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferfv Mozilla WebGL2RenderingContext.clearBufferfv documentation> 
clearBufferfv ::
              (MonadDOM m, IsFloat32Array value) =>
                WebGL2RenderingContext -> GLenum -> GLint -> Maybe value -> m ()
clearBufferfv self buffer drawbuffer value
  = liftDOM
      (void
         (self ^. jsf "clearBufferfv"
            [toJSVal buffer, toJSVal drawbuffer, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferfi Mozilla WebGL2RenderingContext.clearBufferfi documentation> 
clearBufferfi ::
              (MonadDOM m) =>
                WebGL2RenderingContext ->
                  GLenum -> GLint -> GLfloat -> GLint -> m ()
clearBufferfi self buffer drawbuffer depth stencil
  = liftDOM
      (void
         (self ^. jsf "clearBufferfi"
            [toJSVal buffer, toJSVal drawbuffer, toJSVal depth,
             toJSVal stencil]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createQuery Mozilla WebGL2RenderingContext.createQuery documentation> 
createQuery ::
            (MonadDOM m) => WebGL2RenderingContext -> m (Maybe WebGLQuery)
createQuery self
  = liftDOM ((self ^. js "createQuery") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteQuery Mozilla WebGL2RenderingContext.deleteQuery documentation> 
deleteQuery ::
            (MonadDOM m) => WebGL2RenderingContext -> Maybe WebGLQuery -> m ()
deleteQuery self query
  = liftDOM (void (self ^. jsf "deleteQuery" [toJSVal query]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isQuery Mozilla WebGL2RenderingContext.isQuery documentation> 
isQuery ::
        (MonadDOM m) =>
          WebGL2RenderingContext -> Maybe WebGLQuery -> m GLboolean
isQuery self query
  = liftDOM
      ((self ^. jsf "isQuery" [toJSVal query]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.beginQuery Mozilla WebGL2RenderingContext.beginQuery documentation> 
beginQuery ::
           (MonadDOM m) =>
             WebGL2RenderingContext -> GLenum -> Maybe WebGLQuery -> m ()
beginQuery self target query
  = liftDOM
      (void (self ^. jsf "beginQuery" [toJSVal target, toJSVal query]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.endQuery Mozilla WebGL2RenderingContext.endQuery documentation> 
endQuery ::
         (MonadDOM m) => WebGL2RenderingContext -> GLenum -> m ()
endQuery self target
  = liftDOM (void (self ^. jsf "endQuery" [toJSVal target]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getQuery Mozilla WebGL2RenderingContext.getQuery documentation> 
getQuery ::
         (MonadDOM m) =>
           WebGL2RenderingContext -> GLenum -> GLenum -> m (Maybe WebGLQuery)
getQuery self target pname
  = liftDOM
      ((self ^. jsf "getQuery" [toJSVal target, toJSVal pname]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getQueryParameter Mozilla WebGL2RenderingContext.getQueryParameter documentation> 
getQueryParameter ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext -> Maybe WebGLQuery -> GLenum -> m JSVal
getQueryParameter self query pname
  = liftDOM
      ((self ^. jsf "getQueryParameter" [toJSVal query, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createSampler Mozilla WebGL2RenderingContext.createSampler documentation> 
createSampler ::
              (MonadDOM m) => WebGL2RenderingContext -> m (Maybe WebGLSampler)
createSampler self
  = liftDOM ((self ^. js "createSampler") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteSampler Mozilla WebGL2RenderingContext.deleteSampler documentation> 
deleteSampler ::
              (MonadDOM m) =>
                WebGL2RenderingContext -> Maybe WebGLSampler -> m ()
deleteSampler self sampler
  = liftDOM (void (self ^. jsf "deleteSampler" [toJSVal sampler]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isSampler Mozilla WebGL2RenderingContext.isSampler documentation> 
isSampler ::
          (MonadDOM m) =>
            WebGL2RenderingContext -> Maybe WebGLSampler -> m GLboolean
isSampler self sampler
  = liftDOM
      ((self ^. jsf "isSampler" [toJSVal sampler]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindSampler Mozilla WebGL2RenderingContext.bindSampler documentation> 
bindSampler ::
            (MonadDOM m) =>
              WebGL2RenderingContext -> GLuint -> Maybe WebGLSampler -> m ()
bindSampler self unit sampler
  = liftDOM
      (void (self ^. jsf "bindSampler" [toJSVal unit, toJSVal sampler]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.samplerParameteri Mozilla WebGL2RenderingContext.samplerParameteri documentation> 
samplerParameteri ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLSampler -> GLenum -> GLint -> m ()
samplerParameteri self sampler pname param
  = liftDOM
      (void
         (self ^. jsf "samplerParameteri"
            [toJSVal sampler, toJSVal pname, toJSVal param]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.samplerParameterf Mozilla WebGL2RenderingContext.samplerParameterf documentation> 
samplerParameterf ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLSampler -> GLenum -> GLfloat -> m ()
samplerParameterf self sampler pname param
  = liftDOM
      (void
         (self ^. jsf "samplerParameterf"
            [toJSVal sampler, toJSVal pname, toJSVal param]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getSamplerParameter Mozilla WebGL2RenderingContext.getSamplerParameter documentation> 
getSamplerParameter ::
                    (MonadDOM m) =>
                      WebGL2RenderingContext -> Maybe WebGLSampler -> GLenum -> m JSVal
getSamplerParameter self sampler pname
  = liftDOM
      ((self ^. jsf "getSamplerParameter"
          [toJSVal sampler, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.fenceSync Mozilla WebGL2RenderingContext.fenceSync documentation> 
fenceSync ::
          (MonadDOM m) =>
            WebGL2RenderingContext ->
              GLenum -> GLbitfield -> m (Maybe WebGLSync)
fenceSync self condition flags
  = liftDOM
      ((self ^. jsf "fenceSync" [toJSVal condition, toJSVal flags]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isSync Mozilla WebGL2RenderingContext.isSync documentation> 
isSync ::
       (MonadDOM m) =>
         WebGL2RenderingContext -> Maybe WebGLSync -> m GLboolean
isSync self sync
  = liftDOM
      ((self ^. jsf "isSync" [toJSVal sync]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteSync Mozilla WebGL2RenderingContext.deleteSync documentation> 
deleteSync ::
           (MonadDOM m) => WebGL2RenderingContext -> Maybe WebGLSync -> m ()
deleteSync self sync
  = liftDOM (void (self ^. jsf "deleteSync" [toJSVal sync]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clientWaitSync Mozilla WebGL2RenderingContext.clientWaitSync documentation> 
clientWaitSync ::
               (MonadDOM m) =>
                 WebGL2RenderingContext ->
                   Maybe WebGLSync -> GLbitfield -> GLuint64 -> m GLenum
clientWaitSync self sync flags timeout
  = liftDOM
      ((self ^. jsf "clientWaitSync"
          [toJSVal sync, toJSVal flags, toJSVal timeout])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.waitSync Mozilla WebGL2RenderingContext.waitSync documentation> 
waitSync ::
         (MonadDOM m) =>
           WebGL2RenderingContext ->
             Maybe WebGLSync -> GLbitfield -> GLuint64 -> m ()
waitSync self sync flags timeout
  = liftDOM
      (void
         (self ^. jsf "waitSync"
            [toJSVal sync, toJSVal flags, toJSVal timeout]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getSyncParameter Mozilla WebGL2RenderingContext.getSyncParameter documentation> 
getSyncParameter ::
                 (MonadDOM m) =>
                   WebGL2RenderingContext -> Maybe WebGLSync -> GLenum -> m JSVal
getSyncParameter self sync pname
  = liftDOM
      ((self ^. jsf "getSyncParameter" [toJSVal sync, toJSVal pname]) >>=
         toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createTransformFeedback Mozilla WebGL2RenderingContext.createTransformFeedback documentation> 
createTransformFeedback ::
                        (MonadDOM m) =>
                          WebGL2RenderingContext -> m (Maybe WebGLTransformFeedback)
createTransformFeedback self
  = liftDOM ((self ^. js "createTransformFeedback") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteTransformFeedback Mozilla WebGL2RenderingContext.deleteTransformFeedback documentation> 
deleteTransformFeedback ::
                        (MonadDOM m) =>
                          WebGL2RenderingContext -> Maybe WebGLTransformFeedback -> m ()
deleteTransformFeedback self id
  = liftDOM
      (void (self ^. jsf "deleteTransformFeedback" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isTransformFeedback Mozilla WebGL2RenderingContext.isTransformFeedback documentation> 
isTransformFeedback ::
                    (MonadDOM m) =>
                      WebGL2RenderingContext ->
                        Maybe WebGLTransformFeedback -> m GLboolean
isTransformFeedback self id
  = liftDOM
      ((self ^. jsf "isTransformFeedback" [toJSVal id]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindTransformFeedback Mozilla WebGL2RenderingContext.bindTransformFeedback documentation> 
bindTransformFeedback ::
                      (MonadDOM m) =>
                        WebGL2RenderingContext ->
                          GLenum -> Maybe WebGLTransformFeedback -> m ()
bindTransformFeedback self target id
  = liftDOM
      (void
         (self ^. jsf "bindTransformFeedback" [toJSVal target, toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.beginTransformFeedback Mozilla WebGL2RenderingContext.beginTransformFeedback documentation> 
beginTransformFeedback ::
                       (MonadDOM m) => WebGL2RenderingContext -> GLenum -> m ()
beginTransformFeedback self primitiveMode
  = liftDOM
      (void
         (self ^. jsf "beginTransformFeedback" [toJSVal primitiveMode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.endTransformFeedback Mozilla WebGL2RenderingContext.endTransformFeedback documentation> 
endTransformFeedback ::
                     (MonadDOM m) => WebGL2RenderingContext -> m ()
endTransformFeedback self
  = liftDOM (void (self ^. js "endTransformFeedback"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.transformFeedbackVaryings Mozilla WebGL2RenderingContext.transformFeedbackVaryings documentation> 
transformFeedbackVaryings ::
                          (MonadDOM m, ToJSString varyings) =>
                            WebGL2RenderingContext ->
                              Maybe WebGLProgram -> [varyings] -> GLenum -> m ()
transformFeedbackVaryings self program varyings bufferMode
  = liftDOM
      (void
         (self ^. jsf "transformFeedbackVaryings"
            [toJSVal program, toJSVal (array varyings), toJSVal bufferMode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getTransformFeedbackVarying Mozilla WebGL2RenderingContext.getTransformFeedbackVarying documentation> 
getTransformFeedbackVarying ::
                            (MonadDOM m) =>
                              WebGL2RenderingContext ->
                                Maybe WebGLProgram -> GLuint -> m (Maybe WebGLActiveInfo)
getTransformFeedbackVarying self program index
  = liftDOM
      ((self ^. jsf "getTransformFeedbackVarying"
          [toJSVal program, toJSVal index])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.pauseTransformFeedback Mozilla WebGL2RenderingContext.pauseTransformFeedback documentation> 
pauseTransformFeedback ::
                       (MonadDOM m) => WebGL2RenderingContext -> m ()
pauseTransformFeedback self
  = liftDOM (void (self ^. js "pauseTransformFeedback"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.resumeTransformFeedback Mozilla WebGL2RenderingContext.resumeTransformFeedback documentation> 
resumeTransformFeedback ::
                        (MonadDOM m) => WebGL2RenderingContext -> m ()
resumeTransformFeedback self
  = liftDOM (void (self ^. js "resumeTransformFeedback"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindBufferBase Mozilla WebGL2RenderingContext.bindBufferBase documentation> 
bindBufferBase ::
               (MonadDOM m) =>
                 WebGL2RenderingContext ->
                   GLenum -> GLuint -> Maybe WebGLBuffer -> m ()
bindBufferBase self target index buffer
  = liftDOM
      (void
         (self ^. jsf "bindBufferBase"
            [toJSVal target, toJSVal index, toJSVal buffer]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindBufferRange Mozilla WebGL2RenderingContext.bindBufferRange documentation> 
bindBufferRange ::
                (MonadDOM m) =>
                  WebGL2RenderingContext ->
                    GLenum ->
                      GLuint -> Maybe WebGLBuffer -> GLintptr -> GLsizeiptr -> m ()
bindBufferRange self target index buffer offset size
  = liftDOM
      (void
         (self ^. jsf "bindBufferRange"
            [toJSVal target, toJSVal index, toJSVal buffer, toJSVal offset,
             toJSVal size]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getIndexedParameter Mozilla WebGL2RenderingContext.getIndexedParameter documentation> 
getIndexedParameter ::
                    (MonadDOM m) =>
                      WebGL2RenderingContext -> GLenum -> GLuint -> m JSVal
getIndexedParameter self target index
  = liftDOM
      ((self ^. jsf "getIndexedParameter"
          [toJSVal target, toJSVal index])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getUniformIndices Mozilla WebGL2RenderingContext.getUniformIndices documentation> 
getUniformIndices ::
                  (MonadDOM m, ToJSString uniformNames) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLProgram -> [uniformNames] -> m (Maybe Uint32Array)
getUniformIndices self program uniformNames
  = liftDOM
      ((self ^. jsf "getUniformIndices"
          [toJSVal program, toJSVal (array uniformNames)])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getActiveUniforms Mozilla WebGL2RenderingContext.getActiveUniforms documentation> 
getActiveUniforms ::
                  (MonadDOM m, IsUint32Array uniformIndices) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLProgram ->
                        Maybe uniformIndices -> GLenum -> m (Maybe Int32Array)
getActiveUniforms self program uniformIndices pname
  = liftDOM
      ((self ^. jsf "getActiveUniforms"
          [toJSVal program, toJSVal uniformIndices, toJSVal pname])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getUniformBlockIndex Mozilla WebGL2RenderingContext.getUniformBlockIndex documentation> 
getUniformBlockIndex ::
                     (MonadDOM m, ToJSString uniformBlockName) =>
                       WebGL2RenderingContext ->
                         Maybe WebGLProgram -> uniformBlockName -> m GLuint
getUniformBlockIndex self program uniformBlockName
  = liftDOM
      ((self ^. jsf "getUniformBlockIndex"
          [toJSVal program, toJSVal uniformBlockName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getActiveUniformBlockParameter Mozilla WebGL2RenderingContext.getActiveUniformBlockParameter documentation> 
getActiveUniformBlockParameter ::
                               (MonadDOM m) =>
                                 WebGL2RenderingContext ->
                                   Maybe WebGLProgram -> GLuint -> GLenum -> m JSVal
getActiveUniformBlockParameter self program uniformBlockIndex pname
  = liftDOM
      ((self ^. jsf "getActiveUniformBlockParameter"
          [toJSVal program, toJSVal uniformBlockIndex, toJSVal pname])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getActiveUniformBlockName Mozilla WebGL2RenderingContext.getActiveUniformBlockName documentation> 
getActiveUniformBlockName ::
                          (MonadDOM m) =>
                            WebGL2RenderingContext -> Maybe WebGLProgram -> GLuint -> m JSVal
getActiveUniformBlockName self program uniformBlockIndex
  = liftDOM
      ((self ^. jsf "getActiveUniformBlockName"
          [toJSVal program, toJSVal uniformBlockIndex])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformBlockBinding Mozilla WebGL2RenderingContext.uniformBlockBinding documentation> 
uniformBlockBinding ::
                    (MonadDOM m) =>
                      WebGL2RenderingContext ->
                        Maybe WebGLProgram -> GLuint -> GLuint -> m ()
uniformBlockBinding self program uniformBlockIndex
  uniformBlockBinding
  = liftDOM
      (void
         (self ^. jsf "uniformBlockBinding"
            [toJSVal program, toJSVal uniformBlockIndex,
             toJSVal uniformBlockBinding]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createVertexArray Mozilla WebGL2RenderingContext.createVertexArray documentation> 
createVertexArray ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext -> m (Maybe WebGLVertexArrayObject)
createVertexArray self
  = liftDOM ((self ^. js "createVertexArray") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteVertexArray Mozilla WebGL2RenderingContext.deleteVertexArray documentation> 
deleteVertexArray ::
                  (MonadDOM m) =>
                    WebGL2RenderingContext -> Maybe WebGLVertexArrayObject -> m ()
deleteVertexArray self vertexArray
  = liftDOM
      (void (self ^. jsf "deleteVertexArray" [toJSVal vertexArray]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isVertexArray Mozilla WebGL2RenderingContext.isVertexArray documentation> 
isVertexArray ::
              (MonadDOM m) =>
                WebGL2RenderingContext ->
                  Maybe WebGLVertexArrayObject -> m GLboolean
isVertexArray self vertexArray
  = liftDOM
      ((self ^. jsf "isVertexArray" [toJSVal vertexArray]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindVertexArray Mozilla WebGL2RenderingContext.bindVertexArray documentation> 
bindVertexArray ::
                (MonadDOM m) =>
                  WebGL2RenderingContext -> Maybe WebGLVertexArrayObject -> m ()
bindVertexArray self vertexArray
  = liftDOM
      (void (self ^. jsf "bindVertexArray" [toJSVal vertexArray]))
pattern READ_BUFFER = 3074
pattern UNPACK_ROW_LENGTH = 3314
pattern UNPACK_SKIP_ROWS = 3315
pattern UNPACK_SKIP_PIXELS = 3316
pattern PACK_ROW_LENGTH = 3330
pattern PACK_SKIP_ROWS = 3331
pattern PACK_SKIP_PIXELS = 3332
pattern COLOR = 6144
pattern DEPTH = 6145
pattern STENCIL = 6146
pattern RED = 6403
pattern RGB8 = 32849
pattern RGBA8 = 32856
pattern RGB10_A2 = 32857
pattern TEXTURE_BINDING_3D = 32874
pattern UNPACK_SKIP_IMAGES = 32877
pattern UNPACK_IMAGE_HEIGHT = 32878
pattern TEXTURE_3D = 32879
pattern TEXTURE_WRAP_R = 32882
pattern MAX_3D_TEXTURE_SIZE = 32883
pattern UNSIGNED_INT_2_10_10_10_REV = 33640
pattern MAX_ELEMENTS_VERTICES = 33000
pattern MAX_ELEMENTS_INDICES = 33001
pattern TEXTURE_MIN_LOD = 33082
pattern TEXTURE_MAX_LOD = 33083
pattern TEXTURE_BASE_LEVEL = 33084
pattern TEXTURE_MAX_LEVEL = 33085
pattern MIN = 32775
pattern MAX = 32776
pattern DEPTH_COMPONENT24 = 33190
pattern MAX_TEXTURE_LOD_BIAS = 34045
pattern TEXTURE_COMPARE_MODE = 34892
pattern TEXTURE_COMPARE_FUNC = 34893
pattern CURRENT_QUERY = 34917
pattern QUERY_RESULT = 34918
pattern QUERY_RESULT_AVAILABLE = 34919
pattern STREAM_READ = 35041
pattern STREAM_COPY = 35042
pattern STATIC_READ = 35045
pattern STATIC_COPY = 35046
pattern DYNAMIC_READ = 35049
pattern DYNAMIC_COPY = 35050
pattern MAX_DRAW_BUFFERS = 34852
pattern DRAW_BUFFER0 = 34853
pattern DRAW_BUFFER1 = 34854
pattern DRAW_BUFFER2 = 34855
pattern DRAW_BUFFER3 = 34856
pattern DRAW_BUFFER4 = 34857
pattern DRAW_BUFFER5 = 34858
pattern DRAW_BUFFER6 = 34859
pattern DRAW_BUFFER7 = 34860
pattern DRAW_BUFFER8 = 34861
pattern DRAW_BUFFER9 = 34862
pattern DRAW_BUFFER10 = 34863
pattern DRAW_BUFFER11 = 34864
pattern DRAW_BUFFER12 = 34865
pattern DRAW_BUFFER13 = 34866
pattern DRAW_BUFFER14 = 34867
pattern DRAW_BUFFER15 = 34868
pattern MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657
pattern MAX_VERTEX_UNIFORM_COMPONENTS = 35658
pattern SAMPLER_3D = 35679
pattern SAMPLER_2D_SHADOW = 35682
pattern FRAGMENT_SHADER_DERIVATIVE_HINT = 35723
pattern PIXEL_PACK_BUFFER = 35051
pattern PIXEL_UNPACK_BUFFER = 35052
pattern PIXEL_PACK_BUFFER_BINDING = 35053
pattern PIXEL_UNPACK_BUFFER_BINDING = 35055
pattern FLOAT_MAT2x3 = 35685
pattern FLOAT_MAT2x4 = 35686
pattern FLOAT_MAT3x2 = 35687
pattern FLOAT_MAT3x4 = 35688
pattern FLOAT_MAT4x2 = 35689
pattern FLOAT_MAT4x3 = 35690
pattern SRGB = 35904
pattern SRGB8 = 35905
pattern SRGB8_ALPHA8 = 35907
pattern COMPARE_REF_TO_TEXTURE = 34894
pattern RGBA32F = 34836
pattern RGB32F = 34837
pattern RGBA16F = 34842
pattern RGB16F = 34843
pattern VERTEX_ATTRIB_ARRAY_INTEGER = 35069
pattern MAX_ARRAY_TEXTURE_LAYERS = 35071
pattern MIN_PROGRAM_TEXEL_OFFSET = 35076
pattern MAX_PROGRAM_TEXEL_OFFSET = 35077
pattern MAX_VARYING_COMPONENTS = 35659
pattern TEXTURE_2D_ARRAY = 35866
pattern TEXTURE_BINDING_2D_ARRAY = 35869
pattern R11F_G11F_B10F = 35898
pattern UNSIGNED_INT_10F_11F_11F_REV = 35899
pattern RGB9_E5 = 35901
pattern UNSIGNED_INT_5_9_9_9_REV = 35902
pattern TRANSFORM_FEEDBACK_BUFFER_MODE = 35967
pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968
pattern TRANSFORM_FEEDBACK_VARYINGS = 35971
pattern TRANSFORM_FEEDBACK_BUFFER_START = 35972
pattern TRANSFORM_FEEDBACK_BUFFER_SIZE = 35973
pattern TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 35976
pattern RASTERIZER_DISCARD = 35977
pattern MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978
pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979
pattern INTERLEAVED_ATTRIBS = 35980
pattern SEPARATE_ATTRIBS = 35981
pattern TRANSFORM_FEEDBACK_BUFFER = 35982
pattern TRANSFORM_FEEDBACK_BUFFER_BINDING = 35983
pattern RGBA32UI = 36208
pattern RGB32UI = 36209
pattern RGBA16UI = 36214
pattern RGB16UI = 36215
pattern RGBA8UI = 36220
pattern RGB8UI = 36221
pattern RGBA32I = 36226
pattern RGB32I = 36227
pattern RGBA16I = 36232
pattern RGB16I = 36233
pattern RGBA8I = 36238
pattern RGB8I = 36239
pattern RED_INTEGER = 36244
pattern RGB_INTEGER = 36248
pattern RGBA_INTEGER = 36249
pattern SAMPLER_2D_ARRAY = 36289
pattern SAMPLER_2D_ARRAY_SHADOW = 36292
pattern SAMPLER_CUBE_SHADOW = 36293
pattern UNSIGNED_INT_VEC2 = 36294
pattern UNSIGNED_INT_VEC3 = 36295
pattern UNSIGNED_INT_VEC4 = 36296
pattern INT_SAMPLER_2D = 36298
pattern INT_SAMPLER_3D = 36299
pattern INT_SAMPLER_CUBE = 36300
pattern INT_SAMPLER_2D_ARRAY = 36303
pattern UNSIGNED_INT_SAMPLER_2D = 36306
pattern UNSIGNED_INT_SAMPLER_3D = 36307
pattern UNSIGNED_INT_SAMPLER_CUBE = 36308
pattern UNSIGNED_INT_SAMPLER_2D_ARRAY = 36311
pattern DEPTH_COMPONENT32F = 36012
pattern DEPTH32F_STENCIL8 = 36013
pattern FLOAT_32_UNSIGNED_INT_24_8_REV = 36269
pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 33296
pattern FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 33297
pattern FRAMEBUFFER_ATTACHMENT_RED_SIZE = 33298
pattern FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 33299
pattern FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 33300
pattern FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 33301
pattern FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 33302
pattern FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 33303
pattern FRAMEBUFFER_DEFAULT = 33304
pattern DEPTH_STENCIL_ATTACHMENT = 33306
pattern DEPTH_STENCIL = 34041
pattern UNSIGNED_INT_24_8 = 34042
pattern DEPTH24_STENCIL8 = 35056
pattern UNSIGNED_NORMALIZED = 35863
pattern DRAW_FRAMEBUFFER_BINDING = 36006
pattern READ_FRAMEBUFFER = 36008
pattern DRAW_FRAMEBUFFER = 36009
pattern READ_FRAMEBUFFER_BINDING = 36010
pattern RENDERBUFFER_SAMPLES = 36011
pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 36052
pattern MAX_COLOR_ATTACHMENTS = 36063
pattern COLOR_ATTACHMENT1 = 36065
pattern COLOR_ATTACHMENT2 = 36066
pattern COLOR_ATTACHMENT3 = 36067
pattern COLOR_ATTACHMENT4 = 36068
pattern COLOR_ATTACHMENT5 = 36069
pattern COLOR_ATTACHMENT6 = 36070
pattern COLOR_ATTACHMENT7 = 36071
pattern COLOR_ATTACHMENT8 = 36072
pattern COLOR_ATTACHMENT9 = 36073
pattern COLOR_ATTACHMENT10 = 36074
pattern COLOR_ATTACHMENT11 = 36075
pattern COLOR_ATTACHMENT12 = 36076
pattern COLOR_ATTACHMENT13 = 36077
pattern COLOR_ATTACHMENT14 = 36078
pattern COLOR_ATTACHMENT15 = 36079
pattern FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 36182
pattern MAX_SAMPLES = 36183
pattern HALF_FLOAT = 5131
pattern RG = 33319
pattern RG_INTEGER = 33320
pattern R8 = 33321
pattern RG8 = 33323
pattern R16F = 33325
pattern R32F = 33326
pattern RG16F = 33327
pattern RG32F = 33328
pattern R8I = 33329
pattern R8UI = 33330
pattern R16I = 33331
pattern R16UI = 33332
pattern R32I = 33333
pattern R32UI = 33334
pattern RG8I = 33335
pattern RG8UI = 33336
pattern RG16I = 33337
pattern RG16UI = 33338
pattern RG32I = 33339
pattern RG32UI = 33340
pattern VERTEX_ARRAY_BINDING = 34229
pattern R8_SNORM = 36756
pattern RG8_SNORM = 36757
pattern RGB8_SNORM = 36758
pattern RGBA8_SNORM = 36759
pattern SIGNED_NORMALIZED = 36764
pattern PRIMITIVE_RESTART_FIXED_INDEX = 36201
pattern COPY_READ_BUFFER = 36662
pattern COPY_WRITE_BUFFER = 36663
pattern COPY_READ_BUFFER_BINDING = 36662
pattern COPY_WRITE_BUFFER_BINDING = 36663
pattern UNIFORM_BUFFER = 35345
pattern UNIFORM_BUFFER_BINDING = 35368
pattern UNIFORM_BUFFER_START = 35369
pattern UNIFORM_BUFFER_SIZE = 35370
pattern MAX_VERTEX_UNIFORM_BLOCKS = 35371
pattern MAX_FRAGMENT_UNIFORM_BLOCKS = 35373
pattern MAX_COMBINED_UNIFORM_BLOCKS = 35374
pattern MAX_UNIFORM_BUFFER_BINDINGS = 35375
pattern MAX_UNIFORM_BLOCK_SIZE = 35376
pattern MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 35377
pattern MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 35379
pattern UNIFORM_BUFFER_OFFSET_ALIGNMENT = 35380
pattern ACTIVE_UNIFORM_BLOCKS = 35382
pattern UNIFORM_TYPE = 35383
pattern UNIFORM_SIZE = 35384
pattern UNIFORM_BLOCK_INDEX = 35386
pattern UNIFORM_OFFSET = 35387
pattern UNIFORM_ARRAY_STRIDE = 35388
pattern UNIFORM_MATRIX_STRIDE = 35389
pattern UNIFORM_IS_ROW_MAJOR = 35390
pattern UNIFORM_BLOCK_BINDING = 35391
pattern UNIFORM_BLOCK_DATA_SIZE = 35392
pattern UNIFORM_BLOCK_ACTIVE_UNIFORMS = 35394
pattern UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 35395
pattern UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 35396
pattern UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 35398
pattern INVALID_INDEX = 4294967295
pattern MAX_VERTEX_OUTPUT_COMPONENTS = 37154
pattern MAX_FRAGMENT_INPUT_COMPONENTS = 37157
pattern MAX_SERVER_WAIT_TIMEOUT = 37137
pattern OBJECT_TYPE = 37138
pattern SYNC_CONDITION = 37139
pattern SYNC_STATUS = 37140
pattern SYNC_FLAGS = 37141
pattern SYNC_FENCE = 37142
pattern SYNC_GPU_COMMANDS_COMPLETE = 37143
pattern UNSIGNALED = 37144
pattern SIGNALED = 37145
pattern ALREADY_SIGNALED = 37146
pattern TIMEOUT_EXPIRED = 37147
pattern CONDITION_SATISFIED = 37148
pattern WAIT_FAILED = 37149
pattern SYNC_FLUSH_COMMANDS_BIT = 1
pattern VERTEX_ATTRIB_ARRAY_DIVISOR = 35070
pattern ANY_SAMPLES_PASSED = 35887
pattern ANY_SAMPLES_PASSED_CONSERVATIVE = 36202
pattern SAMPLER_BINDING = 35097
pattern RGB10_A2UI = 36975
pattern TEXTURE_SWIZZLE_R = 36418
pattern TEXTURE_SWIZZLE_G = 36419
pattern TEXTURE_SWIZZLE_B = 36420
pattern TEXTURE_SWIZZLE_A = 36421
pattern GREEN = 6404
pattern BLUE = 6405
pattern INT_2_10_10_10_REV = 36255
pattern TRANSFORM_FEEDBACK = 36386
pattern TRANSFORM_FEEDBACK_PAUSED = 36387
pattern TRANSFORM_FEEDBACK_ACTIVE = 36388
pattern TRANSFORM_FEEDBACK_BINDING = 36389
pattern COMPRESSED_R11_EAC = 37488
pattern COMPRESSED_SIGNED_R11_EAC = 37489
pattern COMPRESSED_RG11_EAC = 37490
pattern COMPRESSED_SIGNED_RG11_EAC = 37491
pattern COMPRESSED_RGB8_ETC2 = 37492
pattern COMPRESSED_SRGB8_ETC2 = 37493
pattern COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37494
pattern COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37495
pattern COMPRESSED_RGBA8_ETC2_EAC = 37496
pattern COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 37497
pattern TEXTURE_IMMUTABLE_FORMAT = 37167
pattern MAX_ELEMENT_INDEX = 36203
pattern NUM_SAMPLE_COUNTS = 37760
pattern TEXTURE_IMMUTABLE_LEVELS = 33503
pattern TIMEOUT_IGNORED = 18446744073709551615