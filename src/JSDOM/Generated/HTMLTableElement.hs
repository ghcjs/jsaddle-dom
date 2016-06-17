{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.HTMLTableElement
       (createTHead, deleteTHead, createTFoot, deleteTFoot, createTBody,
        createCaption, deleteCaption, insertRow, deleteRow, setCaption,
        getCaption, setTHead, getTHead, setTFoot, getTFoot, getRows,
        getTBodies, setAlign, getAlign, setBgColor, getBgColor, setBorder,
        getBorder, setCellPadding, getCellPadding, setCellSpacing,
        getCellSpacing, setFrame, getFrame, setRules, getRules, setSummary,
        getSummary, setWidth, getWidth, HTMLTableElement,
        castToHTMLTableElement, gTypeHTMLTableElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
createTHead ::
            (MonadDOM m) => HTMLTableElement -> m (Maybe HTMLElement)
createTHead self
  = liftDOM ((self ^. js "createTHead") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTHead Mozilla HTMLTableElement.deleteTHead documentation> 
deleteTHead :: (MonadDOM m) => HTMLTableElement -> m ()
deleteTHead self = liftDOM (void (self ^. js "deleteTHead"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
createTFoot ::
            (MonadDOM m) => HTMLTableElement -> m (Maybe HTMLElement)
createTFoot self
  = liftDOM ((self ^. js "createTFoot") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTFoot Mozilla HTMLTableElement.deleteTFoot documentation> 
deleteTFoot :: (MonadDOM m) => HTMLTableElement -> m ()
deleteTFoot self = liftDOM (void (self ^. js "deleteTFoot"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
createTBody ::
            (MonadDOM m) => HTMLTableElement -> m (Maybe HTMLElement)
createTBody self
  = liftDOM ((self ^. js "createTBody") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
createCaption ::
              (MonadDOM m) => HTMLTableElement -> m (Maybe HTMLElement)
createCaption self
  = liftDOM ((self ^. js "createCaption") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteCaption Mozilla HTMLTableElement.deleteCaption documentation> 
deleteCaption :: (MonadDOM m) => HTMLTableElement -> m ()
deleteCaption self = liftDOM (void (self ^. js "deleteCaption"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
insertRow ::
          (MonadDOM m) => HTMLTableElement -> Int -> m (Maybe HTMLElement)
insertRow self index
  = liftDOM ((self ^. jsf "insertRow" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteRow Mozilla HTMLTableElement.deleteRow documentation> 
deleteRow :: (MonadDOM m) => HTMLTableElement -> Int -> m ()
deleteRow self index
  = liftDOM (void (self ^. jsf "deleteRow" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
setCaption ::
           (MonadDOM m) =>
             HTMLTableElement -> Maybe HTMLTableCaptionElement -> m ()
setCaption self val = liftDOM (self ^. jss "caption" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaption ::
           (MonadDOM m) =>
             HTMLTableElement -> m (Maybe HTMLTableCaptionElement)
getCaption self = liftDOM ((self ^. js "caption") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
setTHead ::
         (MonadDOM m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTHead self val = liftDOM (self ^. jss "tHead" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHead ::
         (MonadDOM m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTHead self = liftDOM ((self ^. js "tHead") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
setTFoot ::
         (MonadDOM m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTFoot self val = liftDOM (self ^. jss "tFoot" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFoot ::
         (MonadDOM m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTFoot self = liftDOM ((self ^. js "tFoot") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rows Mozilla HTMLTableElement.rows documentation> 
getRows ::
        (MonadDOM m) => HTMLTableElement -> m (Maybe HTMLCollection)
getRows self = liftDOM ((self ^. js "rows") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tBodies Mozilla HTMLTableElement.tBodies documentation> 
getTBodies ::
           (MonadDOM m) => HTMLTableElement -> m (Maybe HTMLCollection)
getTBodies self = liftDOM ((self ^. js "tBodies") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
setBgColor ::
           (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setBgColor self val = liftDOM (self ^. jss "bgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
getBgColor ::
           (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getBgColor self
  = liftDOM ((self ^. js "bgColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
setBorder ::
          (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setBorder self val = liftDOM (self ^. jss "border" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
getBorder ::
          (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getBorder self
  = liftDOM ((self ^. js "border") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
setCellPadding ::
               (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellPadding self val
  = liftDOM (self ^. jss "cellPadding" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
getCellPadding ::
               (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getCellPadding self
  = liftDOM ((self ^. js "cellPadding") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
setCellSpacing ::
               (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellSpacing self val
  = liftDOM (self ^. jss "cellSpacing" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
getCellSpacing ::
               (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getCellSpacing self
  = liftDOM ((self ^. js "cellSpacing") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
setFrame ::
         (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setFrame self val = liftDOM (self ^. jss "frame" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
getFrame ::
         (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getFrame self
  = liftDOM ((self ^. js "frame") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
setRules ::
         (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setRules self val = liftDOM (self ^. jss "rules" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
getRules ::
         (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getRules self
  = liftDOM ((self ^. js "rules") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
setSummary ::
           (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setSummary self val = liftDOM (self ^. jss "summary" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
getSummary ::
           (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getSummary self
  = liftDOM ((self ^. js "summary") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLTableElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)
