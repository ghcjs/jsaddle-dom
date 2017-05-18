{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XPathException
       (toString, toString_, pattern INVALID_EXPRESSION_ERR,
        pattern TYPE_ERR, getCode, getName, getMessage, XPathException(..),
        gTypeXPathException)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.toString Mozilla XPathException.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => XPathException -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.toString Mozilla XPathException.toString documentation> 
toString_ :: (MonadDOM m) => XPathException -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))
pattern INVALID_EXPRESSION_ERR = 51
pattern TYPE_ERR = 52

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.code Mozilla XPathException.code documentation> 
getCode :: (MonadDOM m) => XPathException -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.name Mozilla XPathException.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => XPathException -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.message Mozilla XPathException.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) => XPathException -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)
