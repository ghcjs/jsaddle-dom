{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.InputEvent
       (newInputEvent, getTargetRanges, getTargetRanges_, getInputType,
        getData, getDataUnsafe, getDataUnchecked, getDataTransfer,
        getDataTransferUnsafe, getDataTransferUnchecked, InputEvent(..),
        gTypeInputEvent)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent Mozilla InputEvent documentation> 
newInputEvent ::
              (MonadDOM m, ToJSString type') =>
                type' -> Maybe InputEventInit -> m InputEvent
newInputEvent type' eventInitDict
  = liftDOM
      (InputEvent <$>
         new (jsg "InputEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.getTargetRanges Mozilla InputEvent.getTargetRanges documentation> 
getTargetRanges :: (MonadDOM m) => InputEvent -> m [StaticRange]
getTargetRanges self
  = liftDOM
      ((self ^. jsf "getTargetRanges" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.getTargetRanges Mozilla InputEvent.getTargetRanges documentation> 
getTargetRanges_ :: (MonadDOM m) => InputEvent -> m ()
getTargetRanges_ self
  = liftDOM (void (self ^. jsf "getTargetRanges" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.inputType Mozilla InputEvent.inputType documentation> 
getInputType ::
             (MonadDOM m, FromJSString result) => InputEvent -> m result
getInputType self
  = liftDOM ((self ^. js "inputType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.data Mozilla InputEvent.data documentation> 
getData ::
        (MonadDOM m, FromJSString result) => InputEvent -> m (Maybe result)
getData self = liftDOM ((self ^. js "data") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.data Mozilla InputEvent.data documentation> 
getDataUnsafe ::
              (MonadDOM m, HasCallStack, FromJSString result) =>
                InputEvent -> m result
getDataUnsafe self
  = liftDOM
      (((self ^. js "data") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.data Mozilla InputEvent.data documentation> 
getDataUnchecked ::
                 (MonadDOM m, FromJSString result) => InputEvent -> m result
getDataUnchecked self
  = liftDOM ((self ^. js "data") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.dataTransfer Mozilla InputEvent.dataTransfer documentation> 
getDataTransfer ::
                (MonadDOM m) => InputEvent -> m (Maybe DataTransfer)
getDataTransfer self
  = liftDOM ((self ^. js "dataTransfer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.dataTransfer Mozilla InputEvent.dataTransfer documentation> 
getDataTransferUnsafe ::
                      (MonadDOM m, HasCallStack) => InputEvent -> m DataTransfer
getDataTransferUnsafe self
  = liftDOM
      (((self ^. js "dataTransfer") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.dataTransfer Mozilla InputEvent.dataTransfer documentation> 
getDataTransferUnchecked ::
                         (MonadDOM m) => InputEvent -> m DataTransfer
getDataTransferUnchecked self
  = liftDOM ((self ^. js "dataTransfer") >>= fromJSValUnchecked)
