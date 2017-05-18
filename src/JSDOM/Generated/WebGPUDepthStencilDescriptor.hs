{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPUDepthStencilDescriptor
       (newWebGPUDepthStencilDescriptor, setDepthCompareFunction,
        getDepthCompareFunction, setDepthWriteEnabled,
        getDepthWriteEnabled, WebGPUDepthStencilDescriptor(..),
        gTypeWebGPUDepthStencilDescriptor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor Mozilla WebGPUDepthStencilDescriptor documentation> 
newWebGPUDepthStencilDescriptor ::
                                (MonadDOM m) => m WebGPUDepthStencilDescriptor
newWebGPUDepthStencilDescriptor
  = liftDOM
      (WebGPUDepthStencilDescriptor <$>
         new (jsg "WebGPUDepthStencilDescriptor") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthCompareFunction Mozilla WebGPUDepthStencilDescriptor.depthCompareFunction documentation> 
setDepthCompareFunction ::
                        (MonadDOM m) =>
                          WebGPUDepthStencilDescriptor -> WebGPUCompareFunction -> m ()
setDepthCompareFunction self val
  = liftDOM (self ^. jss "depthCompareFunction" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthCompareFunction Mozilla WebGPUDepthStencilDescriptor.depthCompareFunction documentation> 
getDepthCompareFunction ::
                        (MonadDOM m) =>
                          WebGPUDepthStencilDescriptor -> m WebGPUCompareFunction
getDepthCompareFunction self
  = liftDOM
      ((self ^. js "depthCompareFunction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthWriteEnabled Mozilla WebGPUDepthStencilDescriptor.depthWriteEnabled documentation> 
setDepthWriteEnabled ::
                     (MonadDOM m) => WebGPUDepthStencilDescriptor -> Bool -> m ()
setDepthWriteEnabled self val
  = liftDOM (self ^. jss "depthWriteEnabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthWriteEnabled Mozilla WebGPUDepthStencilDescriptor.depthWriteEnabled documentation> 
getDepthWriteEnabled ::
                     (MonadDOM m) => WebGPUDepthStencilDescriptor -> m Bool
getDepthWriteEnabled self
  = liftDOM ((self ^. js "depthWriteEnabled") >>= valToBool)
