{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEPointLightElement
       (getX, getY, getZ, SVGFEPointLightElement,
        castToSVGFEPointLightElement, gTypeSVGFEPointLightElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.x Mozilla SVGFEPointLightElement.x documentation> 
getX ::
     (MonadDOM m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
getY ::
     (MonadDOM m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
getZ ::
     (MonadDOM m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getZ self = liftDOM ((self ^. js "z") >>= fromJSVal)
