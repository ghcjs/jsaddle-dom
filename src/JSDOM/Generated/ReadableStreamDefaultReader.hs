{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableStreamDefaultReader
       (newReadableStreamDefaultReader, read, read_, cancel, cancel_,
        releaseLock, getClosed, ReadableStreamDefaultReader(..),
        gTypeReadableStreamDefaultReader)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader Mozilla ReadableStreamDefaultReader documentation> 
newReadableStreamDefaultReader ::
                               (MonadDOM m) => ReadableStream -> m ReadableStreamDefaultReader
newReadableStreamDefaultReader stream
  = liftDOM
      (ReadableStreamDefaultReader <$>
         new (jsg "ReadableStreamDefaultReader") [toJSVal stream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.read Mozilla ReadableStreamDefaultReader.read documentation> 
read :: (MonadDOM m) => ReadableStreamDefaultReader -> m JSVal
read self
  = liftDOM (((self ^. jsf "read" ()) >>= readPromise) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.read Mozilla ReadableStreamDefaultReader.read documentation> 
read_ :: (MonadDOM m) => ReadableStreamDefaultReader -> m ()
read_ self = liftDOM (void (self ^. jsf "read" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.cancel Mozilla ReadableStreamDefaultReader.cancel documentation> 
cancel ::
       (MonadDOM m, ToJSVal reason) =>
         ReadableStreamDefaultReader -> Maybe reason -> m JSVal
cancel self reason
  = liftDOM
      (((self ^. jsf "cancel" [toJSVal reason]) >>= readPromise) >>=
         toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.cancel Mozilla ReadableStreamDefaultReader.cancel documentation> 
cancel_ ::
        (MonadDOM m, ToJSVal reason) =>
          ReadableStreamDefaultReader -> Maybe reason -> m ()
cancel_ self reason
  = liftDOM (void (self ^. jsf "cancel" [toJSVal reason]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.releaseLock Mozilla ReadableStreamDefaultReader.releaseLock documentation> 
releaseLock :: (MonadDOM m) => ReadableStreamDefaultReader -> m ()
releaseLock self = liftDOM (void (self ^. jsf "releaseLock" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.closed Mozilla ReadableStreamDefaultReader.closed documentation> 
getClosed :: (MonadDOM m) => ReadableStreamDefaultReader -> m Bool
getClosed self
  = liftDOM (((self ^. js "closed") >>= readPromise) >>= valToBool)
