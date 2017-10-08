{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeyStatusMap
       (has, has_, get, get_, getSize, MediaKeyStatusMap(..),
        gTypeMediaKeyStatusMap)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.has Mozilla MediaKeyStatusMap.has documentation> 
has ::
    (MonadDOM m, IsBufferSource keyId) =>
      MediaKeyStatusMap -> keyId -> m Bool
has self keyId
  = liftDOM ((self ^. jsf "has" [toJSVal keyId]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.has Mozilla MediaKeyStatusMap.has documentation> 
has_ ::
     (MonadDOM m, IsBufferSource keyId) =>
       MediaKeyStatusMap -> keyId -> m ()
has_ self keyId
  = liftDOM (void (self ^. jsf "has" [toJSVal keyId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.get Mozilla MediaKeyStatusMap.get documentation> 
get ::
    (MonadDOM m, IsBufferSource keyId) =>
      MediaKeyStatusMap -> keyId -> m JSVal
get self keyId
  = liftDOM ((self ^. jsf "get" [toJSVal keyId]) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.get Mozilla MediaKeyStatusMap.get documentation> 
get_ ::
     (MonadDOM m, IsBufferSource keyId) =>
       MediaKeyStatusMap -> keyId -> m ()
get_ self keyId
  = liftDOM (void (self ^. jsf "get" [toJSVal keyId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.size Mozilla MediaKeyStatusMap.size documentation> 
getSize :: (MonadDOM m) => MediaKeyStatusMap -> m Word
getSize self
  = liftDOM (round <$> ((self ^. js "size") >>= valToNumber))
