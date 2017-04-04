{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.EventTarget
       (addEventListener, removeEventListener, dispatchEvent,
        dispatchEvent_, EventTarget(..), gTypeEventTarget, IsEventTarget,
        toEventTarget)
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
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.addEventListener Mozilla EventTarget.addEventListener documentation> 
addEventListener ::
                 (MonadDOM m, IsEventTarget self, ToJSString type',
                  IsAddEventListenerOptionsOrBool options) =>
                   self -> type' -> Maybe EventListener -> options -> m ()
addEventListener self type' callback options
  = liftDOM
      (void
         ((toEventTarget self) ^. jsf "addEventListener"
            [toJSVal type', toJSVal callback, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.removeEventListener Mozilla EventTarget.removeEventListener documentation> 
removeEventListener ::
                    (MonadDOM m, IsEventTarget self, ToJSString type',
                     IsEventListenerOptionsOrBool options) =>
                      self -> type' -> Maybe EventListener -> options -> m ()
removeEventListener self type' callback options
  = liftDOM
      (void
         ((toEventTarget self) ^. jsf "removeEventListener"
            [toJSVal type', toJSVal callback, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
dispatchEvent ::
              (MonadDOM m, IsEventTarget self, IsEvent event) =>
                self -> event -> m Bool
dispatchEvent self event
  = liftDOM
      (((toEventTarget self) ^. jsf "dispatchEvent" [toJSVal event]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
dispatchEvent_ ::
               (MonadDOM m, IsEventTarget self, IsEvent event) =>
                 self -> event -> m ()
dispatchEvent_ self event
  = liftDOM
      (void
         ((toEventTarget self) ^. jsf "dispatchEvent" [toJSVal event]))
