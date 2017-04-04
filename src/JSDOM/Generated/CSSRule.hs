{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSRule
       (pattern UNKNOWN_RULE, pattern STYLE_RULE, pattern CHARSET_RULE,
        pattern IMPORT_RULE, pattern MEDIA_RULE, pattern FONT_FACE_RULE,
        pattern PAGE_RULE, pattern KEYFRAMES_RULE, pattern KEYFRAME_RULE,
        pattern NAMESPACE_RULE, pattern SUPPORTS_RULE,
        pattern WEBKIT_VIEWPORT_RULE, pattern WEBKIT_REGION_RULE,
        pattern WEBKIT_KEYFRAMES_RULE, pattern WEBKIT_KEYFRAME_RULE,
        getType, setCssText, getCssText, getCssTextUnsafe,
        getCssTextUnchecked, getParentStyleSheet,
        getParentStyleSheetUnsafe, getParentStyleSheetUnchecked,
        getParentRule, getParentRuleUnsafe, getParentRuleUnchecked,
        CSSRule(..), gTypeCSSRule, IsCSSRule, toCSSRule)
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
pattern UNKNOWN_RULE = 0
pattern STYLE_RULE = 1
pattern CHARSET_RULE = 2
pattern IMPORT_RULE = 3
pattern MEDIA_RULE = 4
pattern FONT_FACE_RULE = 5
pattern PAGE_RULE = 6
pattern KEYFRAMES_RULE = 7
pattern KEYFRAME_RULE = 8
pattern NAMESPACE_RULE = 10
pattern SUPPORTS_RULE = 12
pattern WEBKIT_VIEWPORT_RULE = 15
pattern WEBKIT_REGION_RULE = 16
pattern WEBKIT_KEYFRAMES_RULE = 7
pattern WEBKIT_KEYFRAME_RULE = 8

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.type Mozilla CSSRule.type documentation> 
getType :: (MonadDOM m, IsCSSRule self) => self -> m Word
getType self
  = liftDOM
      (round <$> (((toCSSRule self) ^. js "type") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
setCssText ::
           (MonadDOM m, IsCSSRule self, ToJSString val) =>
             self -> Maybe val -> m ()
setCssText self val
  = liftDOM ((toCSSRule self) ^. jss "cssText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
getCssText ::
           (MonadDOM m, IsCSSRule self, FromJSString result) =>
             self -> m (Maybe result)
getCssText self
  = liftDOM (((toCSSRule self) ^. js "cssText") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
getCssTextUnsafe ::
                 (MonadDOM m, IsCSSRule self, HasCallStack, FromJSString result) =>
                   self -> m result
getCssTextUnsafe self
  = liftDOM
      ((((toCSSRule self) ^. js "cssText") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
getCssTextUnchecked ::
                    (MonadDOM m, IsCSSRule self, FromJSString result) =>
                      self -> m result
getCssTextUnchecked self
  = liftDOM
      (((toCSSRule self) ^. js "cssText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentStyleSheet Mozilla CSSRule.parentStyleSheet documentation> 
getParentStyleSheet ::
                    (MonadDOM m, IsCSSRule self) => self -> m (Maybe CSSStyleSheet)
getParentStyleSheet self
  = liftDOM
      (((toCSSRule self) ^. js "parentStyleSheet") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentStyleSheet Mozilla CSSRule.parentStyleSheet documentation> 
getParentStyleSheetUnsafe ::
                          (MonadDOM m, IsCSSRule self, HasCallStack) =>
                            self -> m CSSStyleSheet
getParentStyleSheetUnsafe self
  = liftDOM
      ((((toCSSRule self) ^. js "parentStyleSheet") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentStyleSheet Mozilla CSSRule.parentStyleSheet documentation> 
getParentStyleSheetUnchecked ::
                             (MonadDOM m, IsCSSRule self) => self -> m CSSStyleSheet
getParentStyleSheetUnchecked self
  = liftDOM
      (((toCSSRule self) ^. js "parentStyleSheet") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentRule Mozilla CSSRule.parentRule documentation> 
getParentRule ::
              (MonadDOM m, IsCSSRule self) => self -> m (Maybe CSSRule)
getParentRule self
  = liftDOM (((toCSSRule self) ^. js "parentRule") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentRule Mozilla CSSRule.parentRule documentation> 
getParentRuleUnsafe ::
                    (MonadDOM m, IsCSSRule self, HasCallStack) => self -> m CSSRule
getParentRuleUnsafe self
  = liftDOM
      ((((toCSSRule self) ^. js "parentRule") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentRule Mozilla CSSRule.parentRule documentation> 
getParentRuleUnchecked ::
                       (MonadDOM m, IsCSSRule self) => self -> m CSSRule
getParentRuleUnchecked self
  = liftDOM
      (((toCSSRule self) ^. js "parentRule") >>= fromJSValUnchecked)
