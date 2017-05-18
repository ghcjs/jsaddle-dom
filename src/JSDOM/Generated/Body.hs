{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Body
       (arrayBuffer, arrayBuffer_, blob, blob_, json, json_, text, text_,
        getBodyUsed, Body(..), gTypeBody, IsBody, toBody)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.arrayBuffer Mozilla Body.arrayBuffer documentation> 
arrayBuffer :: (MonadDOM m, IsBody self) => self -> m ArrayBuffer
arrayBuffer self
  = liftDOM
      ((((toBody self) ^. jsf "arrayBuffer" ()) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.arrayBuffer Mozilla Body.arrayBuffer documentation> 
arrayBuffer_ :: (MonadDOM m, IsBody self) => self -> m ()
arrayBuffer_ self
  = liftDOM (void ((toBody self) ^. jsf "arrayBuffer" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.blob Mozilla Body.blob documentation> 
blob :: (MonadDOM m, IsBody self) => self -> m Blob
blob self
  = liftDOM
      ((((toBody self) ^. jsf "blob" ()) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.blob Mozilla Body.blob documentation> 
blob_ :: (MonadDOM m, IsBody self) => self -> m ()
blob_ self = liftDOM (void ((toBody self) ^. jsf "blob" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.json Mozilla Body.json documentation> 
json :: (MonadDOM m, IsBody self) => self -> m JSVal
json self
  = liftDOM
      ((((toBody self) ^. jsf "json" ()) >>= readPromise) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.json Mozilla Body.json documentation> 
json_ :: (MonadDOM m, IsBody self) => self -> m ()
json_ self = liftDOM (void ((toBody self) ^. jsf "json" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.text Mozilla Body.text documentation> 
text ::
     (MonadDOM m, IsBody self, FromJSString result) => self -> m result
text self
  = liftDOM
      ((((toBody self) ^. jsf "text" ()) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.text Mozilla Body.text documentation> 
text_ :: (MonadDOM m, IsBody self) => self -> m ()
text_ self = liftDOM (void ((toBody self) ^. jsf "text" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.bodyUsed Mozilla Body.bodyUsed documentation> 
getBodyUsed :: (MonadDOM m, IsBody self) => self -> m Bool
getBodyUsed self
  = liftDOM (((toBody self) ^. js "bodyUsed") >>= valToBool)
