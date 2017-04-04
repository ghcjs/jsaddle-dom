{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ClipboardEvent
       (newClipboardEvent, getClipboardData, getClipboardDataUnsafe,
        getClipboardDataUnchecked, ClipboardEvent(..), gTypeClipboardEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent Mozilla ClipboardEvent documentation> 
newClipboardEvent ::
                  (MonadDOM m, ToJSString type') =>
                    type' -> Maybe ClipboardEventInit -> m ClipboardEvent
newClipboardEvent type' eventInitDict
  = liftDOM
      (ClipboardEvent <$>
         new (jsg "ClipboardEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent.clipboardData Mozilla ClipboardEvent.clipboardData documentation> 
getClipboardData ::
                 (MonadDOM m) => ClipboardEvent -> m (Maybe DataTransfer)
getClipboardData self
  = liftDOM ((self ^. js "clipboardData") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent.clipboardData Mozilla ClipboardEvent.clipboardData documentation> 
getClipboardDataUnsafe ::
                       (MonadDOM m, HasCallStack) => ClipboardEvent -> m DataTransfer
getClipboardDataUnsafe self
  = liftDOM
      (((self ^. js "clipboardData") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent.clipboardData Mozilla ClipboardEvent.clipboardData documentation> 
getClipboardDataUnchecked ::
                          (MonadDOM m) => ClipboardEvent -> m DataTransfer
getClipboardDataUnchecked self
  = liftDOM ((self ^. js "clipboardData") >>= fromJSValUnchecked)
