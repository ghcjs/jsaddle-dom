{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.GainNode
       (getGain, getGainUnchecked, GainNode, castToGainNode,
        gTypeGainNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GainNode.gain Mozilla GainNode.gain documentation> 
getGain :: (MonadDOM m) => GainNode -> m (Maybe AudioParam)
getGain self = liftDOM ((self ^. js "gain") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GainNode.gain Mozilla GainNode.gain documentation> 
getGainUnchecked :: (MonadDOM m) => GainNode -> m AudioParam
getGainUnchecked self
  = liftDOM ((self ^. js "gain") >>= fromJSValUnchecked)
