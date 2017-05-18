{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPURenderPassAttachmentDescriptor
       (setTexture, getTexture, getTextureUnsafe, getTextureUnchecked,
        setLoadAction, getLoadAction, setStoreAction, getStoreAction,
        WebGPURenderPassAttachmentDescriptor(..),
        gTypeWebGPURenderPassAttachmentDescriptor,
        IsWebGPURenderPassAttachmentDescriptor,
        toWebGPURenderPassAttachmentDescriptor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
setTexture ::
           (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self) =>
             self -> Maybe WebGPUTexture -> m ()
setTexture self val
  = liftDOM
      ((toWebGPURenderPassAttachmentDescriptor self) ^. jss "texture"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
getTexture ::
           (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self) =>
             self -> m (Maybe WebGPUTexture)
getTexture self
  = liftDOM
      (((toWebGPURenderPassAttachmentDescriptor self) ^. js "texture")
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
getTextureUnsafe ::
                 (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self,
                  HasCallStack) =>
                   self -> m WebGPUTexture
getTextureUnsafe self
  = liftDOM
      ((((toWebGPURenderPassAttachmentDescriptor self) ^. js "texture")
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
getTextureUnchecked ::
                    (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self) =>
                      self -> m WebGPUTexture
getTextureUnchecked self
  = liftDOM
      (((toWebGPURenderPassAttachmentDescriptor self) ^. js "texture")
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.loadAction Mozilla WebGPURenderPassAttachmentDescriptor.loadAction documentation> 
setLoadAction ::
              (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self) =>
                self -> Word -> m ()
setLoadAction self val
  = liftDOM
      ((toWebGPURenderPassAttachmentDescriptor self) ^. jss "loadAction"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.loadAction Mozilla WebGPURenderPassAttachmentDescriptor.loadAction documentation> 
getLoadAction ::
              (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self) =>
                self -> m Word
getLoadAction self
  = liftDOM
      (round <$>
         (((toWebGPURenderPassAttachmentDescriptor self) ^. js "loadAction")
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.storeAction Mozilla WebGPURenderPassAttachmentDescriptor.storeAction documentation> 
setStoreAction ::
               (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self) =>
                 self -> Word -> m ()
setStoreAction self val
  = liftDOM
      ((toWebGPURenderPassAttachmentDescriptor self) ^. jss "storeAction"
         (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.storeAction Mozilla WebGPURenderPassAttachmentDescriptor.storeAction documentation> 
getStoreAction ::
               (MonadDOM m, IsWebGPURenderPassAttachmentDescriptor self) =>
                 self -> m Word
getStoreAction self
  = liftDOM
      (round <$>
         (((toWebGPURenderPassAttachmentDescriptor self) ^.
             js "storeAction")
            >>= valToNumber))
