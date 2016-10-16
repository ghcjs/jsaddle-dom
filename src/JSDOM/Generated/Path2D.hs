{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Path2D
       (newPath2D, newPath2D', newPath2D'', addPath, closePath, moveTo,
        lineTo, quadraticCurveTo, bezierCurveTo, arcTo, rect, arc,
        Path2D(..), gTypePath2D)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D :: (MonadDOM m) => m Path2D
newPath2D = liftDOM (Path2D <$> new (jsg "Path2D") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D' :: (MonadDOM m) => Maybe Path2D -> m Path2D
newPath2D' path
  = liftDOM (Path2D <$> new (jsg "Path2D") [toJSVal path])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D'' :: (MonadDOM m, ToJSString text) => text -> m Path2D
newPath2D'' text
  = liftDOM (Path2D <$> new (jsg "Path2D") [toJSVal text])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
addPath ::
        (MonadDOM m) => Path2D -> Maybe Path2D -> Maybe SVGMatrix -> m ()
addPath self path transform
  = liftDOM
      (void (self ^. jsf "addPath" [toJSVal path, toJSVal transform]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.closePath Mozilla Path2D.closePath documentation> 
closePath :: (MonadDOM m) => Path2D -> m ()
closePath self = liftDOM (void (self ^. jsf "closePath" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.moveTo Mozilla Path2D.moveTo documentation> 
moveTo :: (MonadDOM m) => Path2D -> Float -> Float -> m ()
moveTo self x y
  = liftDOM (void (self ^. jsf "moveTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.lineTo Mozilla Path2D.lineTo documentation> 
lineTo :: (MonadDOM m) => Path2D -> Float -> Float -> m ()
lineTo self x y
  = liftDOM (void (self ^. jsf "lineTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.quadraticCurveTo Mozilla Path2D.quadraticCurveTo documentation> 
quadraticCurveTo ::
                 (MonadDOM m) => Path2D -> Float -> Float -> Float -> Float -> m ()
quadraticCurveTo self cpx cpy x y
  = liftDOM
      (void
         (self ^. jsf "quadraticCurveTo"
            [toJSVal cpx, toJSVal cpy, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.bezierCurveTo Mozilla Path2D.bezierCurveTo documentation> 
bezierCurveTo ::
              (MonadDOM m) =>
                Path2D ->
                  Float -> Float -> Float -> Float -> Float -> Float -> m ()
bezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftDOM
      (void
         (self ^. jsf "bezierCurveTo"
            [toJSVal cp1x, toJSVal cp1y, toJSVal cp2x, toJSVal cp2y, toJSVal x,
             toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arcTo Mozilla Path2D.arcTo documentation> 
arcTo ::
      (MonadDOM m) =>
        Path2D -> Float -> Float -> Float -> Float -> Float -> m ()
arcTo self x1 y1 x2 y2 radius
  = liftDOM
      (void
         (self ^. jsf "arcTo"
            [toJSVal x1, toJSVal y1, toJSVal x2, toJSVal y2, toJSVal radius]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.rect Mozilla Path2D.rect documentation> 
rect ::
     (MonadDOM m) => Path2D -> Float -> Float -> Float -> Float -> m ()
rect self x y width height
  = liftDOM
      (void
         (self ^. jsf "rect"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arc Mozilla Path2D.arc documentation> 
arc ::
    (MonadDOM m) =>
      Path2D -> Float -> Float -> Float -> Float -> Float -> Bool -> m ()
arc self x y radius startAngle endAngle anticlockwise
  = liftDOM
      (void
         (self ^. jsf "arc"
            [toJSVal x, toJSVal y, toJSVal radius, toJSVal startAngle,
             toJSVal endAngle, toJSVal anticlockwise]))
