{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSeg
       (pattern PATHSEG_UNKNOWN, pattern PATHSEG_CLOSEPATH,
        pattern PATHSEG_MOVETO_ABS, pattern PATHSEG_MOVETO_REL,
        pattern PATHSEG_LINETO_ABS, pattern PATHSEG_LINETO_REL,
        pattern PATHSEG_CURVETO_CUBIC_ABS,
        pattern PATHSEG_CURVETO_CUBIC_REL,
        pattern PATHSEG_CURVETO_QUADRATIC_ABS,
        pattern PATHSEG_CURVETO_QUADRATIC_REL, pattern PATHSEG_ARC_ABS,
        pattern PATHSEG_ARC_REL, pattern PATHSEG_LINETO_HORIZONTAL_ABS,
        pattern PATHSEG_LINETO_HORIZONTAL_REL,
        pattern PATHSEG_LINETO_VERTICAL_ABS,
        pattern PATHSEG_LINETO_VERTICAL_REL,
        pattern PATHSEG_CURVETO_CUBIC_SMOOTH_ABS,
        pattern PATHSEG_CURVETO_CUBIC_SMOOTH_REL,
        pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS,
        pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL, getPathSegType,
        getPathSegTypeAsLetter, SVGPathSeg(..), gTypeSVGPathSeg,
        IsSVGPathSeg, toSVGPathSeg)
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
pattern PATHSEG_UNKNOWN = 0
pattern PATHSEG_CLOSEPATH = 1
pattern PATHSEG_MOVETO_ABS = 2
pattern PATHSEG_MOVETO_REL = 3
pattern PATHSEG_LINETO_ABS = 4
pattern PATHSEG_LINETO_REL = 5
pattern PATHSEG_CURVETO_CUBIC_ABS = 6
pattern PATHSEG_CURVETO_CUBIC_REL = 7
pattern PATHSEG_CURVETO_QUADRATIC_ABS = 8
pattern PATHSEG_CURVETO_QUADRATIC_REL = 9
pattern PATHSEG_ARC_ABS = 10
pattern PATHSEG_ARC_REL = 11
pattern PATHSEG_LINETO_HORIZONTAL_ABS = 12
pattern PATHSEG_LINETO_HORIZONTAL_REL = 13
pattern PATHSEG_LINETO_VERTICAL_ABS = 14
pattern PATHSEG_LINETO_VERTICAL_REL = 15
pattern PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16
pattern PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17
pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18
pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSeg.pathSegType Mozilla SVGPathSeg.pathSegType documentation> 
getPathSegType :: (MonadDOM m, IsSVGPathSeg self) => self -> m Word
getPathSegType self
  = liftDOM
      (round <$>
         (((toSVGPathSeg self) ^. js "pathSegType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSeg.pathSegTypeAsLetter Mozilla SVGPathSeg.pathSegTypeAsLetter documentation> 
getPathSegTypeAsLetter ::
                       (MonadDOM m, IsSVGPathSeg self, FromJSString result) =>
                         self -> m result
getPathSegTypeAsLetter self
  = liftDOM
      (((toSVGPathSeg self) ^. js "pathSegTypeAsLetter") >>=
         fromJSValUnchecked)
