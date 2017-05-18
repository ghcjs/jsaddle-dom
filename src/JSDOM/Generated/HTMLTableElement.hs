{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLTableElement
       (createTHead, createTHead_, deleteTHead, createTFoot, createTFoot_,
        deleteTFoot, createTBody, createTBody_, createCaption,
        createCaption_, deleteCaption, insertRow, insertRow_, deleteRow,
        setCaption, getCaption, getCaptionUnsafe, getCaptionUnchecked,
        setTHead, getTHead, getTHeadUnsafe, getTHeadUnchecked, setTFoot,
        getTFoot, getTFootUnsafe, getTFootUnchecked, getRows, getTBodies,
        setAlign, getAlign, setBgColor, getBgColor, getBgColorUnsafe,
        getBgColorUnchecked, setBorder, getBorder, setCellPadding,
        getCellPadding, getCellPaddingUnsafe, getCellPaddingUnchecked,
        setCellSpacing, getCellSpacing, getCellSpacingUnsafe,
        getCellSpacingUnchecked, setFrame, getFrame, setRules, getRules,
        setSummary, getSummary, setWidth, getWidth, HTMLTableElement(..),
        gTypeHTMLTableElement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
createTHead :: (MonadDOM m) => HTMLTableElement -> m HTMLElement
createTHead self
  = liftDOM ((self ^. jsf "createTHead" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
createTHead_ :: (MonadDOM m) => HTMLTableElement -> m ()
createTHead_ self = liftDOM (void (self ^. jsf "createTHead" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTHead Mozilla HTMLTableElement.deleteTHead documentation> 
deleteTHead :: (MonadDOM m) => HTMLTableElement -> m ()
deleteTHead self = liftDOM (void (self ^. jsf "deleteTHead" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
createTFoot :: (MonadDOM m) => HTMLTableElement -> m HTMLElement
createTFoot self
  = liftDOM ((self ^. jsf "createTFoot" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
createTFoot_ :: (MonadDOM m) => HTMLTableElement -> m ()
createTFoot_ self = liftDOM (void (self ^. jsf "createTFoot" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTFoot Mozilla HTMLTableElement.deleteTFoot documentation> 
deleteTFoot :: (MonadDOM m) => HTMLTableElement -> m ()
deleteTFoot self = liftDOM (void (self ^. jsf "deleteTFoot" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
createTBody :: (MonadDOM m) => HTMLTableElement -> m HTMLElement
createTBody self
  = liftDOM ((self ^. jsf "createTBody" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
createTBody_ :: (MonadDOM m) => HTMLTableElement -> m ()
createTBody_ self = liftDOM (void (self ^. jsf "createTBody" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
createCaption :: (MonadDOM m) => HTMLTableElement -> m HTMLElement
createCaption self
  = liftDOM ((self ^. jsf "createCaption" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
createCaption_ :: (MonadDOM m) => HTMLTableElement -> m ()
createCaption_ self
  = liftDOM (void (self ^. jsf "createCaption" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteCaption Mozilla HTMLTableElement.deleteCaption documentation> 
deleteCaption :: (MonadDOM m) => HTMLTableElement -> m ()
deleteCaption self
  = liftDOM (void (self ^. jsf "deleteCaption" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
insertRow ::
          (MonadDOM m) => HTMLTableElement -> Maybe Int -> m HTMLElement
insertRow self index
  = liftDOM
      ((self ^. jsf "insertRow" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
insertRow_ :: (MonadDOM m) => HTMLTableElement -> Maybe Int -> m ()
insertRow_ self index
  = liftDOM (void (self ^. jsf "insertRow" [toJSVal index]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaptionUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   HTMLTableElement -> m HTMLTableCaptionElement
getCaptionUnsafe self
  = liftDOM
      (((self ^. js "caption") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaptionUnchecked ::
                    (MonadDOM m) => HTMLTableElement -> m HTMLTableCaptionElement
getCaptionUnchecked self
  = liftDOM ((self ^. js "caption") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHeadUnsafe ::
               (MonadDOM m, HasCallStack) =>
                 HTMLTableElement -> m HTMLTableSectionElement
getTHeadUnsafe self
  = liftDOM
      (((self ^. js "tHead") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHeadUnchecked ::
                  (MonadDOM m) => HTMLTableElement -> m HTMLTableSectionElement
getTHeadUnchecked self
  = liftDOM ((self ^. js "tHead") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFootUnsafe ::
               (MonadDOM m, HasCallStack) =>
                 HTMLTableElement -> m HTMLTableSectionElement
getTFootUnsafe self
  = liftDOM
      (((self ^. js "tFoot") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFootUnchecked ::
                  (MonadDOM m) => HTMLTableElement -> m HTMLTableSectionElement
getTFootUnchecked self
  = liftDOM ((self ^. js "tFoot") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rows Mozilla HTMLTableElement.rows documentation> 
getRows :: (MonadDOM m) => HTMLTableElement -> m HTMLCollection
getRows self = liftDOM ((self ^. js "rows") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tBodies Mozilla HTMLTableElement.tBodies documentation> 
getTBodies :: (MonadDOM m) => HTMLTableElement -> m HTMLCollection
getTBodies self
  = liftDOM ((self ^. js "tBodies") >>= fromJSValUnchecked)

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
           (MonadDOM m, ToJSString val) =>
             HTMLTableElement -> Maybe val -> m ()
setBgColor self val = liftDOM (self ^. jss "bgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
getBgColor ::
           (MonadDOM m, FromJSString result) =>
             HTMLTableElement -> m (Maybe result)
getBgColor self
  = liftDOM ((self ^. js "bgColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
getBgColorUnsafe ::
                 (MonadDOM m, HasCallStack, FromJSString result) =>
                   HTMLTableElement -> m result
getBgColorUnsafe self
  = liftDOM
      (((self ^. js "bgColor") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
getBgColorUnchecked ::
                    (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getBgColorUnchecked self
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
               (MonadDOM m, ToJSString val) =>
                 HTMLTableElement -> Maybe val -> m ()
setCellPadding self val
  = liftDOM (self ^. jss "cellPadding" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
getCellPadding ::
               (MonadDOM m, FromJSString result) =>
                 HTMLTableElement -> m (Maybe result)
getCellPadding self
  = liftDOM ((self ^. js "cellPadding") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
getCellPaddingUnsafe ::
                     (MonadDOM m, HasCallStack, FromJSString result) =>
                       HTMLTableElement -> m result
getCellPaddingUnsafe self
  = liftDOM
      (((self ^. js "cellPadding") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
getCellPaddingUnchecked ::
                        (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getCellPaddingUnchecked self
  = liftDOM ((self ^. js "cellPadding") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
setCellSpacing ::
               (MonadDOM m, ToJSString val) =>
                 HTMLTableElement -> Maybe val -> m ()
setCellSpacing self val
  = liftDOM (self ^. jss "cellSpacing" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
getCellSpacing ::
               (MonadDOM m, FromJSString result) =>
                 HTMLTableElement -> m (Maybe result)
getCellSpacing self
  = liftDOM ((self ^. js "cellSpacing") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
getCellSpacingUnsafe ::
                     (MonadDOM m, HasCallStack, FromJSString result) =>
                       HTMLTableElement -> m result
getCellSpacingUnsafe self
  = liftDOM
      (((self ^. js "cellSpacing") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
getCellSpacingUnchecked ::
                        (MonadDOM m, FromJSString result) => HTMLTableElement -> m result
getCellSpacingUnchecked self
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
