{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableByteStreamController
       (newReadableByteStreamController, enqueue, close, error,
        getDesiredSize, ReadableByteStreamController(..),
        gTypeReadableByteStreamController)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController Mozilla ReadableByteStreamController documentation> 
newReadableByteStreamController ::
                                (MonadDOM m, ToJSVal underlyingByteSource) =>
                                  ReadableStream ->
                                    underlyingByteSource -> Word -> m ReadableByteStreamController
newReadableByteStreamController stream underlyingByteSource
  highWaterMark
  = liftDOM
      (ReadableByteStreamController <$>
         new (jsg "ReadableByteStreamController")
           [toJSVal stream, toJSVal underlyingByteSource,
            toJSVal highWaterMark])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.enqueue Mozilla ReadableByteStreamController.enqueue documentation> 
enqueue ::
        (MonadDOM m, ToJSVal chunk) =>
          ReadableByteStreamController -> Maybe chunk -> m ()
enqueue self chunk
  = liftDOM (void (self ^. jsf "enqueue" [toJSVal chunk]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.close Mozilla ReadableByteStreamController.close documentation> 
close :: (MonadDOM m) => ReadableByteStreamController -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.error Mozilla ReadableByteStreamController.error documentation> 
error ::
      (MonadDOM m, ToJSVal error) =>
        ReadableByteStreamController -> Maybe error -> m ()
error self error
  = liftDOM (void (self ^. jsf "error" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.desiredSize Mozilla ReadableByteStreamController.desiredSize documentation> 
getDesiredSize ::
               (MonadDOM m) => ReadableByteStreamController -> m Double
getDesiredSize self
  = liftDOM ((self ^. js "desiredSize") >>= valToNumber)
