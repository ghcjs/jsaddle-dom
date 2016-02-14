{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGFilterElement
       (setFilterRes, getFilterUnits, getPrimitiveUnits, getX, getY,
        getWidth, getHeight, getFilterResX, getFilterResY,
        SVGFilterElement, castToSVGFilterElement, gTypeSVGFilterElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.setFilterRes Mozilla SVGFilterElement.setFilterRes documentation> 
setFilterRes ::
             (MonadDOM m) => SVGFilterElement -> Word -> Word -> m ()
setFilterRes self filterResX filterResY
  = liftDOM
      (void
         (self ^. jsf "setFilterRes"
            [toJSVal filterResX, toJSVal filterResY]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
getFilterUnits ::
               (MonadDOM m) =>
                 SVGFilterElement -> m (Maybe SVGAnimatedEnumeration)
getFilterUnits self
  = liftDOM ((self ^. js "filterUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
getPrimitiveUnits ::
                  (MonadDOM m) =>
                    SVGFilterElement -> m (Maybe SVGAnimatedEnumeration)
getPrimitiveUnits self
  = liftDOM ((self ^. js "primitiveUnits") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
getX ::
     (MonadDOM m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
getY ::
     (MonadDOM m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
getFilterResX ::
              (MonadDOM m) => SVGFilterElement -> m (Maybe SVGAnimatedInteger)
getFilterResX self
  = liftDOM ((self ^. js "filterResX") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
getFilterResY ::
              (MonadDOM m) => SVGFilterElement -> m (Maybe SVGAnimatedInteger)
getFilterResY self
  = liftDOM ((self ^. js "filterResY") >>= fromJSVal)