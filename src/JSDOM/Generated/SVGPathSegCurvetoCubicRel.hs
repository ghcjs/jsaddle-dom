{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegCurvetoCubicRel
       (setX, getX, setY, getY, setX1, getX1, setY1, getY1, setX2, getX2,
        setY2, getY2, SVGPathSegCurvetoCubicRel,
        castToSVGPathSegCurvetoCubicRel, gTypeSVGPathSegCurvetoCubicRel)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x Mozilla SVGPathSegCurvetoCubicRel.x documentation> 
setX :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x Mozilla SVGPathSegCurvetoCubicRel.x documentation> 
getX :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y Mozilla SVGPathSegCurvetoCubicRel.y documentation> 
setY :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y Mozilla SVGPathSegCurvetoCubicRel.y documentation> 
getY :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x1 Mozilla SVGPathSegCurvetoCubicRel.x1 documentation> 
setX1 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setX1 self val = liftDOM (self ^. jss "x1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x1 Mozilla SVGPathSegCurvetoCubicRel.x1 documentation> 
getX1 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> m Float
getX1 self
  = liftDOM (realToFrac <$> ((self ^. js "x1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y1 Mozilla SVGPathSegCurvetoCubicRel.y1 documentation> 
setY1 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setY1 self val = liftDOM (self ^. jss "y1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y1 Mozilla SVGPathSegCurvetoCubicRel.y1 documentation> 
getY1 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> m Float
getY1 self
  = liftDOM (realToFrac <$> ((self ^. js "y1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x2 Mozilla SVGPathSegCurvetoCubicRel.x2 documentation> 
setX2 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setX2 self val = liftDOM (self ^. jss "x2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x2 Mozilla SVGPathSegCurvetoCubicRel.x2 documentation> 
getX2 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> m Float
getX2 self
  = liftDOM (realToFrac <$> ((self ^. js "x2") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y2 Mozilla SVGPathSegCurvetoCubicRel.y2 documentation> 
setY2 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setY2 self val = liftDOM (self ^. jss "y2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y2 Mozilla SVGPathSegCurvetoCubicRel.y2 documentation> 
getY2 :: (MonadDOM m) => SVGPathSegCurvetoCubicRel -> m Float
getY2 self
  = liftDOM (realToFrac <$> ((self ^. js "y2") >>= valToNumber))
