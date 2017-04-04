{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLTableCellElement
       (getCellIndex, setAlign, getAlign, setAxis, getAxis, setBgColor,
        getBgColor, getBgColorUnsafe, getBgColorUnchecked, setCh, getCh,
        setChOff, getChOff, setColSpan, getColSpan, setRowSpan, getRowSpan,
        setHeaders, getHeaders, setHeight, getHeight, setNoWrap, getNoWrap,
        setVAlign, getVAlign, setWidth, getWidth, setAbbr, getAbbr,
        setScope, getScope, HTMLTableCellElement(..),
        gTypeHTMLTableCellElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.cellIndex Mozilla HTMLTableCellElement.cellIndex documentation> 
getCellIndex :: (MonadDOM m) => HTMLTableCellElement -> m Int
getCellIndex self
  = liftDOM (round <$> ((self ^. js "cellIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.align Mozilla HTMLTableCellElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.align Mozilla HTMLTableCellElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableCellElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.axis Mozilla HTMLTableCellElement.axis documentation> 
setAxis ::
        (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setAxis self val = liftDOM (self ^. jss "axis" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.axis Mozilla HTMLTableCellElement.axis documentation> 
getAxis ::
        (MonadDOM m, FromJSString result) =>
          HTMLTableCellElement -> m result
getAxis self = liftDOM ((self ^. js "axis") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.bgColor Mozilla HTMLTableCellElement.bgColor documentation> 
setBgColor ::
           (MonadDOM m, ToJSString val) =>
             HTMLTableCellElement -> Maybe val -> m ()
setBgColor self val = liftDOM (self ^. jss "bgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.bgColor Mozilla HTMLTableCellElement.bgColor documentation> 
getBgColor ::
           (MonadDOM m, FromJSString result) =>
             HTMLTableCellElement -> m (Maybe result)
getBgColor self
  = liftDOM ((self ^. js "bgColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.bgColor Mozilla HTMLTableCellElement.bgColor documentation> 
getBgColorUnsafe ::
                 (MonadDOM m, HasCallStack, FromJSString result) =>
                   HTMLTableCellElement -> m result
getBgColorUnsafe self
  = liftDOM
      (((self ^. js "bgColor") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.bgColor Mozilla HTMLTableCellElement.bgColor documentation> 
getBgColorUnchecked ::
                    (MonadDOM m, FromJSString result) =>
                      HTMLTableCellElement -> m result
getBgColorUnchecked self
  = liftDOM ((self ^. js "bgColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.ch Mozilla HTMLTableCellElement.ch documentation> 
setCh ::
      (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setCh self val = liftDOM (self ^. jss "ch" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.ch Mozilla HTMLTableCellElement.ch documentation> 
getCh ::
      (MonadDOM m, FromJSString result) =>
        HTMLTableCellElement -> m result
getCh self = liftDOM ((self ^. js "ch") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.chOff Mozilla HTMLTableCellElement.chOff documentation> 
setChOff ::
         (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setChOff self val = liftDOM (self ^. jss "chOff" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.chOff Mozilla HTMLTableCellElement.chOff documentation> 
getChOff ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableCellElement -> m result
getChOff self
  = liftDOM ((self ^. js "chOff") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.colSpan Mozilla HTMLTableCellElement.colSpan documentation> 
setColSpan :: (MonadDOM m) => HTMLTableCellElement -> Word -> m ()
setColSpan self val = liftDOM (self ^. jss "colSpan" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.colSpan Mozilla HTMLTableCellElement.colSpan documentation> 
getColSpan :: (MonadDOM m) => HTMLTableCellElement -> m Word
getColSpan self
  = liftDOM (round <$> ((self ^. js "colSpan") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.rowSpan Mozilla HTMLTableCellElement.rowSpan documentation> 
setRowSpan :: (MonadDOM m) => HTMLTableCellElement -> Word -> m ()
setRowSpan self val = liftDOM (self ^. jss "rowSpan" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.rowSpan Mozilla HTMLTableCellElement.rowSpan documentation> 
getRowSpan :: (MonadDOM m) => HTMLTableCellElement -> m Word
getRowSpan self
  = liftDOM (round <$> ((self ^. js "rowSpan") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.headers Mozilla HTMLTableCellElement.headers documentation> 
setHeaders ::
           (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setHeaders self val = liftDOM (self ^. jss "headers" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.headers Mozilla HTMLTableCellElement.headers documentation> 
getHeaders ::
           (MonadDOM m, FromJSString result) =>
             HTMLTableCellElement -> m result
getHeaders self
  = liftDOM ((self ^. js "headers") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.height Mozilla HTMLTableCellElement.height documentation> 
setHeight ::
          (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.height Mozilla HTMLTableCellElement.height documentation> 
getHeight ::
          (MonadDOM m, FromJSString result) =>
            HTMLTableCellElement -> m result
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.noWrap Mozilla HTMLTableCellElement.noWrap documentation> 
setNoWrap :: (MonadDOM m) => HTMLTableCellElement -> Bool -> m ()
setNoWrap self val = liftDOM (self ^. jss "noWrap" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.noWrap Mozilla HTMLTableCellElement.noWrap documentation> 
getNoWrap :: (MonadDOM m) => HTMLTableCellElement -> m Bool
getNoWrap self = liftDOM ((self ^. js "noWrap") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.vAlign Mozilla HTMLTableCellElement.vAlign documentation> 
setVAlign ::
          (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setVAlign self val = liftDOM (self ^. jss "vAlign" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.vAlign Mozilla HTMLTableCellElement.vAlign documentation> 
getVAlign ::
          (MonadDOM m, FromJSString result) =>
            HTMLTableCellElement -> m result
getVAlign self
  = liftDOM ((self ^. js "vAlign") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.width Mozilla HTMLTableCellElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.width Mozilla HTMLTableCellElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableCellElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.abbr Mozilla HTMLTableCellElement.abbr documentation> 
setAbbr ::
        (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setAbbr self val = liftDOM (self ^. jss "abbr" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.abbr Mozilla HTMLTableCellElement.abbr documentation> 
getAbbr ::
        (MonadDOM m, FromJSString result) =>
          HTMLTableCellElement -> m result
getAbbr self = liftDOM ((self ^. js "abbr") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.scope Mozilla HTMLTableCellElement.scope documentation> 
setScope ::
         (MonadDOM m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setScope self val = liftDOM (self ^. jss "scope" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.scope Mozilla HTMLTableCellElement.scope documentation> 
getScope ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableCellElement -> m result
getScope self
  = liftDOM ((self ^. js "scope") >>= fromJSValUnchecked)
