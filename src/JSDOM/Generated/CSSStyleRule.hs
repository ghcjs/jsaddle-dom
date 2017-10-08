{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSStyleRule
       (setSelectorText, getSelectorText, getSelectorTextUnsafe,
        getSelectorTextUnchecked, getStyle, CSSStyleRule(..),
        gTypeCSSStyleRule)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
setSelectorText ::
                (MonadDOM m, ToJSString val) => CSSStyleRule -> Maybe val -> m ()
setSelectorText self val
  = liftDOM (self ^. jss "selectorText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
getSelectorText ::
                (MonadDOM m, FromJSString result) =>
                  CSSStyleRule -> m (Maybe result)
getSelectorText self
  = liftDOM ((self ^. js "selectorText") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
getSelectorTextUnsafe ::
                      (MonadDOM m, HasCallStack, FromJSString result) =>
                        CSSStyleRule -> m result
getSelectorTextUnsafe self
  = liftDOM
      (((self ^. js "selectorText") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
getSelectorTextUnchecked ::
                         (MonadDOM m, FromJSString result) => CSSStyleRule -> m result
getSelectorTextUnchecked self
  = liftDOM ((self ^. js "selectorText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.style Mozilla CSSStyleRule.style documentation> 
getStyle :: (MonadDOM m) => CSSStyleRule -> m CSSStyleDeclaration
getStyle self
  = liftDOM ((self ^. js "style") >>= fromJSValUnchecked)
