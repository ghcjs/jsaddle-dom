{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGFESpecularLightingElement
       (getIn1, getSurfaceScale, getSpecularConstant, getSpecularExponent,
        SVGFESpecularLightingElement, castToSVGFESpecularLightingElement,
        gTypeSVGFESpecularLightingElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFESpecularLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadDOM m) =>
                  SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftDOM ((self ^. js "surfaceScale") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstant ::
                    (MonadDOM m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularConstant self
  = liftDOM ((self ^. js "specularConstant") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadDOM m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftDOM ((self ^. js "specularExponent") >>= fromJSVal)