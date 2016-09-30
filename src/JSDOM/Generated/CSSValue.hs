{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSValue
       (pattern CSS_INHERIT, pattern CSS_PRIMITIVE_VALUE,
        pattern CSS_VALUE_LIST, pattern CSS_CUSTOM, setCssText, getCssText,
        getCssValueType, CSSValue, castToCSSValue, gTypeCSSValue,
        IsCSSValue, toCSSValue)
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
pattern CSS_INHERIT = 0
pattern CSS_PRIMITIVE_VALUE = 1
pattern CSS_VALUE_LIST = 2
pattern CSS_CUSTOM = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
setCssText ::
           (MonadDOM m, IsCSSValue self, ToJSString val) =>
             self -> Maybe val -> m ()
setCssText self val
  = liftDOM ((toCSSValue self) ^. jss "cssText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
getCssText ::
           (MonadDOM m, IsCSSValue self, FromJSString result) =>
             self -> m (Maybe result)
getCssText self
  = liftDOM
      (((toCSSValue self) ^. js "cssText") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssValueType Mozilla CSSValue.cssValueType documentation> 
getCssValueType :: (MonadDOM m, IsCSSValue self) => self -> m Word
getCssValueType self
  = liftDOM
      (round <$>
         (((toCSSValue self) ^. js "cssValueType") >>= valToNumber))
