{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAnimatedNumber
       (setBaseVal, getBaseVal, getAnimVal, SVGAnimatedNumber(..),
        gTypeSVGAnimatedNumber)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
setBaseVal :: (MonadDOM m) => SVGAnimatedNumber -> Float -> m ()
setBaseVal self val = liftDOM (self ^. jss "baseVal" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
getBaseVal :: (MonadDOM m) => SVGAnimatedNumber -> m Float
getBaseVal self
  = liftDOM (realToFrac <$> ((self ^. js "baseVal") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.animVal Mozilla SVGAnimatedNumber.animVal documentation> 
getAnimVal :: (MonadDOM m) => SVGAnimatedNumber -> m Float
getAnimVal self
  = liftDOM (realToFrac <$> ((self ^. js "animVal") >>= valToNumber))
