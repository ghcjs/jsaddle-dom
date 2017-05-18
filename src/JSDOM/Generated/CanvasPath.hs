{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CanvasPath
       (closePath, moveTo, lineTo, quadraticCurveTo, bezierCurveTo, arcTo,
        rect, arc, ellipse, CanvasPath(..), gTypeCanvasPath, IsCanvasPath,
        toCanvasPath)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.closePath Mozilla CanvasPath.closePath documentation> 
closePath :: (MonadDOM m, IsCanvasPath self) => self -> m ()
closePath self
  = liftDOM (void ((toCanvasPath self) ^. jsf "closePath" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.moveTo Mozilla CanvasPath.moveTo documentation> 
moveTo ::
       (MonadDOM m, IsCanvasPath self) => self -> Double -> Double -> m ()
moveTo self x y
  = liftDOM
      (void ((toCanvasPath self) ^. jsf "moveTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.lineTo Mozilla CanvasPath.lineTo documentation> 
lineTo ::
       (MonadDOM m, IsCanvasPath self) => self -> Double -> Double -> m ()
lineTo self x y
  = liftDOM
      (void ((toCanvasPath self) ^. jsf "lineTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.quadraticCurveTo Mozilla CanvasPath.quadraticCurveTo documentation> 
quadraticCurveTo ::
                 (MonadDOM m, IsCanvasPath self) =>
                   self -> Double -> Double -> Double -> Double -> m ()
quadraticCurveTo self cpx cpy x y
  = liftDOM
      (void
         ((toCanvasPath self) ^. jsf "quadraticCurveTo"
            [toJSVal cpx, toJSVal cpy, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.bezierCurveTo Mozilla CanvasPath.bezierCurveTo documentation> 
bezierCurveTo ::
              (MonadDOM m, IsCanvasPath self) =>
                self ->
                  Double -> Double -> Double -> Double -> Double -> Double -> m ()
bezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftDOM
      (void
         ((toCanvasPath self) ^. jsf "bezierCurveTo"
            [toJSVal cp1x, toJSVal cp1y, toJSVal cp2x, toJSVal cp2y, toJSVal x,
             toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.arcTo Mozilla CanvasPath.arcTo documentation> 
arcTo ::
      (MonadDOM m, IsCanvasPath self) =>
        self -> Double -> Double -> Double -> Double -> Double -> m ()
arcTo self x1 y1 x2 y2 radius
  = liftDOM
      (void
         ((toCanvasPath self) ^. jsf "arcTo"
            [toJSVal x1, toJSVal y1, toJSVal x2, toJSVal y2, toJSVal radius]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.rect Mozilla CanvasPath.rect documentation> 
rect ::
     (MonadDOM m, IsCanvasPath self) =>
       self -> Double -> Double -> Double -> Double -> m ()
rect self x y w h
  = liftDOM
      (void
         ((toCanvasPath self) ^. jsf "rect"
            [toJSVal x, toJSVal y, toJSVal w, toJSVal h]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.arc Mozilla CanvasPath.arc documentation> 
arc ::
    (MonadDOM m, IsCanvasPath self) =>
      self ->
        Double -> Double -> Double -> Double -> Double -> Bool -> m ()
arc self x y radius startAngle endAngle anticlockwise
  = liftDOM
      (void
         ((toCanvasPath self) ^. jsf "arc"
            [toJSVal x, toJSVal y, toJSVal radius, toJSVal startAngle,
             toJSVal endAngle, toJSVal anticlockwise]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.ellipse Mozilla CanvasPath.ellipse documentation> 
ellipse ::
        (MonadDOM m, IsCanvasPath self) =>
          self ->
            Double ->
              Double ->
                Double -> Double -> Double -> Double -> Double -> Bool -> m ()
ellipse self x y radiusX radiusY rotation startAngle endAngle
  anticlockwise
  = liftDOM
      (void
         ((toCanvasPath self) ^. jsf "ellipse"
            [toJSVal x, toJSVal y, toJSVal radiusX, toJSVal radiusY,
             toJSVal rotation, toJSVal startAngle, toJSVal endAngle,
             toJSVal anticlockwise]))
