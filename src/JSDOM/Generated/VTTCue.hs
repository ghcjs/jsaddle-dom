{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.VTTCue
       (newVTTCue, getCueAsHTML, setVertical, getVertical, setSnapToLines,
        getSnapToLines, setLine, getLine, setPosition, getPosition,
        setSize, getSize, setAlign, getAlign, setText, getText,
        setRegionId, getRegionId, VTTCue, castToVTTCue, gTypeVTTCue)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation> 
newVTTCue ::
          (MonadDOM m, ToJSString text) =>
            Double -> Double -> text -> m VTTCue
newVTTCue startTime endTime text
  = liftDOM
      (VTTCue <$>
         new (jsg "VTTCue")
           [toJSVal startTime, toJSVal endTime, toJSVal text])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.getCueAsHTML Mozilla VTTCue.getCueAsHTML documentation> 
getCueAsHTML ::
             (MonadDOM m) => VTTCue -> m (Maybe DocumentFragment)
getCueAsHTML self
  = liftDOM ((self ^. js "getCueAsHTML") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
setVertical ::
            (MonadDOM m, ToJSString val) => VTTCue -> val -> m ()
setVertical self val
  = liftDOM (self ^. jss "vertical" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
getVertical ::
            (MonadDOM m, FromJSString result) => VTTCue -> m result
getVertical self
  = liftDOM ((self ^. js "vertical") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
setSnapToLines :: (MonadDOM m) => VTTCue -> Bool -> m ()
setSnapToLines self val
  = liftDOM (self ^. jss "snapToLines" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
getSnapToLines :: (MonadDOM m) => VTTCue -> m Bool
getSnapToLines self
  = liftDOM ((self ^. js "snapToLines") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
setLine :: (MonadDOM m) => VTTCue -> Double -> m ()
setLine self val = liftDOM (self ^. jss "line" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
getLine :: (MonadDOM m) => VTTCue -> m Double
getLine self = liftDOM ((self ^. js "line") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
setPosition :: (MonadDOM m) => VTTCue -> Double -> m ()
setPosition self val
  = liftDOM (self ^. jss "position" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
getPosition :: (MonadDOM m) => VTTCue -> m Double
getPosition self
  = liftDOM ((self ^. js "position") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
setSize :: (MonadDOM m) => VTTCue -> Double -> m ()
setSize self val = liftDOM (self ^. jss "size" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
getSize :: (MonadDOM m) => VTTCue -> m Double
getSize self = liftDOM ((self ^. js "size") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
setAlign :: (MonadDOM m, ToJSString val) => VTTCue -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
getAlign :: (MonadDOM m, FromJSString result) => VTTCue -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
setText :: (MonadDOM m, ToJSString val) => VTTCue -> val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
getText :: (MonadDOM m, FromJSString result) => VTTCue -> m result
getText self = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
setRegionId ::
            (MonadDOM m, ToJSString val) => VTTCue -> val -> m ()
setRegionId self val
  = liftDOM (self ^. jss "regionId" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
getRegionId ::
            (MonadDOM m, FromJSString result) => VTTCue -> m result
getRegionId self
  = liftDOM ((self ^. js "regionId") >>= fromJSValUnchecked)
