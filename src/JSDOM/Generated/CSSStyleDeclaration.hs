{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSStyleDeclaration
       (getPropertyValue, getPropertyValue_, getPropertyCSSValue,
        getPropertyCSSValue_, getPropertyCSSValueUnsafe,
        getPropertyCSSValueUnchecked, removeProperty, removeProperty_,
        getPropertyPriority, getPropertyPriority_,
        getPropertyPriorityUnsafe, getPropertyPriorityUnchecked,
        setProperty, item, item_, getPropertyShorthand,
        getPropertyShorthand_, getPropertyShorthandUnsafe,
        getPropertyShorthandUnchecked, isPropertyImplicit,
        isPropertyImplicit_, setCssText, getCssText, getLength,
        getParentRule, getParentRuleUnsafe, getParentRuleUnchecked,
        CSSStyleDeclaration(..), gTypeCSSStyleDeclaration)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyValue Mozilla CSSStyleDeclaration.getPropertyValue documentation> 
getPropertyValue ::
                 (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                   CSSStyleDeclaration -> propertyName -> m result
getPropertyValue self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyValue" [toJSVal propertyName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyValue Mozilla CSSStyleDeclaration.getPropertyValue documentation> 
getPropertyValue_ ::
                  (MonadDOM m, ToJSString propertyName) =>
                    CSSStyleDeclaration -> propertyName -> m ()
getPropertyValue_ self propertyName
  = liftDOM
      (void (self ^. jsf "getPropertyValue" [toJSVal propertyName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValue ::
                    (MonadDOM m, ToJSString propertyName) =>
                      CSSStyleDeclaration -> propertyName -> m (Maybe CSSValue)
getPropertyCSSValue self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyCSSValue" [toJSVal propertyName]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValue_ ::
                     (MonadDOM m, ToJSString propertyName) =>
                       CSSStyleDeclaration -> propertyName -> m ()
getPropertyCSSValue_ self propertyName
  = liftDOM
      (void (self ^. jsf "getPropertyCSSValue" [toJSVal propertyName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValueUnsafe ::
                          (MonadDOM m, ToJSString propertyName, HasCallStack) =>
                            CSSStyleDeclaration -> propertyName -> m CSSValue
getPropertyCSSValueUnsafe self propertyName
  = liftDOM
      (((self ^. jsf "getPropertyCSSValue" [toJSVal propertyName]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValueUnchecked ::
                             (MonadDOM m, ToJSString propertyName) =>
                               CSSStyleDeclaration -> propertyName -> m CSSValue
getPropertyCSSValueUnchecked self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyCSSValue" [toJSVal propertyName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
removeProperty ::
               (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                 CSSStyleDeclaration -> propertyName -> m result
removeProperty self propertyName
  = liftDOM
      ((self ^. jsf "removeProperty" [toJSVal propertyName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
removeProperty_ ::
                (MonadDOM m, ToJSString propertyName) =>
                  CSSStyleDeclaration -> propertyName -> m ()
removeProperty_ self propertyName
  = liftDOM
      (void (self ^. jsf "removeProperty" [toJSVal propertyName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriority ::
                    (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                      CSSStyleDeclaration -> propertyName -> m (Maybe result)
getPropertyPriority self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyPriority" [toJSVal propertyName]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriority_ ::
                     (MonadDOM m, ToJSString propertyName) =>
                       CSSStyleDeclaration -> propertyName -> m ()
getPropertyPriority_ self propertyName
  = liftDOM
      (void (self ^. jsf "getPropertyPriority" [toJSVal propertyName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriorityUnsafe ::
                          (MonadDOM m, ToJSString propertyName, HasCallStack,
                           FromJSString result) =>
                            CSSStyleDeclaration -> propertyName -> m result
getPropertyPriorityUnsafe self propertyName
  = liftDOM
      (((self ^. jsf "getPropertyPriority" [toJSVal propertyName]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriorityUnchecked ::
                             (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                               CSSStyleDeclaration -> propertyName -> m result
getPropertyPriorityUnchecked self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyPriority" [toJSVal propertyName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.setProperty Mozilla CSSStyleDeclaration.setProperty documentation> 
setProperty ::
            (MonadDOM m, ToJSString propertyName, ToJSString value,
             ToJSString priority) =>
              CSSStyleDeclaration ->
                propertyName -> value -> Maybe priority -> m ()
setProperty self propertyName value priority
  = liftDOM
      (void
         (self ^. jsf "setProperty"
            [toJSVal propertyName, toJSVal value, toJSVal priority]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.item Mozilla CSSStyleDeclaration.item documentation> 
item ::
     (MonadDOM m, FromJSString result) =>
       CSSStyleDeclaration -> Word -> m result
item self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.item Mozilla CSSStyleDeclaration.item documentation> 
item_ :: (MonadDOM m) => CSSStyleDeclaration -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthand ::
                     (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                       CSSStyleDeclaration -> Maybe propertyName -> m (Maybe result)
getPropertyShorthand self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyShorthand" [toJSVal propertyName]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthand_ ::
                      (MonadDOM m, ToJSString propertyName) =>
                        CSSStyleDeclaration -> Maybe propertyName -> m ()
getPropertyShorthand_ self propertyName
  = liftDOM
      (void (self ^. jsf "getPropertyShorthand" [toJSVal propertyName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthandUnsafe ::
                           (MonadDOM m, ToJSString propertyName, HasCallStack,
                            FromJSString result) =>
                             CSSStyleDeclaration -> Maybe propertyName -> m result
getPropertyShorthandUnsafe self propertyName
  = liftDOM
      (((self ^. jsf "getPropertyShorthand" [toJSVal propertyName]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthandUnchecked ::
                              (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                                CSSStyleDeclaration -> Maybe propertyName -> m result
getPropertyShorthandUnchecked self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyShorthand" [toJSVal propertyName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
isPropertyImplicit ::
                   (MonadDOM m, ToJSString propertyName) =>
                     CSSStyleDeclaration -> Maybe propertyName -> m Bool
isPropertyImplicit self propertyName
  = liftDOM
      ((self ^. jsf "isPropertyImplicit" [toJSVal propertyName]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
isPropertyImplicit_ ::
                    (MonadDOM m, ToJSString propertyName) =>
                      CSSStyleDeclaration -> Maybe propertyName -> m ()
isPropertyImplicit_ self propertyName
  = liftDOM
      (void (self ^. jsf "isPropertyImplicit" [toJSVal propertyName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
setCssText ::
           (MonadDOM m, ToJSString val) => CSSStyleDeclaration -> val -> m ()
setCssText self val = liftDOM (self ^. jss "cssText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
getCssText ::
           (MonadDOM m, FromJSString result) =>
             CSSStyleDeclaration -> m result
getCssText self
  = liftDOM ((self ^. js "cssText") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.length Mozilla CSSStyleDeclaration.length documentation> 
getLength :: (MonadDOM m) => CSSStyleDeclaration -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRule ::
              (MonadDOM m) => CSSStyleDeclaration -> m (Maybe CSSRule)
getParentRule self
  = liftDOM ((self ^. js "parentRule") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRuleUnsafe ::
                    (MonadDOM m, HasCallStack) => CSSStyleDeclaration -> m CSSRule
getParentRuleUnsafe self
  = liftDOM
      (((self ^. js "parentRule") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRuleUnchecked ::
                       (MonadDOM m) => CSSStyleDeclaration -> m CSSRule
getParentRuleUnchecked self
  = liftDOM ((self ^. js "parentRule") >>= fromJSValUnchecked)
