{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.XMLHttpRequestProgressEvent
       (getPosition, getTotalSize, XMLHttpRequestProgressEvent,
        castToXMLHttpRequestProgressEvent,
        gTypeXMLHttpRequestProgressEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.position Mozilla XMLHttpRequestProgressEvent.position documentation> 
getPosition ::
            (MonadDOM m) => XMLHttpRequestProgressEvent -> m Word64
getPosition self
  = liftDOM (round <$> ((self ^. js "position") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.totalSize Mozilla XMLHttpRequestProgressEvent.totalSize documentation> 
getTotalSize ::
             (MonadDOM m) => XMLHttpRequestProgressEvent -> m Word64
getTotalSize self
  = liftDOM (round <$> ((self ^. js "totalSize") >>= valToNumber))