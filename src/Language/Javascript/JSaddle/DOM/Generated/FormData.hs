{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.FormData
       (newFormData, append, FormData, castToFormData, gTypeFormData)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation> 
newFormData :: (MonadDOM m) => Maybe HTMLFormElement -> m FormData
newFormData form
  = liftDOM (FormData <$> new (jsg "FormData") [toJSVal form])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
append ::
       (MonadDOM m, ToJSString name, ToJSString value,
        ToJSString filename) =>
         FormData -> name -> value -> filename -> m ()
append self name value filename
  = liftDOM
      (void
         (self ^. jsf "append"
            [toJSVal name, toJSVal value, toJSVal filename]))