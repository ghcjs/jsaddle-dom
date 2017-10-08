{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FileException
       (toString, toString_, pattern NOT_FOUND_ERR, pattern SECURITY_ERR,
        pattern ABORT_ERR, pattern NOT_READABLE_ERR, pattern ENCODING_ERR,
        pattern NO_MODIFICATION_ALLOWED_ERR, pattern INVALID_STATE_ERR,
        pattern SYNTAX_ERR, pattern INVALID_MODIFICATION_ERR,
        pattern QUOTA_EXCEEDED_ERR, pattern TYPE_MISMATCH_ERR,
        pattern PATH_EXISTS_ERR, getCode, getName, getMessage,
        FileException(..), gTypeFileException)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.toString Mozilla FileException.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => FileException -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.toString Mozilla FileException.toString documentation> 
toString_ :: (MonadDOM m) => FileException -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))
pattern NOT_FOUND_ERR = 1
pattern SECURITY_ERR = 2
pattern ABORT_ERR = 3
pattern NOT_READABLE_ERR = 4
pattern ENCODING_ERR = 5
pattern NO_MODIFICATION_ALLOWED_ERR = 6
pattern INVALID_STATE_ERR = 7
pattern SYNTAX_ERR = 8
pattern INVALID_MODIFICATION_ERR = 9
pattern QUOTA_EXCEEDED_ERR = 10
pattern TYPE_MISMATCH_ERR = 11
pattern PATH_EXISTS_ERR = 12

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.code Mozilla FileException.code documentation> 
getCode :: (MonadDOM m) => FileException -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.name Mozilla FileException.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => FileException -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.message Mozilla FileException.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) => FileException -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)
