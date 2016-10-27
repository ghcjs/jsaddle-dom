{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.VideoTrackList
       (item, item_, itemUnsafe, itemUnchecked, getTrackById,
        getTrackById_, getTrackByIdUnsafe, getTrackByIdUnchecked,
        getLength, getSelectedIndex, change, addTrack, removeTrack,
        VideoTrackList(..), gTypeVideoTrackList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
item ::
     (MonadDOM m) => VideoTrackList -> Word -> m (Maybe VideoTrack)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
item_ :: (MonadDOM m) => VideoTrackList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) =>
             VideoTrackList -> Word -> m VideoTrack
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
itemUnchecked ::
              (MonadDOM m) => VideoTrackList -> Word -> m VideoTrack
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackById ::
             (MonadDOM m, ToJSString id) =>
               VideoTrackList -> id -> m (Maybe VideoTrack)
getTrackById self id
  = liftDOM ((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackById_ ::
              (MonadDOM m, ToJSString id) => VideoTrackList -> id -> m ()
getTrackById_ self id
  = liftDOM (void (self ^. jsf "getTrackById" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackByIdUnsafe ::
                   (MonadDOM m, ToJSString id, HasCallStack) =>
                     VideoTrackList -> id -> m VideoTrack
getTrackByIdUnsafe self id
  = liftDOM
      (((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackByIdUnchecked ::
                      (MonadDOM m, ToJSString id) => VideoTrackList -> id -> m VideoTrack
getTrackByIdUnchecked self id
  = liftDOM
      ((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.length Mozilla VideoTrackList.length documentation> 
getLength :: (MonadDOM m) => VideoTrackList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.selectedIndex Mozilla VideoTrackList.selectedIndex documentation> 
getSelectedIndex :: (MonadDOM m) => VideoTrackList -> m Int
getSelectedIndex self
  = liftDOM
      (round <$> ((self ^. js "selectedIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onchange Mozilla VideoTrackList.onchange documentation> 
change :: EventName VideoTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onaddtrack Mozilla VideoTrackList.onaddtrack documentation> 
addTrack :: EventName VideoTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onremovetrack Mozilla VideoTrackList.onremovetrack documentation> 
removeTrack :: EventName VideoTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")
