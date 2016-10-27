{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSStyleSheet
       (insertRule, insertRule_, deleteRule, addRule, addRule_,
        removeRule, getOwnerRule, getOwnerRuleUnsafe,
        getOwnerRuleUnchecked, getCssRules, getCssRulesUnsafe,
        getCssRulesUnchecked, getRules, getRulesUnsafe, getRulesUnchecked,
        CSSStyleSheet(..), gTypeCSSStyleSheet)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRule ::
           (MonadDOM m, ToJSString rule) =>
             CSSStyleSheet -> rule -> Word -> m Word
insertRule self rule index
  = liftDOM
      (round <$>
         ((self ^. jsf "insertRule" [toJSVal rule, toJSVal index]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRule_ ::
            (MonadDOM m, ToJSString rule) =>
              CSSStyleSheet -> rule -> Word -> m ()
insertRule_ self rule index
  = liftDOM
      (void (self ^. jsf "insertRule" [toJSVal rule, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.deleteRule Mozilla CSSStyleSheet.deleteRule documentation> 
deleteRule :: (MonadDOM m) => CSSStyleSheet -> Word -> m ()
deleteRule self index
  = liftDOM (void (self ^. jsf "deleteRule" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
addRule ::
        (MonadDOM m, ToJSString selector, ToJSString style) =>
          CSSStyleSheet -> selector -> style -> Word -> m Int
addRule self selector style index
  = liftDOM
      (round <$>
         ((self ^. jsf "addRule"
             [toJSVal selector, toJSVal style, toJSVal index])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
addRule_ ::
         (MonadDOM m, ToJSString selector, ToJSString style) =>
           CSSStyleSheet -> selector -> style -> Word -> m ()
addRule_ self selector style index
  = liftDOM
      (void
         (self ^. jsf "addRule"
            [toJSVal selector, toJSVal style, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.removeRule Mozilla CSSStyleSheet.removeRule documentation> 
removeRule :: (MonadDOM m) => CSSStyleSheet -> Word -> m ()
removeRule self index
  = liftDOM (void (self ^. jsf "removeRule" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
getOwnerRule :: (MonadDOM m) => CSSStyleSheet -> m (Maybe CSSRule)
getOwnerRule self
  = liftDOM ((self ^. js "ownerRule") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
getOwnerRuleUnsafe ::
                   (MonadDOM m, HasCallStack) => CSSStyleSheet -> m CSSRule
getOwnerRuleUnsafe self
  = liftDOM
      (((self ^. js "ownerRule") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
getOwnerRuleUnchecked :: (MonadDOM m) => CSSStyleSheet -> m CSSRule
getOwnerRuleUnchecked self
  = liftDOM ((self ^. js "ownerRule") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
getCssRules ::
            (MonadDOM m) => CSSStyleSheet -> m (Maybe CSSRuleList)
getCssRules self = liftDOM ((self ^. js "cssRules") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
getCssRulesUnsafe ::
                  (MonadDOM m, HasCallStack) => CSSStyleSheet -> m CSSRuleList
getCssRulesUnsafe self
  = liftDOM
      (((self ^. js "cssRules") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
getCssRulesUnchecked ::
                     (MonadDOM m) => CSSStyleSheet -> m CSSRuleList
getCssRulesUnchecked self
  = liftDOM ((self ^. js "cssRules") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
getRules :: (MonadDOM m) => CSSStyleSheet -> m (Maybe CSSRuleList)
getRules self = liftDOM ((self ^. js "rules") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
getRulesUnsafe ::
               (MonadDOM m, HasCallStack) => CSSStyleSheet -> m CSSRuleList
getRulesUnsafe self
  = liftDOM
      (((self ^. js "rules") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
getRulesUnchecked :: (MonadDOM m) => CSSStyleSheet -> m CSSRuleList
getRulesUnchecked self
  = liftDOM ((self ^. js "rules") >>= fromJSValUnchecked)
