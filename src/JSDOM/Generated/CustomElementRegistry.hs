{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CustomElementRegistry
       (define, get, get_, whenDefined, CustomElementRegistry(..),
        gTypeCustomElementRegistry)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.define Mozilla CustomElementRegistry.define documentation> 
define ::
       (MonadDOM m, ToJSString name, IsFunction constructor) =>
         CustomElementRegistry -> name -> constructor -> m ()
define self name constructor
  = liftDOM
      (void (self ^. jsf "define" [toJSVal name, toJSVal constructor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.get Mozilla CustomElementRegistry.get documentation> 
get ::
    (MonadDOM m, ToJSString name) =>
      CustomElementRegistry -> name -> m JSVal
get self name
  = liftDOM ((self ^. jsf "get" [toJSVal name]) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.get Mozilla CustomElementRegistry.get documentation> 
get_ ::
     (MonadDOM m, ToJSString name) =>
       CustomElementRegistry -> name -> m ()
get_ self name = liftDOM (void (self ^. jsf "get" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.whenDefined Mozilla CustomElementRegistry.whenDefined documentation> 
whenDefined ::
            (MonadDOM m, ToJSString name) =>
              CustomElementRegistry -> name -> m ()
whenDefined self name
  = liftDOM
      (void ((self ^. jsf "whenDefined" [toJSVal name]) >>= readPromise))
