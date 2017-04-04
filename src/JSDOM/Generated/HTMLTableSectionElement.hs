{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLTableSectionElement
       (insertRow, insertRow_, deleteRow, setAlign, getAlign, setCh,
        getCh, setChOff, getChOff, setVAlign, getVAlign, getRows,
        HTMLTableSectionElement(..), gTypeHTMLTableSectionElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.insertRow Mozilla HTMLTableSectionElement.insertRow documentation> 
insertRow ::
          (MonadDOM m) =>
            HTMLTableSectionElement -> Maybe Int -> m HTMLElement
insertRow self index
  = liftDOM
      ((self ^. jsf "insertRow" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.insertRow Mozilla HTMLTableSectionElement.insertRow documentation> 
insertRow_ ::
           (MonadDOM m) => HTMLTableSectionElement -> Maybe Int -> m ()
insertRow_ self index
  = liftDOM (void (self ^. jsf "insertRow" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.deleteRow Mozilla HTMLTableSectionElement.deleteRow documentation> 
deleteRow :: (MonadDOM m) => HTMLTableSectionElement -> Int -> m ()
deleteRow self index
  = liftDOM (void (self ^. jsf "deleteRow" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) =>
           HTMLTableSectionElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableSectionElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
setCh ::
      (MonadDOM m, ToJSString val) =>
        HTMLTableSectionElement -> val -> m ()
setCh self val = liftDOM (self ^. jss "ch" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
getCh ::
      (MonadDOM m, FromJSString result) =>
        HTMLTableSectionElement -> m result
getCh self = liftDOM ((self ^. js "ch") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
setChOff ::
         (MonadDOM m, ToJSString val) =>
           HTMLTableSectionElement -> val -> m ()
setChOff self val = liftDOM (self ^. jss "chOff" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
getChOff ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableSectionElement -> m result
getChOff self
  = liftDOM ((self ^. js "chOff") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
setVAlign ::
          (MonadDOM m, ToJSString val) =>
            HTMLTableSectionElement -> val -> m ()
setVAlign self val = liftDOM (self ^. jss "vAlign" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
getVAlign ::
          (MonadDOM m, FromJSString result) =>
            HTMLTableSectionElement -> m result
getVAlign self
  = liftDOM ((self ^. js "vAlign") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.rows Mozilla HTMLTableSectionElement.rows documentation> 
getRows ::
        (MonadDOM m) => HTMLTableSectionElement -> m HTMLCollection
getRows self = liftDOM ((self ^. js "rows") >>= fromJSValUnchecked)
