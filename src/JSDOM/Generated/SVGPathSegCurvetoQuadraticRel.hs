{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegCurvetoQuadraticRel
       (setX, getX, setY, getY, setX1, getX1, setY1, getY1,
        SVGPathSegCurvetoQuadraticRel(..),
        gTypeSVGPathSegCurvetoQuadraticRel)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
setX ::
     (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
getX :: (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
setY ::
     (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
getY :: (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
setX1 ::
      (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setX1 self val = liftDOM (self ^. jss "x1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
getX1 :: (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> m Float
getX1 self
  = liftDOM (realToFrac <$> ((self ^. js "x1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
setY1 ::
      (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setY1 self val = liftDOM (self ^. jss "y1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
getY1 :: (MonadDOM m) => SVGPathSegCurvetoQuadraticRel -> m Float
getY1 self
  = liftDOM (realToFrac <$> ((self ^. js "y1") >>= valToNumber))
