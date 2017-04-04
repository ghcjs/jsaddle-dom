{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGLinearGradientElement
       (getX1, getY1, getX2, getY2, SVGLinearGradientElement(..),
        gTypeSVGLinearGradientElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x1 Mozilla SVGLinearGradientElement.x1 documentation> 
getX1 ::
      (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getX1 self = liftDOM ((self ^. js "x1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y1 Mozilla SVGLinearGradientElement.y1 documentation> 
getY1 ::
      (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getY1 self = liftDOM ((self ^. js "y1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x2 Mozilla SVGLinearGradientElement.x2 documentation> 
getX2 ::
      (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getX2 self = liftDOM ((self ^. js "x2") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y2 Mozilla SVGLinearGradientElement.y2 documentation> 
getY2 ::
      (MonadDOM m) => SVGLinearGradientElement -> m SVGAnimatedLength
getY2 self = liftDOM ((self ^. js "y2") >>= fromJSValUnchecked)
