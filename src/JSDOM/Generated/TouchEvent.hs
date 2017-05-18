{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TouchEvent
       (newTouchEvent, initTouchEvent, getTouches, getTargetTouches,
        getChangedTouches, getCtrlKey, getShiftKey, getAltKey, getMetaKey,
        TouchEvent(..), gTypeTouchEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent Mozilla TouchEvent documentation> 
newTouchEvent ::
              (MonadDOM m, ToJSString type') =>
                type' -> Maybe TouchEventInit -> m TouchEvent
newTouchEvent type' eventInitDict
  = liftDOM
      (TouchEvent <$>
         new (jsg "TouchEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.initTouchEvent Mozilla TouchEvent.initTouchEvent documentation> 
initTouchEvent ::
               (MonadDOM m, ToJSString type') =>
                 TouchEvent ->
                   Maybe TouchList ->
                     Maybe TouchList ->
                       Maybe TouchList ->
                         Maybe type' ->
                           Maybe Window ->
                             Maybe Int ->
                               Maybe Int ->
                                 Maybe Int -> Maybe Int -> Bool -> Bool -> Bool -> Bool -> m ()
initTouchEvent self touches targetTouches changedTouches type' view
  screenX screenY clientX clientY ctrlKey altKey shiftKey metaKey
  = liftDOM
      (void
         (self ^. jsf "initTouchEvent"
            [toJSVal touches, toJSVal targetTouches, toJSVal changedTouches,
             toJSVal type', toJSVal view, toJSVal screenX, toJSVal screenY,
             toJSVal clientX, toJSVal clientY, toJSVal ctrlKey, toJSVal altKey,
             toJSVal shiftKey, toJSVal metaKey]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.touches Mozilla TouchEvent.touches documentation> 
getTouches :: (MonadDOM m) => TouchEvent -> m TouchList
getTouches self
  = liftDOM ((self ^. js "touches") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.targetTouches Mozilla TouchEvent.targetTouches documentation> 
getTargetTouches :: (MonadDOM m) => TouchEvent -> m TouchList
getTargetTouches self
  = liftDOM ((self ^. js "targetTouches") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.changedTouches Mozilla TouchEvent.changedTouches documentation> 
getChangedTouches :: (MonadDOM m) => TouchEvent -> m TouchList
getChangedTouches self
  = liftDOM ((self ^. js "changedTouches") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.ctrlKey Mozilla TouchEvent.ctrlKey documentation> 
getCtrlKey :: (MonadDOM m) => TouchEvent -> m Bool
getCtrlKey self = liftDOM ((self ^. js "ctrlKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.shiftKey Mozilla TouchEvent.shiftKey documentation> 
getShiftKey :: (MonadDOM m) => TouchEvent -> m Bool
getShiftKey self = liftDOM ((self ^. js "shiftKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.altKey Mozilla TouchEvent.altKey documentation> 
getAltKey :: (MonadDOM m) => TouchEvent -> m Bool
getAltKey self = liftDOM ((self ^. js "altKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.metaKey Mozilla TouchEvent.metaKey documentation> 
getMetaKey :: (MonadDOM m) => TouchEvent -> m Bool
getMetaKey self = liftDOM ((self ^. js "metaKey") >>= valToBool)
