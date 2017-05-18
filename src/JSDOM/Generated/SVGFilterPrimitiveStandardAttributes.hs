{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFilterPrimitiveStandardAttributes
       (getX, getY, getWidth, getHeight, getResult,
        SVGFilterPrimitiveStandardAttributes(..),
        gTypeSVGFilterPrimitiveStandardAttributes,
        IsSVGFilterPrimitiveStandardAttributes,
        toSVGFilterPrimitiveStandardAttributes)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.x Mozilla SVGFilterPrimitiveStandardAttributes.x documentation> 
getX ::
     (MonadDOM m, IsSVGFilterPrimitiveStandardAttributes self) =>
       self -> m SVGAnimatedLength
getX self
  = liftDOM
      (((toSVGFilterPrimitiveStandardAttributes self) ^. js "x") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.y Mozilla SVGFilterPrimitiveStandardAttributes.y documentation> 
getY ::
     (MonadDOM m, IsSVGFilterPrimitiveStandardAttributes self) =>
       self -> m SVGAnimatedLength
getY self
  = liftDOM
      (((toSVGFilterPrimitiveStandardAttributes self) ^. js "y") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.width Mozilla SVGFilterPrimitiveStandardAttributes.width documentation> 
getWidth ::
         (MonadDOM m, IsSVGFilterPrimitiveStandardAttributes self) =>
           self -> m SVGAnimatedLength
getWidth self
  = liftDOM
      (((toSVGFilterPrimitiveStandardAttributes self) ^. js "width") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.height Mozilla SVGFilterPrimitiveStandardAttributes.height documentation> 
getHeight ::
          (MonadDOM m, IsSVGFilterPrimitiveStandardAttributes self) =>
            self -> m SVGAnimatedLength
getHeight self
  = liftDOM
      (((toSVGFilterPrimitiveStandardAttributes self) ^. js "height") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.result Mozilla SVGFilterPrimitiveStandardAttributes.result documentation> 
getResult ::
          (MonadDOM m, IsSVGFilterPrimitiveStandardAttributes self) =>
            self -> m SVGAnimatedString
getResult self
  = liftDOM
      (((toSVGFilterPrimitiveStandardAttributes self) ^. js "result") >>=
         fromJSValUnchecked)
