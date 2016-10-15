{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RadioNodeList
       (_get, _get_, _getUnchecked, setValue, getValue, RadioNodeList(..),
        gTypeRadioNodeList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_get :: (MonadDOM m) => RadioNodeList -> Word -> m (Maybe Node)
_get self index
  = liftDOM ((self ^. jsf "_get" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_get_ :: (MonadDOM m) => RadioNodeList -> Word -> m ()
_get_ self index
  = liftDOM (void (self ^. jsf "_get" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_getUnchecked :: (MonadDOM m) => RadioNodeList -> Word -> m Node
_getUnchecked self index
  = liftDOM
      ((self ^. jsf "_get" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => RadioNodeList -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => RadioNodeList -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)
