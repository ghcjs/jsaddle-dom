{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RGBColor
       (getRed, getGreen, getBlue, RGBColor, castToRGBColor,
        gTypeRGBColor)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRed :: (MonadDOM m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getRed self = liftDOM ((self ^. js "red") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreen :: (MonadDOM m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getGreen self = liftDOM ((self ^. js "green") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlue :: (MonadDOM m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getBlue self = liftDOM ((self ^. js "blue") >>= fromJSVal)
