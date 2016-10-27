{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEPointLightElement
       (getX, getXUnsafe, getXUnchecked, getY, getYUnsafe, getYUnchecked,
        getZ, getZUnsafe, getZUnchecked, SVGFEPointLightElement(..),
        gTypeSVGFEPointLightElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.x Mozilla SVGFEPointLightElement.x documentation> 
getXUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGFEPointLightElement -> m SVGAnimatedNumber
getXUnsafe self
  = liftDOM
      (((self ^. js "x") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.x Mozilla SVGFEPointLightElement.x documentation> 
getXUnchecked ::
              (MonadDOM m) => SVGFEPointLightElement -> m SVGAnimatedNumber
getXUnchecked self
  = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
getY ::
     (MonadDOM m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
getYUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGFEPointLightElement -> m SVGAnimatedNumber
getYUnsafe self
  = liftDOM
      (((self ^. js "y") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
getYUnchecked ::
              (MonadDOM m) => SVGFEPointLightElement -> m SVGAnimatedNumber
getYUnchecked self
  = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
getZ ::
     (MonadDOM m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getZ self = liftDOM ((self ^. js "z") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
getZUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SVGFEPointLightElement -> m SVGAnimatedNumber
getZUnsafe self
  = liftDOM
      (((self ^. js "z") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
getZUnchecked ::
              (MonadDOM m) => SVGFEPointLightElement -> m SVGAnimatedNumber
getZUnchecked self
  = liftDOM ((self ^. js "z") >>= fromJSValUnchecked)
