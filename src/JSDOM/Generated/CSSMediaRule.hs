{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSMediaRule
       (insertRule, insertRule_, deleteRule, getMedia, getCssRules,
        CSSMediaRule(..), gTypeCSSMediaRule)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule ::
           (MonadDOM m, ToJSString rule) =>
             CSSMediaRule -> Maybe rule -> Maybe Word -> m Word
insertRule self rule index
  = liftDOM
      (round <$>
         ((self ^. jsf "insertRule" [toJSVal rule, toJSVal index]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule_ ::
            (MonadDOM m, ToJSString rule) =>
              CSSMediaRule -> Maybe rule -> Maybe Word -> m ()
insertRule_ self rule index
  = liftDOM
      (void (self ^. jsf "insertRule" [toJSVal rule, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.deleteRule Mozilla CSSMediaRule.deleteRule documentation> 
deleteRule :: (MonadDOM m) => CSSMediaRule -> Maybe Word -> m ()
deleteRule self index
  = liftDOM (void (self ^. jsf "deleteRule" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMedia :: (MonadDOM m) => CSSMediaRule -> m MediaList
getMedia self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRules :: (MonadDOM m) => CSSMediaRule -> m CSSRuleList
getCssRules self
  = liftDOM ((self ^. js "cssRules") >>= fromJSValUnchecked)
