{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.OverconstrainedErrorEvent
       (newOverconstrainedErrorEvent, getError, getErrorUnsafe,
        getErrorUnchecked, OverconstrainedErrorEvent(..),
        gTypeOverconstrainedErrorEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent Mozilla OverconstrainedErrorEvent documentation> 
newOverconstrainedErrorEvent ::
                             (MonadDOM m, ToJSString type') =>
                               type' ->
                                 Maybe OverconstrainedErrorEventInit -> m OverconstrainedErrorEvent
newOverconstrainedErrorEvent type' eventInitDict
  = liftDOM
      (OverconstrainedErrorEvent <$>
         new (jsg "OverconstrainedErrorEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent.error Mozilla OverconstrainedErrorEvent.error documentation> 
getError ::
         (MonadDOM m) =>
           OverconstrainedErrorEvent -> m (Maybe OverconstrainedError)
getError self = liftDOM ((self ^. js "error") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent.error Mozilla OverconstrainedErrorEvent.error documentation> 
getErrorUnsafe ::
               (MonadDOM m, HasCallStack) =>
                 OverconstrainedErrorEvent -> m OverconstrainedError
getErrorUnsafe self
  = liftDOM
      (((self ^. js "error") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent.error Mozilla OverconstrainedErrorEvent.error documentation> 
getErrorUnchecked ::
                  (MonadDOM m) => OverconstrainedErrorEvent -> m OverconstrainedError
getErrorUnchecked self
  = liftDOM ((self ^. js "error") >>= fromJSValUnchecked)
