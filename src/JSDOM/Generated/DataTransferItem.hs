{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DataTransferItem
       (getAsString, getAsFile, getAsFile_, getAsFileUnchecked, getKind,
        getType, DataTransferItem, castToDataTransferItem,
        gTypeDataTransferItem)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsString Mozilla DataTransferItem.getAsString documentation> 
getAsString ::
            (MonadDOM m, ToJSString callback) =>
              DataTransferItem -> Maybe (StringCallback callback) -> m ()
getAsString self callback
  = liftDOM (void (self ^. jsf "getAsString" [toJSVal callback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFile :: (MonadDOM m) => DataTransferItem -> m (Maybe Blob)
getAsFile self
  = liftDOM ((self ^. jsf "getAsFile" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFile_ :: (MonadDOM m) => DataTransferItem -> m ()
getAsFile_ self = liftDOM (void (self ^. jsf "getAsFile" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFileUnchecked :: (MonadDOM m) => DataTransferItem -> m Blob
getAsFileUnchecked self
  = liftDOM ((self ^. jsf "getAsFile" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.kind Mozilla DataTransferItem.kind documentation> 
getKind ::
        (MonadDOM m, FromJSString result) => DataTransferItem -> m result
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.type Mozilla DataTransferItem.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => DataTransferItem -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)
