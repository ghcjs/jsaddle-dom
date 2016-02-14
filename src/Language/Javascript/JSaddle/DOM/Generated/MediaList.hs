{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.MediaList
       (item, deleteMedium, appendMedium, setMediaText, getMediaText,
        getLength, MediaList, castToMediaList, gTypeMediaList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
item ::
     (MonadDOM m, FromJSString result) =>
       MediaList -> Word -> m (Maybe result)
item self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.deleteMedium Mozilla MediaList.deleteMedium documentation> 
deleteMedium ::
             (MonadDOM m, ToJSString oldMedium) =>
               MediaList -> oldMedium -> m ()
deleteMedium self oldMedium
  = liftDOM (void (self ^. jsf "deleteMedium" [toJSVal oldMedium]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.appendMedium Mozilla MediaList.appendMedium documentation> 
appendMedium ::
             (MonadDOM m, ToJSString newMedium) =>
               MediaList -> newMedium -> m ()
appendMedium self newMedium
  = liftDOM (void (self ^. jsf "appendMedium" [toJSVal newMedium]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
setMediaText ::
             (MonadDOM m, ToJSString val) => MediaList -> Maybe val -> m ()
setMediaText self val
  = liftDOM (self ^. jss "mediaText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
getMediaText ::
             (MonadDOM m, FromJSString result) => MediaList -> m (Maybe result)
getMediaText self
  = liftDOM ((self ^. js "mediaText") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.length Mozilla MediaList.length documentation> 
getLength :: (MonadDOM m) => MediaList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))