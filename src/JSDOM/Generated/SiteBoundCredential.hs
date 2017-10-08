{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SiteBoundCredential
       (getName, getIconURL, SiteBoundCredential(..),
        gTypeSiteBoundCredential, IsSiteBoundCredential,
        toSiteBoundCredential)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SiteBoundCredential.name Mozilla SiteBoundCredential.name documentation> 
getName ::
        (MonadDOM m, IsSiteBoundCredential self, FromJSString result) =>
          self -> m result
getName self
  = liftDOM
      (((toSiteBoundCredential self) ^. js "name") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SiteBoundCredential.iconURL Mozilla SiteBoundCredential.iconURL documentation> 
getIconURL ::
           (MonadDOM m, IsSiteBoundCredential self, FromJSString result) =>
             self -> m result
getIconURL self
  = liftDOM
      (((toSiteBoundCredential self) ^. js "iconURL") >>=
         fromJSValUnchecked)
