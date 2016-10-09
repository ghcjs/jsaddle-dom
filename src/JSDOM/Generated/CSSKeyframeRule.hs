{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSKeyframeRule
       (setKeyText, getKeyText, getStyle, getStyleUnchecked,
        CSSKeyframeRule, castToCSSKeyframeRule, gTypeCSSKeyframeRule)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
setKeyText ::
           (MonadDOM m, ToJSString val) => CSSKeyframeRule -> val -> m ()
setKeyText self val = liftDOM (self ^. jss "keyText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
getKeyText ::
           (MonadDOM m, FromJSString result) => CSSKeyframeRule -> m result
getKeyText self
  = liftDOM ((self ^. js "keyText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.style Mozilla CSSKeyframeRule.style documentation> 
getStyle ::
         (MonadDOM m) => CSSKeyframeRule -> m (Maybe CSSStyleDeclaration)
getStyle self = liftDOM ((self ^. js "style") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.style Mozilla CSSKeyframeRule.style documentation> 
getStyleUnchecked ::
                  (MonadDOM m) => CSSKeyframeRule -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftDOM ((self ^. js "style") >>= fromJSValUnchecked)
