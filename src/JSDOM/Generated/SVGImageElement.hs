{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGImageElement
       (getX, getY, getWidth, getHeight, getPreserveAspectRatio,
        SVGImageElement(..), gTypeSVGImageElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.x Mozilla SVGImageElement.x documentation> 
getX :: (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getX self = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.y Mozilla SVGImageElement.y documentation> 
getY :: (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getY self = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.width Mozilla SVGImageElement.width documentation> 
getWidth :: (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.height Mozilla SVGImageElement.height documentation> 
getHeight :: (MonadDOM m) => SVGImageElement -> m SVGAnimatedLength
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.preserveAspectRatio Mozilla SVGImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadDOM m) => SVGImageElement -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatio self
  = liftDOM
      ((self ^. js "preserveAspectRatio") >>= fromJSValUnchecked)
