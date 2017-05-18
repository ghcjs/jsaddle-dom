{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioNode
       (connect, connectParam, disconnect, getContext, getNumberOfInputs,
        getNumberOfOutputs, setChannelCount, getChannelCount,
        setChannelCountMode, getChannelCountMode, setChannelInterpretation,
        getChannelInterpretation, AudioNode(..), gTypeAudioNode,
        IsAudioNode, toAudioNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connect Mozilla AudioNode.connect documentation> 
connect ::
        (MonadDOM m, IsAudioNode self, IsAudioNode destination) =>
          self -> destination -> Maybe Word -> Maybe Word -> m ()
connect self destination output input
  = liftDOM
      (void
         ((toAudioNode self) ^. jsf "connect"
            [toJSVal destination, toJSVal output, toJSVal input]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connect Mozilla AudioNode.connect documentation> 
connectParam ::
             (MonadDOM m, IsAudioNode self) =>
               self -> AudioParam -> Maybe Word -> m ()
connectParam self destination output
  = liftDOM
      (void
         ((toAudioNode self) ^. jsf "connect"
            [toJSVal destination, toJSVal output]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.disconnect Mozilla AudioNode.disconnect documentation> 
disconnect ::
           (MonadDOM m, IsAudioNode self) => self -> Maybe Word -> m ()
disconnect self output
  = liftDOM
      (void ((toAudioNode self) ^. jsf "disconnect" [toJSVal output]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.context Mozilla AudioNode.context documentation> 
getContext ::
           (MonadDOM m, IsAudioNode self) => self -> m AudioContext
getContext self
  = liftDOM
      (((toAudioNode self) ^. js "context") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfInputs Mozilla AudioNode.numberOfInputs documentation> 
getNumberOfInputs ::
                  (MonadDOM m, IsAudioNode self) => self -> m Word
getNumberOfInputs self
  = liftDOM
      (round <$>
         (((toAudioNode self) ^. js "numberOfInputs") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfOutputs Mozilla AudioNode.numberOfOutputs documentation> 
getNumberOfOutputs ::
                   (MonadDOM m, IsAudioNode self) => self -> m Word
getNumberOfOutputs self
  = liftDOM
      (round <$>
         (((toAudioNode self) ^. js "numberOfOutputs") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
setChannelCount ::
                (MonadDOM m, IsAudioNode self) => self -> Word -> m ()
setChannelCount self val
  = liftDOM ((toAudioNode self) ^. jss "channelCount" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
getChannelCount :: (MonadDOM m, IsAudioNode self) => self -> m Word
getChannelCount self
  = liftDOM
      (round <$>
         (((toAudioNode self) ^. js "channelCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
setChannelCountMode ::
                    (MonadDOM m, IsAudioNode self, ToJSString val) =>
                      self -> val -> m ()
setChannelCountMode self val
  = liftDOM
      ((toAudioNode self) ^. jss "channelCountMode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
getChannelCountMode ::
                    (MonadDOM m, IsAudioNode self, FromJSString result) =>
                      self -> m result
getChannelCountMode self
  = liftDOM
      (((toAudioNode self) ^. js "channelCountMode") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
setChannelInterpretation ::
                         (MonadDOM m, IsAudioNode self, ToJSString val) =>
                           self -> val -> m ()
setChannelInterpretation self val
  = liftDOM
      ((toAudioNode self) ^. jss "channelInterpretation" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
getChannelInterpretation ::
                         (MonadDOM m, IsAudioNode self, FromJSString result) =>
                           self -> m result
getChannelInterpretation self
  = liftDOM
      (((toAudioNode self) ^. js "channelInterpretation") >>=
         fromJSValUnchecked)
