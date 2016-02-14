{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.TextTrackCueList
       (item, getCueById, getLength, TextTrackCueList,
        castToTextTrackCueList, gTypeTextTrackCueList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
item ::
     (MonadDOM m) => TextTrackCueList -> Word -> m (Maybe TextTrackCue)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueById ::
           (MonadDOM m, ToJSString id) =>
             TextTrackCueList -> id -> m (Maybe TextTrackCue)
getCueById self id
  = liftDOM ((self ^. jsf "getCueById" [toJSVal id]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.length Mozilla TextTrackCueList.length documentation> 
getLength :: (MonadDOM m) => TextTrackCueList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))