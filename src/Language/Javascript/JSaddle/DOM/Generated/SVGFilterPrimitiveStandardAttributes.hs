{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGFilterPrimitiveStandardAttributes
       (getX, getY, getWidth, getHeight, getResult,
        SVGFilterPrimitiveStandardAttributes,
        castToSVGFilterPrimitiveStandardAttributes,
        gTypeSVGFilterPrimitiveStandardAttributes)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.x Mozilla SVGFilterPrimitiveStandardAttributes.x documentation> 
getX ::
     (MonadDOM m) =>
       SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.y Mozilla SVGFilterPrimitiveStandardAttributes.y documentation> 
getY ::
     (MonadDOM m) =>
       SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.width Mozilla SVGFilterPrimitiveStandardAttributes.width documentation> 
getWidth ::
         (MonadDOM m) =>
           SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.height Mozilla SVGFilterPrimitiveStandardAttributes.height documentation> 
getHeight ::
          (MonadDOM m) =>
            SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.result Mozilla SVGFilterPrimitiveStandardAttributes.result documentation> 
getResult ::
          (MonadDOM m) =>
            SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedString)
getResult self = liftDOM ((self ^. js "result") >>= fromJSVal)