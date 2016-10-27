{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAnimatedBoolean
       (setBaseVal, getBaseVal, getAnimVal, SVGAnimatedBoolean(..),
        gTypeSVGAnimatedBoolean)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
setBaseVal :: (MonadDOM m) => SVGAnimatedBoolean -> Bool -> m ()
setBaseVal self val = liftDOM (self ^. jss "baseVal" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
getBaseVal :: (MonadDOM m) => SVGAnimatedBoolean -> m Bool
getBaseVal self = liftDOM ((self ^. js "baseVal") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.animVal Mozilla SVGAnimatedBoolean.animVal documentation> 
getAnimVal :: (MonadDOM m) => SVGAnimatedBoolean -> m Bool
getAnimVal self = liftDOM ((self ^. js "animVal") >>= valToBool)
