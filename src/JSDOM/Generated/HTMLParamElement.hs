{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLParamElement
       (setName, getName, setType, getType, setValue, getValue,
        setValueType, getValueType, HTMLParamElement(..),
        gTypeHTMLParamElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.name Mozilla HTMLParamElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLParamElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.name Mozilla HTMLParamElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLParamElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.type Mozilla HTMLParamElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLParamElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.type Mozilla HTMLParamElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLParamElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.value Mozilla HTMLParamElement.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => HTMLParamElement -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.value Mozilla HTMLParamElement.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => HTMLParamElement -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.valueType Mozilla HTMLParamElement.valueType documentation> 
setValueType ::
             (MonadDOM m, ToJSString val) => HTMLParamElement -> val -> m ()
setValueType self val
  = liftDOM (self ^. jss "valueType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.valueType Mozilla HTMLParamElement.valueType documentation> 
getValueType ::
             (MonadDOM m, FromJSString result) => HTMLParamElement -> m result
getValueType self
  = liftDOM ((self ^. js "valueType") >>= fromJSValUnchecked)
