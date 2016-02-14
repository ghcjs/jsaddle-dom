{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.CSSSupportsRule
       (insertRule, deleteRule, getCssRules, getConditionText,
        CSSSupportsRule, castToCSSSupportsRule, gTypeCSSSupportsRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.insertRule Mozilla CSSSupportsRule.insertRule documentation> 
insertRule ::
           (MonadDOM m, ToJSString rule) =>
             CSSSupportsRule -> rule -> Word -> m Word
insertRule self rule index
  = liftDOM
      (round <$>
         ((self ^. jsf "insertRule" [toJSVal rule, toJSVal index]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.deleteRule Mozilla CSSSupportsRule.deleteRule documentation> 
deleteRule :: (MonadDOM m) => CSSSupportsRule -> Word -> m ()
deleteRule self index
  = liftDOM (void (self ^. jsf "deleteRule" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.cssRules Mozilla CSSSupportsRule.cssRules documentation> 
getCssRules ::
            (MonadDOM m) => CSSSupportsRule -> m (Maybe CSSRuleList)
getCssRules self = liftDOM ((self ^. js "cssRules") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.conditionText Mozilla CSSSupportsRule.conditionText documentation> 
getConditionText ::
                 (MonadDOM m, FromJSString result) => CSSSupportsRule -> m result
getConditionText self
  = liftDOM ((self ^. js "conditionText") >>= fromJSValUnchecked)