{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.DataTransfer
       (clearData, getData, setData, setDragImage, setDropEffect,
        getDropEffect, setEffectAllowed, getEffectAllowed, getTypes,
        getFiles, getItems, DataTransfer, castToDataTransfer,
        gTypeDataTransfer)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.clearData Mozilla DataTransfer.clearData documentation> 
clearData ::
          (MonadDOM m, ToJSString type') => DataTransfer -> type' -> m ()
clearData self type'
  = liftDOM (void (self ^. jsf "clearData" [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.getData Mozilla DataTransfer.getData documentation> 
getData ::
        (MonadDOM m, ToJSString type', FromJSString result) =>
          DataTransfer -> type' -> m result
getData self type'
  = liftDOM
      ((self ^. jsf "getData" [toJSVal type']) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setData Mozilla DataTransfer.setData documentation> 
setData ::
        (MonadDOM m, ToJSString type', ToJSString data') =>
          DataTransfer -> type' -> data' -> m ()
setData self type' data'
  = liftDOM
      (void (self ^. jsf "setData" [toJSVal type', toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setDragImage Mozilla DataTransfer.setDragImage documentation> 
setDragImage ::
             (MonadDOM m, IsElement image) =>
               DataTransfer -> Maybe image -> Int -> Int -> m ()
setDragImage self image x y
  = liftDOM
      (void
         (self ^. jsf "setDragImage" [toJSVal image, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
setDropEffect ::
              (MonadDOM m, ToJSString val) => DataTransfer -> val -> m ()
setDropEffect self val
  = liftDOM (self ^. jss "dropEffect" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
getDropEffect ::
              (MonadDOM m, FromJSString result) => DataTransfer -> m result
getDropEffect self
  = liftDOM ((self ^. js "dropEffect") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
setEffectAllowed ::
                 (MonadDOM m, ToJSString val) => DataTransfer -> val -> m ()
setEffectAllowed self val
  = liftDOM (self ^. jss "effectAllowed" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
getEffectAllowed ::
                 (MonadDOM m, FromJSString result) => DataTransfer -> m result
getEffectAllowed self
  = liftDOM ((self ^. js "effectAllowed") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.types Mozilla DataTransfer.types documentation> 
getTypes :: (MonadDOM m) => DataTransfer -> m (Maybe Array)
getTypes self = liftDOM ((self ^. js "types") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.files Mozilla DataTransfer.files documentation> 
getFiles :: (MonadDOM m) => DataTransfer -> m (Maybe FileList)
getFiles self = liftDOM ((self ^. js "files") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.items Mozilla DataTransfer.items documentation> 
getItems ::
         (MonadDOM m) => DataTransfer -> m (Maybe DataTransferItemList)
getItems self = liftDOM ((self ^. js "items") >>= fromJSVal)