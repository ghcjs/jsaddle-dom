{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAnimatedString
       (setBaseVal, getBaseVal, getAnimVal, SVGAnimatedString,
        castToSVGAnimatedString, gTypeSVGAnimatedString)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
setBaseVal ::
           (MonadDOM m, ToJSString val) => SVGAnimatedString -> val -> m ()
setBaseVal self val = liftDOM (self ^. jss "baseVal" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
getBaseVal ::
           (MonadDOM m, FromJSString result) => SVGAnimatedString -> m result
getBaseVal self
  = liftDOM ((self ^. js "baseVal") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.animVal Mozilla SVGAnimatedString.animVal documentation> 
getAnimVal ::
           (MonadDOM m, FromJSString result) => SVGAnimatedString -> m result
getAnimVal self
  = liftDOM ((self ^. js "animVal") >>= fromJSValUnchecked)
