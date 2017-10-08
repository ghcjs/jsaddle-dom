{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NavigatorLanguage
       (getLanguage, getLanguages, NavigatorLanguage(..),
        gTypeNavigatorLanguage, IsNavigatorLanguage, toNavigatorLanguage)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorLanguage.language Mozilla NavigatorLanguage.language documentation> 
getLanguage ::
            (MonadDOM m, IsNavigatorLanguage self, FromJSString result) =>
              self -> m result
getLanguage self
  = liftDOM
      (((toNavigatorLanguage self) ^. js "language") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorLanguage.languages Mozilla NavigatorLanguage.languages documentation> 
getLanguages ::
             (MonadDOM m, IsNavigatorLanguage self, FromJSString result) =>
               self -> m [result]
getLanguages self
  = liftDOM
      (((toNavigatorLanguage self) ^. js "languages") >>=
         fromJSArrayUnchecked)
