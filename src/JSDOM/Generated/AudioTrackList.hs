{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioTrackList
       (item, item_, itemUnsafe, itemUnchecked, getTrackById,
        getTrackById_, getTrackByIdUnsafe, getTrackByIdUnchecked,
        getLength, change, addTrack, removeTrack, AudioTrackList(..),
        gTypeAudioTrackList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
item ::
     (MonadDOM m) => AudioTrackList -> Word -> m (Maybe AudioTrack)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
item_ :: (MonadDOM m) => AudioTrackList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) =>
             AudioTrackList -> Word -> m AudioTrack
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
itemUnchecked ::
              (MonadDOM m) => AudioTrackList -> Word -> m AudioTrack
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.getTrackById Mozilla AudioTrackList.getTrackById documentation> 
getTrackById ::
             (MonadDOM m, ToJSString id) =>
               AudioTrackList -> id -> m (Maybe AudioTrack)
getTrackById self id
  = liftDOM ((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.getTrackById Mozilla AudioTrackList.getTrackById documentation> 
getTrackById_ ::
              (MonadDOM m, ToJSString id) => AudioTrackList -> id -> m ()
getTrackById_ self id
  = liftDOM (void (self ^. jsf "getTrackById" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.getTrackById Mozilla AudioTrackList.getTrackById documentation> 
getTrackByIdUnsafe ::
                   (MonadDOM m, ToJSString id, HasCallStack) =>
                     AudioTrackList -> id -> m AudioTrack
getTrackByIdUnsafe self id
  = liftDOM
      (((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.getTrackById Mozilla AudioTrackList.getTrackById documentation> 
getTrackByIdUnchecked ::
                      (MonadDOM m, ToJSString id) => AudioTrackList -> id -> m AudioTrack
getTrackByIdUnchecked self id
  = liftDOM
      ((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.length Mozilla AudioTrackList.length documentation> 
getLength :: (MonadDOM m) => AudioTrackList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onchange Mozilla AudioTrackList.onchange documentation> 
change :: EventName AudioTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onaddtrack Mozilla AudioTrackList.onaddtrack documentation> 
addTrack :: EventName AudioTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onremovetrack Mozilla AudioTrackList.onremovetrack documentation> 
removeTrack :: EventName AudioTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")
