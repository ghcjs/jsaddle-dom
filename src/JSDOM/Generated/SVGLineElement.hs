{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGLineElement
       (getX1, getY1, getX2, getY2, SVGLineElement(..),
        gTypeSVGLineElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x1 Mozilla SVGLineElement.x1 documentation> 
getX1 :: (MonadDOM m) => SVGLineElement -> m SVGAnimatedLength
getX1 self = liftDOM ((self ^. js "x1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y1 Mozilla SVGLineElement.y1 documentation> 
getY1 :: (MonadDOM m) => SVGLineElement -> m SVGAnimatedLength
getY1 self = liftDOM ((self ^. js "y1") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x2 Mozilla SVGLineElement.x2 documentation> 
getX2 :: (MonadDOM m) => SVGLineElement -> m SVGAnimatedLength
getX2 self = liftDOM ((self ^. js "x2") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y2 Mozilla SVGLineElement.y2 documentation> 
getY2 :: (MonadDOM m) => SVGLineElement -> m SVGAnimatedLength
getY2 self = liftDOM ((self ^. js "y2") >>= fromJSValUnchecked)
