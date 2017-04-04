{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableStreamDefaultController
       (newReadableStreamDefaultController, enqueue, close, error,
        getDesiredSize, ReadableStreamDefaultController(..),
        gTypeReadableStreamDefaultController)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController Mozilla ReadableStreamDefaultController documentation> 
newReadableStreamDefaultController ::
                                   (MonadDOM m, ToJSVal underlyingSource) =>
                                     ReadableStream ->
                                       underlyingSource ->
                                         Word -> Word -> m ReadableStreamDefaultController
newReadableStreamDefaultController stream underlyingSource size
  highWaterMark
  = liftDOM
      (ReadableStreamDefaultController <$>
         new (jsg "ReadableStreamDefaultController")
           [toJSVal stream, toJSVal underlyingSource, toJSVal size,
            toJSVal highWaterMark])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.enqueue Mozilla ReadableStreamDefaultController.enqueue documentation> 
enqueue ::
        (MonadDOM m, ToJSVal chunk) =>
          ReadableStreamDefaultController -> Maybe chunk -> m ()
enqueue self chunk
  = liftDOM (void (self ^. jsf "enqueue" [toJSVal chunk]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.close Mozilla ReadableStreamDefaultController.close documentation> 
close :: (MonadDOM m) => ReadableStreamDefaultController -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.error Mozilla ReadableStreamDefaultController.error documentation> 
error ::
      (MonadDOM m, ToJSVal error) =>
        ReadableStreamDefaultController -> Maybe error -> m ()
error self error
  = liftDOM (void (self ^. jsf "error" [toJSVal error]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.desiredSize Mozilla ReadableStreamDefaultController.desiredSize documentation> 
getDesiredSize ::
               (MonadDOM m) => ReadableStreamDefaultController -> m Double
getDesiredSize self
  = liftDOM ((self ^. js "desiredSize") >>= valToNumber)
