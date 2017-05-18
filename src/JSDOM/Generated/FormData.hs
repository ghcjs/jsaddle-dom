{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FormData
       (newFormData, append, appendBlob, FormData(..), gTypeFormData)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation> 
newFormData :: (MonadDOM m) => Maybe HTMLFormElement -> m FormData
newFormData form
  = liftDOM (FormData <$> new (jsg "FormData") [toJSVal form])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
append ::
       (MonadDOM m, ToJSString name, ToJSString value) =>
         FormData -> name -> value -> m ()
append self name value
  = liftDOM
      (void (self ^. jsf "append" [toJSVal name, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
appendBlob ::
           (MonadDOM m, ToJSString name, IsBlob value, ToJSString filename) =>
             FormData -> name -> value -> Maybe filename -> m ()
appendBlob self name value filename
  = liftDOM
      (void
         (self ^. jsf "append"
            [toJSVal name, toJSVal value, toJSVal filename]))
