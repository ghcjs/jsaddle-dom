{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SourceInfo
       (getSourceId, getKind, getLabel, SourceInfo, castToSourceInfo,
        gTypeSourceInfo)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.sourceId Mozilla SourceInfo.sourceId documentation> 
getSourceId ::
            (MonadDOM m, FromJSString result) => SourceInfo -> m result
getSourceId self
  = liftDOM ((self ^. js "sourceId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.kind Mozilla SourceInfo.kind documentation> 
getKind ::
        (MonadDOM m, FromJSString result) => SourceInfo -> m result
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.label Mozilla SourceInfo.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => SourceInfo -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)