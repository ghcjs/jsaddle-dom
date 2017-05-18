{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ReadableStreamSource
       (start, pull, cancel, getController, ReadableStreamSource(..),
        gTypeReadableStreamSource)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.start Mozilla ReadableStreamSource.start documentation> 
start ::
      (MonadDOM m) =>
        ReadableStreamSource -> ReadableStreamDefaultController -> m ()
start self controller
  = liftDOM
      (void ((self ^. jsf "start" [toJSVal controller]) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.pull Mozilla ReadableStreamSource.pull documentation> 
pull ::
     (MonadDOM m) =>
       ReadableStreamSource -> ReadableStreamDefaultController -> m ()
pull self controller
  = liftDOM
      (void ((self ^. jsf "pull" [toJSVal controller]) >>= readPromise))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.cancel Mozilla ReadableStreamSource.cancel documentation> 
cancel ::
       (MonadDOM m, ToJSVal reason) =>
         ReadableStreamSource -> reason -> m ()
cancel self reason
  = liftDOM (void (self ^. jsf "cancel" [toJSVal reason]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.controller Mozilla ReadableStreamSource.controller documentation> 
getController :: (MonadDOM m) => ReadableStreamSource -> m JSVal
getController self
  = liftDOM ((self ^. js "controller") >>= toJSVal)
