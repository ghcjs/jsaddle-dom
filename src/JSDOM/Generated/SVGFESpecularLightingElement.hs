{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFESpecularLightingElement
       (getIn1, getSurfaceScale, getSpecularConstant, getSpecularExponent,
        SVGFESpecularLightingElement(..),
        gTypeSVGFESpecularLightingElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedString
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSurfaceScale self
  = liftDOM ((self ^. js "surfaceScale") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstant ::
                    (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularConstant self
  = liftDOM ((self ^. js "specularConstant") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadDOM m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularExponent self
  = liftDOM ((self ^. js "specularExponent") >>= fromJSValUnchecked)
