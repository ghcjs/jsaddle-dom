{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.OverconstrainedError
       (newOverconstrainedError, getMessage, getConstraint,
        OverconstrainedError(..), gTypeOverconstrainedError)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedError Mozilla OverconstrainedError documentation> 
newOverconstrainedError ::
                        (MonadDOM m, ToJSString constraint, ToJSString message) =>
                          Maybe constraint -> Maybe message -> m OverconstrainedError
newOverconstrainedError constraint message
  = liftDOM
      (OverconstrainedError <$>
         new (jsg "OverconstrainedError")
           [toJSVal constraint, toJSVal message])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedError.message Mozilla OverconstrainedError.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) =>
             OverconstrainedError -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedError.constraint Mozilla OverconstrainedError.constraint documentation> 
getConstraint ::
              (MonadDOM m, FromJSString result) =>
                OverconstrainedError -> m result
getConstraint self
  = liftDOM ((self ^. js "constraint") >>= fromJSValUnchecked)
