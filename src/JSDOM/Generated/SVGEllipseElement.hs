{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGEllipseElement
       (getCx, getCy, getRx, getRy, SVGEllipseElement(..),
        gTypeSVGEllipseElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCx :: (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getCx self = liftDOM ((self ^. js "cx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCy :: (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getCy self = liftDOM ((self ^. js "cy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRx :: (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getRx self = liftDOM ((self ^. js "rx") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRy :: (MonadDOM m) => SVGEllipseElement -> m SVGAnimatedLength
getRy self = liftDOM ((self ^. js "ry") >>= fromJSValUnchecked)
