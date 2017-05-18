{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGZoomAndPan
       (pattern SVG_ZOOMANDPAN_UNKNOWN, pattern SVG_ZOOMANDPAN_DISABLE,
        pattern SVG_ZOOMANDPAN_MAGNIFY, setZoomAndPan, getZoomAndPan,
        SVGZoomAndPan(..), gTypeSVGZoomAndPan, IsSVGZoomAndPan,
        toSVGZoomAndPan)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums
pattern SVG_ZOOMANDPAN_UNKNOWN = 0
pattern SVG_ZOOMANDPAN_DISABLE = 1
pattern SVG_ZOOMANDPAN_MAGNIFY = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
setZoomAndPan ::
              (MonadDOM m, IsSVGZoomAndPan self) => self -> Word -> m ()
setZoomAndPan self val
  = liftDOM
      ((toSVGZoomAndPan self) ^. jss "zoomAndPan" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
getZoomAndPan ::
              (MonadDOM m, IsSVGZoomAndPan self) => self -> m Word
getZoomAndPan self
  = liftDOM
      (round <$>
         (((toSVGZoomAndPan self) ^. js "zoomAndPan") >>= valToNumber))
