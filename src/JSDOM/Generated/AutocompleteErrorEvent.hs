{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AutocompleteErrorEvent
       (newAutocompleteErrorEvent, getReason, AutocompleteErrorEvent(..),
        gTypeAutocompleteErrorEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent Mozilla AutocompleteErrorEvent documentation> 
newAutocompleteErrorEvent ::
                          (MonadDOM m, ToJSString type') =>
                            type' ->
                              Maybe AutocompleteErrorEventInit -> m AutocompleteErrorEvent
newAutocompleteErrorEvent type' eventInitDict
  = liftDOM
      (AutocompleteErrorEvent <$>
         new (jsg "AutocompleteErrorEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent.reason Mozilla AutocompleteErrorEvent.reason documentation> 
getReason ::
          (MonadDOM m, FromJSString result) =>
            AutocompleteErrorEvent -> m result
getReason self
  = liftDOM ((self ^. js "reason") >>= fromJSValUnchecked)
