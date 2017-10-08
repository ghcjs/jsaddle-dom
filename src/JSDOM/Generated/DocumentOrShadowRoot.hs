{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DocumentOrShadowRoot
       (elementFromPoint, elementFromPoint_, elementFromPointUnsafe,
        elementFromPointUnchecked, getActiveElement,
        getActiveElementUnsafe, getActiveElementUnchecked,
        getPointerLockElement, getPointerLockElementUnsafe,
        getPointerLockElementUnchecked, DocumentOrShadowRoot(..),
        gTypeDocumentOrShadowRoot, IsDocumentOrShadowRoot,
        toDocumentOrShadowRoot)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPoint ::
                 (MonadDOM m, IsDocumentOrShadowRoot self) =>
                   self -> Double -> Double -> m (Maybe Element)
elementFromPoint self x y
  = liftDOM
      (((toDocumentOrShadowRoot self) ^. jsf "elementFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPoint_ ::
                  (MonadDOM m, IsDocumentOrShadowRoot self) =>
                    self -> Double -> Double -> m ()
elementFromPoint_ self x y
  = liftDOM
      (void
         ((toDocumentOrShadowRoot self) ^. jsf "elementFromPoint"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPointUnsafe ::
                       (MonadDOM m, IsDocumentOrShadowRoot self, HasCallStack) =>
                         self -> Double -> Double -> m Element
elementFromPointUnsafe self x y
  = liftDOM
      ((((toDocumentOrShadowRoot self) ^. jsf "elementFromPoint"
           [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPointUnchecked ::
                          (MonadDOM m, IsDocumentOrShadowRoot self) =>
                            self -> Double -> Double -> m Element
elementFromPointUnchecked self x y
  = liftDOM
      (((toDocumentOrShadowRoot self) ^. jsf "elementFromPoint"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.activeElement Mozilla DocumentOrShadowRoot.activeElement documentation> 
getActiveElement ::
                 (MonadDOM m, IsDocumentOrShadowRoot self) =>
                   self -> m (Maybe Element)
getActiveElement self
  = liftDOM
      (((toDocumentOrShadowRoot self) ^. js "activeElement") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.activeElement Mozilla DocumentOrShadowRoot.activeElement documentation> 
getActiveElementUnsafe ::
                       (MonadDOM m, IsDocumentOrShadowRoot self, HasCallStack) =>
                         self -> m Element
getActiveElementUnsafe self
  = liftDOM
      ((((toDocumentOrShadowRoot self) ^. js "activeElement") >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.activeElement Mozilla DocumentOrShadowRoot.activeElement documentation> 
getActiveElementUnchecked ::
                          (MonadDOM m, IsDocumentOrShadowRoot self) => self -> m Element
getActiveElementUnchecked self
  = liftDOM
      (((toDocumentOrShadowRoot self) ^. js "activeElement") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.pointerLockElement Mozilla DocumentOrShadowRoot.pointerLockElement documentation> 
getPointerLockElement ::
                      (MonadDOM m, IsDocumentOrShadowRoot self) =>
                        self -> m (Maybe Element)
getPointerLockElement self
  = liftDOM
      (((toDocumentOrShadowRoot self) ^. js "pointerLockElement") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.pointerLockElement Mozilla DocumentOrShadowRoot.pointerLockElement documentation> 
getPointerLockElementUnsafe ::
                            (MonadDOM m, IsDocumentOrShadowRoot self, HasCallStack) =>
                              self -> m Element
getPointerLockElementUnsafe self
  = liftDOM
      ((((toDocumentOrShadowRoot self) ^. js "pointerLockElement") >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.pointerLockElement Mozilla DocumentOrShadowRoot.pointerLockElement documentation> 
getPointerLockElementUnchecked ::
                               (MonadDOM m, IsDocumentOrShadowRoot self) => self -> m Element
getPointerLockElementUnchecked self
  = liftDOM
      (((toDocumentOrShadowRoot self) ^. js "pointerLockElement") >>=
         fromJSValUnchecked)
