{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Worker
       (newWorker, terminate, postMessage, message, Worker(..),
        gTypeWorker)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation> 
newWorker ::
          (MonadDOM m, ToJSString scriptUrl) => scriptUrl -> m Worker
newWorker scriptUrl
  = liftDOM (Worker <$> new (jsg "Worker") [toJSVal scriptUrl])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.terminate Mozilla Worker.terminate documentation> 
terminate :: (MonadDOM m) => Worker -> m ()
terminate self = liftDOM (void (self ^. jsf "terminate" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.postMessage Mozilla Worker.postMessage documentation> 
postMessage ::
            (MonadDOM m, ToJSVal message, IsGObject transfer) =>
              Worker -> message -> [transfer] -> m ()
postMessage self message transfer
  = liftDOM
      (void
         (self ^. jsf "postMessage"
            [toJSVal message, toJSVal (array transfer)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.onmessage Mozilla Worker.onmessage documentation> 
message :: EventName Worker MessageEvent
message = unsafeEventName (toJSString "message")
