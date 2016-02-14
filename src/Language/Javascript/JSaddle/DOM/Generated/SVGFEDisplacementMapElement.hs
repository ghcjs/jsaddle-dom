{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGFEDisplacementMapElement
       (pattern SVG_CHANNEL_UNKNOWN, pattern SVG_CHANNEL_R,
        pattern SVG_CHANNEL_G, pattern SVG_CHANNEL_B,
        pattern SVG_CHANNEL_A, getIn1, getIn2, getScale,
        getXChannelSelector, getYChannelSelector,
        SVGFEDisplacementMapElement, castToSVGFEDisplacementMapElement,
        gTypeSVGFEDisplacementMapElement)
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
pattern SVG_CHANNEL_UNKNOWN = 0
pattern SVG_CHANNEL_R = 1
pattern SVG_CHANNEL_G = 2
pattern SVG_CHANNEL_B = 3
pattern SVG_CHANNEL_A = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in1 Mozilla SVGFEDisplacementMapElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in2 Mozilla SVGFEDisplacementMapElement.in2 documentation> 
getIn2 ::
       (MonadDOM m) =>
         SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedString)
getIn2 self = liftDOM ((self ^. js "in2") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.scale Mozilla SVGFEDisplacementMapElement.scale documentation> 
getScale ::
         (MonadDOM m) =>
           SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedNumber)
getScale self = liftDOM ((self ^. js "scale") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.xChannelSelector Mozilla SVGFEDisplacementMapElement.xChannelSelector documentation> 
getXChannelSelector ::
                    (MonadDOM m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getXChannelSelector self
  = liftDOM ((self ^. js "xChannelSelector") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.yChannelSelector Mozilla SVGFEDisplacementMapElement.yChannelSelector documentation> 
getYChannelSelector ::
                    (MonadDOM m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getYChannelSelector self
  = liftDOM ((self ^. js "yChannelSelector") >>= fromJSVal)