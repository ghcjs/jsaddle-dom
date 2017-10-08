{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RadioNodeList
       (get, get_, setValue, getValue, RadioNodeList(..),
        gTypeRadioNodeList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.get Mozilla RadioNodeList.get documentation> 
get :: (MonadDOM m) => RadioNodeList -> Word -> m HTMLElement
get self index
  = liftDOM
      ((self ^. jsf "get" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.get Mozilla RadioNodeList.get documentation> 
get_ :: (MonadDOM m) => RadioNodeList -> Word -> m ()
get_ self index
  = liftDOM (void (self ^. jsf "get" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => RadioNodeList -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => RadioNodeList -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)
