{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFilterElement
       (setFilterRes, getFilterUnits, getPrimitiveUnits, getX, getY,
        getWidth, getHeight, getFilterResX, getFilterResY,
        SVGFilterElement(..), gTypeSVGFilterElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.setFilterRes Mozilla SVGFilterElement.setFilterRes documentation> 
setFilterRes ::
             (MonadDOM m) =>
               SVGFilterElement -> Maybe Word -> Maybe Word -> m ()
setFilterRes self filterResX filterResY
  = liftDOM
      (void
         (self ^. jsf "setFilterRes"
            [toJSVal filterResX, toJSVal filterResY]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
getFilterUnits ::
               (MonadDOM m) => SVGFilterElement -> m SVGAnimatedEnumeration
getFilterUnits self
  = liftDOM ((self ^. js "filterUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
getPrimitiveUnits ::
                  (MonadDOM m) => SVGFilterElement -> m SVGAnimatedEnumeration
getPrimitiveUnits self
  = liftDOM ((self ^. js "primitiveUnits") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
getX :: (MonadDOM m) => SVGFilterElement -> m SVGAnimatedLength
getX self = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
getY :: (MonadDOM m) => SVGFilterElement -> m SVGAnimatedLength
getY self = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
getWidth :: (MonadDOM m) => SVGFilterElement -> m SVGAnimatedLength
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGFilterElement -> m SVGAnimatedLength
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
getFilterResX ::
              (MonadDOM m) => SVGFilterElement -> m SVGAnimatedInteger
getFilterResX self
  = liftDOM ((self ^. js "filterResX") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
getFilterResY ::
              (MonadDOM m) => SVGFilterElement -> m SVGAnimatedInteger
getFilterResY self
  = liftDOM ((self ^. js "filterResY") >>= fromJSValUnchecked)
