{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAnimatedInteger
       (setBaseVal, getBaseVal, getAnimVal, SVGAnimatedInteger(..),
        gTypeSVGAnimatedInteger)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
setBaseVal :: (MonadDOM m) => SVGAnimatedInteger -> Int -> m ()
setBaseVal self val = liftDOM (self ^. jss "baseVal" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
getBaseVal :: (MonadDOM m) => SVGAnimatedInteger -> m Int
getBaseVal self
  = liftDOM (round <$> ((self ^. js "baseVal") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.animVal Mozilla SVGAnimatedInteger.animVal documentation> 
getAnimVal :: (MonadDOM m) => SVGAnimatedInteger -> m Int
getAnimVal self
  = liftDOM (round <$> ((self ^. js "animVal") >>= valToNumber))
