{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMException
       (newDOMException, toString, toString_, pattern INDEX_SIZE_ERR,
        pattern DOMSTRING_SIZE_ERR, pattern HIERARCHY_REQUEST_ERR,
        pattern WRONG_DOCUMENT_ERR, pattern INVALID_CHARACTER_ERR,
        pattern NO_DATA_ALLOWED_ERR, pattern NO_MODIFICATION_ALLOWED_ERR,
        pattern NOT_FOUND_ERR, pattern NOT_SUPPORTED_ERR,
        pattern INUSE_ATTRIBUTE_ERR, pattern INVALID_STATE_ERR,
        pattern SYNTAX_ERR, pattern INVALID_MODIFICATION_ERR,
        pattern NAMESPACE_ERR, pattern INVALID_ACCESS_ERR,
        pattern VALIDATION_ERR, pattern TYPE_MISMATCH_ERR,
        pattern SECURITY_ERR, pattern NETWORK_ERR, pattern ABORT_ERR,
        pattern URL_MISMATCH_ERR, pattern QUOTA_EXCEEDED_ERR,
        pattern TIMEOUT_ERR, pattern INVALID_NODE_TYPE_ERR,
        pattern DATA_CLONE_ERR, getCode, getName, getMessage,
        DOMException(..), gTypeDOMException)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException Mozilla DOMException documentation> 
newDOMException ::
                (MonadDOM m, ToJSString message, ToJSString name) =>
                  Maybe message -> Maybe name -> m DOMException
newDOMException message name
  = liftDOM
      (DOMException <$>
         new (jsg "DOMException") [toJSVal message, toJSVal name])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.toString Mozilla DOMException.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => DOMException -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.toString Mozilla DOMException.toString documentation> 
toString_ :: (MonadDOM m) => DOMException -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))
pattern INDEX_SIZE_ERR = 1
pattern DOMSTRING_SIZE_ERR = 2
pattern HIERARCHY_REQUEST_ERR = 3
pattern WRONG_DOCUMENT_ERR = 4
pattern INVALID_CHARACTER_ERR = 5
pattern NO_DATA_ALLOWED_ERR = 6
pattern NO_MODIFICATION_ALLOWED_ERR = 7
pattern NOT_FOUND_ERR = 8
pattern NOT_SUPPORTED_ERR = 9
pattern INUSE_ATTRIBUTE_ERR = 10
pattern INVALID_STATE_ERR = 11
pattern SYNTAX_ERR = 12
pattern INVALID_MODIFICATION_ERR = 13
pattern NAMESPACE_ERR = 14
pattern INVALID_ACCESS_ERR = 15
pattern VALIDATION_ERR = 16
pattern TYPE_MISMATCH_ERR = 17
pattern SECURITY_ERR = 18
pattern NETWORK_ERR = 19
pattern ABORT_ERR = 20
pattern URL_MISMATCH_ERR = 21
pattern QUOTA_EXCEEDED_ERR = 22
pattern TIMEOUT_ERR = 23
pattern INVALID_NODE_TYPE_ERR = 24
pattern DATA_CLONE_ERR = 25

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.code Mozilla DOMException.code documentation> 
getCode :: (MonadDOM m) => DOMException -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.name Mozilla DOMException.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => DOMException -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.message Mozilla DOMException.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) => DOMException -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)
