{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPUTextureDescriptor
       (newWebGPUTextureDescriptor, setTextureType, getTextureType,
        setWidth, getWidth, setHeight, getHeight, setSampleCount,
        getSampleCount, setStorageMode, getStorageMode, setUsage, getUsage,
        WebGPUTextureDescriptor(..), gTypeWebGPUTextureDescriptor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor Mozilla WebGPUTextureDescriptor documentation> 
newWebGPUTextureDescriptor ::
                           (MonadDOM m) =>
                             Word -> Word -> Word -> Bool -> m WebGPUTextureDescriptor
newWebGPUTextureDescriptor pixelFormat width height mipmapped
  = liftDOM
      (WebGPUTextureDescriptor <$>
         new (jsg "WebGPUTextureDescriptor")
           [toJSVal pixelFormat, toJSVal width, toJSVal height,
            toJSVal mipmapped])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.textureType Mozilla WebGPUTextureDescriptor.textureType documentation> 
setTextureType ::
               (MonadDOM m) => WebGPUTextureDescriptor -> Word -> m ()
setTextureType self val
  = liftDOM (self ^. jss "textureType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.textureType Mozilla WebGPUTextureDescriptor.textureType documentation> 
getTextureType :: (MonadDOM m) => WebGPUTextureDescriptor -> m Word
getTextureType self
  = liftDOM (round <$> ((self ^. js "textureType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.width Mozilla WebGPUTextureDescriptor.width documentation> 
setWidth :: (MonadDOM m) => WebGPUTextureDescriptor -> Word -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.width Mozilla WebGPUTextureDescriptor.width documentation> 
getWidth :: (MonadDOM m) => WebGPUTextureDescriptor -> m Word
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.height Mozilla WebGPUTextureDescriptor.height documentation> 
setHeight ::
          (MonadDOM m) => WebGPUTextureDescriptor -> Word -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.height Mozilla WebGPUTextureDescriptor.height documentation> 
getHeight :: (MonadDOM m) => WebGPUTextureDescriptor -> m Word
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.sampleCount Mozilla WebGPUTextureDescriptor.sampleCount documentation> 
setSampleCount ::
               (MonadDOM m) => WebGPUTextureDescriptor -> Word -> m ()
setSampleCount self val
  = liftDOM (self ^. jss "sampleCount" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.sampleCount Mozilla WebGPUTextureDescriptor.sampleCount documentation> 
getSampleCount :: (MonadDOM m) => WebGPUTextureDescriptor -> m Word
getSampleCount self
  = liftDOM (round <$> ((self ^. js "sampleCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.storageMode Mozilla WebGPUTextureDescriptor.storageMode documentation> 
setStorageMode ::
               (MonadDOM m) => WebGPUTextureDescriptor -> Word -> m ()
setStorageMode self val
  = liftDOM (self ^. jss "storageMode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.storageMode Mozilla WebGPUTextureDescriptor.storageMode documentation> 
getStorageMode :: (MonadDOM m) => WebGPUTextureDescriptor -> m Word
getStorageMode self
  = liftDOM (round <$> ((self ^. js "storageMode") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.usage Mozilla WebGPUTextureDescriptor.usage documentation> 
setUsage :: (MonadDOM m) => WebGPUTextureDescriptor -> Word -> m ()
setUsage self val = liftDOM (self ^. jss "usage" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.usage Mozilla WebGPUTextureDescriptor.usage documentation> 
getUsage :: (MonadDOM m) => WebGPUTextureDescriptor -> m Word
getUsage self
  = liftDOM (round <$> ((self ^. js "usage") >>= valToNumber))
