{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextTrackCueList
       (item, item_, getCueById, getCueById_, getLength,
        TextTrackCueList(..), gTypeTextTrackCueList)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
item :: (MonadDOM m) => TextTrackCueList -> Word -> m TextTrackCue
item self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
item_ :: (MonadDOM m) => TextTrackCueList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueById ::
           (MonadDOM m, ToJSString id) =>
             TextTrackCueList -> id -> m TextTrackCue
getCueById self id
  = liftDOM
      ((self ^. jsf "getCueById" [toJSVal id]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueById_ ::
            (MonadDOM m, ToJSString id) => TextTrackCueList -> id -> m ()
getCueById_ self id
  = liftDOM (void (self ^. jsf "getCueById" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.length Mozilla TextTrackCueList.length documentation> 
getLength :: (MonadDOM m) => TextTrackCueList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
