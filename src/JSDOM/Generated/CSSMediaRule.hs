{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSMediaRule
       (insertRule, insertRule_, deleteRule, getMedia, getMediaUnchecked,
        getCssRules, getCssRulesUnchecked, CSSMediaRule(..),
        gTypeCSSMediaRule)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule ::
           (MonadDOM m, ToJSString rule) =>
             CSSMediaRule -> rule -> Word -> m Word
insertRule self rule index
  = liftDOM
      (round <$>
         ((self ^. jsf "insertRule" [toJSVal rule, toJSVal index]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule_ ::
            (MonadDOM m, ToJSString rule) =>
              CSSMediaRule -> rule -> Word -> m ()
insertRule_ self rule index
  = liftDOM
      (void (self ^. jsf "insertRule" [toJSVal rule, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.deleteRule Mozilla CSSMediaRule.deleteRule documentation> 
deleteRule :: (MonadDOM m) => CSSMediaRule -> Word -> m ()
deleteRule self index
  = liftDOM (void (self ^. jsf "deleteRule" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMedia :: (MonadDOM m) => CSSMediaRule -> m (Maybe MediaList)
getMedia self = liftDOM ((self ^. js "media") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMediaUnchecked :: (MonadDOM m) => CSSMediaRule -> m MediaList
getMediaUnchecked self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRules ::
            (MonadDOM m) => CSSMediaRule -> m (Maybe CSSRuleList)
getCssRules self = liftDOM ((self ^. js "cssRules") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRulesUnchecked ::
                     (MonadDOM m) => CSSMediaRule -> m CSSRuleList
getCssRulesUnchecked self
  = liftDOM ((self ^. js "cssRules") >>= fromJSValUnchecked)
