{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPreserveAspectRatio
       (pattern SVG_PRESERVEASPECTRATIO_UNKNOWN,
        pattern SVG_PRESERVEASPECTRATIO_NONE,
        pattern SVG_PRESERVEASPECTRATIO_XMINYMIN,
        pattern SVG_PRESERVEASPECTRATIO_XMIDYMIN,
        pattern SVG_PRESERVEASPECTRATIO_XMAXYMIN,
        pattern SVG_PRESERVEASPECTRATIO_XMINYMID,
        pattern SVG_PRESERVEASPECTRATIO_XMIDYMID,
        pattern SVG_PRESERVEASPECTRATIO_XMAXYMID,
        pattern SVG_PRESERVEASPECTRATIO_XMINYMAX,
        pattern SVG_PRESERVEASPECTRATIO_XMIDYMAX,
        pattern SVG_PRESERVEASPECTRATIO_XMAXYMAX,
        pattern SVG_MEETORSLICE_UNKNOWN, pattern SVG_MEETORSLICE_MEET,
        pattern SVG_MEETORSLICE_SLICE, setAlign, getAlign, setMeetOrSlice,
        getMeetOrSlice, SVGPreserveAspectRatio(..),
        gTypeSVGPreserveAspectRatio)
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
pattern SVG_PRESERVEASPECTRATIO_UNKNOWN = 0
pattern SVG_PRESERVEASPECTRATIO_NONE = 1
pattern SVG_PRESERVEASPECTRATIO_XMINYMIN = 2
pattern SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3
pattern SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4
pattern SVG_PRESERVEASPECTRATIO_XMINYMID = 5
pattern SVG_PRESERVEASPECTRATIO_XMIDYMID = 6
pattern SVG_PRESERVEASPECTRATIO_XMAXYMID = 7
pattern SVG_PRESERVEASPECTRATIO_XMINYMAX = 8
pattern SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9
pattern SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10
pattern SVG_MEETORSLICE_UNKNOWN = 0
pattern SVG_MEETORSLICE_MEET = 1
pattern SVG_MEETORSLICE_SLICE = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.align Mozilla SVGPreserveAspectRatio.align documentation> 
setAlign :: (MonadDOM m) => SVGPreserveAspectRatio -> Word -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.align Mozilla SVGPreserveAspectRatio.align documentation> 
getAlign :: (MonadDOM m) => SVGPreserveAspectRatio -> m Word
getAlign self
  = liftDOM (round <$> ((self ^. js "align") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.meetOrSlice Mozilla SVGPreserveAspectRatio.meetOrSlice documentation> 
setMeetOrSlice ::
               (MonadDOM m) => SVGPreserveAspectRatio -> Word -> m ()
setMeetOrSlice self val
  = liftDOM (self ^. jss "meetOrSlice" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.meetOrSlice Mozilla SVGPreserveAspectRatio.meetOrSlice documentation> 
getMeetOrSlice :: (MonadDOM m) => SVGPreserveAspectRatio -> m Word
getMeetOrSlice self
  = liftDOM (round <$> ((self ^. js "meetOrSlice") >>= valToNumber))
