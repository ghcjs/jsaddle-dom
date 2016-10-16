{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCStatsReport
       (stat, stat_, names, names_, getTimestamp, getTimestampUnsafe,
        getTimestampUnchecked, getId, getType, getLocal, getLocalUnsafe,
        getLocalUnchecked, getRemote, getRemoteUnsafe, getRemoteUnchecked,
        RTCStatsReport(..), gTypeRTCStatsReport)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.stat Mozilla RTCStatsReport.stat documentation> 
stat ::
     (MonadDOM m, ToJSString name, FromJSString result) =>
       RTCStatsReport -> name -> m result
stat self name
  = liftDOM
      ((self ^. jsf "stat" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.stat Mozilla RTCStatsReport.stat documentation> 
stat_ ::
      (MonadDOM m, ToJSString name) => RTCStatsReport -> name -> m ()
stat_ self name
  = liftDOM (void (self ^. jsf "stat" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.names Mozilla RTCStatsReport.names documentation> 
names ::
      (MonadDOM m, FromJSString result) => RTCStatsReport -> m [result]
names self
  = liftDOM ((self ^. jsf "names" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.names Mozilla RTCStatsReport.names documentation> 
names_ :: (MonadDOM m) => RTCStatsReport -> m ()
names_ self = liftDOM (void (self ^. jsf "names" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.timestamp Mozilla RTCStatsReport.timestamp documentation> 
getTimestamp :: (MonadDOM m) => RTCStatsReport -> m (Maybe Date)
getTimestamp self
  = liftDOM ((self ^. js "timestamp") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.timestamp Mozilla RTCStatsReport.timestamp documentation> 
getTimestampUnsafe ::
                   (MonadDOM m, HasCallStack) => RTCStatsReport -> m Date
getTimestampUnsafe self
  = liftDOM
      (((self ^. js "timestamp") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.timestamp Mozilla RTCStatsReport.timestamp documentation> 
getTimestampUnchecked :: (MonadDOM m) => RTCStatsReport -> m Date
getTimestampUnchecked self
  = liftDOM ((self ^. js "timestamp") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.id Mozilla RTCStatsReport.id documentation> 
getId ::
      (MonadDOM m, FromJSString result) => RTCStatsReport -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.type Mozilla RTCStatsReport.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => RTCStatsReport -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.local Mozilla RTCStatsReport.local documentation> 
getLocal ::
         (MonadDOM m) => RTCStatsReport -> m (Maybe RTCStatsReport)
getLocal self = liftDOM ((self ^. js "local") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.local Mozilla RTCStatsReport.local documentation> 
getLocalUnsafe ::
               (MonadDOM m, HasCallStack) => RTCStatsReport -> m RTCStatsReport
getLocalUnsafe self
  = liftDOM
      (((self ^. js "local") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.local Mozilla RTCStatsReport.local documentation> 
getLocalUnchecked ::
                  (MonadDOM m) => RTCStatsReport -> m RTCStatsReport
getLocalUnchecked self
  = liftDOM ((self ^. js "local") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.remote Mozilla RTCStatsReport.remote documentation> 
getRemote ::
          (MonadDOM m) => RTCStatsReport -> m (Maybe RTCStatsReport)
getRemote self = liftDOM ((self ^. js "remote") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.remote Mozilla RTCStatsReport.remote documentation> 
getRemoteUnsafe ::
                (MonadDOM m, HasCallStack) => RTCStatsReport -> m RTCStatsReport
getRemoteUnsafe self
  = liftDOM
      (((self ^. js "remote") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.remote Mozilla RTCStatsReport.remote documentation> 
getRemoteUnchecked ::
                   (MonadDOM m) => RTCStatsReport -> m RTCStatsReport
getRemoteUnchecked self
  = liftDOM ((self ^. js "remote") >>= fromJSValUnchecked)
