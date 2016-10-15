{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLOptionElement
       (setDisabled, getDisabled, getForm, getFormUnchecked, setLabel,
        getLabel, setDefaultSelected, getDefaultSelected, setSelected,
        getSelected, setValue, getValue, setText, getText, getIndex,
        HTMLOptionElement(..), gTypeHTMLOptionElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
setDisabled :: (MonadDOM m) => HTMLOptionElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
getDisabled :: (MonadDOM m) => HTMLOptionElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.form Mozilla HTMLOptionElement.form documentation> 
getForm ::
        (MonadDOM m) => HTMLOptionElement -> m (Maybe HTMLFormElement)
getForm self = liftDOM ((self ^. js "form") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.form Mozilla HTMLOptionElement.form documentation> 
getFormUnchecked ::
                 (MonadDOM m) => HTMLOptionElement -> m HTMLFormElement
getFormUnchecked self
  = liftDOM ((self ^. js "form") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
setLabel ::
         (MonadDOM m, ToJSString val) => HTMLOptionElement -> val -> m ()
setLabel self val = liftDOM (self ^. jss "label" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => HTMLOptionElement -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
setDefaultSelected ::
                   (MonadDOM m) => HTMLOptionElement -> Bool -> m ()
setDefaultSelected self val
  = liftDOM (self ^. jss "defaultSelected" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
getDefaultSelected :: (MonadDOM m) => HTMLOptionElement -> m Bool
getDefaultSelected self
  = liftDOM ((self ^. js "defaultSelected") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
setSelected :: (MonadDOM m) => HTMLOptionElement -> Bool -> m ()
setSelected self val
  = liftDOM (self ^. jss "selected" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
getSelected :: (MonadDOM m) => HTMLOptionElement -> m Bool
getSelected self = liftDOM ((self ^. js "selected") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => HTMLOptionElement -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => HTMLOptionElement -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.text Mozilla HTMLOptionElement.text documentation> 
setText ::
        (MonadDOM m, ToJSString val) => HTMLOptionElement -> val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.text Mozilla HTMLOptionElement.text documentation> 
getText ::
        (MonadDOM m, FromJSString result) => HTMLOptionElement -> m result
getText self = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.index Mozilla HTMLOptionElement.index documentation> 
getIndex :: (MonadDOM m) => HTMLOptionElement -> m Int
getIndex self
  = liftDOM (round <$> ((self ^. js "index") >>= valToNumber))
