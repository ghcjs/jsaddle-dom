{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSPageRule
       (setSelectorText, getSelectorText, getSelectorTextUnsafe,
        getSelectorTextUnchecked, getStyle, CSSPageRule(..),
        gTypeCSSPageRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
setSelectorText ::
                (MonadDOM m, ToJSString val) => CSSPageRule -> Maybe val -> m ()
setSelectorText self val
  = liftDOM (self ^. jss "selectorText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorText ::
                (MonadDOM m, FromJSString result) =>
                  CSSPageRule -> m (Maybe result)
getSelectorText self
  = liftDOM ((self ^. js "selectorText") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorTextUnsafe ::
                      (MonadDOM m, HasCallStack, FromJSString result) =>
                        CSSPageRule -> m result
getSelectorTextUnsafe self
  = liftDOM
      (((self ^. js "selectorText") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorTextUnchecked ::
                         (MonadDOM m, FromJSString result) => CSSPageRule -> m result
getSelectorTextUnchecked self
  = liftDOM ((self ^. js "selectorText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.style Mozilla CSSPageRule.style documentation> 
getStyle :: (MonadDOM m) => CSSPageRule -> m CSSStyleDeclaration
getStyle self
  = liftDOM ((self ^. js "style") >>= fromJSValUnchecked)
