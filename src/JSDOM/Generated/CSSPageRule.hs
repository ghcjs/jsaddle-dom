{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSPageRule
       (setSelectorText, getSelectorText, getSelectorTextUnchecked,
        getStyle, getStyleUnchecked, CSSPageRule(..), gTypeCSSPageRule)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

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
  = liftDOM ((self ^. js "selectorText") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorTextUnchecked ::
                         (MonadDOM m, FromJSString result) => CSSPageRule -> m result
getSelectorTextUnchecked self
  = liftDOM ((self ^. js "selectorText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.style Mozilla CSSPageRule.style documentation> 
getStyle ::
         (MonadDOM m) => CSSPageRule -> m (Maybe CSSStyleDeclaration)
getStyle self = liftDOM ((self ^. js "style") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.style Mozilla CSSPageRule.style documentation> 
getStyleUnchecked ::
                  (MonadDOM m) => CSSPageRule -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftDOM ((self ^. js "style") >>= fromJSValUnchecked)
