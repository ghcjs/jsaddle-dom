{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.CSSKeyframesRule
       (insertRule, appendRule, deleteRule, findRule, _get, setName,
        getName, getCssRules, CSSKeyframesRule, castToCSSKeyframesRule,
        gTypeCSSKeyframesRule)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.insertRule Mozilla CSSKeyframesRule.insertRule documentation> 
insertRule ::
           (MonadDOM m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
insertRule self rule
  = liftDOM (void (self ^. jsf "insertRule" [toJSVal rule]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.appendRule Mozilla CSSKeyframesRule.appendRule documentation> 
appendRule ::
           (MonadDOM m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
appendRule self rule
  = liftDOM (void (self ^. jsf "appendRule" [toJSVal rule]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.deleteRule Mozilla CSSKeyframesRule.deleteRule documentation> 
deleteRule ::
           (MonadDOM m, ToJSString key) => CSSKeyframesRule -> key -> m ()
deleteRule self key
  = liftDOM (void (self ^. jsf "deleteRule" [toJSVal key]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
findRule ::
         (MonadDOM m, ToJSString key) =>
           CSSKeyframesRule -> key -> m (Maybe CSSKeyframeRule)
findRule self key
  = liftDOM ((self ^. jsf "findRule" [toJSVal key]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule._get Mozilla CSSKeyframesRule._get documentation> 
_get ::
     (MonadDOM m) =>
       CSSKeyframesRule -> Word -> m (Maybe CSSKeyframeRule)
_get self index
  = liftDOM ((self ^. jsf "_get" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) =>
          CSSKeyframesRule -> Maybe val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) =>
          CSSKeyframesRule -> m (Maybe result)
getName self = liftDOM ((self ^. js "name") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.cssRules Mozilla CSSKeyframesRule.cssRules documentation> 
getCssRules ::
            (MonadDOM m) => CSSKeyframesRule -> m (Maybe CSSRuleList)
getCssRules self = liftDOM ((self ^. js "cssRules") >>= fromJSVal)
