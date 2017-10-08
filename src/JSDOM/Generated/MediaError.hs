{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaError
       (pattern MEDIA_ERR_ABORTED, pattern MEDIA_ERR_NETWORK,
        pattern MEDIA_ERR_DECODE, pattern MEDIA_ERR_SRC_NOT_SUPPORTED,
        getCode, MediaError(..), gTypeMediaError)
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
pattern MEDIA_ERR_ABORTED = 1
pattern MEDIA_ERR_NETWORK = 2
pattern MEDIA_ERR_DECODE = 3
pattern MEDIA_ERR_SRC_NOT_SUPPORTED = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaError.code Mozilla MediaError.code documentation> 
getCode :: (MonadDOM m) => MediaError -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))
