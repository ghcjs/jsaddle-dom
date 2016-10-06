{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLElement
       (insertAdjacentElement, insertAdjacentHTML, insertAdjacentText,
        click, setTitle, getTitle, setLang, getLang, setTranslate,
        getTranslate, setDir, getDir, setTabIndex, getTabIndex,
        setDraggable, getDraggable, setWebkitdropzone, getWebkitdropzone,
        setHidden, getHidden, setAccessKey, getAccessKey, setInnerText,
        getInnerText, setOuterText, getOuterText, getChildren,
        setContentEditable, getContentEditable, getIsContentEditable,
        setSpellcheck, getSpellcheck, HTMLElement, castToHTMLElement,
        gTypeHTMLElement, IsHTMLElement, toHTMLElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentElement Mozilla HTMLElement.insertAdjacentElement documentation> 
insertAdjacentElement ::
                      (MonadDOM m, IsHTMLElement self, ToJSString where',
                       IsElement element) =>
                        self -> where' -> Maybe element -> m (Maybe Element)
insertAdjacentElement self where' element
  = liftDOM
      (((toHTMLElement self) ^. jsf "insertAdjacentElement"
          [toJSVal where', toJSVal element])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentHTML Mozilla HTMLElement.insertAdjacentHTML documentation> 
insertAdjacentHTML ::
                   (MonadDOM m, IsHTMLElement self, ToJSString where',
                    ToJSString html) =>
                     self -> where' -> html -> m ()
insertAdjacentHTML self where' html
  = liftDOM
      (void
         ((toHTMLElement self) ^. jsf "insertAdjacentHTML"
            [toJSVal where', toJSVal html]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentText Mozilla HTMLElement.insertAdjacentText documentation> 
insertAdjacentText ::
                   (MonadDOM m, IsHTMLElement self, ToJSString where',
                    ToJSString text) =>
                     self -> where' -> text -> m ()
insertAdjacentText self where' text
  = liftDOM
      (void
         ((toHTMLElement self) ^. jsf "insertAdjacentText"
            [toJSVal where', toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.click Mozilla HTMLElement.click documentation> 
click :: (MonadDOM m, IsHTMLElement self) => self -> m ()
click self
  = liftDOM (void ((toHTMLElement self) ^. jsf "click" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.children Mozilla HTMLElement.children documentation> 
getChildren ::
            (MonadDOM m, IsHTMLElement self) =>
              self -> m (Maybe HTMLCollection)
getChildren self
  = liftDOM (((toHTMLElement self) ^. js "children") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
setContentEditable ::
                   (MonadDOM m, IsHTMLElement self, ToJSString val) =>
                     self -> Maybe val -> m ()
setContentEditable self val
  = liftDOM
      ((toHTMLElement self) ^. jss "contentEditable" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
getContentEditable ::
                   (MonadDOM m, IsHTMLElement self, FromJSString result) =>
                     self -> m (Maybe result)
getContentEditable self
  = liftDOM
      (((toHTMLElement self) ^. js "contentEditable") >>=
         fromMaybeJSString)

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
