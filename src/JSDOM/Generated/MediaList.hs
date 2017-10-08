{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaList
       (item, item_, itemUnsafe, itemUnchecked, deleteMedium,
        appendMedium, setMediaText, getMediaText, getLength, MediaList(..),
        gTypeMediaList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
item ::
     (MonadDOM m, FromJSString result) =>
       MediaList -> Word -> m (Maybe result)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
item_ :: (MonadDOM m) => MediaList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack, FromJSString result) =>
             MediaList -> Word -> m result
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
itemUnchecked ::
              (MonadDOM m, FromJSString result) => MediaList -> Word -> m result
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

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
             (MonadDOM m, ToJSString val) => MediaList -> val -> m ()
setMediaText self val
  = liftDOM (self ^. jss "mediaText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
getMediaText ::
             (MonadDOM m, FromJSString result) => MediaList -> m result
getMediaText self
  = liftDOM ((self ^. js "mediaText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.length Mozilla MediaList.length documentation> 
getLength :: (MonadDOM m) => MediaList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
