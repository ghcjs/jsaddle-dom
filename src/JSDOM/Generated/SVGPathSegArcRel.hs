{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegArcRel
       (setX, getX, setY, getY, setR1, getR1, setR2, getR2, setAngle,
        getAngle, setLargeArcFlag, getLargeArcFlag, setSweepFlag,
        getSweepFlag, SVGPathSegArcRel(..), gTypeSVGPathSegArcRel)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.x Mozilla SVGPathSegArcRel.x documentation> 
setX :: (MonadDOM m) => SVGPathSegArcRel -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.x Mozilla SVGPathSegArcRel.x documentation> 
getX :: (MonadDOM m) => SVGPathSegArcRel -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.y Mozilla SVGPathSegArcRel.y documentation> 
setY :: (MonadDOM m) => SVGPathSegArcRel -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.y Mozilla SVGPathSegArcRel.y documentation> 
getY :: (MonadDOM m) => SVGPathSegArcRel -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r1 Mozilla SVGPathSegArcRel.r1 documentation> 
setR1 :: (MonadDOM m) => SVGPathSegArcRel -> Float -> m ()
setR1 self val = liftDOM (self ^. jss "r1" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r1 Mozilla SVGPathSegArcRel.r1 documentation> 
getR1 :: (MonadDOM m) => SVGPathSegArcRel -> m Float
getR1 self
  = liftDOM (realToFrac <$> ((self ^. js "r1") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r2 Mozilla SVGPathSegArcRel.r2 documentation> 
setR2 :: (MonadDOM m) => SVGPathSegArcRel -> Float -> m ()
setR2 self val = liftDOM (self ^. jss "r2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r2 Mozilla SVGPathSegArcRel.r2 documentation> 
getR2 :: (MonadDOM m) => SVGPathSegArcRel -> m Float
getR2 self
  = liftDOM (realToFrac <$> ((self ^. js "r2") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.angle Mozilla SVGPathSegArcRel.angle documentation> 
setAngle :: (MonadDOM m) => SVGPathSegArcRel -> Float -> m ()
setAngle self val = liftDOM (self ^. jss "angle" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.angle Mozilla SVGPathSegArcRel.angle documentation> 
getAngle :: (MonadDOM m) => SVGPathSegArcRel -> m Float
getAngle self
  = liftDOM (realToFrac <$> ((self ^. js "angle") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.largeArcFlag Mozilla SVGPathSegArcRel.largeArcFlag documentation> 
setLargeArcFlag :: (MonadDOM m) => SVGPathSegArcRel -> Bool -> m ()
setLargeArcFlag self val
  = liftDOM (self ^. jss "largeArcFlag" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.largeArcFlag Mozilla SVGPathSegArcRel.largeArcFlag documentation> 
getLargeArcFlag :: (MonadDOM m) => SVGPathSegArcRel -> m Bool
getLargeArcFlag self
  = liftDOM ((self ^. js "largeArcFlag") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.sweepFlag Mozilla SVGPathSegArcRel.sweepFlag documentation> 
setSweepFlag :: (MonadDOM m) => SVGPathSegArcRel -> Bool -> m ()
setSweepFlag self val
  = liftDOM (self ^. jss "sweepFlag" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.sweepFlag Mozilla SVGPathSegArcRel.sweepFlag documentation> 
getSweepFlag :: (MonadDOM m) => SVGPathSegArcRel -> m Bool
getSweepFlag self
  = liftDOM ((self ^. js "sweepFlag") >>= valToBool)
