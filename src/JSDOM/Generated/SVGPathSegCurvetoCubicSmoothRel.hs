{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.SVGPathSegCurvetoCubicSmoothRel
       (setX, getX, setY, getY, setX2, getX2, setY2, getY2,
        SVGPathSegCurvetoCubicSmoothRel,
        castToSVGPathSegCurvetoCubicSmoothRel,
        gTypeSVGPathSegCurvetoCubicSmoothRel)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x Mozilla SVGPathSegCurvetoCubicSmoothRel.x documentation> 
setX ::
     (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x Mozilla SVGPathSegCurvetoCubicSmoothRel.x documentation> 
getX :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y Mozilla SVGPathSegCurvetoCubicSmoothRel.y documentation> 
setY ::
     (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y Mozilla SVGPathSegCurvetoCubicSmoothRel.y documentation> 
getY :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x2 Mozilla SVGPathSegCurvetoCubicSmoothRel.x2 documentation> 
setX2 ::
      (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setX2 self val = liftDOM (self ^. jss "x2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x2 Mozilla SVGPathSegCurvetoCubicSmoothRel.x2 documentation> 
getX2 :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getX2 self
  = liftDOM (realToFrac <$> ((self ^. js "x2") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y2 Mozilla SVGPathSegCurvetoCubicSmoothRel.y2 documentation> 
setY2 ::
      (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setY2 self val = liftDOM (self ^. jss "y2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y2 Mozilla SVGPathSegCurvetoCubicSmoothRel.y2 documentation> 
getY2 :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getY2 self
  = liftDOM (realToFrac <$> ((self ^. js "y2") >>= valToNumber))
