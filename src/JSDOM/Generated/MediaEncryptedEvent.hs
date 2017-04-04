{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaEncryptedEvent
       (newMediaEncryptedEvent, getInitDataType, getInitData,
        getInitDataUnsafe, getInitDataUnchecked, MediaEncryptedEvent(..),
        gTypeMediaEncryptedEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaEncryptedEvent Mozilla MediaEncryptedEvent documentation> 
newMediaEncryptedEvent ::
                       (MonadDOM m, ToJSString type') =>
                         type' -> Maybe MediaEncryptedEventInit -> m MediaEncryptedEvent
newMediaEncryptedEvent type' eventInitDict
  = liftDOM
      (MediaEncryptedEvent <$>
         new (jsg "MediaEncryptedEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaEncryptedEvent.initDataType Mozilla MediaEncryptedEvent.initDataType documentation> 
getInitDataType ::
                (MonadDOM m, FromJSString result) =>
                  MediaEncryptedEvent -> m result
getInitDataType self
  = liftDOM ((self ^. js "initDataType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaEncryptedEvent.initData Mozilla MediaEncryptedEvent.initData documentation> 
getInitData ::
            (MonadDOM m) => MediaEncryptedEvent -> m (Maybe ArrayBuffer)
getInitData self = liftDOM ((self ^. js "initData") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaEncryptedEvent.initData Mozilla MediaEncryptedEvent.initData documentation> 
getInitDataUnsafe ::
                  (MonadDOM m, HasCallStack) => MediaEncryptedEvent -> m ArrayBuffer
getInitDataUnsafe self
  = liftDOM
      (((self ^. js "initData") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaEncryptedEvent.initData Mozilla MediaEncryptedEvent.initData documentation> 
getInitDataUnchecked ::
                     (MonadDOM m) => MediaEncryptedEvent -> m ArrayBuffer
getInitDataUnchecked self
  = liftDOM ((self ^. js "initData") >>= fromJSValUnchecked)
