{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RGBColor
       (getRed, getGreen, getBlue, getAlpha, RGBColor(..), gTypeRGBColor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRed :: (MonadDOM m) => RGBColor -> m CSSPrimitiveValue
getRed self = liftDOM ((self ^. js "red") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreen :: (MonadDOM m) => RGBColor -> m CSSPrimitiveValue
getGreen self
  = liftDOM ((self ^. js "green") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlue :: (MonadDOM m) => RGBColor -> m CSSPrimitiveValue
getBlue self = liftDOM ((self ^. js "blue") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.alpha Mozilla RGBColor.alpha documentation> 
getAlpha :: (MonadDOM m) => RGBColor -> m CSSPrimitiveValue
getAlpha self
  = liftDOM ((self ^. js "alpha") >>= fromJSValUnchecked)
