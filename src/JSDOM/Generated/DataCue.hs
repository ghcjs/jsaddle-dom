{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DataCue
       (newDataCue, newDataCue', setData, getData, setValue, getValue,
        getType, DataCue(..), gTypeDataCue)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue ::
           (MonadDOM m, IsArrayBuffer data') =>
             Double -> Double -> data' -> m DataCue
newDataCue startTime endTime data'
  = liftDOM
      (DataCue <$>
         new (jsg "DataCue")
           [toJSVal startTime, toJSVal endTime, toJSVal data'])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue' ::
            (MonadDOM m, ToJSVal value, ToJSString type') =>
              Double -> Double -> value -> Maybe type' -> m DataCue
newDataCue' startTime endTime value type'
  = liftDOM
      (DataCue <$>
         new (jsg "DataCue")
           [toJSVal startTime, toJSVal endTime, toJSVal value, toJSVal type'])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
setData ::
        (MonadDOM m, IsArrayBuffer val) => DataCue -> val -> m ()
setData self val = liftDOM (self ^. jss "data" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
getData :: (MonadDOM m) => DataCue -> m ArrayBuffer
getData self = liftDOM ((self ^. js "data") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
setValue :: (MonadDOM m, ToJSVal val) => DataCue -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
getValue :: (MonadDOM m) => DataCue -> m JSVal
getValue self = liftDOM ((self ^. js "value") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.type Mozilla WebKitDataCue.type documentation> 
getType :: (MonadDOM m, FromJSString result) => DataCue -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)
