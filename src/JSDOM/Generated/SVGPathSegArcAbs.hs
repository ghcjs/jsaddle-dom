{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegArcAbs
       (setX, getX, setY, getY, setR1, getR1, setR2, getR2, setAngle,
        getAngle, setLargeArcFlag, getLargeArcFlag, setSweepFlag,
        getSweepFlag, SVGPathSegArcAbs, castToSVGPathSegArcAbs,
        gTypeSVGPathSegArcAbs)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.x Mozilla SVGPathSegArcAbs.x documentation> 
setX :: (MonadDOM m) => SVGPathSegArcAbs -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.x Mozilla SVGPathSegArcAbs.x documentation> 
getX :: (MonadDOM m) => SVGPathSegArcAbs -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.y Mozilla SVGPathSegArcAbs.y documentation> 
setY :: (MonadDOM m) => SVGPathSegArcAbs -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.y Mozilla SVGPathSegArcAbs.y documentation> 
getY :: (MonadDOM m) => SVGPathSegArcAbs -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r1 Mozilla SVGPathSegArcAbs.r1 documentation> 
setR1 :: (MonadDOM m) => SVGPathSegArcAbs -> Float -> m ()
setR1 self val = liftDOM (self ^. jss "r1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r1 Mozilla SVGPathSegArcAbs.r1 documentation> 
getR1 :: (MonadDOM m) => SVGPathSegArcAbs -> m Float
getR1 self
  = liftDOM (realToFrac <$> ((self ^. js "r1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r2 Mozilla SVGPathSegArcAbs.r2 documentation> 
setR2 :: (MonadDOM m) => SVGPathSegArcAbs -> Float -> m ()
setR2 self val = liftDOM (self ^. jss "r2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r2 Mozilla SVGPathSegArcAbs.r2 documentation> 
getR2 :: (MonadDOM m) => SVGPathSegArcAbs -> m Float
getR2 self
  = liftDOM (realToFrac <$> ((self ^. js "r2") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.angle Mozilla SVGPathSegArcAbs.angle documentation> 
setAngle :: (MonadDOM m) => SVGPathSegArcAbs -> Float -> m ()
setAngle self val = liftDOM (self ^. jss "angle" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.angle Mozilla SVGPathSegArcAbs.angle documentation> 
getAngle :: (MonadDOM m) => SVGPathSegArcAbs -> m Float
getAngle self
  = liftDOM (realToFrac <$> ((self ^. js "angle") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.largeArcFlag Mozilla SVGPathSegArcAbs.largeArcFlag documentation> 
setLargeArcFlag :: (MonadDOM m) => SVGPathSegArcAbs -> Bool -> m ()
setLargeArcFlag self val
  = liftDOM (self ^. jss "largeArcFlag" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.largeArcFlag Mozilla SVGPathSegArcAbs.largeArcFlag documentation> 
getLargeArcFlag :: (MonadDOM m) => SVGPathSegArcAbs -> m Bool
getLargeArcFlag self
  = liftDOM ((self ^. js "largeArcFlag") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.sweepFlag Mozilla SVGPathSegArcAbs.sweepFlag documentation> 
setSweepFlag :: (MonadDOM m) => SVGPathSegArcAbs -> Bool -> m ()
setSweepFlag self val
  = liftDOM (self ^. jss "sweepFlag" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.sweepFlag Mozilla SVGPathSegArcAbs.sweepFlag documentation> 
getSweepFlag :: (MonadDOM m) => SVGPathSegArcAbs -> m Bool
getSweepFlag self
  = liftDOM ((self ^. js "sweepFlag") >>= valToBool)
