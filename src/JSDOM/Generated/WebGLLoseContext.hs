{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLLoseContext
       (loseContext, restoreContext, WebGLLoseContext(..),
        gTypeWebGLLoseContext)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext.loseContext Mozilla WebGLLoseContext.loseContext documentation> 
loseContext :: (MonadDOM m) => WebGLLoseContext -> m ()
loseContext self = liftDOM (void (self ^. jsf "loseContext" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext.restoreContext Mozilla WebGLLoseContext.restoreContext documentation> 
restoreContext :: (MonadDOM m) => WebGLLoseContext -> m ()
restoreContext self
  = liftDOM (void (self ^. jsf "restoreContext" ()))
