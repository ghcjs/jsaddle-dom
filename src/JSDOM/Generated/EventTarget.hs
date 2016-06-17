{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.EventTarget
       (addEventListener, removeEventListener, dispatchEvent, EventTarget,
        castToEventTarget, gTypeEventTarget, IsEventTarget, toEventTarget)
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
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.addEventListener Mozilla EventTarget.addEventListener documentation> 
addEventListener ::
                 (MonadDOM m, IsEventTarget self, ToJSString type') =>
                   self -> type' -> Maybe EventListener -> Bool -> m ()
addEventListener self type' listener useCapture
  = liftDOM
      (void
         ((toEventTarget self) ^. jsf "addEventListener"
            [toJSVal type', toJSVal listener, toJSVal useCapture]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.removeEventListener Mozilla EventTarget.removeEventListener documentation> 
removeEventListener ::
                    (MonadDOM m, IsEventTarget self, ToJSString type') =>
                      self -> type' -> Maybe EventListener -> Bool -> m ()
removeEventListener self type' listener useCapture
  = liftDOM
      (void
         ((toEventTarget self) ^. jsf "removeEventListener"
            [toJSVal type', toJSVal listener, toJSVal useCapture]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
dispatchEvent ::
              (MonadDOM m, IsEventTarget self, IsEvent event) =>
                self -> Maybe event -> m Bool
dispatchEvent self event
  = liftDOM
      (((toEventTarget self) ^. jsf "dispatchEvent" [toJSVal event]) >>=
         valToBool)
