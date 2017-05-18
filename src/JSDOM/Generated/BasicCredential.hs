{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.BasicCredential
       (getId, getType, BasicCredential(..), gTypeBasicCredential,
        IsBasicCredential, toBasicCredential)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BasicCredential.id Mozilla BasicCredential.id documentation> 
getId ::
      (MonadDOM m, IsBasicCredential self, FromJSString result) =>
        self -> m result
getId self
  = liftDOM
      (((toBasicCredential self) ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BasicCredential.type Mozilla BasicCredential.type documentation> 
getType ::
        (MonadDOM m, IsBasicCredential self, FromJSString result) =>
          self -> m result
getType self
  = liftDOM
      (((toBasicCredential self) ^. js "type") >>= fromJSValUnchecked)
