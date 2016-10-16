{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGZoomAndPan
       (pattern SVG_ZOOMANDPAN_UNKNOWN, pattern SVG_ZOOMANDPAN_DISABLE,
        pattern SVG_ZOOMANDPAN_MAGNIFY, setZoomAndPan, getZoomAndPan,
        SVGZoomAndPan(..), gTypeSVGZoomAndPan)
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
pattern SVG_ZOOMANDPAN_UNKNOWN = 0
pattern SVG_ZOOMANDPAN_DISABLE = 1
pattern SVG_ZOOMANDPAN_MAGNIFY = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
setZoomAndPan :: (MonadDOM m) => SVGZoomAndPan -> Word -> m ()
setZoomAndPan self val
  = liftDOM (self ^. jss "zoomAndPan" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
getZoomAndPan :: (MonadDOM m) => SVGZoomAndPan -> m Word
getZoomAndPan self
  = liftDOM (round <$> ((self ^. js "zoomAndPan") >>= valToNumber))
