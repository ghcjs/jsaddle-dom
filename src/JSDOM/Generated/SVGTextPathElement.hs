{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.SVGTextPathElement
       (pattern TEXTPATH_METHODTYPE_UNKNOWN,
        pattern TEXTPATH_METHODTYPE_ALIGN,
        pattern TEXTPATH_METHODTYPE_STRETCH,
        pattern TEXTPATH_SPACINGTYPE_UNKNOWN,
        pattern TEXTPATH_SPACINGTYPE_AUTO,
        pattern TEXTPATH_SPACINGTYPE_EXACT, getStartOffset, getMethod,
        getSpacing, SVGTextPathElement, castToSVGTextPathElement,
        gTypeSVGTextPathElement)
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
pattern TEXTPATH_METHODTYPE_UNKNOWN = 0
pattern TEXTPATH_METHODTYPE_ALIGN = 1
pattern TEXTPATH_METHODTYPE_STRETCH = 2
pattern TEXTPATH_SPACINGTYPE_UNKNOWN = 0
pattern TEXTPATH_SPACINGTYPE_AUTO = 1
pattern TEXTPATH_SPACINGTYPE_EXACT = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffset ::
               (MonadDOM m) => SVGTextPathElement -> m (Maybe SVGAnimatedLength)
getStartOffset self
  = liftDOM ((self ^. js "startOffset") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethod ::
          (MonadDOM m) =>
            SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getMethod self = liftDOM ((self ^. js "method") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacing ::
           (MonadDOM m) =>
             SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getSpacing self = liftDOM ((self ^. js "spacing") >>= fromJSVal)
