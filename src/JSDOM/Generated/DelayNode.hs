{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DelayNode
       (getDelayTime, getDelayTimeUnsafe, getDelayTimeUnchecked,
        DelayNode(..), gTypeDelayNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode.delayTime Mozilla DelayNode.delayTime documentation> 
getDelayTime :: (MonadDOM m) => DelayNode -> m (Maybe AudioParam)
getDelayTime self
  = liftDOM ((self ^. js "delayTime") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode.delayTime Mozilla DelayNode.delayTime documentation> 
getDelayTimeUnsafe ::
                   (MonadDOM m, HasCallStack) => DelayNode -> m AudioParam
getDelayTimeUnsafe self
  = liftDOM
      (((self ^. js "delayTime") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode.delayTime Mozilla DelayNode.delayTime documentation> 
getDelayTimeUnchecked :: (MonadDOM m) => DelayNode -> m AudioParam
getDelayTimeUnchecked self
  = liftDOM ((self ^. js "delayTime") >>= fromJSValUnchecked)
