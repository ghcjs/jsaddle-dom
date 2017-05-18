{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioTrackList
       (item, item_, getTrackById, getTrackById_, getLength, change,
        addTrack, removeTrack, AudioTrackList(..), gTypeAudioTrackList)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
item :: (MonadDOM m) => AudioTrackList -> Word -> m AudioTrack
item self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
item_ :: (MonadDOM m) => AudioTrackList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.getTrackById Mozilla AudioTrackList.getTrackById documentation> 
getTrackById ::
             (MonadDOM m, ToJSString id) => AudioTrackList -> id -> m AudioTrack
getTrackById self id
  = liftDOM
      ((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.getTrackById Mozilla AudioTrackList.getTrackById documentation> 
getTrackById_ ::
              (MonadDOM m, ToJSString id) => AudioTrackList -> id -> m ()
getTrackById_ self id
  = liftDOM (void (self ^. jsf "getTrackById" [toJSVal id]))

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
