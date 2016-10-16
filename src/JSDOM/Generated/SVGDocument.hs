{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGDocument
       (createEvent, createEvent_, createEventUnsafe,
        createEventUnchecked, getRootElement, getRootElementUnsafe,
        getRootElementUnchecked, SVGDocument(..), gTypeSVGDocument)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEvent ::
            (MonadDOM m, ToJSString eventType) =>
              SVGDocument -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftDOM
      ((self ^. jsf "createEvent" [toJSVal eventType]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEvent_ ::
             (MonadDOM m, ToJSString eventType) =>
               SVGDocument -> eventType -> m ()
createEvent_ self eventType
  = liftDOM (void (self ^. jsf "createEvent" [toJSVal eventType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEventUnsafe ::
                  (MonadDOM m, ToJSString eventType, HasCallStack) =>
                    SVGDocument -> eventType -> m Event
createEventUnsafe self eventType
  = liftDOM
      (((self ^. jsf "createEvent" [toJSVal eventType]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEventUnchecked ::
                     (MonadDOM m, ToJSString eventType) =>
                       SVGDocument -> eventType -> m Event
createEventUnchecked self eventType
  = liftDOM
      ((self ^. jsf "createEvent" [toJSVal eventType]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElement ::
               (MonadDOM m) => SVGDocument -> m (Maybe SVGSVGElement)
getRootElement self
  = liftDOM ((self ^. js "rootElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElementUnsafe ::
                     (MonadDOM m, HasCallStack) => SVGDocument -> m SVGSVGElement
getRootElementUnsafe self
  = liftDOM
      (((self ^. js "rootElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElementUnchecked ::
                        (MonadDOM m) => SVGDocument -> m SVGSVGElement
getRootElementUnchecked self
  = liftDOM ((self ^. js "rootElement") >>= fromJSValUnchecked)
