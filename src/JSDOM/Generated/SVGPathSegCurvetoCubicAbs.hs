{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegCurvetoCubicAbs
       (setX, getX, setY, getY, setX1, getX1, setY1, getY1, setX2, getX2,
        setY2, getY2, SVGPathSegCurvetoCubicAbs(..),
        gTypeSVGPathSegCurvetoCubicAbs)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
setX :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
getX :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
setY :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
getY :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
setX1 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX1 self val = liftDOM (self ^. jss "x1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
getX1 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> m Float
getX1 self
  = liftDOM (realToFrac <$> ((self ^. js "x1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
setY1 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY1 self val = liftDOM (self ^. jss "y1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
getY1 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> m Float
getY1 self
  = liftDOM (realToFrac <$> ((self ^. js "y1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
setX2 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX2 self val = liftDOM (self ^. jss "x2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
getX2 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> m Float
getX2 self
  = liftDOM (realToFrac <$> ((self ^. js "x2") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
setY2 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY2 self val = liftDOM (self ^. jss "y2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
getY2 :: (MonadDOM m) => SVGPathSegCurvetoCubicAbs -> m Float
getY2 self
  = liftDOM (realToFrac <$> ((self ^. js "y2") >>= valToNumber))
