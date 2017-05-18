{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableStreamBYOBRequest
       (newReadableStreamBYOBRequest, respond, respondWithNewView,
        getView, ReadableStreamBYOBRequest(..),
        gTypeReadableStreamBYOBRequest)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest Mozilla ReadableStreamBYOBRequest documentation> 
newReadableStreamBYOBRequest ::
                             (MonadDOM m, IsRawTypedArray view) =>
                               ReadableByteStreamController -> view -> m ReadableStreamBYOBRequest
newReadableStreamBYOBRequest controller view
  = liftDOM
      (ReadableStreamBYOBRequest <$>
         new (jsg "ReadableStreamBYOBRequest")
           [toJSVal controller, toJSVal view])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest.respond Mozilla ReadableStreamBYOBRequest.respond documentation> 
respond ::
        (MonadDOM m, ToJSVal bytesWritten) =>
          ReadableStreamBYOBRequest -> Maybe bytesWritten -> m ()
respond self bytesWritten
  = liftDOM (void (self ^. jsf "respond" [toJSVal bytesWritten]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest.respondWithNewView Mozilla ReadableStreamBYOBRequest.respondWithNewView documentation> 
respondWithNewView ::
                   (MonadDOM m, ToJSVal view) =>
                     ReadableStreamBYOBRequest -> Maybe view -> m ()
respondWithNewView self view
  = liftDOM (void (self ^. jsf "respondWithNewView" [toJSVal view]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest.view Mozilla ReadableStreamBYOBRequest.view documentation> 
getView ::
        (MonadDOM m) => ReadableStreamBYOBRequest -> m RawTypedArray
getView self = liftDOM ((self ^. js "view") >>= fromJSValUnchecked)
