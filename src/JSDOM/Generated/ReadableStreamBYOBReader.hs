{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableStreamBYOBReader
       (newReadableStreamBYOBReader, read, read_, cancel, cancel_,
        releaseLock, getClosed, ReadableStreamBYOBReader(..),
        gTypeReadableStreamBYOBReader)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader Mozilla ReadableStreamBYOBReader documentation> 
newReadableStreamBYOBReader ::
                            (MonadDOM m) => ReadableStream -> m ReadableStreamBYOBReader
newReadableStreamBYOBReader stream
  = liftDOM
      (ReadableStreamBYOBReader <$>
         new (jsg "ReadableStreamBYOBReader") [toJSVal stream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.read Mozilla ReadableStreamBYOBReader.read documentation> 
read ::
     (MonadDOM m, ToJSVal view) =>
       ReadableStreamBYOBReader -> Maybe view -> m JSVal
read self view
  = liftDOM
      (((self ^. jsf "read" [toJSVal view]) >>= readPromise) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.read Mozilla ReadableStreamBYOBReader.read documentation> 
read_ ::
      (MonadDOM m, ToJSVal view) =>
        ReadableStreamBYOBReader -> Maybe view -> m ()
read_ self view
  = liftDOM (void (self ^. jsf "read" [toJSVal view]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.cancel Mozilla ReadableStreamBYOBReader.cancel documentation> 
cancel ::
       (MonadDOM m, ToJSVal reason) =>
         ReadableStreamBYOBReader -> Maybe reason -> m JSVal
cancel self reason
  = liftDOM
      (((self ^. jsf "cancel" [toJSVal reason]) >>= readPromise) >>=
         toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.cancel Mozilla ReadableStreamBYOBReader.cancel documentation> 
cancel_ ::
        (MonadDOM m, ToJSVal reason) =>
          ReadableStreamBYOBReader -> Maybe reason -> m ()
cancel_ self reason
  = liftDOM (void (self ^. jsf "cancel" [toJSVal reason]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.releaseLock Mozilla ReadableStreamBYOBReader.releaseLock documentation> 
releaseLock :: (MonadDOM m) => ReadableStreamBYOBReader -> m ()
releaseLock self = liftDOM (void (self ^. jsf "releaseLock" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.closed Mozilla ReadableStreamBYOBReader.closed documentation> 
getClosed :: (MonadDOM m) => ReadableStreamBYOBReader -> m Bool
getClosed self
  = liftDOM (((self ^. js "closed") >>= readPromise) >>= valToBool)
