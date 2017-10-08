{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLElement
       (newHTMLElement, click, focus, blur, setTitle, getTitle, setLang,
        getLang, setTranslate, getTranslate, setDir, getDir, getDataset,
        setHidden, getHidden, setTabIndex, getTabIndex, setAccessKey,
        getAccessKey, setDraggable, getDraggable, setSpellcheck,
        getSpellcheck, setInnerText, getInnerText, setContentEditable,
        getContentEditable, getIsContentEditable, getOffsetParent,
        getOffsetParentUnsafe, getOffsetParentUnchecked, getOffsetTop,
        getOffsetLeft, getOffsetWidth, getOffsetHeight, setOuterText,
        getOuterText, setAutocorrect, getAutocorrect, setAutocapitalize,
        getAutocapitalize, setWebkitdropzone, getWebkitdropzone,
        HTMLElement(..), gTypeHTMLElement, IsHTMLElement, toHTMLElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dataset Mozilla HTMLElement.dataset documentation> 
getDataset ::
           (MonadDOM m, IsHTMLElement self) => self -> m DOMStringMap
getDataset self
  = liftDOM
      (((toHTMLElement self) ^. js "dataset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
setHidden ::
          (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setHidden self val
  = liftDOM ((toHTMLElement self) ^. jss "hidden" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
getHidden :: (MonadDOM m, IsHTMLElement self) => self -> m Bool
getHidden self
  = liftDOM (((toHTMLElement self) ^. js "hidden") >>= valToBool)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
setDraggable ::
             (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setDraggable self val
  = liftDOM ((toHTMLElement self) ^. jss "draggable" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
getDraggable :: (MonadDOM m, IsHTMLElement self) => self -> m Bool
getDraggable self
  = liftDOM (((toHTMLElement self) ^. js "draggable") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
setSpellcheck ::
              (MonadDOM m, IsHTMLElement self) => self -> Bool -> m ()
setSpellcheck self val
  = liftDOM ((toHTMLElement self) ^. jss "spellcheck" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
getSpellcheck :: (MonadDOM m, IsHTMLElement self) => self -> m Bool
getSpellcheck self
  = liftDOM (((toHTMLElement self) ^. js "spellcheck") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
setInnerText ::
             (MonadDOM m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setInnerText self val
  = liftDOM ((toHTMLElement self) ^. jss "innerText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
getInnerText ::
             (MonadDOM m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getInnerText self
  = liftDOM
      (((toHTMLElement self) ^. js "innerText") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetParent Mozilla HTMLElement.offsetParent documentation> 
getOffsetParent ::
                (MonadDOM m, IsHTMLElement self) => self -> m (Maybe Element)
getOffsetParent self
  = liftDOM
      (((toHTMLElement self) ^. js "offsetParent") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetParent Mozilla HTMLElement.offsetParent documentation> 
getOffsetParentUnsafe ::
                      (MonadDOM m, IsHTMLElement self, HasCallStack) => self -> m Element
getOffsetParentUnsafe self
  = liftDOM
      ((((toHTMLElement self) ^. js "offsetParent") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetParent Mozilla HTMLElement.offsetParent documentation> 
getOffsetParentUnchecked ::
                         (MonadDOM m, IsHTMLElement self) => self -> m Element
getOffsetParentUnchecked self
  = liftDOM
      (((toHTMLElement self) ^. js "offsetParent") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetTop Mozilla HTMLElement.offsetTop documentation> 
getOffsetTop ::
             (MonadDOM m, IsHTMLElement self) => self -> m Double
getOffsetTop self
  = liftDOM
      (((toHTMLElement self) ^. js "offsetTop") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetLeft Mozilla HTMLElement.offsetLeft documentation> 
getOffsetLeft ::
              (MonadDOM m, IsHTMLElement self) => self -> m Double
getOffsetLeft self
  = liftDOM
      (((toHTMLElement self) ^. js "offsetLeft") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetWidth Mozilla HTMLElement.offsetWidth documentation> 
getOffsetWidth ::
               (MonadDOM m, IsHTMLElement self) => self -> m Double
getOffsetWidth self
  = liftDOM
      (((toHTMLElement self) ^. js "offsetWidth") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetHeight Mozilla HTMLElement.offsetHeight documentation> 
getOffsetHeight ::
                (MonadDOM m, IsHTMLElement self) => self -> m Double
getOffsetHeight self
  = liftDOM
      (((toHTMLElement self) ^. js "offsetHeight") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
setOuterText ::
             (MonadDOM m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setOuterText self val
  = liftDOM ((toHTMLElement self) ^. jss "outerText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
getOuterText ::
             (MonadDOM m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getOuterText self
  = liftDOM
      (((toHTMLElement self) ^. js "outerText") >>= fromJSValUnchecked)

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
                    self -> val -> m ()
setAutocapitalize self val
  = liftDOM
      ((toHTMLElement self) ^. jss "autocapitalize" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocapitalize Mozilla HTMLElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                    self -> m result
getAutocapitalize self
  = liftDOM
      (((toHTMLElement self) ^. js "autocapitalize") >>=
         fromJSValUnchecked)

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
