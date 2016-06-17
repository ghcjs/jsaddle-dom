{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.WebKitCSSFilterValue
       (_get, pattern CSS_FILTER_REFERENCE, pattern CSS_FILTER_GRAYSCALE,
        pattern CSS_FILTER_SEPIA, pattern CSS_FILTER_SATURATE,
        pattern CSS_FILTER_HUE_ROTATE, pattern CSS_FILTER_INVERT,
        pattern CSS_FILTER_OPACITY, pattern CSS_FILTER_BRIGHTNESS,
        pattern CSS_FILTER_CONTRAST, pattern CSS_FILTER_BLUR,
        pattern CSS_FILTER_DROP_SHADOW, getOperationType,
        WebKitCSSFilterValue, castToWebKitCSSFilterValue,
        gTypeWebKitCSSFilterValue)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue._get Mozilla WebKitCSSFilterValue._get documentation> 
_get ::
     (MonadDOM m) => WebKitCSSFilterValue -> Word -> m (Maybe CSSValue)
_get self index
  = liftDOM ((self ^. jsf "_get" [toJSVal index]) >>= fromJSVal)
pattern CSS_FILTER_REFERENCE = 1
pattern CSS_FILTER_GRAYSCALE = 2
pattern CSS_FILTER_SEPIA = 3
pattern CSS_FILTER_SATURATE = 4
pattern CSS_FILTER_HUE_ROTATE = 5
pattern CSS_FILTER_INVERT = 6
pattern CSS_FILTER_OPACITY = 7
pattern CSS_FILTER_BRIGHTNESS = 8
pattern CSS_FILTER_CONTRAST = 9
pattern CSS_FILTER_BLUR = 10
pattern CSS_FILTER_DROP_SHADOW = 11

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue.operationType Mozilla WebKitCSSFilterValue.operationType documentation> 
getOperationType :: (MonadDOM m) => WebKitCSSFilterValue -> m Word
getOperationType self
  = liftDOM
      (round <$> ((self ^. js "operationType") >>= valToNumber))
