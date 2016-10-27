{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeyError
       (pattern MEDIA_KEYERR_UNKNOWN, pattern MEDIA_KEYERR_CLIENT,
        pattern MEDIA_KEYERR_SERVICE, pattern MEDIA_KEYERR_OUTPUT,
        pattern MEDIA_KEYERR_HARDWARECHANGE, pattern MEDIA_KEYERR_DOMAIN,
        getCode, getSystemCode, MediaKeyError(..), gTypeMediaKeyError)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums
pattern MEDIA_KEYERR_UNKNOWN = 1
pattern MEDIA_KEYERR_CLIENT = 2
pattern MEDIA_KEYERR_SERVICE = 3
pattern MEDIA_KEYERR_OUTPUT = 4
pattern MEDIA_KEYERR_HARDWARECHANGE = 5
pattern MEDIA_KEYERR_DOMAIN = 6

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.code Mozilla WebKitMediaKeyError.code documentation> 
getCode :: (MonadDOM m) => MediaKeyError -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.systemCode Mozilla WebKitMediaKeyError.systemCode documentation> 
getSystemCode :: (MonadDOM m) => MediaKeyError -> m Word
getSystemCode self
  = liftDOM (round <$> ((self ^. js "systemCode") >>= valToNumber))
