{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.ProgressEvent
       (getLengthComputable, getLoaded, getTotal, ProgressEvent,
        castToProgressEvent, gTypeProgressEvent, IsProgressEvent,
        toProgressEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.lengthComputable Mozilla ProgressEvent.lengthComputable documentation> 
getLengthComputable ::
                    (MonadDOM m, IsProgressEvent self) => self -> m Bool
getLengthComputable self
  = liftDOM
      (((toProgressEvent self) ^. js "lengthComputable") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.loaded Mozilla ProgressEvent.loaded documentation> 
getLoaded :: (MonadDOM m, IsProgressEvent self) => self -> m Word64
getLoaded self
  = liftDOM
      (round <$>
         (((toProgressEvent self) ^. js "loaded") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.total Mozilla ProgressEvent.total documentation> 
getTotal :: (MonadDOM m, IsProgressEvent self) => self -> m Word64
getTotal self
  = liftDOM
      (round <$>
         (((toProgressEvent self) ^. js "total") >>= valToNumber))
