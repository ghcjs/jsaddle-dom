{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGLineElement
       (getX1, getY1, getX2, getY2, SVGLineElement, castToSVGLineElement,
        gTypeSVGLineElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x1 Mozilla SVGLineElement.x1 documentation> 
getX1 ::
      (MonadDOM m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getX1 self = liftDOM ((self ^. js "x1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y1 Mozilla SVGLineElement.y1 documentation> 
getY1 ::
      (MonadDOM m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getY1 self = liftDOM ((self ^. js "y1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x2 Mozilla SVGLineElement.x2 documentation> 
getX2 ::
      (MonadDOM m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getX2 self = liftDOM ((self ^. js "x2") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y2 Mozilla SVGLineElement.y2 documentation> 
getY2 ::
      (MonadDOM m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getY2 self = liftDOM ((self ^. js "y2") >>= fromJSVal)