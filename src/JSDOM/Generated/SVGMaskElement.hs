{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGMaskElement
       (getMaskUnits, getMaskContentUnits, getX, getY, getWidth,
        getHeight, SVGMaskElement(..), gTypeSVGMaskElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskUnits Mozilla SVGMaskElement.maskUnits documentation> 
getMaskUnits ::
             (MonadDOM m) => SVGMaskElement -> m SVGAnimatedEnumeration
getMaskUnits self
  = liftDOM ((self ^. js "maskUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskContentUnits Mozilla SVGMaskElement.maskContentUnits documentation> 
getMaskContentUnits ::
                    (MonadDOM m) => SVGMaskElement -> m SVGAnimatedEnumeration
getMaskContentUnits self
  = liftDOM ((self ^. js "maskContentUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.x Mozilla SVGMaskElement.x documentation> 
getX :: (MonadDOM m) => SVGMaskElement -> m SVGAnimatedLength
getX self = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.y Mozilla SVGMaskElement.y documentation> 
getY :: (MonadDOM m) => SVGMaskElement -> m SVGAnimatedLength
getY self = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.width Mozilla SVGMaskElement.width documentation> 
getWidth :: (MonadDOM m) => SVGMaskElement -> m SVGAnimatedLength
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.height Mozilla SVGMaskElement.height documentation> 
getHeight :: (MonadDOM m) => SVGMaskElement -> m SVGAnimatedLength
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)
