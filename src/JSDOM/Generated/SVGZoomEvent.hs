{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGZoomEvent
       (getZoomRectScreen, getZoomRectScreenUnchecked, getPreviousScale,
        getPreviousTranslate, getPreviousTranslateUnchecked, getNewScale,
        getNewTranslate, getNewTranslateUnchecked, SVGZoomEvent(..),
        gTypeSVGZoomEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
getZoomRectScreen ::
                  (MonadDOM m) => SVGZoomEvent -> m (Maybe SVGRect)
getZoomRectScreen self
  = liftDOM ((self ^. js "zoomRectScreen") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
getZoomRectScreenUnchecked ::
                           (MonadDOM m) => SVGZoomEvent -> m SVGRect
getZoomRectScreenUnchecked self
  = liftDOM ((self ^. js "zoomRectScreen") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousScale Mozilla SVGZoomEvent.previousScale documentation> 
getPreviousScale :: (MonadDOM m) => SVGZoomEvent -> m Float
getPreviousScale self
  = liftDOM
      (realToFrac <$> ((self ^. js "previousScale") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
getPreviousTranslate ::
                     (MonadDOM m) => SVGZoomEvent -> m (Maybe SVGPoint)
getPreviousTranslate self
  = liftDOM ((self ^. js "previousTranslate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
getPreviousTranslateUnchecked ::
                              (MonadDOM m) => SVGZoomEvent -> m SVGPoint
getPreviousTranslateUnchecked self
  = liftDOM ((self ^. js "previousTranslate") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newScale Mozilla SVGZoomEvent.newScale documentation> 
getNewScale :: (MonadDOM m) => SVGZoomEvent -> m Float
getNewScale self
  = liftDOM
      (realToFrac <$> ((self ^. js "newScale") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
getNewTranslate ::
                (MonadDOM m) => SVGZoomEvent -> m (Maybe SVGPoint)
getNewTranslate self
  = liftDOM ((self ^. js "newTranslate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
getNewTranslateUnchecked ::
                         (MonadDOM m) => SVGZoomEvent -> m SVGPoint
getNewTranslateUnchecked self
  = liftDOM ((self ^. js "newTranslate") >>= fromJSValUnchecked)
