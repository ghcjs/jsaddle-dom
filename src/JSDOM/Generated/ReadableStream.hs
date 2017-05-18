{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableStream
       (newReadableStream, cancel, cancel_, getReader, getReader_, pipeTo,
        pipeTo_, pipeThrough, pipeThrough_, tee, tee_, getLocked,
        ReadableStream(..), gTypeReadableStream)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation> 
newReadableStream ::
                  (MonadDOM m, ToJSVal underlyingSource, ToJSVal options) =>
                    Maybe underlyingSource -> Maybe options -> m ReadableStream
newReadableStream underlyingSource options
  = liftDOM
      (ReadableStream <$>
         new (jsg "ReadableStream")
           [toJSVal underlyingSource, toJSVal options])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel ::
       (MonadDOM m, ToJSVal reason) =>
         ReadableStream -> Maybe reason -> m JSVal
cancel self reason
  = liftDOM
      (((self ^. jsf "cancel" [toJSVal reason]) >>= readPromise) >>=
         toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel_ ::
        (MonadDOM m, ToJSVal reason) =>
          ReadableStream -> Maybe reason -> m ()
cancel_ self reason
  = liftDOM (void (self ^. jsf "cancel" [toJSVal reason]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.getReader Mozilla ReadableStream.getReader documentation> 
getReader ::
          (MonadDOM m, ToJSVal options) =>
            ReadableStream -> Maybe options -> m GObject
getReader self options
  = liftDOM
      ((self ^. jsf "getReader" [toJSVal options]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.getReader Mozilla ReadableStream.getReader documentation> 
getReader_ ::
           (MonadDOM m, ToJSVal options) =>
             ReadableStream -> Maybe options -> m ()
getReader_ self options
  = liftDOM (void (self ^. jsf "getReader" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo ::
       (MonadDOM m, ToJSVal streams, ToJSVal options) =>
         ReadableStream -> streams -> Maybe options -> m JSVal
pipeTo self streams options
  = liftDOM
      (((self ^. jsf "pipeTo" [toJSVal streams, toJSVal options]) >>=
          readPromise)
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo_ ::
        (MonadDOM m, ToJSVal streams, ToJSVal options) =>
          ReadableStream -> streams -> Maybe options -> m ()
pipeTo_ self streams options
  = liftDOM
      (void (self ^. jsf "pipeTo" [toJSVal streams, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough ::
            (MonadDOM m, ToJSVal dest, ToJSVal options) =>
              ReadableStream -> dest -> options -> m GObject
pipeThrough self dest options
  = liftDOM
      ((self ^. jsf "pipeThrough" [toJSVal dest, toJSVal options]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough_ ::
             (MonadDOM m, ToJSVal dest, ToJSVal options) =>
               ReadableStream -> dest -> options -> m ()
pipeThrough_ self dest options
  = liftDOM
      (void (self ^. jsf "pipeThrough" [toJSVal dest, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.tee Mozilla ReadableStream.tee documentation> 
tee :: (MonadDOM m) => ReadableStream -> m GObject
tee self = liftDOM ((self ^. jsf "tee" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.tee Mozilla ReadableStream.tee documentation> 
tee_ :: (MonadDOM m) => ReadableStream -> m ()
tee_ self = liftDOM (void (self ^. jsf "tee" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.locked Mozilla ReadableStream.locked documentation> 
getLocked :: (MonadDOM m) => ReadableStream -> m Bool
getLocked self = liftDOM ((self ^. js "locked") >>= valToBool)
