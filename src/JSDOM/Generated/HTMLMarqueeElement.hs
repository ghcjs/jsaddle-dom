{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLMarqueeElement
       (start, stop, setBehavior, getBehavior, setBgColor, getBgColor,
        setDirection, getDirection, setHeight, getHeight, setHspace,
        getHspace, setLoop, getLoop, setScrollAmount, getScrollAmount,
        setScrollDelay, getScrollDelay, setTrueSpeed, getTrueSpeed,
        setVspace, getVspace, setWidth, getWidth, HTMLMarqueeElement(..),
        gTypeHTMLMarqueeElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.start Mozilla HTMLMarqueeElement.start documentation> 
start :: (MonadDOM m) => HTMLMarqueeElement -> m ()
start self = liftDOM (void (self ^. jsf "start" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.stop Mozilla HTMLMarqueeElement.stop documentation> 
stop :: (MonadDOM m) => HTMLMarqueeElement -> m ()
stop self = liftDOM (void (self ^. jsf "stop" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
setBehavior ::
            (MonadDOM m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setBehavior self val
  = liftDOM (self ^. jss "behavior" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
getBehavior ::
            (MonadDOM m, FromJSString result) => HTMLMarqueeElement -> m result
getBehavior self
  = liftDOM ((self ^. js "behavior") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
setBgColor ::
           (MonadDOM m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setBgColor self val = liftDOM (self ^. jss "bgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
getBgColor ::
           (MonadDOM m, FromJSString result) => HTMLMarqueeElement -> m result
getBgColor self
  = liftDOM ((self ^. js "bgColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
setDirection ::
             (MonadDOM m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setDirection self val
  = liftDOM (self ^. jss "direction" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
getDirection ::
             (MonadDOM m, FromJSString result) => HTMLMarqueeElement -> m result
getDirection self
  = liftDOM ((self ^. js "direction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
setHeight ::
          (MonadDOM m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
getHeight ::
          (MonadDOM m, FromJSString result) => HTMLMarqueeElement -> m result
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
setHspace :: (MonadDOM m) => HTMLMarqueeElement -> Word -> m ()
setHspace self val = liftDOM (self ^. jss "hspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
getHspace :: (MonadDOM m) => HTMLMarqueeElement -> m Word
getHspace self
  = liftDOM (round <$> ((self ^. js "hspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
setLoop :: (MonadDOM m) => HTMLMarqueeElement -> Int -> m ()
setLoop self val = liftDOM (self ^. jss "loop" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
getLoop :: (MonadDOM m) => HTMLMarqueeElement -> m Int
getLoop self
  = liftDOM (round <$> ((self ^. js "loop") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
setScrollAmount ::
                (MonadDOM m) => HTMLMarqueeElement -> Int -> m ()
setScrollAmount self val
  = liftDOM (self ^. jss "scrollAmount" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
getScrollAmount :: (MonadDOM m) => HTMLMarqueeElement -> m Int
getScrollAmount self
  = liftDOM (round <$> ((self ^. js "scrollAmount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
setScrollDelay :: (MonadDOM m) => HTMLMarqueeElement -> Int -> m ()
setScrollDelay self val
  = liftDOM (self ^. jss "scrollDelay" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
getScrollDelay :: (MonadDOM m) => HTMLMarqueeElement -> m Int
getScrollDelay self
  = liftDOM (round <$> ((self ^. js "scrollDelay") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
setTrueSpeed :: (MonadDOM m) => HTMLMarqueeElement -> Bool -> m ()
setTrueSpeed self val
  = liftDOM (self ^. jss "trueSpeed" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
getTrueSpeed :: (MonadDOM m) => HTMLMarqueeElement -> m Bool
getTrueSpeed self
  = liftDOM ((self ^. js "trueSpeed") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
setVspace :: (MonadDOM m) => HTMLMarqueeElement -> Word -> m ()
setVspace self val = liftDOM (self ^. jss "vspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
getVspace :: (MonadDOM m) => HTMLMarqueeElement -> m Word
getVspace self
  = liftDOM (round <$> ((self ^. js "vspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) => HTMLMarqueeElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)
