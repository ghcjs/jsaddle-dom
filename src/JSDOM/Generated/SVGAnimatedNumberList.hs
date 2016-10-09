{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAnimatedNumberList
       (getBaseVal, getBaseValUnchecked, getAnimVal, getAnimValUnchecked,
        SVGAnimatedNumberList, castToSVGAnimatedNumberList,
        gTypeSVGAnimatedNumberList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.baseVal Mozilla SVGAnimatedNumberList.baseVal documentation> 
getBaseVal ::
           (MonadDOM m) => SVGAnimatedNumberList -> m (Maybe SVGNumberList)
getBaseVal self = liftDOM ((self ^. js "baseVal") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.baseVal Mozilla SVGAnimatedNumberList.baseVal documentation> 
getBaseValUnchecked ::
                    (MonadDOM m) => SVGAnimatedNumberList -> m SVGNumberList
getBaseValUnchecked self
  = liftDOM ((self ^. js "baseVal") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.animVal Mozilla SVGAnimatedNumberList.animVal documentation> 
getAnimVal ::
           (MonadDOM m) => SVGAnimatedNumberList -> m (Maybe SVGNumberList)
getAnimVal self = liftDOM ((self ^. js "animVal") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.animVal Mozilla SVGAnimatedNumberList.animVal documentation> 
getAnimValUnchecked ::
                    (MonadDOM m) => SVGAnimatedNumberList -> m SVGNumberList
getAnimValUnchecked self
  = liftDOM ((self ^. js "animVal") >>= fromJSValUnchecked)
