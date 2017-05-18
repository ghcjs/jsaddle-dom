{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLError
       (pattern UNKNOWN_ERR, pattern DATABASE_ERR, pattern VERSION_ERR,
        pattern TOO_LARGE_ERR, pattern QUOTA_ERR, pattern SYNTAX_ERR,
        pattern CONSTRAINT_ERR, pattern TIMEOUT_ERR, getCode, getMessage,
        SQLError(..), gTypeSQLError)
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
pattern UNKNOWN_ERR = 0
pattern DATABASE_ERR = 1
pattern VERSION_ERR = 2
pattern TOO_LARGE_ERR = 3
pattern QUOTA_ERR = 4
pattern SYNTAX_ERR = 5
pattern CONSTRAINT_ERR = 6
pattern TIMEOUT_ERR = 7

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.code Mozilla SQLError.code documentation> 
getCode :: (MonadDOM m) => SQLError -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.message Mozilla SQLError.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) => SQLError -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)
