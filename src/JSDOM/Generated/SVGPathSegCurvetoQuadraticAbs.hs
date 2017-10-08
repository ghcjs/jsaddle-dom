{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegCurvetoQuadraticAbs
       (setX, getX, setY, getY, setX1, getX1, setY1, getY1,
        SVGPathSegCurvetoQuadraticAbs(..),
        gTypeSVGPathSegCurvetoQuadraticAbs)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
setX ::
     (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
getX :: (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
setY ::
     (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
getY :: (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
setX1 ::
      (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setX1 self val = liftDOM (self ^. jss "x1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
getX1 :: (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getX1 self
  = liftDOM (realToFrac <$> ((self ^. js "x1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
setY1 ::
      (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setY1 self val = liftDOM (self ^. jss "y1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
getY1 :: (MonadDOM m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getY1 self
  = liftDOM (realToFrac <$> ((self ^. js "y1") >>= valToNumber))
