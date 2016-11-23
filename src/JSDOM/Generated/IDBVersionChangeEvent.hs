{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBVersionChangeEvent
       (getOldVersion, getNewVersion, getNewVersionUnsafe,
        getNewVersionUnchecked, IDBVersionChangeEvent(..),
        gTypeIDBVersionChangeEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.oldVersion Mozilla IDBVersionChangeEvent.oldVersion documentation> 
getOldVersion :: (MonadDOM m) => IDBVersionChangeEvent -> m Word64
getOldVersion self
  = liftDOM (round <$> ((self ^. js "oldVersion") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
getNewVersion ::
              (MonadDOM m) => IDBVersionChangeEvent -> m (Maybe Word64)
getNewVersion self
  = liftDOM
      ((self ^. js "newVersion") >>= integralFromDoubleFromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
getNewVersionUnsafe ::
                    (MonadDOM m, HasCallStack) => IDBVersionChangeEvent -> m Word64
getNewVersionUnsafe self
  = liftDOM
      (((self ^. js "newVersion") >>= integralFromDoubleFromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
getNewVersionUnchecked ::
                       (MonadDOM m) => IDBVersionChangeEvent -> m Word64
getNewVersionUnchecked self
  = liftDOM
      ((self ^. js "newVersion") >>=
         integralFromDoubleFromJSValUnchecked)
