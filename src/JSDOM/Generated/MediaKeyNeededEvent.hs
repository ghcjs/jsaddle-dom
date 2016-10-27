{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeyNeededEvent
       (getInitData, getInitDataUnsafe, getInitDataUnchecked,
        MediaKeyNeededEvent(..), gTypeMediaKeyNeededEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
getInitData ::
            (MonadDOM m) => MediaKeyNeededEvent -> m (Maybe Uint8Array)
getInitData self = liftDOM ((self ^. js "initData") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
getInitDataUnsafe ::
                  (MonadDOM m, HasCallStack) => MediaKeyNeededEvent -> m Uint8Array
getInitDataUnsafe self
  = liftDOM
      (((self ^. js "initData") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
getInitDataUnchecked ::
                     (MonadDOM m) => MediaKeyNeededEvent -> m Uint8Array
getInitDataUnchecked self
  = liftDOM ((self ^. js "initData") >>= fromJSValUnchecked)
