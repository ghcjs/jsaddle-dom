{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGElement
       (getPresentationAttribute, getPresentationAttribute_,
        getPresentationAttributeUnchecked, setXmlbase, getXmlbase,
        getXmlbaseUnchecked, getOwnerSVGElement,
        getOwnerSVGElementUnchecked, getViewportElement,
        getViewportElementUnchecked, setXmllang, getXmllang, setXmlspace,
        getXmlspace, getClassName, getClassNameUnchecked, getStyle,
        getStyleUnchecked, setTabIndex, getTabIndex, SVGElement(..),
        gTypeSVGElement, IsSVGElement, toSVGElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute ::
                         (MonadDOM m, IsSVGElement self, ToJSString name) =>
                           self -> name -> m (Maybe CSSValue)
getPresentationAttribute self name
  = liftDOM
      (((toSVGElement self) ^. jsf "getPresentationAttribute"
          [toJSVal name])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute_ ::
                          (MonadDOM m, IsSVGElement self, ToJSString name) =>
                            self -> name -> m ()
getPresentationAttribute_ self name
  = liftDOM
      (void
         ((toSVGElement self) ^. jsf "getPresentationAttribute"
            [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttributeUnchecked ::
                                  (MonadDOM m, IsSVGElement self, ToJSString name) =>
                                    self -> name -> m CSSValue
getPresentationAttributeUnchecked self name
  = liftDOM
      (((toSVGElement self) ^. jsf "getPresentationAttribute"
          [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
setXmlbase ::
           (MonadDOM m, IsSVGElement self, ToJSString val) =>
             self -> Maybe val -> m ()
setXmlbase self val
  = liftDOM ((toSVGElement self) ^. jss "xmlbase" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
getXmlbase ::
           (MonadDOM m, IsSVGElement self, FromJSString result) =>
             self -> m (Maybe result)
getXmlbase self
  = liftDOM
      (((toSVGElement self) ^. js "xmlbase") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
getXmlbaseUnchecked ::
                    (MonadDOM m, IsSVGElement self, FromJSString result) =>
                      self -> m result
getXmlbaseUnchecked self
  = liftDOM
      (((toSVGElement self) ^. js "xmlbase") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.ownerSVGElement Mozilla SVGElement.ownerSVGElement documentation> 
getOwnerSVGElement ::
                   (MonadDOM m, IsSVGElement self) => self -> m (Maybe SVGSVGElement)
getOwnerSVGElement self
  = liftDOM
      (((toSVGElement self) ^. js "ownerSVGElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.ownerSVGElement Mozilla SVGElement.ownerSVGElement documentation> 
getOwnerSVGElementUnchecked ::
                            (MonadDOM m, IsSVGElement self) => self -> m SVGSVGElement
getOwnerSVGElementUnchecked self
  = liftDOM
      (((toSVGElement self) ^. js "ownerSVGElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.viewportElement Mozilla SVGElement.viewportElement documentation> 
getViewportElement ::
                   (MonadDOM m, IsSVGElement self) => self -> m (Maybe SVGElement)
getViewportElement self
  = liftDOM
      (((toSVGElement self) ^. js "viewportElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.viewportElement Mozilla SVGElement.viewportElement documentation> 
getViewportElementUnchecked ::
                            (MonadDOM m, IsSVGElement self) => self -> m SVGElement
getViewportElementUnchecked self
  = liftDOM
      (((toSVGElement self) ^. js "viewportElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
setXmllang ::
           (MonadDOM m, IsSVGElement self, ToJSString val) =>
             self -> val -> m ()
setXmllang self val
  = liftDOM ((toSVGElement self) ^. jss "xmllang" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
getXmllang ::
           (MonadDOM m, IsSVGElement self, FromJSString result) =>
             self -> m result
getXmllang self
  = liftDOM
      (((toSVGElement self) ^. js "xmllang") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
setXmlspace ::
            (MonadDOM m, IsSVGElement self, ToJSString val) =>
              self -> val -> m ()
setXmlspace self val
  = liftDOM ((toSVGElement self) ^. jss "xmlspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
getXmlspace ::
            (MonadDOM m, IsSVGElement self, FromJSString result) =>
              self -> m result
getXmlspace self
  = liftDOM
      (((toSVGElement self) ^. js "xmlspace") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.className Mozilla SVGElement.className documentation> 
getClassName ::
             (MonadDOM m, IsSVGElement self) =>
               self -> m (Maybe SVGAnimatedString)
getClassName self
  = liftDOM (((toSVGElement self) ^. js "className") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.className Mozilla SVGElement.className documentation> 
getClassNameUnchecked ::
                      (MonadDOM m, IsSVGElement self) => self -> m SVGAnimatedString
getClassNameUnchecked self
  = liftDOM
      (((toSVGElement self) ^. js "className") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.style Mozilla SVGElement.style documentation> 
getStyle ::
         (MonadDOM m, IsSVGElement self) =>
           self -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftDOM (((toSVGElement self) ^. js "style") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.style Mozilla SVGElement.style documentation> 
getStyleUnchecked ::
                  (MonadDOM m, IsSVGElement self) => self -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftDOM
      (((toSVGElement self) ^. js "style") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
setTabIndex ::
            (MonadDOM m, IsSVGElement self) => self -> Int -> m ()
setTabIndex self val
  = liftDOM ((toSVGElement self) ^. jss "tabIndex" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
getTabIndex :: (MonadDOM m, IsSVGElement self) => self -> m Int
getTabIndex self
  = liftDOM
      (round <$>
         (((toSVGElement self) ^. js "tabIndex") >>= valToNumber))
