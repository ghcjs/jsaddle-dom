{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLElement
       (newHTMLElement, click, focus, blur, setTitle, getTitle, setLang,
        getLang, setTranslate, getTranslate, setDir, getDir, setTabIndex,
        getTabIndex, setDraggable, getDraggable, setWebkitdropzone,
        getWebkitdropzone, setHidden, getHidden, setAccessKey,
        getAccessKey, setInnerText, getInnerText, getInnerTextUnsafe,
        getInnerTextUnchecked, setOuterText, getOuterText,
        getOuterTextUnsafe, getOuterTextUnchecked, setContentEditable,
        getContentEditable, getIsContentEditable, setSpellcheck,
        getSpellcheck, setAutocorrect, getAutocorrect, setAutocapitalize,
        getAutocapitalize, getAutocapitalizeUnsafe,
        getAutocapitalizeUnchecked, getDataset, HTMLElement(..),
        gTypeHTMLElement, IsHTMLElement, toHTMLElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement Mozilla HTMLElement documentation> 
newHTMLElement :: (MonadDOM m) => m HTMLElement
newHTMLElement
  = liftDOM (HTMLElement <$> new (jsg "HTMLElement") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.click Mozilla HTMLElement.click documentation> 
click :: (MonadDOM m, IsHTMLElement self) => self -> m ()
click self
  = liftDOM (void ((toHTMLElement self) ^. jsf "click" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.focus Mozilla HTMLElement.focus documentation> 
focus :: (MonadDOM m, IsHTMLElement self) => self -> m ()
focus self
  = liftDOM (void ((toHTMLElement self) ^. jsf "focus" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.blur Mozilla HTMLElement.blur documentation> 
blur :: (MonadDOM m, IsHTMLElement self) => self -> m ()
blur self = liftDOM (void ((toHTMLElement self) ^. jsf "blur" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
setTitle ::
         (MonadDOM m, IsHTMLElement self, ToJSString val) =>
           self -> val -> m ()
setTitle self val
  = liftDOM ((toHTMLElement self) ^. jss "title" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
getTitle ::
         (MonadDOM m, IsHTMLElement self, FromJSString result) =>
           self -> m result
getTitle self
  = liftDOM
      (((toHTMLElement self) ^. js "title") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
setLang ::
        (MonadDOM m, IsHTMLElement self, ToJSString val) =>
          self -> val -> m ()
setLang self val
  = liftDOM ((toHTMLElement self) ^. jss "lang" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
getLang ::
        (MonadDOM m, IsHTMLElement self, FromJSString result) =>
          self -> m result
getLang self
  = liftDOM
      (((toHTMLElement self) ^. js "lang") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
setTranslate ::
             (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setTranslate self val
  = liftDOM ((toHTMLElement self) ^. jss "translate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
getTranslate :: (MonadDOM m, IsHTMLElement self) => self -> m Bool
getTranslate self
  = liftDOM (((toHTMLElement self) ^. js "translate") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
setDir ::
       (MonadDOM m, IsHTMLElement self, ToJSString val) =>
         self -> val -> m ()
setDir self val
  = liftDOM ((toHTMLElement self) ^. jss "dir" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
getDir ::
       (MonadDOM m, IsHTMLElement self, FromJSString result) =>
         self -> m result
getDir self
  = liftDOM
      (((toHTMLElement self) ^. js "dir") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
setTabIndex ::
            (MonadDOM m, IsHTMLElement self) => self -> Int -> m ()
setTabIndex self val
  = liftDOM ((toHTMLElement self) ^. jss "tabIndex" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
getTabIndex :: (MonadDOM m, IsHTMLElement self) => self -> m Int
getTabIndex self
  = liftDOM
      (round <$>
         (((toHTMLElement self) ^. js "tabIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
setDraggable ::
             (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setDraggable self val
  = liftDOM ((toHTMLElement self) ^. jss "draggable" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
getDraggable :: (MonadDOM m, IsHTMLElement self) => self -> m Bool
getDraggable self
  = liftDOM (((toHTMLElement self) ^. js "draggable") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
setWebkitdropzone ::
                  (MonadDOM m, IsHTMLElement self, ToJSString val) =>
                    self -> val -> m ()
setWebkitdropzone self val
  = liftDOM
      ((toHTMLElement self) ^. jss "webkitdropzone" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
getWebkitdropzone ::
                  (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                    self -> m result
getWebkitdropzone self
  = liftDOM
      (((toHTMLElement self) ^. js "webkitdropzone") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
setHidden ::
          (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setHidden self val
  = liftDOM ((toHTMLElement self) ^. jss "hidden" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
getHidden :: (MonadDOM m, IsHTMLElement self) => self -> m Bool
getHidden self
  = liftDOM (((toHTMLElement self) ^. js "hidden") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
setAccessKey ::
             (MonadDOM m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setAccessKey self val
  = liftDOM ((toHTMLElement self) ^. jss "accessKey" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
getAccessKey ::
             (MonadDOM m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getAccessKey self
  = liftDOM
      (((toHTMLElement self) ^. js "accessKey") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
setInnerText ::
             (MonadDOM m, IsHTMLElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setInnerText self val
  = liftDOM ((toHTMLElement self) ^. jss "innerText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
getInnerText ::
             (MonadDOM m, IsHTMLElement self, FromJSString result) =>
               self -> m (Maybe result)
getInnerText self
  = liftDOM
      (((toHTMLElement self) ^. js "innerText") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
getInnerTextUnsafe ::
                   (MonadDOM m, IsHTMLElement self, HasCallStack,
                    FromJSString result) =>
                     self -> m result
getInnerTextUnsafe self
  = liftDOM
      ((((toHTMLElement self) ^. js "innerText") >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
getInnerTextUnchecked ::
                      (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                        self -> m result
getInnerTextUnchecked self
  = liftDOM
      (((toHTMLElement self) ^. js "innerText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
setOuterText ::
             (MonadDOM m, IsHTMLElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setOuterText self val
  = liftDOM ((toHTMLElement self) ^. jss "outerText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
getOuterText ::
             (MonadDOM m, IsHTMLElement self, FromJSString result) =>
               self -> m (Maybe result)
getOuterText self
  = liftDOM
      (((toHTMLElement self) ^. js "outerText") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
getOuterTextUnsafe ::
                   (MonadDOM m, IsHTMLElement self, HasCallStack,
                    FromJSString result) =>
                     self -> m result
getOuterTextUnsafe self
  = liftDOM
      ((((toHTMLElement self) ^. js "outerText") >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
getOuterTextUnchecked ::
                      (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                        self -> m result
getOuterTextUnchecked self
  = liftDOM
      (((toHTMLElement self) ^. js "outerText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
setContentEditable ::
                   (MonadDOM m, IsHTMLElement self, ToJSString val) =>
                     self -> val -> m ()
setContentEditable self val
  = liftDOM
      ((toHTMLElement self) ^. jss "contentEditable" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
getContentEditable ::
                   (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                     self -> m result
getContentEditable self
  = liftDOM
      (((toHTMLElement self) ^. js "contentEditable") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.isContentEditable Mozilla HTMLElement.isContentEditable documentation> 
getIsContentEditable ::
                     (MonadDOM m, IsHTMLElement self) => self -> m Bool
getIsContentEditable self
  = liftDOM
      (((toHTMLElement self) ^. js "isContentEditable") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
setSpellcheck ::
              (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setSpellcheck self val
  = liftDOM ((toHTMLElement self) ^. jss "spellcheck" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
getSpellcheck :: (MonadDOM m, IsHTMLElement self) => self -> m Bool
getSpellcheck self
  = liftDOM (((toHTMLElement self) ^. js "spellcheck") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocorrect Mozilla HTMLElement.autocorrect documentation> 
setAutocorrect ::
               (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setAutocorrect self val
  = liftDOM ((toHTMLElement self) ^. jss "autocorrect" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocorrect Mozilla HTMLElement.autocorrect documentation> 
getAutocorrect ::
               (MonadDOM m, IsHTMLElement self) => self -> m Bool
getAutocorrect self
  = liftDOM
      (((toHTMLElement self) ^. js "autocorrect") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocapitalize Mozilla HTMLElement.autocapitalize documentation> 
setAutocapitalize ::
                  (MonadDOM m, IsHTMLElement self, ToJSString val) =>
                    self -> Maybe val -> m ()
setAutocapitalize self val
  = liftDOM
      ((toHTMLElement self) ^. jss "autocapitalize" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocapitalize Mozilla HTMLElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                    self -> m (Maybe result)
getAutocapitalize self
  = liftDOM
      (((toHTMLElement self) ^. js "autocapitalize") >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocapitalize Mozilla HTMLElement.autocapitalize documentation> 
getAutocapitalizeUnsafe ::
                        (MonadDOM m, IsHTMLElement self, HasCallStack,
                         FromJSString result) =>
                          self -> m result
getAutocapitalizeUnsafe self
  = liftDOM
      ((((toHTMLElement self) ^. js "autocapitalize") >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocapitalize Mozilla HTMLElement.autocapitalize documentation> 
getAutocapitalizeUnchecked ::
                           (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                             self -> m result
getAutocapitalizeUnchecked self
  = liftDOM
      (((toHTMLElement self) ^. js "autocapitalize") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dataset Mozilla HTMLElement.dataset documentation> 
getDataset ::
           (MonadDOM m, IsHTMLElement self) => self -> m DOMStringMap
getDataset self
  = liftDOM
      (((toHTMLElement self) ^. js "dataset") >>= fromJSValUnchecked)
