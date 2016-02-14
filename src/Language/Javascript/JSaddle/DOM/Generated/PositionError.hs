{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.PositionError
       (pattern PERMISSION_DENIED, pattern POSITION_UNAVAILABLE,
        pattern TIMEOUT, getCode, getMessage, PositionError,
        castToPositionError, gTypePositionError)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums
pattern PERMISSION_DENIED = 1
pattern POSITION_UNAVAILABLE = 2
pattern TIMEOUT = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.code Mozilla PositionError.code documentation> 
getCode :: (MonadDOM m) => PositionError -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.message Mozilla PositionError.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) => PositionError -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)