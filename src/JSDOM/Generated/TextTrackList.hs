{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextTrackList
       (item, item_, itemUnchecked, getTrackById, getTrackById_,
        getTrackByIdUnchecked, getLength, addTrack, change, removeTrack,
        TextTrackList, castToTextTrackList, gTypeTextTrackList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
item ::
     (MonadDOM m) => TextTrackList -> Word -> m (Maybe TextTrack)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
item_ :: (MonadDOM m) => TextTrackList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
itemUnchecked ::
              (MonadDOM m) => TextTrackList -> Word -> m TextTrack
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackById ::
             (MonadDOM m, ToJSString id) =>
               TextTrackList -> id -> m (Maybe TextTrack)
getTrackById self id
  = liftDOM ((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackById_ ::
              (MonadDOM m, ToJSString id) => TextTrackList -> id -> m ()
getTrackById_ self id
  = liftDOM (void (self ^. jsf "getTrackById" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackByIdUnchecked ::
                      (MonadDOM m, ToJSString id) => TextTrackList -> id -> m TextTrack
getTrackByIdUnchecked self id
  = liftDOM
      ((self ^. jsf "getTrackById" [toJSVal id]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.length Mozilla TextTrackList.length documentation> 
getLength :: (MonadDOM m) => TextTrackList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onaddtrack Mozilla TextTrackList.onaddtrack documentation> 
addTrack :: EventName TextTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onchange Mozilla TextTrackList.onchange documentation> 
change :: EventName TextTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onremovetrack Mozilla TextTrackList.onremovetrack documentation> 
removeTrack :: EventName TextTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")
