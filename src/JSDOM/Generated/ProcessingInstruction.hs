{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ProcessingInstruction
       (getTarget, getSheet, ProcessingInstruction,
        castToProcessingInstruction, gTypeProcessingInstruction)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTarget ::
          (MonadDOM m, FromJSString result) =>
            ProcessingInstruction -> m (Maybe result)
getTarget self
  = liftDOM ((self ^. js "target") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheet ::
         (MonadDOM m) => ProcessingInstruction -> m (Maybe StyleSheet)
getSheet self = liftDOM ((self ^. js "sheet") >>= fromJSVal)
