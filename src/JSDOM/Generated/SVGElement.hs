{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGElement
       (getPresentationAttribute, getPresentationAttribute_, focus, blur,
        getOwnerSVGElement, getViewportElement, setXmllang, getXmllang,
        setXmlspace, getXmlspace, getClassName, setTabIndex, getTabIndex,
        getDataset, SVGElement(..), gTypeSVGElement, IsSVGElement,
        toSVGElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute ::
                         (MonadDOM m, IsSVGElement self, ToJSString name) =>
                           self -> Maybe name -> m CSSValue
getPresentationAttribute self name
  = liftDOM
      (((toSVGElement self) ^. jsf "getPresentationAttribute"
          [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute_ ::
                          (MonadDOM m, IsSVGElement self, ToJSString name) =>
                            self -> Maybe name -> m ()
getPresentationAttribute_ self name
  = liftDOM
      (void
         ((toSVGElement self) ^. jsf "getPresentationAttribute"
            [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.focus Mozilla SVGElement.focus documentation> 
focus :: (MonadDOM m, IsSVGElement self) => self -> m ()
focus self = liftDOM (void ((toSVGElement self) ^. jsf "focus" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.blur Mozilla SVGElement.blur documentation> 
blur :: (MonadDOM m, IsSVGElement self) => self -> m ()
blur self = liftDOM (void ((toSVGElement self) ^. jsf "blur" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.ownerSVGElement Mozilla SVGElement.ownerSVGElement documentation> 
getOwnerSVGElement ::
                   (MonadDOM m, IsSVGElement self) => self -> m SVGSVGElement
getOwnerSVGElement self
  = liftDOM
      (((toSVGElement self) ^. js "ownerSVGElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.viewportElement Mozilla SVGElement.viewportElement documentation> 
getViewportElement ::
                   (MonadDOM m, IsSVGElement self) => self -> m SVGElement
getViewportElement self
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
             (MonadDOM m, IsSVGElement self) => self -> m SVGAnimatedString
getClassName self
  = liftDOM
      (((toSVGElement self) ^. js "className") >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.dataset Mozilla SVGElement.dataset documentation> 
getDataset ::
           (MonadDOM m, IsSVGElement self) => self -> m DOMStringMap
getDataset self
  = liftDOM
      (((toSVGElement self) ^. js "dataset") >>= fromJSValUnchecked)
