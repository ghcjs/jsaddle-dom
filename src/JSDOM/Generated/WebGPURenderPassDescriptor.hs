{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPURenderPassDescriptor
       (newWebGPURenderPassDescriptor, getColorAttachments,
        getDepthAttachment, WebGPURenderPassDescriptor(..),
        gTypeWebGPURenderPassDescriptor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDescriptor Mozilla WebGPURenderPassDescriptor documentation> 
newWebGPURenderPassDescriptor ::
                              (MonadDOM m) => m WebGPURenderPassDescriptor
newWebGPURenderPassDescriptor
  = liftDOM
      (WebGPURenderPassDescriptor <$>
         new (jsg "WebGPURenderPassDescriptor") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDescriptor.colorAttachments Mozilla WebGPURenderPassDescriptor.colorAttachments documentation> 
getColorAttachments ::
                    (MonadDOM m) =>
                      WebGPURenderPassDescriptor ->
                        m [WebGPURenderPassColorAttachmentDescriptor]
getColorAttachments self
  = liftDOM
      ((self ^. js "colorAttachments") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDescriptor.depthAttachment Mozilla WebGPURenderPassDescriptor.depthAttachment documentation> 
getDepthAttachment ::
                   (MonadDOM m) =>
                     WebGPURenderPassDescriptor ->
                       m WebGPURenderPassDepthAttachmentDescriptor
getDepthAttachment self
  = liftDOM ((self ^. js "depthAttachment") >>= fromJSValUnchecked)
