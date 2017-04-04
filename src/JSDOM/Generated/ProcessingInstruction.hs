{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ProcessingInstruction
       (getTarget, getTargetUnsafe, getTargetUnchecked, getSheet,
        ProcessingInstruction(..), gTypeProcessingInstruction)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTarget ::
          (MonadDOM m, FromJSString result) =>
            ProcessingInstruction -> m (Maybe result)
getTarget self = liftDOM ((self ^. js "target") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTargetUnsafe ::
                (MonadDOM m, HasCallStack, FromJSString result) =>
                  ProcessingInstruction -> m result
getTargetUnsafe self
  = liftDOM
      (((self ^. js "target") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTargetUnchecked ::
                   (MonadDOM m, FromJSString result) =>
                     ProcessingInstruction -> m result
getTargetUnchecked self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheet :: (MonadDOM m) => ProcessingInstruction -> m StyleSheet
getSheet self
  = liftDOM ((self ^. js "sheet") >>= fromJSValUnchecked)
