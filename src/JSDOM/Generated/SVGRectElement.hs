{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGRectElement
       (getX, getY, getWidth, getHeight, getRx, getRy, SVGRectElement(..),
        gTypeSVGRectElement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getX :: (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getX self = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getY :: (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getY self = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidth :: (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeight :: (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRx :: (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getRx self = liftDOM ((self ^. js "rx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRy :: (MonadDOM m) => SVGRectElement -> m SVGAnimatedLength
getRy self = liftDOM ((self ^. js "ry") >>= fromJSValUnchecked)
