{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLTableColElement
       (setAlign, getAlign, setCh, getCh, setChOff, getChOff, setSpan,
        getSpan, setVAlign, getVAlign, setWidth, getWidth,
        HTMLTableColElement(..), gTypeHTMLTableColElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.align Mozilla HTMLTableColElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLTableColElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.align Mozilla HTMLTableColElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableColElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.ch Mozilla HTMLTableColElement.ch documentation> 
setCh ::
      (MonadDOM m, ToJSString val) => HTMLTableColElement -> val -> m ()
setCh self val = liftDOM (self ^. jss "ch" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.ch Mozilla HTMLTableColElement.ch documentation> 
getCh ::
      (MonadDOM m, FromJSString result) =>
        HTMLTableColElement -> m result
getCh self = liftDOM ((self ^. js "ch") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.chOff Mozilla HTMLTableColElement.chOff documentation> 
setChOff ::
         (MonadDOM m, ToJSString val) => HTMLTableColElement -> val -> m ()
setChOff self val = liftDOM (self ^. jss "chOff" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.chOff Mozilla HTMLTableColElement.chOff documentation> 
getChOff ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableColElement -> m result
getChOff self
  = liftDOM ((self ^. js "chOff") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.span Mozilla HTMLTableColElement.span documentation> 
setSpan :: (MonadDOM m) => HTMLTableColElement -> Int -> m ()
setSpan self val = liftDOM (self ^. jss "span" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.span Mozilla HTMLTableColElement.span documentation> 
getSpan :: (MonadDOM m) => HTMLTableColElement -> m Int
getSpan self
  = liftDOM (round <$> ((self ^. js "span") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.vAlign Mozilla HTMLTableColElement.vAlign documentation> 
setVAlign ::
          (MonadDOM m, ToJSString val) => HTMLTableColElement -> val -> m ()
setVAlign self val = liftDOM (self ^. jss "vAlign" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.vAlign Mozilla HTMLTableColElement.vAlign documentation> 
getVAlign ::
          (MonadDOM m, FromJSString result) =>
            HTMLTableColElement -> m result
getVAlign self
  = liftDOM ((self ^. js "vAlign") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.width Mozilla HTMLTableColElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLTableColElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.width Mozilla HTMLTableColElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableColElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)
