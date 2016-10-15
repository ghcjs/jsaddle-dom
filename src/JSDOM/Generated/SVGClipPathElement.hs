{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGClipPathElement
       (getClipPathUnits, getClipPathUnitsUnchecked,
        SVGClipPathElement(..), gTypeSVGClipPathElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement.clipPathUnits Mozilla SVGClipPathElement.clipPathUnits documentation> 
getClipPathUnits ::
                 (MonadDOM m) =>
                   SVGClipPathElement -> m (Maybe SVGAnimatedEnumeration)
getClipPathUnits self
  = liftDOM ((self ^. js "clipPathUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement.clipPathUnits Mozilla SVGClipPathElement.clipPathUnits documentation> 
getClipPathUnitsUnchecked ::
                          (MonadDOM m) => SVGClipPathElement -> m SVGAnimatedEnumeration
getClipPathUnitsUnchecked self
  = liftDOM ((self ^. js "clipPathUnits") >>= fromJSValUnchecked)
