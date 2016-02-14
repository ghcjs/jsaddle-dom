{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.CSSStyleDeclaration
       (getPropertyValue, getPropertyCSSValue, removeProperty,
        getPropertyPriority, setProperty, item, getPropertyShorthand,
        isPropertyImplicit, setCssText, getCssText, getLength,
        getParentRule, CSSStyleDeclaration, castToCSSStyleDeclaration,
        gTypeCSSStyleDeclaration)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyValue Mozilla CSSStyleDeclaration.getPropertyValue documentation> 
getPropertyValue ::
                 (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                   CSSStyleDeclaration -> propertyName -> m (Maybe result)
getPropertyValue self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyValue" [toJSVal propertyName]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValue ::
                    (MonadDOM m, ToJSString propertyName) =>
                      CSSStyleDeclaration -> propertyName -> m (Maybe CSSValue)
getPropertyCSSValue self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyCSSValue" [toJSVal propertyName]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
removeProperty ::
               (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                 CSSStyleDeclaration -> propertyName -> m (Maybe result)
removeProperty self propertyName
  = liftDOM
      ((self ^. jsf "removeProperty" [toJSVal propertyName]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriority ::
                    (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                      CSSStyleDeclaration -> propertyName -> m (Maybe result)
getPropertyPriority self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyPriority" [toJSVal propertyName]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.setProperty Mozilla CSSStyleDeclaration.setProperty documentation> 
setProperty ::
            (MonadDOM m, ToJSString propertyName, ToJSString value,
             ToJSString priority) =>
              CSSStyleDeclaration ->
                propertyName -> Maybe value -> priority -> m ()
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthand ::
                     (MonadDOM m, ToJSString propertyName, FromJSString result) =>
                       CSSStyleDeclaration -> propertyName -> m (Maybe result)
getPropertyShorthand self propertyName
  = liftDOM
      ((self ^. jsf "getPropertyShorthand" [toJSVal propertyName]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
isPropertyImplicit ::
                   (MonadDOM m, ToJSString propertyName) =>
                     CSSStyleDeclaration -> propertyName -> m Bool
isPropertyImplicit self propertyName
  = liftDOM
      ((self ^. jsf "isPropertyImplicit" [toJSVal propertyName]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
setCssText ::
           (MonadDOM m, ToJSString val) =>
             CSSStyleDeclaration -> Maybe val -> m ()
setCssText self val = liftDOM (self ^. jss "cssText" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
getCssText ::
           (MonadDOM m, FromJSString result) =>
             CSSStyleDeclaration -> m (Maybe result)
getCssText self
  = liftDOM ((self ^. js "cssText") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.length Mozilla CSSStyleDeclaration.length documentation> 
getLength :: (MonadDOM m) => CSSStyleDeclaration -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRule ::
              (MonadDOM m) => CSSStyleDeclaration -> m (Maybe CSSRule)
getParentRule self
  = liftDOM ((self ^. js "parentRule") >>= fromJSVal)