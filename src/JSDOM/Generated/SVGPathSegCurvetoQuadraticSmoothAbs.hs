{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegCurvetoQuadraticSmoothAbs
       (setX, getX, setY, getY, SVGPathSegCurvetoQuadraticSmoothAbs(..),
        gTypeSVGPathSegCurvetoQuadraticSmoothAbs)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.x Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.x documentation> 
setX ::
     (MonadDOM m) =>
       SVGPathSegCurvetoQuadraticSmoothAbs -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.x Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.x documentation> 
getX ::
     (MonadDOM m) => SVGPathSegCurvetoQuadraticSmoothAbs -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.y Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.y documentation> 
setY ::
     (MonadDOM m) =>
       SVGPathSegCurvetoQuadraticSmoothAbs -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.y Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.y documentation> 
getY ::
     (MonadDOM m) => SVGPathSegCurvetoQuadraticSmoothAbs -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))
