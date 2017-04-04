{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WheelEvent
       (newWheelEvent, initWebKitWheelEvent, pattern DOM_DELTA_PIXEL,
        pattern DOM_DELTA_LINE, pattern DOM_DELTA_PAGE, getDeltaX,
        getDeltaY, getDeltaZ, getDeltaMode, getWheelDeltaX, getWheelDeltaY,
        getWheelDelta, getWebkitDirectionInvertedFromDevice,
        WheelEvent(..), gTypeWheelEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent Mozilla WheelEvent documentation> 
newWheelEvent ::
              (MonadDOM m, ToJSString type') =>
                type' -> Maybe WheelEventInit -> m WheelEvent
newWheelEvent type' eventInitDict
  = liftDOM
      (WheelEvent <$>
         new (jsg "WheelEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.initWebKitWheelEvent Mozilla WheelEvent.initWebKitWheelEvent documentation> 
initWebKitWheelEvent ::
                     (MonadDOM m) =>
                       WheelEvent ->
                         Maybe Int ->
                           Maybe Int ->
                             Maybe Window ->
                               Maybe Int ->
                                 Maybe Int ->
                                   Maybe Int -> Maybe Int -> Bool -> Bool -> Bool -> Bool -> m ()
initWebKitWheelEvent self wheelDeltaX wheelDeltaY view screenX
  screenY clientX clientY ctrlKey altKey shiftKey metaKey
  = liftDOM
      (void
         (self ^. jsf "initWebKitWheelEvent"
            [toJSVal wheelDeltaX, toJSVal wheelDeltaY, toJSVal view,
             toJSVal screenX, toJSVal screenY, toJSVal clientX, toJSVal clientY,
             toJSVal ctrlKey, toJSVal altKey, toJSVal shiftKey,
             toJSVal metaKey]))
pattern DOM_DELTA_PIXEL = 0
pattern DOM_DELTA_LINE = 1
pattern DOM_DELTA_PAGE = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaX Mozilla WheelEvent.deltaX documentation> 
getDeltaX :: (MonadDOM m) => WheelEvent -> m Double
getDeltaX self = liftDOM ((self ^. js "deltaX") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaY Mozilla WheelEvent.deltaY documentation> 
getDeltaY :: (MonadDOM m) => WheelEvent -> m Double
getDeltaY self = liftDOM ((self ^. js "deltaY") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaZ Mozilla WheelEvent.deltaZ documentation> 
getDeltaZ :: (MonadDOM m) => WheelEvent -> m Double
getDeltaZ self = liftDOM ((self ^. js "deltaZ") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaMode Mozilla WheelEvent.deltaMode documentation> 
getDeltaMode :: (MonadDOM m) => WheelEvent -> m Word
getDeltaMode self
  = liftDOM (round <$> ((self ^. js "deltaMode") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDeltaX Mozilla WheelEvent.wheelDeltaX documentation> 
getWheelDeltaX :: (MonadDOM m) => WheelEvent -> m Int
getWheelDeltaX self
  = liftDOM (round <$> ((self ^. js "wheelDeltaX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDeltaY Mozilla WheelEvent.wheelDeltaY documentation> 
getWheelDeltaY :: (MonadDOM m) => WheelEvent -> m Int
getWheelDeltaY self
  = liftDOM (round <$> ((self ^. js "wheelDeltaY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDelta Mozilla WheelEvent.wheelDelta documentation> 
getWheelDelta :: (MonadDOM m) => WheelEvent -> m Int
getWheelDelta self
  = liftDOM (round <$> ((self ^. js "wheelDelta") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.webkitDirectionInvertedFromDevice Mozilla WheelEvent.webkitDirectionInvertedFromDevice documentation> 
getWebkitDirectionInvertedFromDevice ::
                                     (MonadDOM m) => WheelEvent -> m Bool
getWebkitDirectionInvertedFromDevice self
  = liftDOM
      ((self ^. js "webkitDirectionInvertedFromDevice") >>= valToBool)
