{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGPULibrary
       (functionWithName, functionWithName_, functionWithNameUnsafe,
        functionWithNameUnchecked, getSourceCode, setLabel, getLabel,
        getFunctionNames, WebGPULibrary(..), gTypeWebGPULibrary)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithName ::
                 (MonadDOM m, ToJSString name) =>
                   WebGPULibrary -> name -> m (Maybe WebGPUFunction)
functionWithName self name
  = liftDOM
      ((self ^. jsf "functionWithName" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithName_ ::
                  (MonadDOM m, ToJSString name) => WebGPULibrary -> name -> m ()
functionWithName_ self name
  = liftDOM (void (self ^. jsf "functionWithName" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithNameUnsafe ::
                       (MonadDOM m, ToJSString name, HasCallStack) =>
                         WebGPULibrary -> name -> m WebGPUFunction
functionWithNameUnsafe self name
  = liftDOM
      (((self ^. jsf "functionWithName" [toJSVal name]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithNameUnchecked ::
                          (MonadDOM m, ToJSString name) =>
                            WebGPULibrary -> name -> m WebGPUFunction
functionWithNameUnchecked self name
  = liftDOM
      ((self ^. jsf "functionWithName" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.sourceCode Mozilla WebGPULibrary.sourceCode documentation> 
getSourceCode ::
              (MonadDOM m, FromJSString result) => WebGPULibrary -> m result
getSourceCode self
  = liftDOM ((self ^. js "sourceCode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.label Mozilla WebGPULibrary.label documentation> 
setLabel ::
         (MonadDOM m, ToJSString val) => WebGPULibrary -> val -> m ()
setLabel self val = liftDOM (self ^. jss "label" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.label Mozilla WebGPULibrary.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => WebGPULibrary -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionNames Mozilla WebGPULibrary.functionNames documentation> 
getFunctionNames ::
                 (MonadDOM m, FromJSString result) => WebGPULibrary -> m [result]
getFunctionNames self
  = liftDOM ((self ^. js "functionNames") >>= fromJSArrayUnchecked)
