{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPUDepthStencilState
       (setLabel, getLabel, WebGPUDepthStencilState(..),
        gTypeWebGPUDepthStencilState)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilState.label Mozilla WebGPUDepthStencilState.label documentation> 
setLabel ::
         (MonadDOM m, ToJSString val) =>
           WebGPUDepthStencilState -> val -> m ()
setLabel self val = liftDOM (self ^. jss "label" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilState.label Mozilla WebGPUDepthStencilState.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) =>
           WebGPUDepthStencilState -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)
