{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WritableStream
       (newWritableStream, abort, abort_, close, close_, write, write_,
        getClosed, getReady, getState, WritableStream(..),
        gTypeWritableStream)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream Mozilla WritableStream documentation> 
newWritableStream :: (MonadDOM m) => m WritableStream
newWritableStream
  = liftDOM (WritableStream <$> new (jsg "WritableStream") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.abort Mozilla WritableStream.abort documentation> 
abort ::
      (MonadDOM m, ToJSVal reason) =>
        WritableStream -> Maybe reason -> m JSVal
abort self reason
  = liftDOM
      (((self ^. jsf "abort" [toJSVal reason]) >>= readPromise) >>=
         toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.abort Mozilla WritableStream.abort documentation> 
abort_ ::
       (MonadDOM m, ToJSVal reason) =>
         WritableStream -> Maybe reason -> m ()
abort_ self reason
  = liftDOM (void (self ^. jsf "abort" [toJSVal reason]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.close Mozilla WritableStream.close documentation> 
close :: (MonadDOM m) => WritableStream -> m JSVal
close self
  = liftDOM (((self ^. jsf "close" ()) >>= readPromise) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.close Mozilla WritableStream.close documentation> 
close_ :: (MonadDOM m) => WritableStream -> m ()
close_ self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.write Mozilla WritableStream.write documentation> 
write ::
      (MonadDOM m, ToJSVal chunk) => WritableStream -> chunk -> m JSVal
write self chunk
  = liftDOM
      (((self ^. jsf "write" [toJSVal chunk]) >>= readPromise) >>=
         toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.write Mozilla WritableStream.write documentation> 
write_ ::
       (MonadDOM m, ToJSVal chunk) => WritableStream -> chunk -> m ()
write_ self chunk
  = liftDOM (void (self ^. jsf "write" [toJSVal chunk]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.closed Mozilla WritableStream.closed documentation> 
getClosed :: (MonadDOM m) => WritableStream -> m Bool
getClosed self
  = liftDOM (((self ^. js "closed") >>= readPromise) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.ready Mozilla WritableStream.ready documentation> 
getReady :: (MonadDOM m) => WritableStream -> m Bool
getReady self
  = liftDOM (((self ^. js "ready") >>= readPromise) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.state Mozilla WritableStream.state documentation> 
getState ::
         (MonadDOM m, FromJSString result) => WritableStream -> m result
getState self
  = liftDOM ((self ^. js "state") >>= fromJSValUnchecked)
