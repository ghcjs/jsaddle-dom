{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaElementAudioSourceNode
       (getMediaElement, getMediaElementUnchecked,
        MediaElementAudioSourceNode, castToMediaElementAudioSourceNode,
        gTypeMediaElementAudioSourceNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode.mediaElement Mozilla MediaElementAudioSourceNode.mediaElement documentation> 
getMediaElement ::
                (MonadDOM m) =>
                  MediaElementAudioSourceNode -> m (Maybe HTMLMediaElement)
getMediaElement self
  = liftDOM ((self ^. js "mediaElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode.mediaElement Mozilla MediaElementAudioSourceNode.mediaElement documentation> 
getMediaElementUnchecked ::
                         (MonadDOM m) => MediaElementAudioSourceNode -> m HTMLMediaElement
getMediaElementUnchecked self
  = liftDOM ((self ^. js "mediaElement") >>= fromJSValUnchecked)
