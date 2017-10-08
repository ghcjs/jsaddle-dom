{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeySystemAccess
       (getConfiguration, getConfiguration_, createMediaKeys,
        createMediaKeys_, getKeySystem, MediaKeySystemAccess(..),
        gTypeMediaKeySystemAccess)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.getConfiguration Mozilla MediaKeySystemAccess.getConfiguration documentation> 
getConfiguration ::
                 (MonadDOM m) =>
                   MediaKeySystemAccess -> m MediaKeySystemConfiguration
getConfiguration self
  = liftDOM
      ((self ^. jsf "getConfiguration" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.getConfiguration Mozilla MediaKeySystemAccess.getConfiguration documentation> 
getConfiguration_ :: (MonadDOM m) => MediaKeySystemAccess -> m ()
getConfiguration_ self
  = liftDOM (void (self ^. jsf "getConfiguration" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.createMediaKeys Mozilla MediaKeySystemAccess.createMediaKeys documentation> 
createMediaKeys ::
                (MonadDOM m) => MediaKeySystemAccess -> m MediaKeys
createMediaKeys self
  = liftDOM
      (((self ^. jsf "createMediaKeys" ()) >>= readPromise) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.createMediaKeys Mozilla MediaKeySystemAccess.createMediaKeys documentation> 
createMediaKeys_ :: (MonadDOM m) => MediaKeySystemAccess -> m ()
createMediaKeys_ self
  = liftDOM (void (self ^. jsf "createMediaKeys" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.keySystem Mozilla MediaKeySystemAccess.keySystem documentation> 
getKeySystem ::
             (MonadDOM m, FromJSString result) =>
               MediaKeySystemAccess -> m result
getKeySystem self
  = liftDOM ((self ^. js "keySystem") >>= fromJSValUnchecked)
