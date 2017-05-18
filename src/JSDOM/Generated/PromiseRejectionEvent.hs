{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PromiseRejectionEvent
       (newPromiseRejectionEvent, getPromise, getReason,
        PromiseRejectionEvent(..), gTypePromiseRejectionEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEvent Mozilla PromiseRejectionEvent documentation> 
newPromiseRejectionEvent ::
                         (MonadDOM m, ToJSString type') =>
                           type' -> PromiseRejectionEventInit -> m PromiseRejectionEvent
newPromiseRejectionEvent type' eventInitDict
  = liftDOM
      (PromiseRejectionEvent <$>
         new (jsg "PromiseRejectionEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEvent.promise Mozilla PromiseRejectionEvent.promise documentation> 
getPromise :: (MonadDOM m) => PromiseRejectionEvent -> m JSVal
getPromise self
  = liftDOM (((self ^. js "promise") >>= readPromise) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEvent.reason Mozilla PromiseRejectionEvent.reason documentation> 
getReason :: (MonadDOM m) => PromiseRejectionEvent -> m JSVal
getReason self = liftDOM ((self ^. js "reason") >>= toJSVal)
