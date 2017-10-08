{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DataTransfer
       (setDragImage, getData, getData_, setData, clearData,
        setDropEffect, getDropEffect, setEffectAllowed, getEffectAllowed,
        getItems, getTypes, getFiles, DataTransfer(..), gTypeDataTransfer)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setDragImage Mozilla DataTransfer.setDragImage documentation> 
setDragImage ::
             (MonadDOM m, IsElement image) =>
               DataTransfer -> Maybe image -> Int -> Int -> m ()
setDragImage self image x y
  = liftDOM
      (void
         (self ^. jsf "setDragImage" [toJSVal image, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.getData Mozilla DataTransfer.getData documentation> 
getData ::
        (MonadDOM m, ToJSString format, FromJSString result) =>
          DataTransfer -> format -> m result
getData self format
  = liftDOM
      ((self ^. jsf "getData" [toJSVal format]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.getData Mozilla DataTransfer.getData documentation> 
getData_ ::
         (MonadDOM m, ToJSString format) => DataTransfer -> format -> m ()
getData_ self format
  = liftDOM (void (self ^. jsf "getData" [toJSVal format]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setData Mozilla DataTransfer.setData documentation> 
setData ::
        (MonadDOM m, ToJSString format, ToJSString data') =>
          DataTransfer -> format -> data' -> m ()
setData self format data'
  = liftDOM
      (void (self ^. jsf "setData" [toJSVal format, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.clearData Mozilla DataTransfer.clearData documentation> 
clearData ::
          (MonadDOM m, ToJSString format) =>
            DataTransfer -> Maybe format -> m ()
clearData self format
  = liftDOM (void (self ^. jsf "clearData" [toJSVal format]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.items Mozilla DataTransfer.items documentation> 
getItems :: (MonadDOM m) => DataTransfer -> m DataTransferItemList
getItems self
  = liftDOM ((self ^. js "items") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.types Mozilla DataTransfer.types documentation> 
getTypes ::
         (MonadDOM m, FromJSString result) => DataTransfer -> m [result]
getTypes self
  = liftDOM ((self ^. js "types") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.files Mozilla DataTransfer.files documentation> 
getFiles :: (MonadDOM m) => DataTransfer -> m FileList
getFiles self
  = liftDOM ((self ^. js "files") >>= fromJSValUnchecked)
